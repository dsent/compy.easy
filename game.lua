-- The whole game lives in this project.
-- A child's main.lua asks for this file, then says which
-- hero, which food, and how many.

gfx = love.graphics
sfx = compy.audio

SCREEN_W = gfx.getWidth()
SCREEN_H = gfx.getHeight()

-- One big square of a picture, in real screen pixels.
-- Big on purpose: small things are hard to hit.
HERO_PIXEL = 8
FOOD_PIXEL = 6

require("sprites")
require("world")
require("show")
require("myart")

-- What the child asked for. These are the answers used
-- when a line is missing from their program.
WANT = { }
WANT.hero = "cat"
WANT.food = "star"
WANT.many = 10
WANT.speed = "walk"
WANT.color = "black"

-- A word we did not know turns one of these on, and the
-- pictures to choose from appear at the bottom.
MENU = { }
MENU.hero = false
MENU.food = false

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
function love.keypressed(key)
  local arrow = key == "up" or key == "down"
    or key == "left" or key == "right"
  if WON and not arrow then
    love.event.quit()
  end
end

function love.draw()
  if not STARTED then
    return
  end
  drawEverything()
end
