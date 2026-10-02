-- Everything your game can be. main.lua says which hero,
-- which food, and how many; this file says what there is
-- to choose from. Ctrl+J on a require line opens that file.

require("colors")
require("sprites")
require("myart")

-- The heroes you can play as: hero("cat") in main.lua.
-- Each name points at a picture in sprites.lua or myart.lua.
HEROES = { }
HEROES.bee = "bee"
HEROES.cat = "cat"
HEROES.chicken = "chicken"
HEROES.dino = "dino"
HEROES.diplo = "diplo"
HEROES.dog = "dog"
HEROES.fox = "fox"
HEROES.hamster = "hamster"
HEROES.meteor = "meteor"
HEROES.mouse = "mouse"
HEROES.pokefox = "pokefox"
HEROES.rocket = "rocket"
HEROES.spider = "spider"
HEROES.squish = "squish"
HEROES.tornado = "tornado"
HEROES.tree = "tree"
HEROES.turtle = "turtle"
HEROES.ufo = "ufo"
HEROES.fish = "smallfish"
HEROES.lemon = "lemonface"
-- your own pictures, from myart.lua
HEROES.frame = "frame"
HEROES.hen = "hen"
HEROES.house = "house"
HEROES.kitty = "kitty"
HEROES.twins = "twins"
HEROES.wizard = "wizard"

-- The foods you can collect: food("star") in main.lua.
FOODS = { }
FOODS.acorn = "acorn"
FOODS.apple = "apple"
FOODS.cheese = "cheese"
FOODS.droplet = "droplet"
FOODS.fish = "fish"
FOODS.lemon = "lemon"
FOODS.lightning = "lightning"
FOODS.rainbow = "rainbow"
FOODS.star = "star"

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
