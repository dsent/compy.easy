-- Pictures are drawn here as letters, one letter per big
-- square. A dot is empty. Every other letter is looked up
-- in that picture's own colour list below it.

CAT = {
  ".XX......XX.",
  ".XIX....XIX.",
  ".XXXXXXXXXX.",
  "XXXXXXXXXXXX",
  "XXOOXXXXOOXX",
  "XXXXXXXXXXXX",
  "XXXXXNNXXXXX",
  ".XXXXXXXXXX.",
  "..XXXXXXXX..",
  "..XXXXXXXX..",
  "..XX....XX..",
}
CAT_COLORS = { X = 14, O = 0, N = 11, I = 11 }

TURTLE = {
  "....HHHH....",
  "...HOHHOH...",
  "....HHHH....",
  "...SSSSSS...",
  "LLSSSSSSSSLL",
  "LLSDDSSDDSLL",
  "..SDDSSDDS..",
  "LLSDDSSDDSLL",
  "LLSSSSSSSSLL",
  "...SSSSSS...",
  ".....TT.....",
}
TURTLE_COLORS = { S = 12, D = 4, H = 12, L = 14, T = 12, O = 0 }

UFO = {
  "....DDDD....",
  "...DDDDDD...",
  "..DDDDDDDD..",
  ".BBBBBBBBBB.",
  "BBBBBBBBBBBB",
  "BLLBBLLBBLLB",
  ".BBBBBBBBBB.",
  "..BBBBBBBB..",
  "...B....B...",
  "..LL....LL..",
  "............",
}
UFO_COLORS = { D = 13, B = 7, L = 11 }

MOUSE = {
  ".EE......EE.",
  "EEEE....EEEE",
  "EEEE....EEEE",
  ".EEMMMMMMEE.",
  "..MMMMMMMM..",
  "..MMOMMOMM..",
  "..MMMMMMMM..",
  "...MMNNMM.T.",
  "...MMMMMM.T.",
  "....MMMMTTT.",
  "............",
}
MOUSE_COLORS = { M = 15, E = 11, O = 0, N = 11, T = 15 }

STAR = {
  "....X....",
  "...XXX...",
  "..XXXXX..",
  "XXXXXXXXX",
  ".XXXXXXX.",
  "..XXXXX..",
  "..XXXXX..",
  ".XX...XX.",
  "XX.....XX",
}
STAR_COLORS = { X = 14 }

CHEESE = {
  "......XXX",
  ".....XXXX",
  "....XXX.X",
  "...XXXXXX",
  "..XXX..XX",
  ".XXXX..XX",
  "XX..XXXXX",
  "XX..XXXXX",
  "XXXXXXXXX",
}
CHEESE_COLORS = { X = 14 }

APPLE = {
  "....S....",
  "....SGGG.",
  ".RRRSRRR.",
  "RRWRRRRRR",
  "RRWRRRRRR",
  "RRRRRRRRR",
  ".RRRRRRR.",
  "..RRRRR..",
  "..RR.RR..",
}
APPLE_COLORS = { R = 10, G = 12, S = 4, W = 15 }

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
