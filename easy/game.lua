-- Everything your game can be. main.lua says which hero,
-- which food, and how many; this file says what there is
-- to choose from. Ctrl+J on a require line opens that file.

require("colors")
require("sprites")
require("myart")

-- The pictures you can play as: hero("cat") in main.lua.
HEROES = { }
HEROES.bee = true
HEROES.cat = true
HEROES.chicken = true
HEROES.dino = true
HEROES.diplo = true
HEROES.dog = true
HEROES.fish = true
HEROES.fox = true
HEROES.hamster = true
HEROES.lemon = true
HEROES.meteor = true
HEROES.mouse = true
HEROES.pokefox = true
HEROES.rocket = true
HEROES.smallfish = true
HEROES.spider = true
HEROES.squish = true
HEROES.tornado = true
HEROES.tree = true
HEROES.turtle = true
HEROES.ufo = true
-- your own pictures, from myart.lua
HEROES.frame = true
HEROES.hen = true
HEROES.house = true
HEROES.kitty = true
HEROES.twins = true
HEROES.wizard = true

-- The pictures you can collect: food("star") in main.lua.
FOODS = { }
FOODS.acorn = true
FOODS.apple = true
FOODS.cheese = true
FOODS.droplet = true
FOODS.fish = true
FOODS.lemon = true
FOODS.lightning = true
FOODS.rainbow = true
FOODS.star = true

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

-- The most food one game can have. many(100) still gives
-- only this many.
MOST = 40

-- How the game works.
require("engine")
