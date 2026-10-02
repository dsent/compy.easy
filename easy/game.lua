-- Everything your game can be. main.lua says which hero,
-- which food, and how many; this file says what there is
-- to choose from. Ctrl+J on a require line opens that file.

require("colors")
require("sprites")
require("myart")

-- The pictures you can play as: hero("cat") in main.lua.
HEROES = {
  "bee",
  "cat",
  "chicken",
  "dino",
  "diplo",
  "dog",
  "fish",
  "fox",
  "hamster",
  "lemon",
  "meteor",
  "mouse",
  "pokefox",
  "rocket",
  "smallfish",
  "spider",
  "squish",
  "tornado",
  "tree",
  "turtle",
  "ufo",
  -- your own pictures, from myart.lua
  "frame",
  "hen",
  "house",
  "kitty",
  "twins",
  "wizard"
}

-- The pictures you can collect: food("star") in main.lua.
FOODS = {
  "acorn",
  "apple",
  "cheese",
  "droplet",
  "fish",
  "lemon",
  "lightning",
  "rainbow",
  "star"
}

-- The most food one game can have. many(100) still gives
-- only this many.
MOST = 40

-- How fast the hero walks, in dots of the screen each
-- second: speed("fast") in main.lua.
SPEEDS = { }
SPEEDS.walk = 220
SPEEDS.slow = 130
SPEEDS.fast = 380

-- The backdrops: color("blue") in main.lua. They stay dark
-- so the pictures show up.
BACKDROPS = { }
BACKDROPS.black = 0
BACKDROPS.blue = 1
BACKDROPS.red = 2
BACKDROPS.magenta = 3
BACKDROPS.green = 4
BACKDROPS.cyan = 5
BACKDROPS.yellow = 6
BACKDROPS.white = 7

-- How big one square of a picture is on the screen.
HERO_PIXEL = 8
FOOD_PIXEL = 6

-- What the screen says when the last food is gone.
WIN_WORDS = "You won!"

-- How the game works.
require("engine")
