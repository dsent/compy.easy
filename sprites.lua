-- Pictures are drawn here as letters, one letter per big
-- square. A dot is empty. Every other letter is a colour
-- from the list just below.
-- Every row in a picture must be the same length.

COLORS = { }
COLORS.R = 10 -- red
COLORS.Y = 14 -- yellow
COLORS.G = 12 -- green
COLORS.B = 9  -- blue
COLORS.W = 15 -- white
COLORS.K = 0  -- black
COLORS.O = 24 -- orange
COLORS.P = 30 -- pink
COLORS.N = 25 -- brown
COLORS.C = 28 -- cyan
COLORS.V = 29 -- violet
COLORS.A = 31 -- gray

CAT = {
  "..YY....YY..",
  "..YPY..YPY..",
  "..YYYYYYYY..",
  ".YYWYYYYWYY.",
  "YYWWKYYKWWYY",
  ".YYYYPPYYYY.",
  "..YYYYYYYY..",
  "..YYYYYYYY..",
  "..YYYYYYYY..",
  "..YYYYYYYY..",
  "..YYY..YYY..",
  "..YYY..YYY..",
}

TURTLE = {
  ".....GG.....",
  "GGG.GGGG.GGG",
  "GGGOKGGKOGGG",
  ".GGGNNNNGGG.",
  "..GNNOONNG..",
  "..NNOGGONN..",
  "..NOGNNGON..",
  "..NOGNNGON..",
  "..GNOGGONG..",
  ".GGNNOONNGG.",
  "GGG.NNNN.GGG",
  "GGG..GG..GGG",
}

UFO = {
  "....CCCC....",
  "...CCCCCC...",
  "..CCCCCCCC..",
  ".AAAAAAAAAA.",
  "AAAAAAAAAAAA",
  "APPAAPPAAPPA",
  ".AAAAAAAAAA.",
  "..AAAAAAAA..",
  "...A....A...",
  "..PP....PP..",
  "............",
}

MOUSE = {
  ".WWW....WWW.",
  "WPPPW..WPPPW",
  "WWPPWWWWPPWW",
  ".WWAAWWAAWW.",
  "..AAKAAKAA..",
  "...AAPPAA...",
  "...WAAAAW.WW",
  "..WWWAAWWW.W",
  "..WWWAAWWW.W",
  "..WWWAAWWWWW",
  "...WW..WW...",
  "....W..W....",
}

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

CHEESE = {
  ".....OOOOO",
  "...OOOOYYY",
  ".OOOYKYYYY",
  "OOYOYYYKYK",
  "YYYYYYYYYY",
  "YYYYKYYYK.",
  "YKYYYYYYY.",
  "YYYKKYYY..",
  "YYYKKYY...",
  "YYYYYY....",
}

APPLE = {
  "....N.GG..",
  ".RR.NGGRR.",
  "RRRRNGRRRR",
  "RRRRRRRRRR",
  "RRWRRRRRRR",
  "RRWRRRRRRR",
  "RRRRRRRRRR",
  ".RRRRRRRR.",
  "..RRRRRR..",
  "...RRRR...",
}

DOG = {
  "..ON...NO..",
  "...NONON...",
  "...OKNKO...",
  "...NOKON...",
  "...ONPNO.OO",
  "...ONNNO.O.",
  "...ONONO.N.",
  "...OO.OONN.",
  "..OOO.OOO..",
}

FOX = {
  "..O......O....",
  "..OO....OO....",
  "..OYO..OYO....",
  ".YOOWOOWOOY...",
  "YOOWKOOKWOOY..",
  ".YOOWPPWOOY...",
  "..OYOOOOYO....",
  "..OYYYYYYO.OYY",
  "..OOYYYYOO.OOY",
  "..OOOYYOOOOOOY",
  "..OYO..OYOOOO.",
  "..YYY..YYYOOO.",
}

-- The first fox, kept as its own picture. Nothing a child was
-- given is taken away when a redrawn version arrives.
POKEFOX = {
  "..O...O.....",
  ".OOO.OOO....",
  "YOOOOOOOOY..",
  "YOKOOOOKOY..",
  "YOOOPPOOOY..",
  ".OYYYYYYO...",
  ".OYYYYYYO.YY",
  "OOYYYYYYOOYY",
  ".OYYYYYYOOY.",
  ".OOYOOYOO...",
  "..YYOOYY....",
}

CHICKEN = {
  ".....R.....",
  "....KWK....",
  "....YYY....",
  "....WYW....",
  "....WRW....",
  "....WRW....",
  "...YWWWY...",
  "..YWWWWWY..",
  "..YWWWWWY..",
  "..YWYYYWY..",
  "...YY.YY...",
  "....O.O....",
  "...OO.OO...",
}

SQUISH = {
  "..A..",
  "..A..",
  "..A..",
  ".VVV.",
  "VKVKV",
  "VVPVV",
  "VPPPV",
  "VVPVV",
  "VPPPV",
  ".VVV.",
}

TREE = {
  ".....GG.....",
  "....GGGG....",
  "...GGGGGG...",
  ".GGGGGGGGGG.",
  ".GGGGGGGGGG.",
  "...GGGGGG...",
  ".....NN.....",
  ".....NN.....",
  ".....NN.....",
  ".....NN.....",
  "............",
}

DINO = {
  ".......GGG..",
  "......GGGGG.",
  "......GKGGG.",
  "G.....GGGGG.",
  "GG...GGGGG..",
  "GGGGGGGGG...",
  "GGGGGGGGGG..",
  "GGGGGGGGGG..",
  ".GGGGGGGG...",
  "..GG..GG....",
  "..GG..GG....",
}

DIPLO = {
  ".GGG..........",
  ".GKG..........",
  "..GG..........",
  "..GG..........",
  "..GG.......GG.",
  "..GGGGGGGGGGG.",
  "..GGGGGGGGGG..",
  "...GG....GG...",
  "...NN....NN...",
}

TORNADO = {
  "AAAAAAAAAAAA",
  "WWWWWWWWWWWW",
  ".AAAAAAAAAA.",
  "..WWWWWWWW..",
  "...AAAAAA...",
  "....WWWW....",
  "....AAAA....",
  ".....WW.....",
  ".....AA.....",
  ".....WW.....",
  "......A.....",
}

METEOR = {
  ".....R..R....",
  "...RYYRRYR...",
  "..ROOOOOOR...",
  ".RYOAAAAOOR..",
  ".ROAAKAAAOR..",
  ".RYOAAAKAOR..",
  "..ROAAAAOOR..",
  "...ROOOOOR...",
  "....RRRRR....",
}

SPIDER = {
  "..W...W..",
  "...VVV...",
  "YYYVVVYYY",
  "Y..VVV..Y",
  "...VVV...",
  "YYYVVVYYY",
  "Y.......Y",
}

HAMSTER = {
  ".N....N.",
  ".NNNNNN.",
  ".NBNNBN.",
  ".NNYYNN.",
  "..NNNN..",
  ".NNNNNN.",
  "NNKNNKNN",
  "NNKNNKNN",
  ".NNNNNN.",
}

ROCKET = {
  ".....BB.....",
  "....CCCC....",
  "....BBBB....",
  "...CCCCCC...",
  "..BBAAAABB..",
  ".BBBAPPABBB.",
  "BBB.WPPA.BBB",
  "B..AWAAAA..B",
  "..AAAAAAAA..",
  ".AAAAAAAAAA.",
  "...WW..WW...",
  "...VP..PV...",
}

FISH2 = {
  "...BCC....",
  "....BCC...",
  "BCC..BCC..",
  ".BC.CCWYC.",
  "..CCCWYKYB",
  "..CCCCWYCB",
  ".BC.CCCCC.",
  "BCC..BCC..",
  "....BCC...",
  "...BCC....",
}

BEE = {
  "..A..A..",
  "..AAAA..",
  "CCYYYYCC",
  "CCAAAACC",
  ".CYYYYC.",
  "..AAAA..",
  "...AA...",
}

RAINBOW = {
  "....PPPPP....",
  "...PCCCCCP...",
  "..PCGGGGGCP..",
  ".PCGYYYYYGCP.",
  "PCGYRRRRRYGCP",
  "PCGYR...RYGCP",
  "PCGYR...RYGCP",
}
ACORN = {
  "...N...",
  "...N...",
  "..NNN..",
  ".NNNNN.",
  "NNNNNNN",
  ".OOOOO.",
  ".OOOOO.",
  ".OOOOO.",
  "..OOO..",
  "...O...",
}

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

FISH = {
  "AAAAA.AA",
  "AKAAAAAA",
  "AAPKAAAA",
  "KKKKAAAA",
  "AAAAA.AA",
}

DROPLET = {
  "....B....",
  "...BCB...",
  "...BCB...",
  "..BCCCB..",
  ".BCCCCCB.",
  ".BCCWCCB.",
  ".BCCCCCB.",
  "..BCCCB..",
  "...BBB...",
}

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
-- The heroes a child can choose. The first one is what
-- they get when the word is not one of these.
HEROES = { }
HEROES.cat = CAT
HEROES.turtle = TURTLE
HEROES.ufo = UFO
HEROES.mouse = MOUSE
HEROES.dog = DOG
HEROES.fox = FOX
HEROES.pokefox = POKEFOX
HEROES.chicken = CHICKEN
HEROES.squish = SQUISH
HEROES.tree = TREE
HEROES.dino = DINO
HEROES.diplo = DIPLO
HEROES.tornado = TORNADO
HEROES.meteor = METEOR
HEROES.spider = SPIDER
HEROES.hamster = HAMSTER
HEROES.bee = BEE
HEROES.rocket = ROCKET
HEROES.fish = FISH
HEROES.lemon = LEMON2

-- The menus list every picture, in alphabetical order.
function sortedNames(set)
  local names = {}
  for name in pairs(set) do names[#names + 1] = name end
  table.sort(names)
  return names
end

-- The foods a child can choose, same rule.
FOODS = { }
FOODS.star = STAR
FOODS.cheese = CHEESE
FOODS.apple = APPLE
FOODS.acorn = ACORN
FOODS.lemon = LEMON
FOODS.droplet = DROPLET
FOODS.lightning = LIGHTNING
FOODS.rainbow = RAINBOW
FOODS.fish = FISH2
