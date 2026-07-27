-- Pictures are drawn here as letters, one letter per big
-- square. A dot is empty. Every other letter is looked up
-- in that picture's own colour list below it.

CAT = {
  "..X......X..",
  ".XXX....XXX.",
  ".XXXXXXXXXX.",
  ".XXXXXXXXXX.",
  ".XXOOXXOOXX.",
  ".XXXXXXXXXX.",
  ".XXXXNNXXXX.",
  "..XXXXXXXX..",
  "..XXXXXXXX.X",
  "..XXXXXXXX.X",
  "..X..XX..X..",
}
CAT_COLORS = { X = 14, O = 0, N = 11 }

TURTLE = {
  ".....HH.....",
  "....HOOH....",
  "...SSSSSS...",
  "L.SSDDDDSS.L",
  "LLSDDSSDDSLL",
  "LLSDDSSDDSLL",
  "L.SSDDDDSS.L",
  "...SSSSSS...",
  "....SSSS....",
  ".....TT.....",
  "............",
}
TURTLE_COLORS = { S = 12, D = 4, H = 12, L = 14, T = 4, O = 0 }

UFO = {
  "....DDDD....",
  "...DDDDDD...",
  "..DDDDDDDD..",
  ".BBBBBBBBBB.",
  "BBBBBBBBBBBB",
  "BLBBLBBLBBLB",
  ".BBBBBBBBBB.",
  "..BB....BB..",
  "...L....L...",
  "............",
  "............",
}
UFO_COLORS = { D = 13, B = 7, L = 11 }

MOUSE = {
  ".EE......EE.",
  "EEEE....EEEE",
  "EEEE....EEEE",
  ".EE.MMMM.EE.",
  "...MMMMMM...",
  "..MMOMMOMM..",
  "..MMMMMMMM..",
  "...MMNNMM...",
  "...MMMMMM...",
  "....MMMM...T",
  "..........TT",
}
MOUSE_COLORS = { M = 15, E = 11, O = 0, N = 11, T = 15 }

STAR = {
  "....X....",
  "...XXX...",
  "...XXX...",
  "XXXXXXXXX",
  ".XXXXXXX.",
  "..XXXXX..",
  "..XXXXX..",
  ".XX...XX.",
  ".X.....X.",
}
STAR_COLORS = { X = 14 }

CHEESE = {
  "......XXX",
  ".....XXXX",
  "....XXXXX",
  "...XX.XXX",
  "..XXXXXXX",
  ".XXXX.XXX",
  "XXXXXXXXX",
  "XXX.XXXXX",
  "XXXXXXXXX",
}
CHEESE_COLORS = { X = 14 }

APPLE = {
  "....S.GG.",
  "....S.GG.",
  "..RRRRRR.",
  ".RRRRRRRR",
  "RRRRRRRRR",
  "RRRRRRRRR",
  ".RRRRRRRR",
  ".RRRRRRR.",
  "..RR.RR..",
}
APPLE_COLORS = { R = 10, G = 12, S = 4 }

-- The heroes a child can choose. The first one is what
-- they get when the word is not one of these.
HEROES = { }
HEROES.cat = { rows = CAT, colors = CAT_COLORS }
HEROES.turtle = { rows = TURTLE, colors = TURTLE_COLORS }
HEROES.ufo = { rows = UFO, colors = UFO_COLORS }
HEROES.mouse = { rows = MOUSE, colors = MOUSE_COLORS }
HERO_NAMES = { "cat", "turtle", "ufo", "mouse" }

-- The foods a child can choose, same rule.
FOODS = { }
FOODS.star = { rows = STAR, colors = STAR_COLORS }
FOODS.cheese = { rows = CHEESE, colors = CHEESE_COLORS }
FOODS.apple = { rows = APPLE, colors = APPLE_COLORS }
FOOD_NAMES = { "star", "cheese", "apple" }
