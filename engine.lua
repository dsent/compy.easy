-- How the game works. game.lua chooses what is in it; this
-- file builds it, moves it, and draws it.
-- easy and mygame share this file. In easy a picture is just
-- its rows, and each letter is a color in COLORS. In mygame
-- a picture has rows and colors of its own, and the heroes
-- and foods are names that point at pictures.

sfx = compy.audio

SCREEN_W = gfx.getWidth()
SCREEN_H = gfx.getHeight()

-- What the child asked for. These are the answers used
-- when a line is missing from their program.
WANT = { }
WANT.hero = "cat"
WANT.food = "star"
WANT.many = 10
WANT.speed = "walk"
WANT.color = "black"

STARTED = false

function hero(name)
  WANT.hero = name
end

function food(name)
  WANT.food = name
end

function many(count)
  WANT.many = count
end

function speed(name)
  WANT.speed = name
end

function color(name)
  WANT.color = name
end

-- The child's lines run before the first frame, so the
-- game is built here, once, when the first frame arrives.
function love.update(dt)
  if not STARTED then
    startGame()
    STARTED = true
  end
  moveHero(dt)
  eatFood()
end

-- After the last food, any key but an arrow closes the
-- game. The arrows may still be down from walking.
ARROWS = {
  up = true,
  down = true,
  left = true,
  right = true
}

function love.keypressed(key)
  local closing = WON and not ARROWS[key]
  if closing then
    love.event.quit()
  end
end

function love.draw()
  if not STARTED then
    return
  end
  drawEverything()
end

-- Anything we cannot read as a number means ten, and
-- fewer than one means one.
FEWEST = 1
WHEN_UNCLEAR = 10

-- Foods keep clear of the counter in the top corner.
FIELD_TOP = 120

-- A word we do not know is not a mistake. It is just a
-- word we do not know, so it becomes an empty one.
function tidyName(name)
  if type(name) ~= "string" then
    return ""
  end
  return string.lower(name)
end

-- Hands back the picture asked for. In easy the list says
-- true for each name on it; in mygame it says which picture
-- a name points at. Any other word gets the fallback picture.
function pickPicture(list, name, fallback)
  local wanted = tidyName(name)
  local points_at = list[wanted]
  if points_at == true then
    points_at = wanted
  end
  return PICTURES[points_at] or PICTURES[fallback]
end

-- The rows of a picture, in either game.
function rowsOf(pic)
  return pic.rows or pic
end

-- The color of one letter: through the picture's own colors
-- in mygame, straight from COLORS in easy.
function shadeOf(pic, letter)
  if pic.colors then
    return COLORS[pic.colors[letter]]
  end
  return COLORS[letter]
end

function pickSpeed(name)
  local found = SPEEDS[tidyName(name)]
  return found or SPEEDS.walk
end

function pickColor(name)
  local found = BACKDROPS[tidyName(name)]
  return found or BACKDROPS.black
end

-- 20 means twenty. Anything we cannot read means ten.
-- Wild numbers are pulled back rather than refused.
function pickCount(text)
  local n = tonumber(text)
  if not n then
    return WHEN_UNCLEAR
  end
  n = math.floor(n)
  if n < FEWEST then
    return FEWEST
  end
  if MOST < n then
    return MOST
  end
  return n
end

function pictureWidth(pic, pixel)
  return string.len(rowsOf(pic)[1]) * pixel
end

function pictureHeight(pic, pixel)
  return #rowsOf(pic) * pixel
end

function randomSpot(span, size, low)
  local edge = math.floor(size / 2) + 20
  return love.math.random(low + edge, span - edge)
end

-- Nothing is put out on top of the hero, or on top of
-- another food. A child should have to go and get them.
CLEAR_OF_HERO = 170
CLEAR_OF_FOOD = 56

function onHeroStart(x, y)
  local over_x = math.abs(x - SCREEN_W / 2) < CLEAR_OF_HERO
  local over_y = math.abs(y - SCREEN_H / 2) < CLEAR_OF_HERO
  return over_x and over_y
end

function farEnough(x, y, item)
  local dx = math.abs(x - item.x)
  local dy = math.abs(y - item.y)
  local apart = CLEAR_OF_FOOD < dx or CLEAR_OF_FOOD < dy
  return apart
end

function spotIsFree(x, y, placed)
  if onHeroStart(x, y) then
    return false
  end
  for i = 1, placed do
    if not farEnough(x, y, FIELD[i]) then
      return false
    end
  end
  return true
end

-- Crowding is allowed when a child asks for a lot. Landing
-- on the hero is not: that would be a free food nobody
-- went and got.
function findClearOfHero(item)
  for try = 1, 200 do
    local x = randomSpot(SCREEN_W, item.w, 0)
    local y = randomSpot(SCREEN_H, item.h, FIELD_TOP)
    if not onHeroStart(x, y) then
      return x, y
    end
  end
  return 40, FIELD_TOP + 40
end

function findSpot(item, placed)
  for try = 1, 90 do
    local x = randomSpot(SCREEN_W, item.w, 0)
    local y = randomSpot(SCREEN_H, item.h, FIELD_TOP)
    if spotIsFree(x, y, placed) then
      return x, y
    end
  end
  return findClearOfHero(item)
end

function spawnFoods(how_many)
  FIELD = { }
  for i = 1, how_many do
    local item = { }
    item.w = pictureWidth(FOOD_PIC, FOOD_PIXEL)
    item.h = pictureHeight(FOOD_PIC, FOOD_PIXEL)
    item.gone = false
    item.x, item.y = findSpot(item, i - 1)
    FIELD[i] = item
  end
end

-- Built once, on the first frame, after the child's own
-- lines have had their say.
function makeHero()
  HERO = { }
  HERO.pic = pickPicture(HEROES, WANT.hero, "cat")
  HERO.w = pictureWidth(HERO.pic, HERO_PIXEL)
  HERO.h = pictureHeight(HERO.pic, HERO_PIXEL)
  HERO.x = SCREEN_W / 2
  HERO.y = SCREEN_H / 2
  HERO.speed = pickSpeed(WANT.speed)
end

function startGame()
  makeHero()
  FOOD_PIC = pickPicture(FOODS, WANT.food, "star")
  BACKDROP = pickColor(WANT.color)
  COUNT = 0
  WON = false
  spawnFoods(pickCount(WANT.many))
end

-- Arrows move the hero the way the screen is facing. The
-- hero never turns, so left is always left.
function moveSideways(step)
  if love.keyboard.isDown("left") then
    HERO.x = HERO.x - step
  end
  if love.keyboard.isDown("right") then
    HERO.x = HERO.x + step
  end
end

function moveUpDown(step)
  if love.keyboard.isDown("up") then
    HERO.y = HERO.y - step
  end
  if love.keyboard.isDown("down") then
    HERO.y = HERO.y + step
  end
end

-- Walk off one side and come back on the other.
function wrapSideways()
  local over = HERO.w / 2
  if HERO.x < -over then
    HERO.x = SCREEN_W + over
  end
  if SCREEN_W + over < HERO.x then
    HERO.x = -over
  end
end

function wrapUpDown()
  local over = HERO.h / 2
  if HERO.y < -over then
    HERO.y = SCREEN_H + over
  end
  if SCREEN_H + over < HERO.y then
    HERO.y = -over
  end
end

function moveHero(dt)
  local step = HERO.speed * dt
  moveSideways(step)
  moveUpDown(step)
  wrapSideways()
  wrapUpDown()
end

-- Generous on purpose: getting close counts as touching.
function touches(item)
  local near_x = math.abs(HERO.x - item.x)
  local near_y = math.abs(HERO.y - item.y)
  local reach_x = (HERO.w + item.w) * 0.35
  local reach_y = (HERO.h + item.h) * 0.35
  local close_enough = near_x < reach_x and near_y < reach_y
  return close_enough
end

function eatFood()
  for i = 1, #FIELD do
    local item = FIELD[i]
    local eaten = not item.gone and touches(item)
    if eaten then
      item.gone = true
      COUNT = COUNT + 1
      sfx.ping()
    end
  end
  checkWin()
end

-- The last food: cheer once, and say so on the screen.
function checkWin()
  local just_won = COUNT == #FIELD and not WON
  if just_won then
    WON = true
    sfx.wow()
  end
end

-- Putting the game on the screen.

COUNT_FONT = gfx.newFont(56)
WIN_FONT = gfx.newFont(96)

-- Where the picture being drawn right now sits, so the
-- helpers below do not need long lists of numbers.
SPOT = { }

function drawPictureCell(letter, c, y)
  local shade = shadeOf(SPOT.pic, letter)
  if not shade then
    return
  end
  gfx.setColor(Color[shade])
  local x = SPOT.left + (c - 1) * SPOT.pixel
  gfx.rectangle("fill", x, y, SPOT.pixel, SPOT.pixel)
end

function drawPictureRow(row, r)
  local y = SPOT.top + (r - 1) * SPOT.pixel
  for c = 1, string.len(row) do
    drawPictureCell(string.sub(row, c, c), c, y)
  end
end

-- Draws one picture with its middle at x, y. Every letter
-- in the picture becomes one big coloured square.
function drawPicture(pic, x, y, pixel)
  SPOT.pic = pic
  SPOT.pixel = pixel
  SPOT.left = x - pictureWidth(pic, pixel) / 2
  SPOT.top = y - pictureHeight(pic, pixel) / 2
  local rows = rowsOf(pic)
  for r = 1, #rows do
    drawPictureRow(rows[r], r)
  end
end

function drawFoods()
  for i = 1, #FIELD do
    local item = FIELD[i]
    if not item.gone then
      drawPicture(FOOD_PIC, item.x, item.y, FOOD_PIXEL)
    end
  end
end

function drawHero()
  drawPicture(HERO.pic, HERO.x, HERO.y, HERO_PIXEL)
end

-- One food picture and one number. No words.
function drawCount()
  drawPicture(FOOD_PIC, 58, 58, 5)
  gfx.setFont(COUNT_FONT)
  gfx.setColor(Color[15])
  gfx.print(tostring(COUNT), 104, 26)
end

-- A dark band keeps the words readable on any backdrop.
function drawWin()
  gfx.setColor(Color[0])
  gfx.rectangle("fill", 0, SCREEN_H / 2 - 70, SCREEN_W, 140)
  gfx.setFont(WIN_FONT)
  gfx.setColor(Color[15])
  gfx.printf(
    WIN_WORDS,
    0,
    SCREEN_H / 2 - 48,
    SCREEN_W,
    "center"
  )
end

function drawEverything()
  gfx.setColor(Color[BACKDROP])
  gfx.rectangle("fill", 0, 0, SCREEN_W, SCREEN_H)
  drawFoods()
  drawHero()
  drawCount()
  if WON then
    drawWin()
  end
end
