-- Pictures are drawn here as letters, one letter per big
-- square. A dot is empty. Every other letter is looked up
-- in that picture's own colour list below it.
-- Every row in a picture must be the same length.

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

DOG = {
  "..TT...TT...",
  "..BBTTTBB...",
  "..BKKTKKB...",
  "..BTTGTTB...",
  "..TTTNTTB.BB",
  "..TTTTTTB.TB",
  "..BBTTTBBBTB",
  "..BBTWTBBB..",
  "..BBTWTBBB..",
  ".BBTTTTTBB..",
  "............",
}
DOG_COLORS = { B = 17, T = 18, K = 0, N = 11, G = 8, W = 15 }

FOX = {
  "..F...F.....",
  ".FFF.FFF....",
  "GFFFFFFFFG..",
  "GFKFFFFKFG..",
  "GFFFNNFFFG..",
  ".FGGGGGGF...",
  ".FGGGGGGF.GG",
  "FFGGGGGGFFGG",
  ".FGGGGGGFFG.",
  ".FFGFFGFF...",
  "..GGFFGG....",
}
FOX_COLORS = { F = 57, G = 41, K = 0, N = 11 }

CHICKEN = {
  ".....R......",
  "....KYK.....",
  "....GYG.....",
  "....YGY.....",
  "....YRY.....",
  "...GYYYG....",
  "..GYYYYYG...",
  "..GYYYYYG...",
  "..GYGGGYG...",
  "...O...O....",
  "..OOO.OOO...",
}
CHICKEN_COLORS = { Y = 56, G = 41, R = 57, K = 0, O = 24 }

SQUISH = {
  "....GG......",
  "....NN......",
  "....GG......",
  "...PPPPP....",
  "..PKKPKKP...",
  "..PPRRRPP...",
  "..PRRRRRP...",
  "..PPRRRPP...",
  "..PPRRRPP...",
  "..PPPPPPP...",
  "...PP.PP....",
}
SQUISH_COLORS = { P = 21, R = 49, K = 0, G = 23, N = 22 }

TREE = {
  ".....GG.....",
  "....GGGG....",
  "...GGGGGG...",
  ".GGGGGGGGGG.",
  ".GGGGGGGGGG.",
  "...GGGGGG...",
  ".....TT.....",
  ".....TT.....",
  ".....TT.....",
  ".....TT.....",
  "............",
}
TREE_COLORS = { G = 12, T = 17 }

DINO = {
  ".......GGG..",
  "......GGGGG.",
  "......GKGGG.",
  "D.....GGGGG.",
  "DD...GGGGG..",
  "DGGGGGGGG...",
  "GGGGGGGGGG..",
  "DGGGGGGGGG..",
  ".GGGGGGGG...",
  "..GG..GG....",
  "..GG..GG....",
}
DINO_COLORS = { G = 12, D = 4, K = 0 }

TORNADO = {
  "GGGGGGGGGGGG",
  "LLLLLLLLLLLL",
  ".GGGGGGGGGG.",
  "..LLLLLLLL..",
  "...GGGGGG...",
  "....LLLL....",
  "....GGGG....",
  ".....LL.....",
  ".....GG.....",
  ".....LL.....",
  "......G.....",
}
TORNADO_COLORS = { G = 23, L = 7 }

SPIDER = {
  "YYYPPPYYY",
  "Y..PPP..Y",
  "...PPP...",
  "YYYPPPYYY",
  "Y.......Y",
}
SPIDER_COLORS = { Y = 14, P = 21 }

ACORN = {
  "....S....",
  "..GGGGG..",
  ".GGGGGGG.",
  ".GGGGGGG.",
  "..BBBBB..",
  "..BBBBB..",
  "..BBBBB..",
  "...BBB...",
  "....B....",
}
ACORN_COLORS = { G = 12, B = 17, S = 4 }

LEMON = {
  ".GG......",
  ".GG......",
  "..YYYYY..",
  ".YYYYYYY.",
  "YYYYYYYYY",
  "YYYYYYYYY",
  ".YYYYYYY.",
  "..YYYYY..",
  ".........",
}
LEMON_COLORS = { Y = 14, G = 12 }

FISH = {
  ".........",
  "...GGG..G",
  "..GGGGG.G",
  ".GGGGGGGG",
  "GNGGGGGGG",
  ".GGGGGGGG",
  "..GGGGG.G",
  "...GGG..G",
  ".........",
}
FISH_COLORS = { G = 23, N = 22 }

DROPLET = {
  "....D....",
  "...DBD...",
  "...DBD...",
  "..DBBBD..",
  ".DBBBBBD.",
  ".DBBWBBD.",
  ".DBBBBBD.",
  "..DBBBD..",
  "...DDD...",
}
DROPLET_COLORS = { B = 13, D = 9, W = 15 }

LIGHTNING = {
  "....YYY..",
  "...YYY...",
  "..YYY....",
  ".YYYYYY..",
  "...YYYY..",
  "....YYY..",
  "...YYY...",
  "..YYY....",
  ".YY......",
}
LIGHTNING_COLORS = { Y = 14 }
-- The heroes a child can choose. The first one is what
-- they get when the word is not one of these.
HEROES = { }
HEROES.cat = { rows = CAT, colors = CAT_COLORS }
HEROES.turtle = { rows = TURTLE, colors = TURTLE_COLORS }
HEROES.ufo = { rows = UFO, colors = UFO_COLORS }
HEROES.mouse = { rows = MOUSE, colors = MOUSE_COLORS }
HEROES.dog = { rows = DOG, colors = DOG_COLORS }
HEROES.fox = { rows = FOX, colors = FOX_COLORS }
HEROES.chicken = { rows = CHICKEN, colors = CHICKEN_COLORS }
HEROES.squish = { rows = SQUISH, colors = SQUISH_COLORS }
HEROES.tree = { rows = TREE, colors = TREE_COLORS }
HEROES.dino = { rows = DINO, colors = DINO_COLORS }
HEROES.tornado = { rows = TORNADO, colors = TORNADO_COLORS }
HEROES.spider = { rows = SPIDER, colors = SPIDER_COLORS }
HERO_NAMES = {
  "cat", "turtle", "ufo", "mouse", "dog", "fox",
  "chicken", "squish", "tree", "dino", "tornado", "spider",
}

-- The foods a child can choose, same rule.
FOODS = { }
FOODS.star = { rows = STAR, colors = STAR_COLORS }
FOODS.cheese = { rows = CHEESE, colors = CHEESE_COLORS }
FOODS.apple = { rows = APPLE, colors = APPLE_COLORS }
FOODS.acorn = { rows = ACORN, colors = ACORN_COLORS }
FOODS.lemon = { rows = LEMON, colors = LEMON_COLORS }
FOODS.fish = { rows = FISH, colors = FISH_COLORS }
FOODS.droplet = { rows = DROPLET, colors = DROPLET_COLORS }
FOODS.lightning = { rows = LIGHTNING, colors = LIGHTNING_COLORS }
FOOD_NAMES = {
  "star", "cheese", "apple", "acorn", "lemon",
  "fish", "droplet", "lightning",
}
