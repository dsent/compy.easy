-- Pictures are drawn here as letters, one letter per big
-- square. A dot is empty. Every other letter is looked up
-- in that picture's own colour list below it.
-- Every row in a picture must be the same length.

CAT = {
  "..YY....YY..",
  "..YMY..YMY..",
  "..YYYYYYYY..",
  ".YYWYYYYWYY.",
  "YYWWKYYKWWYY",
  ".YYYYMMYYYY.",
  "..YYYYYYYY..",
  "..YYYYYYYY..",
  "..YYYYYYYY..",
  "..YYYYYYYY..",
  "..YYY..YYY..",
  "..YYY..YYY..",
}
CAT_COLORS = { Y = 14, W = 15, K = 0, M = 11 }

TURTLE = {
  ".....GG.....",
  "GGG.GGGG.GGG",
  "GGGYKGGKYGGG",
  ".GGGEEEEGGG.",
  "..GEEYYEEG..",
  "..EEYGGYEE..",
  "..EYGEEGYE..",
  "..EYGEEGYE..",
  "..GEYGGYEG..",
  ".GGEEYYEEGG.",
  "GGG.EEEE.GGG",
  "GGG..GG..GGG",
}
TURTLE_COLORS = { G = 12, E = 4, Y = 6, K = 0 }

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
  ".WWW....WWW.",
  "WMMMW..WMMMW",
  "WWMMWWWWMMWW",
  ".WWAAWWAAWW.",
  "..AAKAAKAA..",
  "...AAMMAA...",
  "...WAAAAW.WW",
  "..WWWAAWWW.W",
  "..WWWAAWWW.W",
  "..WWWAAWWWWW",
  "...WW..WW...",
  "....W..W....",
}
MOUSE_COLORS = { W = 15, A = 7, M = 11, K = 0 }

STAR = {
  "....Y....",
  "...YYY...",
  "YY.YWY.YY",
  "YWYYWYYWY",
  ".YWYYYWY.",
  "..YYYYY..",
  ".YWYYYWY.",
  "YWYY.YYWY",
  "YY.....YY",
}
STAR_COLORS = { Y = 14, W = 15 }

CHEESE = {
  ".....YYYYY",
  "...YYYYEEE",
  ".YYYEKEEEE",
  "YYEYEEEKEK",
  "EEEEEEEEEE",
  "EEEEKEEEK.",
  "EKEEEEEEE.",
  "EEEKKEEE..",
  "EEEKKEE...",
  "EEEEEE....",
}
CHEESE_COLORS = { E = 14, Y = 6, K = 0 }

APPLE = {
  "....G.EE..",
  ".RR.GEERR.",
  "FRRRGERRRR",
  "FFRRRRRRRR",
  "FFWRRRRRRR",
  "FFWRRRRRRR",
  "FFFRRRRRRR",
  ".FFFRRRRR.",
  "..FFFFRR..",
  "...FFFF...",
}
APPLE_COLORS = { R = 10, F = 2, G = 12, E = 4, W = 15 }

DOG = {
  "..TB...BT..",
  "...BTBTB...",
  "...TKBKT...",
  "...BTKTB...",
  "...TBNBT.TT",
  "...TBBBT.T.",
  "...TBTBT.B.",
  "...TT.TTBB.",
  "..TTT.TTT..",
}
DOG_COLORS = { B = 17, T = 18, K = 0, N = 11 }

FOX = {
  "..F......F....",
  "..FF....FF....",
  "..FGF..FGF....",
  ".GFFWFFWFFG...",
  "GFFWKFFKWFFG..",
  ".GFFWNNWFFG...",
  "..FGFFFFGF....",
  "..FGGGGGGF.FGG",
  "..FFGGGGFF.FFG",
  "..FFFGGFFFFFFG",
  "..FGF..FGFFFF.",
  "..GGG..GGGFFF.",
}
FOX_COLORS = { F = 40, G = 24, K = 8, N = 11, W = 15 }

-- The first fox, kept as its own picture. Nothing a child was
-- given is taken away when a redrawn version arrives.
POKEFOX = {
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
POKEFOX_COLORS = { F = 57, G = 41, K = 0, N = 11 }

CHICKEN = {
  ".....R.....",
  "....KYK....",
  "....GGG....",
  "....YGY....",
  "....YRY....",
  "....YRY....",
  "...GYYYG...",
  "..GYYYYYG..",
  "..GYYYYYG..",
  "..GYGGGYG..",
  "...GG.GG...",
  "....O.O....",
  "...OO.OO...",
}
CHICKEN_COLORS = { Y = 15, G = 41, R = 57, K = 0, O = 24 }

SQUISH = {
  "..G..",
  "..G..",
  "..G..",
  ".PPP.",
  "PKPKP",
  "PPRPP",
  "PRRRP",
  "PPRPP",
  "PRRRP",
  ".PPP.",
}
SQUISH_COLORS = { P = 21, R = 49, K = 0, G = 23 }

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

DIPLO = {
  ".GGG..........",
  ".GKG..........",
  "..GG..........",
  "..GG..........",
  "..GG.......GG.",
  "..GGGGGGGGGGG.",
  "..GGGGGGGGGG..",
  "...GG....GG...",
  "...DD....DD...",
}
DIPLO_COLORS = { G = 12, D = 4, K = 0 }

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

METEOR = {
  ".....R..R....",
  "...RYYRRYR...",
  "..ROOOOOOR...",
  ".RYOSSSSOOR..",
  ".ROSSKSSSOR..",
  ".RYOSSSKSOR..",
  "..ROSSSSOOR..",
  "...ROOOOOR...",
  "....RRRRR....",
}
METEOR_COLORS = { R = 10, Y = 14, O = 24, S = 23, K = 8 }

SPIDER = {
  "..W...W..",
  "...PPP...",
  "YYYPPPYYY",
  "Y..PPP..Y",
  "...PPP...",
  "YYYPPPYYY",
  "Y.......Y",
}
SPIDER_COLORS = { Y = 14, P = 21, W = 15 }

HAMSTER = {
  ".X....X.",
  ".XXXXXX.",
  ".XSXXSX.",
  ".XXEEXX.",
  "..XXXX..",
  ".XXXXXX.",
  "XXIXXIXX",
  "XXIXXIXX",
  ".XXXXXX.",
}
HAMSTER_COLORS = { X = 25, S = 1, E = 41, I = 0 }

ROCKET = {
  ".....SS.....",
  "....CCCC....",
  "....SSSS....",
  "...CCCCCC...",
  "..BBAAAABB..",
  ".BBBAMMABBB.",
  "BBB.WMMA.BBB",
  "B..AWAAAA..B",
  "..AAAAAAAA..",
  ".AAAAAAAAAA.",
  "...WW..WW...",
  "...EM..ME...",
}
ROCKET_COLORS = { A = 7, B = 9, C = 13, S = 28, M = 11, E = 3, W = 15 }

FISH2 = {
  "...SCC....",
  "....SCC...",
  "SCC..SCC..",
  ".SC.CCWYC.",
  "..CCCWYKYS",
  "..CCCCWYCS",
  ".SC.CCCCC.",
  "SCC..SCC..",
  "....SCC...",
  "...SCC....",
}
FISH2_COLORS = { C = 13, S = 28, W = 15, Y = 14, K = 0 }

BEE = {
  "..X..X..",
  "..XXXX..",
  "OOIIIIOO",
  "OOXXXXOO",
  ".OIIIIO.",
  "..XXXX..",
  "...XX...",
}
BEE_COLORS = { X = 23, O = 13, I = 14 }

RAINBOW = {
  "....MMMMM....",
  "...MCCCCCM...",
  "..MCGGGGGCM..",
  ".MCGYYYYYGCM.",
  "MCGYRRRRRYGCM",
  "MCGYR...RYGCM",
  "MCGYR...RYGCM",
}
RAINBOW_COLORS = { M = 11, C = 13, G = 12, Y = 14, R = 10 }
ACORN = {
  "...O...",
  "...O...",
  "..OOO..",
  ".OOOOO.",
  "OOOOOOO",
  ".XXXXX.",
  ".XXXXX.",
  ".XXXXX.",
  "..XXX..",
  "...X...",
}
ACORN_COLORS = { O = 4, X = 17 }

LEMON = {
  ".GG........",
  ".GG........",
  ".GGYYYYYYY.",
  "..YYYYYYYYY",
  "..YYYYYYYYY",
  "..YYYYYYYYY",
  "....YYYYYYY",
  "....YYYYYY.",
}
LEMON_COLORS = { Y = 14, G = 12 }

-- The lemon that eats, with the eyes and teeth to prove it.
LEMON2 = {
  ".GG........",
  ".GG........",
  ".GGYYYYYYY.",
  "..YKYYYKYYY",
  "..YYYYYYYYY",
  "..YYKKKKKYY",
  "....KWKWKYY",
  "....YYYYYY.",
}
LEMON2_COLORS = { Y = 14, G = 12, K = 0, W = 15 }

FISH = {
  "GGGGG.GG",
  "GBGGGGGG",
  "GGPBGGGG",
  "BBBBGGGG",
  "GGGGG.GG",
}
FISH_COLORS = { G = 23, P = 22, B = 0 }

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
HEROES.pokefox = { rows = POKEFOX, colors = POKEFOX_COLORS }
HEROES.chicken = { rows = CHICKEN, colors = CHICKEN_COLORS }
HEROES.squish = { rows = SQUISH, colors = SQUISH_COLORS }
HEROES.tree = { rows = TREE, colors = TREE_COLORS }
HEROES.dino = { rows = DINO, colors = DINO_COLORS }
HEROES.diplo = { rows = DIPLO, colors = DIPLO_COLORS }
HEROES.tornado = { rows = TORNADO, colors = TORNADO_COLORS }
HEROES.meteor = { rows = METEOR, colors = METEOR_COLORS }
HEROES.spider = { rows = SPIDER, colors = SPIDER_COLORS }
HEROES.hamster = { rows = HAMSTER, colors = HAMSTER_COLORS }
HEROES.bee = { rows = BEE, colors = BEE_COLORS }
HEROES.rocket = { rows = ROCKET, colors = ROCKET_COLORS }
HEROES.fish = { rows = FISH, colors = FISH_COLORS }
HEROES.lemon = { rows = LEMON2, colors = LEMON2_COLORS }

-- The menus list every picture above, in alphabetical order.
function sortedNames(set)
  local names = {}
  for name in pairs(set) do names[#names + 1] = name end
  table.sort(names)
  return names
end

HERO_NAMES = sortedNames(HEROES)

-- The foods a child can choose, same rule.
FOODS = { }
FOODS.star = { rows = STAR, colors = STAR_COLORS }
FOODS.cheese = { rows = CHEESE, colors = CHEESE_COLORS }
FOODS.apple = { rows = APPLE, colors = APPLE_COLORS }
FOODS.acorn = { rows = ACORN, colors = ACORN_COLORS }
FOODS.lemon = { rows = LEMON, colors = LEMON_COLORS }
FOODS.droplet = { rows = DROPLET, colors = DROPLET_COLORS }
FOODS.lightning = { rows = LIGHTNING, colors = LIGHTNING_COLORS }
FOODS.rainbow = { rows = RAINBOW, colors = RAINBOW_COLORS }
FOODS.fish = { rows = FISH2, colors = FISH2_COLORS }
FOOD_NAMES = sortedNames(FOODS)
