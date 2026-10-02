-- Putting the game on the screen.

COUNT_FONT = gfx.newFont(56)
WIN_FONT = gfx.newFont(96)
NAME_FONT = gfx.newFont(18)

-- Where the picture being drawn right now sits, so the
-- helpers below do not need long lists of numbers.
SPOT = { }

function drawPictureCell(letter, c, y)
  local shade = COLORS[letter]
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
  SPOT.pixel = pixel
  SPOT.left = x - pictureWidth(pic, pixel) / 2
  SPOT.top = y - pictureHeight(pic, pixel) / 2
  for r = 1, #pic do
    drawPictureRow(pic[r], r)
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

-- Shown only when a word was not one we know. The child
-- picks a picture and types the word under it.
function drawChoices(set, names, y)
  gfx.setColor(Color[0])
  gfx.rectangle("fill", 0, y - 46, SCREEN_W, 92)
  local gap = SCREEN_W / (#names + 1)
  gfx.setFont(NAME_FONT)
  for i = 1, #names do
    local x = gap * i
    drawPicture(set[names[i]], x, y - 14, 4)
    gfx.setColor(Color[15])
    gfx.printf(names[i], x - gap / 2, y + 14, gap, "center")
  end
end

function drawMenus()
  local row = SCREEN_H - 46
  if MENU.food then
    drawChoices(FOODS, FOOD_NAMES, row)
    row = row - 90
  end
  if MENU.hero then
    drawChoices(HEROES, HERO_NAMES, row)
  end
end

-- A dark band keeps the words readable on any backdrop.
function drawWin()
  gfx.setColor(Color[0])
  gfx.rectangle("fill", 0, SCREEN_H / 2 - 70, SCREEN_W, 140)
  gfx.setFont(WIN_FONT)
  gfx.setColor(Color[15])
  gfx.printf("You won!", 0, SCREEN_H / 2 - 48, SCREEN_W, "center")
end

function drawEverything()
  gfx.setColor(Color[BACKDROP])
  gfx.rectangle("fill", 0, 0, SCREEN_W, SCREEN_H)
  drawFoods()
  drawHero()
  drawCount()
  drawMenus()
  if WON then
    drawWin()
  end
end
