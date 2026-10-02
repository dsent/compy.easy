-- The pictures that come with the game. Each one is drawn
-- as letters, one letter per big square: a dot is empty,
-- every other letter is a color from colors.lua.
-- Every row in a picture must be the same length.

PICTURES = { }

PICTURES.cat = {
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
  "..YYY..YYY.."
}

PICTURES.turtle = {
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
  "GGG..GG..GGG"
}

PICTURES.ufo = {
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
  "............"
}

PICTURES.mouse = {
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
  "....W..W...."
}

PICTURES.star = {
  "....Y....",
  "...YYY...",
  "YY.YWY.YY",
  "YWYYWYYWY",
  ".YWYYYWY.",
  "..YYYYY..",
  ".YWYYYWY.",
  "YWYY.YYWY",
  "YY.....YY"
}

PICTURES.cheese = {
  ".....OOOOO",
  "...OOOOYYY",
  ".OOOYKYYYY",
  "OOYOYYYKYK",
  "YYYYYYYYYY",
  "YYYYKYYYK.",
  "YKYYYYYYY.",
  "YYYKKYYY..",
  "YYYKKYY...",
  "YYYYYY...."
}

PICTURES.apple = {
  "....N.GG..",
  ".RR.NGGRR.",
  "RRRRNGRRRR",
  "RRRRRRRRRR",
  "RRWRRRRRRR",
  "RRWRRRRRRR",
  "RRRRRRRRRR",
  ".RRRRRRRR.",
  "..RRRRRR..",
  "...RRRR..."
}

PICTURES.dog = {
  "..ON...NO..",
  "...NONON...",
  "...OKNKO...",
  "...NOKON...",
  "...ONPNO.OO",
  "...ONNNO.O.",
  "...ONONO.N.",
  "...OO.OONN.",
  "..OOO.OOO.."
}

PICTURES.fox = {
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
  "..YYY..YYYOOO."
}

-- The first fox, kept as its own picture. Nothing a child was
-- given is taken away when a redrawn version arrives.
PICTURES.pokefox = {
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
  "..YYOOYY...."
}

PICTURES.chicken = {
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
  "...OO.OO..."
}

PICTURES.squish = {
  "..A..",
  "..A..",
  "..A..",
  ".VVV.",
  "VKVKV",
  "VVPVV",
  "VPPPV",
  "VVPVV",
  "VPPPV",
  ".VVV."
}

PICTURES.tree = {
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
  "............"
}

PICTURES.dino = {
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
  "..GG..GG...."
}

PICTURES.diplo = {
  ".GGG..........",
  ".GKG..........",
  "..GG..........",
  "..GG..........",
  "..GG.......GG.",
  "..GGGGGGGGGGG.",
  "..GGGGGGGGGG..",
  "...GG....GG...",
  "...NN....NN..."
}

PICTURES.tornado = {
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
  "......A....."
}

PICTURES.meteor = {
  ".....R..R....",
  "...RYYRRYR...",
  "..ROOOOOOR...",
  ".RYOAAAAOOR..",
  ".ROAAKAAAOR..",
  ".RYOAAAKAOR..",
  "..ROAAAAOOR..",
  "...ROOOOOR...",
  "....RRRRR...."
}

PICTURES.spider = {
  "..W...W..",
  "...VVV...",
  "YYYVVVYYY",
  "Y..VVV..Y",
  "...VVV...",
  "YYYVVVYYY",
  "Y.......Y"
}

PICTURES.hamster = {
  ".N....N.",
  ".NNNNNN.",
  ".NBNNBN.",
  ".NNYYNN.",
  "..NNNN..",
  ".NNNNNN.",
  "NNKNNKNN",
  "NNKNNKNN",
  ".NNNNNN."
}

PICTURES.rocket = {
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
  "...VP..PV..."
}

PICTURES.fish = {
  "...BCC....",
  "....BCC...",
  "BCC..BCC..",
  ".BC.CCWYC.",
  "..CCCWYKYB",
  "..CCCCWYCB",
  ".BC.CCCCC.",
  "BCC..BCC..",
  "....BCC...",
  "...BCC...."
}

PICTURES.bee = {
  "..A..A..",
  "..AAAA..",
  "CCYYYYCC",
  "CCAAAACC",
  ".CYYYYC.",
  "..AAAA..",
  "...AA..."
}

PICTURES.rainbow = {
  "....PPPPP....",
  "...PCCCCCP...",
  "..PCGGGGGCP..",
  ".PCGYYYYYGCP.",
  "PCGYRRRRRYGCP",
  "PCGYR...RYGCP",
  "PCGYR...RYGCP"
}
PICTURES.acorn = {
  "...N...",
  "...N...",
  "..NNN..",
  ".NNNNN.",
  "NNNNNNN",
  ".OOOOO.",
  ".OOOOO.",
  ".OOOOO.",
  "..OOO..",
  "...O..."
}

-- The lemon that eats, with the eyes and teeth to prove it.
PICTURES.lemon = {
  ".GG........",
  ".GG........",
  ".GGYYYYYYY.",
  "..YKYYYKYYY",
  "..YYYYYYYYY",
  "..YYKKKKKYY",
  "....KWKWKYY",
  "....YYYYYY."
}

PICTURES.smallfish = {
  "AAAAA.AA",
  "AKAAAAAA",
  "AAPKAAAA",
  "KKKKAAAA",
  "AAAAA.AA"
}

PICTURES.droplet = {
  "....B....",
  "...BCB...",
  "...BCB...",
  "..BCCCB..",
  ".BCCCCCB.",
  ".BCCWCCB.",
  ".BCCCCCB.",
  "..BCCCB..",
  "...BBB..."
}

PICTURES.lightning = {
  "....YYY..",
  "...YYY...",
  "..YYY....",
  ".YYYYYY..",
  "...YYYY..",
  "....YYY..",
  "...YYY...",
  "..YYY....",
  ".YY......"
}
