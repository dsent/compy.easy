-- Building the game and keeping it moving.

-- How many foods a child may ask for. Anything else is
-- quietly pulled back inside these two numbers.
FEWEST = 1
MOST = 40
WHEN_UNCLEAR = 10

-- How fast the hero walks, in screen pixels each second.
SPEEDS = { }
SPEEDS.walk = 220
SPEEDS.slow = 130
SPEEDS.fast = 380

-- Backdrops stay dark so the pictures keep showing up.
BACKDROPS = { }
BACKDROPS.black = 0
BACKDROPS.blue = 1
BACKDROPS.red = 2
BACKDROPS.magenta = 3
BACKDROPS.green = 4
BACKDROPS.cyan = 5
BACKDROPS.yellow = 6
BACKDROPS.white = 7

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

-- Hands back the picture asked for. When there is no such
-- picture, hands back the first one and turns on the menu
-- of pictures that do exist.
function pickPicture(set, name, fallback, which)
  local found = set[tidyName(name)]
  if found then
    return found
  end
  MENU[which] = true
  return set[fallback]
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
  if n > MOST then
    return MOST
  end
  return n
end

function pictureWidth(pic, pixel)
  return string.len(pic[1]) * pixel
end

function pictureHeight(pic, pixel)
  return #pic * pixel
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
  local overX = math.abs(x - SCREEN_W / 2) < CLEAR_OF_HERO
  local overY = math.abs(y - SCREEN_H / 2) < CLEAR_OF_HERO
  return overX and overY
end

function farEnough(x, y, item)
  local dx = math.abs(x - item.x)
  local dy = math.abs(y - item.y)
  local apart = dx > CLEAR_OF_FOOD or dy > CLEAR_OF_FOOD
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

function spawnFoods(howMany)
  FIELD = { }
  for i = 1, howMany do
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
function startGame()
  HERO_NAMES = sortedNames(HEROES)
  FOOD_NAMES = sortedNames(FOODS)
  HERO = { }
  HERO.pic = pickPicture(HEROES, WANT.hero, "cat", "hero")
  HERO.w = pictureWidth(HERO.pic, HERO_PIXEL)
  HERO.h = pictureHeight(HERO.pic, HERO_PIXEL)
  HERO.x = SCREEN_W / 2
  HERO.y = SCREEN_H / 2
  HERO.speed = pickSpeed(WANT.speed)
  FOOD_PIC = pickPicture(FOODS, WANT.food, "star", "food")
  BACKDROP = pickColor(WANT.color)
  COUNT = 0
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
  if HERO.x > SCREEN_W + over then
    HERO.x = -over
  end
end

function wrapUpDown()
  local over = HERO.h / 2
  if HERO.y < -over then
    HERO.y = SCREEN_H + over
  end
  if HERO.y > SCREEN_H + over then
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
  local nearX = math.abs(HERO.x - item.x)
  local nearY = math.abs(HERO.y - item.y)
  local reachX = (HERO.w + item.w) * 0.35
  local reachY = (HERO.h + item.h) * 0.35
  local closeEnough = nearX < reachX and nearY < reachY
  return closeEnough
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
  if COUNT == #FIELD and not WON then
    WON = true
    sfx.wow()
  end
end
