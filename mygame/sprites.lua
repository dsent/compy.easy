-- The pictures that come with the game. Each one has rows
-- of letters, one letter per big square, and its own colors:
-- each letter it uses, and the name of a color from
-- colors.lua. A dot is an empty square.
-- Every row in a picture must be the same length.

PICTURES = { }

PICTURES.cat = { rows = { } }
PICTURES.cat.rows[1] = "..YY....YY.."
PICTURES.cat.rows[2] = "..YMY..YMY.."
PICTURES.cat.rows[3] = "..YYYYYYYY.."
PICTURES.cat.rows[4] = ".YYWYYYYWYY."
PICTURES.cat.rows[5] = "YYWWKYYKWWYY"
PICTURES.cat.rows[6] = ".YYYYMMYYYY."
PICTURES.cat.rows[7] = "..YYYYYYYY.."
PICTURES.cat.rows[8] = "..YYYYYYYY.."
PICTURES.cat.rows[9] = "..YYYYYYYY.."
PICTURES.cat.rows[10] = "..YYYYYYYY.."
PICTURES.cat.rows[11] = "..YYY..YYY.."
PICTURES.cat.rows[12] = "..YYY..YYY.."
PICTURES.cat.colors = {
  Y = "yellow",
  W = "white",
  K = "black",
  M = "magenta"
}

PICTURES.turtle = { rows = { } }
PICTURES.turtle.rows[1] = ".....GG....."
PICTURES.turtle.rows[2] = "GGG.GGGG.GGG"
PICTURES.turtle.rows[3] = "GGGYKGGKYGGG"
PICTURES.turtle.rows[4] = ".GGGEEEEGGG."
PICTURES.turtle.rows[5] = "..GEEYYEEG.."
PICTURES.turtle.rows[6] = "..EEYGGYEE.."
PICTURES.turtle.rows[7] = "..EYGEEGYE.."
PICTURES.turtle.rows[8] = "..EYGEEGYE.."
PICTURES.turtle.rows[9] = "..GEYGGYEG.."
PICTURES.turtle.rows[10] = ".GGEEYYEEGG."
PICTURES.turtle.rows[11] = "GGG.EEEE.GGG"
PICTURES.turtle.rows[12] = "GGG..GG..GGG"
PICTURES.turtle.colors = {
  G = "green",
  E = "darkgreen",
  Y = "olive",
  K = "black"
}

PICTURES.ufo = { rows = { } }
PICTURES.ufo.rows[1] = "....DDDD...."
PICTURES.ufo.rows[2] = "...DDDDDD..."
PICTURES.ufo.rows[3] = "..DDDDDDDD.."
PICTURES.ufo.rows[4] = ".BBBBBBBBBB."
PICTURES.ufo.rows[5] = "BBBBBBBBBBBB"
PICTURES.ufo.rows[6] = "BLLBBLLBBLLB"
PICTURES.ufo.rows[7] = ".BBBBBBBBBB."
PICTURES.ufo.rows[8] = "..BBBBBBBB.."
PICTURES.ufo.rows[9] = "...B....B..."
PICTURES.ufo.rows[10] = "..LL....LL.."
PICTURES.ufo.rows[11] = "............"
PICTURES.ufo.colors = {
  D = "cyan",
  B = "lightgray",
  L = "magenta"
}

PICTURES.mouse = { rows = { } }
PICTURES.mouse.rows[1] = ".WWW....WWW."
PICTURES.mouse.rows[2] = "WMMMW..WMMMW"
PICTURES.mouse.rows[3] = "WWMMWWWWMMWW"
PICTURES.mouse.rows[4] = ".WWAAWWAAWW."
PICTURES.mouse.rows[5] = "..AAKAAKAA.."
PICTURES.mouse.rows[6] = "...AAMMAA..."
PICTURES.mouse.rows[7] = "...WAAAAW.WW"
PICTURES.mouse.rows[8] = "..WWWAAWWW.W"
PICTURES.mouse.rows[9] = "..WWWAAWWW.W"
PICTURES.mouse.rows[10] = "..WWWAAWWWWW"
PICTURES.mouse.rows[11] = "...WW..WW..."
PICTURES.mouse.rows[12] = "....W..W...."
PICTURES.mouse.colors = {
  W = "white",
  A = "lightgray",
  M = "magenta",
  K = "black"
}

PICTURES.star = { rows = { } }
PICTURES.star.rows[1] = "....Y...."
PICTURES.star.rows[2] = "...YYY..."
PICTURES.star.rows[3] = "YY.YWY.YY"
PICTURES.star.rows[4] = "YWYYWYYWY"
PICTURES.star.rows[5] = ".YWYYYWY."
PICTURES.star.rows[6] = "..YYYYY.."
PICTURES.star.rows[7] = ".YWYYYWY."
PICTURES.star.rows[8] = "YWYY.YYWY"
PICTURES.star.rows[9] = "YY.....YY"
PICTURES.star.colors = {
  Y = "yellow",
  W = "white"
}

PICTURES.cheese = { rows = { } }
PICTURES.cheese.rows[1] = ".....YYYYY"
PICTURES.cheese.rows[2] = "...YYYYEEE"
PICTURES.cheese.rows[3] = ".YYYEKEEEE"
PICTURES.cheese.rows[4] = "YYEYEEEKEK"
PICTURES.cheese.rows[5] = "EEEEEEEEEE"
PICTURES.cheese.rows[6] = "EEEEKEEEK."
PICTURES.cheese.rows[7] = "EKEEEEEEE."
PICTURES.cheese.rows[8] = "EEEKKEEE.."
PICTURES.cheese.rows[9] = "EEEKKEE..."
PICTURES.cheese.rows[10] = "EEEEEE...."
PICTURES.cheese.colors = {
  E = "yellow",
  Y = "olive",
  K = "black"
}

PICTURES.apple = { rows = { } }
PICTURES.apple.rows[1] = "....G.EE.."
PICTURES.apple.rows[2] = ".RR.GEERR."
PICTURES.apple.rows[3] = "FRRRGERRRR"
PICTURES.apple.rows[4] = "FFRRRRRRRR"
PICTURES.apple.rows[5] = "FFWRRRRRRR"
PICTURES.apple.rows[6] = "FFWRRRRRRR"
PICTURES.apple.rows[7] = "FFFRRRRRRR"
PICTURES.apple.rows[8] = ".FFFRRRRR."
PICTURES.apple.rows[9] = "..FFFFRR.."
PICTURES.apple.rows[10] = "...FFFF..."
PICTURES.apple.colors = {
  R = "red",
  F = "darkred",
  G = "green",
  E = "darkgreen",
  W = "white"
}

PICTURES.dog = { rows = { } }
PICTURES.dog.rows[1] = "..TB...BT.."
PICTURES.dog.rows[2] = "...BTBTB..."
PICTURES.dog.rows[3] = "...TKBKT..."
PICTURES.dog.rows[4] = "...BTKTB..."
PICTURES.dog.rows[5] = "...TBNBT.TT"
PICTURES.dog.rows[6] = "...TBBBT.T."
PICTURES.dog.rows[7] = "...TBTBT.B."
PICTURES.dog.rows[8] = "...TT.TTBB."
PICTURES.dog.rows[9] = "..TTT.TTT.."
PICTURES.dog.colors = {
  B = "brown",
  T = "tan",
  K = "black",
  N = "magenta"
}

PICTURES.fox = { rows = { } }
PICTURES.fox.rows[1] = "..F......F...."
PICTURES.fox.rows[2] = "..FF....FF...."
PICTURES.fox.rows[3] = "..FGF..FGF...."
PICTURES.fox.rows[4] = ".GFFWFFWFFG..."
PICTURES.fox.rows[5] = "GFFWKFFKWFFG.."
PICTURES.fox.rows[6] = ".GFFWNNWFFG..."
PICTURES.fox.rows[7] = "..FGFFFFGF...."
PICTURES.fox.rows[8] = "..FGGGGGGF.FGG"
PICTURES.fox.rows[9] = "..FFGGGGFF.FFG"
PICTURES.fox.rows[10] = "..FFFGGFFFFFFG"
PICTURES.fox.rows[11] = "..FGF..FGFFFF."
PICTURES.fox.rows[12] = "..GGG..GGGFFF."
PICTURES.fox.colors = {
  F = "coral",
  G = "orange",
  K = "darkgray",
  N = "magenta",
  W = "white"
}

-- The first fox, kept as its own picture. Nothing a child was
-- given is taken away when a redrawn version arrives.
PICTURES.pokefox = { rows = { } }
PICTURES.pokefox.rows[1] = "..F...F....."
PICTURES.pokefox.rows[2] = ".FFF.FFF...."
PICTURES.pokefox.rows[3] = "GFFFFFFFFG.."
PICTURES.pokefox.rows[4] = "GFKFFFFKFG.."
PICTURES.pokefox.rows[5] = "GFFFNNFFFG.."
PICTURES.pokefox.rows[6] = ".FGGGGGGF..."
PICTURES.pokefox.rows[7] = ".FGGGGGGF.GG"
PICTURES.pokefox.rows[8] = "FFGGGGGGFFGG"
PICTURES.pokefox.rows[9] = ".FGGGGGGFFG."
PICTURES.pokefox.rows[10] = ".FFGFFGFF..."
PICTURES.pokefox.rows[11] = "..GGFFGG...."
PICTURES.pokefox.colors = {
  F = "salmon",
  G = "gold",
  K = "black",
  N = "magenta"
}

PICTURES.chicken = { rows = { } }
PICTURES.chicken.rows[1] = ".....R....."
PICTURES.chicken.rows[2] = "....KYK...."
PICTURES.chicken.rows[3] = "....GGG...."
PICTURES.chicken.rows[4] = "....YGY...."
PICTURES.chicken.rows[5] = "....YRY...."
PICTURES.chicken.rows[6] = "....YRY...."
PICTURES.chicken.rows[7] = "...GYYYG..."
PICTURES.chicken.rows[8] = "..GYYYYYG.."
PICTURES.chicken.rows[9] = "..GYYYYYG.."
PICTURES.chicken.rows[10] = "..GYGGGYG.."
PICTURES.chicken.rows[11] = "...GG.GG..."
PICTURES.chicken.rows[12] = "....O.O...."
PICTURES.chicken.rows[13] = "...OO.OO..."
PICTURES.chicken.colors = {
  Y = "white",
  G = "gold",
  R = "salmon",
  K = "black",
  O = "orange"
}

PICTURES.squish = { rows = { } }
PICTURES.squish.rows[1] = "..G.."
PICTURES.squish.rows[2] = "..G.."
PICTURES.squish.rows[3] = "..G.."
PICTURES.squish.rows[4] = ".PPP."
PICTURES.squish.rows[5] = "PKPKP"
PICTURES.squish.rows[6] = "PPRPP"
PICTURES.squish.rows[7] = "PRRRP"
PICTURES.squish.rows[8] = "PPRPP"
PICTURES.squish.rows[9] = "PRRRP"
PICTURES.squish.rows[10] = ".PPP."
PICTURES.squish.colors = {
  P = "purple",
  R = "salmon",
  K = "black",
  G = "gray"
}

PICTURES.tree = { rows = { } }
PICTURES.tree.rows[1] = ".....GG....."
PICTURES.tree.rows[2] = "....GGGG...."
PICTURES.tree.rows[3] = "...GGGGGG..."
PICTURES.tree.rows[4] = ".GGGGGGGGGG."
PICTURES.tree.rows[5] = ".GGGGGGGGGG."
PICTURES.tree.rows[6] = "...GGGGGG..."
PICTURES.tree.rows[7] = ".....TT....."
PICTURES.tree.rows[8] = ".....TT....."
PICTURES.tree.rows[9] = ".....TT....."
PICTURES.tree.rows[10] = ".....TT....."
PICTURES.tree.rows[11] = "............"
PICTURES.tree.colors = {
  G = "green",
  T = "brown"
}

PICTURES.dino = { rows = { } }
PICTURES.dino.rows[1] = ".......GGG.."
PICTURES.dino.rows[2] = "......GGGGG."
PICTURES.dino.rows[3] = "......GKGGG."
PICTURES.dino.rows[4] = "D.....GGGGG."
PICTURES.dino.rows[5] = "DD...GGGGG.."
PICTURES.dino.rows[6] = "DGGGGGGGG..."
PICTURES.dino.rows[7] = "GGGGGGGGGG.."
PICTURES.dino.rows[8] = "DGGGGGGGGG.."
PICTURES.dino.rows[9] = ".GGGGGGGG..."
PICTURES.dino.rows[10] = "..GG..GG...."
PICTURES.dino.rows[11] = "..GG..GG...."
PICTURES.dino.colors = {
  G = "green",
  D = "darkgreen",
  K = "black"
}

PICTURES.diplo = { rows = { } }
PICTURES.diplo.rows[1] = ".GGG.........."
PICTURES.diplo.rows[2] = ".GKG.........."
PICTURES.diplo.rows[3] = "..GG.........."
PICTURES.diplo.rows[4] = "..GG.........."
PICTURES.diplo.rows[5] = "..GG.......GG."
PICTURES.diplo.rows[6] = "..GGGGGGGGGGG."
PICTURES.diplo.rows[7] = "..GGGGGGGGGG.."
PICTURES.diplo.rows[8] = "...GG....GG..."
PICTURES.diplo.rows[9] = "...DD....DD..."
PICTURES.diplo.colors = {
  G = "green",
  D = "darkgreen",
  K = "black"
}

PICTURES.tornado = { rows = { } }
PICTURES.tornado.rows[1] = "GGGGGGGGGGGG"
PICTURES.tornado.rows[2] = "LLLLLLLLLLLL"
PICTURES.tornado.rows[3] = ".GGGGGGGGGG."
PICTURES.tornado.rows[4] = "..LLLLLLLL.."
PICTURES.tornado.rows[5] = "...GGGGGG..."
PICTURES.tornado.rows[6] = "....LLLL...."
PICTURES.tornado.rows[7] = "....GGGG...."
PICTURES.tornado.rows[8] = ".....LL....."
PICTURES.tornado.rows[9] = ".....GG....."
PICTURES.tornado.rows[10] = ".....LL....."
PICTURES.tornado.rows[11] = "......G....."
PICTURES.tornado.colors = {
  G = "gray",
  L = "lightgray"
}

PICTURES.meteor = { rows = { } }
PICTURES.meteor.rows[1] = ".....R..R...."
PICTURES.meteor.rows[2] = "...RYYRRYR..."
PICTURES.meteor.rows[3] = "..ROOOOOOR..."
PICTURES.meteor.rows[4] = ".RYOSSSSOOR.."
PICTURES.meteor.rows[5] = ".ROSSKSSSOR.."
PICTURES.meteor.rows[6] = ".RYOSSSKSOR.."
PICTURES.meteor.rows[7] = "..ROSSSSOOR.."
PICTURES.meteor.rows[8] = "...ROOOOOR..."
PICTURES.meteor.rows[9] = "....RRRRR...."
PICTURES.meteor.colors = {
  R = "red",
  Y = "yellow",
  O = "orange",
  S = "gray",
  K = "darkgray"
}

PICTURES.spider = { rows = { } }
PICTURES.spider.rows[1] = "..W...W.."
PICTURES.spider.rows[2] = "...PPP..."
PICTURES.spider.rows[3] = "YYYPPPYYY"
PICTURES.spider.rows[4] = "Y..PPP..Y"
PICTURES.spider.rows[5] = "...PPP..."
PICTURES.spider.rows[6] = "YYYPPPYYY"
PICTURES.spider.rows[7] = "Y.......Y"
PICTURES.spider.colors = {
  Y = "yellow",
  P = "purple",
  W = "white"
}

PICTURES.hamster = { rows = { } }
PICTURES.hamster.rows[1] = ".X....X."
PICTURES.hamster.rows[2] = ".XXXXXX."
PICTURES.hamster.rows[3] = ".XSXXSX."
PICTURES.hamster.rows[4] = ".XXEEXX."
PICTURES.hamster.rows[5] = "..XXXX.."
PICTURES.hamster.rows[6] = ".XXXXXX."
PICTURES.hamster.rows[7] = "XXIXXIXX"
PICTURES.hamster.rows[8] = "XXIXXIXX"
PICTURES.hamster.rows[9] = ".XXXXXX."
PICTURES.hamster.colors = {
  X = "brown",
  S = "darkblue",
  E = "gold",
  I = "black"
}

PICTURES.rocket = { rows = { } }
PICTURES.rocket.rows[1] = ".....SS....."
PICTURES.rocket.rows[2] = "....CCCC...."
PICTURES.rocket.rows[3] = "....SSSS...."
PICTURES.rocket.rows[4] = "...CCCCCC..."
PICTURES.rocket.rows[5] = "..BBAAAABB.."
PICTURES.rocket.rows[6] = ".BBBAMMABBB."
PICTURES.rocket.rows[7] = "BBB.WMMA.BBB"
PICTURES.rocket.rows[8] = "B..AWAAAA..B"
PICTURES.rocket.rows[9] = "..AAAAAAAA.."
PICTURES.rocket.rows[10] = ".AAAAAAAAAA."
PICTURES.rocket.rows[11] = "...WW..WW..."
PICTURES.rocket.rows[12] = "...EM..ME..."
PICTURES.rocket.colors = {
  A = "lightgray",
  B = "blue",
  C = "cyan",
  S = "skyblue",
  M = "magenta",
  E = "purple",
  W = "white"
}

PICTURES.fish = { rows = { } }
PICTURES.fish.rows[1] = "...SCC...."
PICTURES.fish.rows[2] = "....SCC..."
PICTURES.fish.rows[3] = "SCC..SCC.."
PICTURES.fish.rows[4] = ".SC.CCWYC."
PICTURES.fish.rows[5] = "..CCCWYKYS"
PICTURES.fish.rows[6] = "..CCCCWYCS"
PICTURES.fish.rows[7] = ".SC.CCCCC."
PICTURES.fish.rows[8] = "SCC..SCC.."
PICTURES.fish.rows[9] = "....SCC..."
PICTURES.fish.rows[10] = "...SCC...."
PICTURES.fish.colors = {
  C = "cyan",
  S = "skyblue",
  W = "white",
  Y = "yellow",
  K = "black"
}

PICTURES.bee = { rows = { } }
PICTURES.bee.rows[1] = "..X..X.."
PICTURES.bee.rows[2] = "..XXXX.."
PICTURES.bee.rows[3] = "OOIIIIOO"
PICTURES.bee.rows[4] = "OOXXXXOO"
PICTURES.bee.rows[5] = ".OIIIIO."
PICTURES.bee.rows[6] = "..XXXX.."
PICTURES.bee.rows[7] = "...XX..."
PICTURES.bee.colors = {
  X = "gray",
  O = "cyan",
  I = "yellow"
}

PICTURES.rainbow = { rows = { } }
PICTURES.rainbow.rows[1] = "....MMMMM...."
PICTURES.rainbow.rows[2] = "...MCCCCCM..."
PICTURES.rainbow.rows[3] = "..MCGGGGGCM.."
PICTURES.rainbow.rows[4] = ".MCGYYYYYGCM."
PICTURES.rainbow.rows[5] = "MCGYRRRRRYGCM"
PICTURES.rainbow.rows[6] = "MCGYR...RYGCM"
PICTURES.rainbow.rows[7] = "MCGYR...RYGCM"
PICTURES.rainbow.colors = {
  M = "magenta",
  C = "cyan",
  G = "green",
  Y = "yellow",
  R = "red"
}

PICTURES.acorn = { rows = { } }
PICTURES.acorn.rows[1] = "...O..."
PICTURES.acorn.rows[2] = "...O..."
PICTURES.acorn.rows[3] = "..OOO.."
PICTURES.acorn.rows[4] = ".OOOOO."
PICTURES.acorn.rows[5] = "OOOOOOO"
PICTURES.acorn.rows[6] = ".XXXXX."
PICTURES.acorn.rows[7] = ".XXXXX."
PICTURES.acorn.rows[8] = ".XXXXX."
PICTURES.acorn.rows[9] = "..XXX.."
PICTURES.acorn.rows[10] = "...X..."
PICTURES.acorn.colors = {
  O = "darkgreen",
  X = "brown"
}

PICTURES.lemon = { rows = { } }
PICTURES.lemon.rows[1] = ".GG........"
PICTURES.lemon.rows[2] = ".GG........"
PICTURES.lemon.rows[3] = ".GGYYYYYYY."
PICTURES.lemon.rows[4] = "..YYYYYYYYY"
PICTURES.lemon.rows[5] = "..YYYYYYYYY"
PICTURES.lemon.rows[6] = "..YYYYYYYYY"
PICTURES.lemon.rows[7] = "....YYYYYYY"
PICTURES.lemon.rows[8] = "....YYYYYY."
PICTURES.lemon.colors = {
  Y = "yellow",
  G = "green"
}

-- The lemon that eats, with the eyes and teeth to prove it.
PICTURES.lemonface = { rows = { } }
PICTURES.lemonface.rows[1] = ".GG........"
PICTURES.lemonface.rows[2] = ".GG........"
PICTURES.lemonface.rows[3] = ".GGYYYYYYY."
PICTURES.lemonface.rows[4] = "..YKYYYKYYY"
PICTURES.lemonface.rows[5] = "..YYYYYYYYY"
PICTURES.lemonface.rows[6] = "..YYKKKKKYY"
PICTURES.lemonface.rows[7] = "....KWKWKYY"
PICTURES.lemonface.rows[8] = "....YYYYYY."
PICTURES.lemonface.colors = {
  Y = "yellow",
  G = "green",
  K = "black",
  W = "white"
}

PICTURES.smallfish = { rows = { } }
PICTURES.smallfish.rows[1] = "GGGGG.GG"
PICTURES.smallfish.rows[2] = "GBGGGGGG"
PICTURES.smallfish.rows[3] = "GGPBGGGG"
PICTURES.smallfish.rows[4] = "BBBBGGGG"
PICTURES.smallfish.rows[5] = "GGGGG.GG"
PICTURES.smallfish.colors = {
  G = "gray",
  P = "pink",
  B = "black"
}

PICTURES.droplet = { rows = { } }
PICTURES.droplet.rows[1] = "....D...."
PICTURES.droplet.rows[2] = "...DBD..."
PICTURES.droplet.rows[3] = "...DBD..."
PICTURES.droplet.rows[4] = "..DBBBD.."
PICTURES.droplet.rows[5] = ".DBBBBBD."
PICTURES.droplet.rows[6] = ".DBBWBBD."
PICTURES.droplet.rows[7] = ".DBBBBBD."
PICTURES.droplet.rows[8] = "..DBBBD.."
PICTURES.droplet.rows[9] = "...DDD..."
PICTURES.droplet.colors = {
  B = "cyan",
  D = "blue",
  W = "white"
}

PICTURES.lightning = { rows = { } }
PICTURES.lightning.rows[1] = "....YYY.."
PICTURES.lightning.rows[2] = "...YYY..."
PICTURES.lightning.rows[3] = "..YYY...."
PICTURES.lightning.rows[4] = ".YYYYYY.."
PICTURES.lightning.rows[5] = "...YYYY.."
PICTURES.lightning.rows[6] = "....YYY.."
PICTURES.lightning.rows[7] = "...YYY..."
PICTURES.lightning.rows[8] = "..YYY...."
PICTURES.lightning.rows[9] = ".YY......"
PICTURES.lightning.colors = { Y = "yellow" }
