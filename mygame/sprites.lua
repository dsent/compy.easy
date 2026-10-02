-- The pictures that come with the game. Each one has rows
-- of letters, one letter per big square, and its own colors:
-- each letter it uses, and the name of a color from
-- colors.lua. A dot is an empty square.
-- Every row in a picture must be the same length.

PICTURES = { }

PICTURES.cat = {
  rows = {
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
    "..YYY..YYY.."
  },
  colors = {
    Y = "yellow",
    W = "white",
    K = "black",
    M = "magenta"
  }
}

PICTURES.turtle = {
  rows = {
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
    "GGG..GG..GGG"
  },
  colors = {
    G = "green",
    E = "darkgreen",
    Y = "olive",
    K = "black"
  }
}

PICTURES.ufo = {
  rows = {
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
    "............"
  },
  colors = {
    D = "cyan",
    B = "lightgray",
    L = "magenta"
  }
}

PICTURES.mouse = {
  rows = {
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
    "....W..W...."
  },
  colors = {
    W = "white",
    A = "lightgray",
    M = "magenta",
    K = "black"
  }
}

PICTURES.star = {
  rows = {
    "....Y....",
    "...YYY...",
    "YY.YWY.YY",
    "YWYYWYYWY",
    ".YWYYYWY.",
    "..YYYYY..",
    ".YWYYYWY.",
    "YWYY.YYWY",
    "YY.....YY"
  },
  colors = {
    Y = "yellow",
    W = "white"
  }
}

PICTURES.cheese = {
  rows = {
    ".....YYYYY",
    "...YYYYEEE",
    ".YYYEKEEEE",
    "YYEYEEEKEK",
    "EEEEEEEEEE",
    "EEEEKEEEK.",
    "EKEEEEEEE.",
    "EEEKKEEE..",
    "EEEKKEE...",
    "EEEEEE...."
  },
  colors = {
    E = "yellow",
    Y = "olive",
    K = "black"
  }
}

PICTURES.apple = {
  rows = {
    "....G.EE..",
    ".RR.GEERR.",
    "FRRRGERRRR",
    "FFRRRRRRRR",
    "FFWRRRRRRR",
    "FFWRRRRRRR",
    "FFFRRRRRRR",
    ".FFFRRRRR.",
    "..FFFFRR..",
    "...FFFF..."
  },
  colors = {
    R = "red",
    F = "darkred",
    G = "green",
    E = "darkgreen",
    W = "white"
  }
}

PICTURES.dog = {
  rows = {
    "..TB...BT..",
    "...BTBTB...",
    "...TKBKT...",
    "...BTKTB...",
    "...TBNBT.TT",
    "...TBBBT.T.",
    "...TBTBT.B.",
    "...TT.TTBB.",
    "..TTT.TTT.."
  },
  colors = {
    B = "brown",
    T = "tan",
    K = "black",
    N = "magenta"
  }
}

PICTURES.fox = {
  rows = {
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
    "..GGG..GGGFFF."
  },
  colors = {
    F = "coral",
    G = "orange",
    K = "darkgray",
    N = "magenta",
    W = "white"
  }
}

-- The first fox, kept as its own picture. Nothing a child was
-- given is taken away when a redrawn version arrives.
PICTURES.pokefox = {
  rows = {
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
    "..GGFFGG...."
  },
  colors = {
    F = "salmon",
    G = "gold",
    K = "black",
    N = "magenta"
  }
}

PICTURES.chicken = {
  rows = {
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
    "...OO.OO..."
  },
  colors = {
    Y = "white",
    G = "gold",
    R = "salmon",
    K = "black",
    O = "orange"
  }
}

PICTURES.squish = {
  rows = {
    "..G..",
    "..G..",
    "..G..",
    ".PPP.",
    "PKPKP",
    "PPRPP",
    "PRRRP",
    "PPRPP",
    "PRRRP",
    ".PPP."
  },
  colors = {
    P = "purple",
    R = "salmon",
    K = "black",
    G = "gray"
  }
}

PICTURES.tree = {
  rows = {
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
    "............"
  },
  colors = {
    G = "green",
    T = "brown"
  }
}

PICTURES.dino = {
  rows = {
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
    "..GG..GG...."
  },
  colors = {
    G = "green",
    D = "darkgreen",
    K = "black"
  }
}

PICTURES.diplo = {
  rows = {
    ".GGG..........",
    ".GKG..........",
    "..GG..........",
    "..GG..........",
    "..GG.......GG.",
    "..GGGGGGGGGGG.",
    "..GGGGGGGGGG..",
    "...GG....GG...",
    "...DD....DD..."
  },
  colors = {
    G = "green",
    D = "darkgreen",
    K = "black"
  }
}

PICTURES.tornado = {
  rows = {
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
    "......G....."
  },
  colors = {
    G = "gray",
    L = "lightgray"
  }
}

PICTURES.meteor = {
  rows = {
    ".....R..R....",
    "...RYYRRYR...",
    "..ROOOOOOR...",
    ".RYOSSSSOOR..",
    ".ROSSKSSSOR..",
    ".RYOSSSKSOR..",
    "..ROSSSSOOR..",
    "...ROOOOOR...",
    "....RRRRR...."
  },
  colors = {
    R = "red",
    Y = "yellow",
    O = "orange",
    S = "gray",
    K = "darkgray"
  }
}

PICTURES.spider = {
  rows = {
    "..W...W..",
    "...PPP...",
    "YYYPPPYYY",
    "Y..PPP..Y",
    "...PPP...",
    "YYYPPPYYY",
    "Y.......Y"
  },
  colors = {
    Y = "yellow",
    P = "purple",
    W = "white"
  }
}

PICTURES.hamster = {
  rows = {
    ".X....X.",
    ".XXXXXX.",
    ".XSXXSX.",
    ".XXEEXX.",
    "..XXXX..",
    ".XXXXXX.",
    "XXIXXIXX",
    "XXIXXIXX",
    ".XXXXXX."
  },
  colors = {
    X = "brown",
    S = "darkblue",
    E = "gold",
    I = "black"
  }
}

PICTURES.rocket = {
  rows = {
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
    "...EM..ME..."
  },
  colors = {
    A = "lightgray",
    B = "blue",
    C = "cyan",
    S = "skyblue",
    M = "magenta",
    E = "purple",
    W = "white"
  }
}

PICTURES.fish = {
  rows = {
    "...SCC....",
    "....SCC...",
    "SCC..SCC..",
    ".SC.CCWYC.",
    "..CCCWYKYS",
    "..CCCCWYCS",
    ".SC.CCCCC.",
    "SCC..SCC..",
    "....SCC...",
    "...SCC...."
  },
  colors = {
    C = "cyan",
    S = "skyblue",
    W = "white",
    Y = "yellow",
    K = "black"
  }
}

PICTURES.bee = {
  rows = {
    "..X..X..",
    "..XXXX..",
    "OOIIIIOO",
    "OOXXXXOO",
    ".OIIIIO.",
    "..XXXX..",
    "...XX..."
  },
  colors = {
    X = "gray",
    O = "cyan",
    I = "yellow"
  }
}

PICTURES.rainbow = {
  rows = {
    "....MMMMM....",
    "...MCCCCCM...",
    "..MCGGGGGCM..",
    ".MCGYYYYYGCM.",
    "MCGYRRRRRYGCM",
    "MCGYR...RYGCM",
    "MCGYR...RYGCM"
  },
  colors = {
    M = "magenta",
    C = "cyan",
    G = "green",
    Y = "yellow",
    R = "red"
  }
}

PICTURES.acorn = {
  rows = {
    "...O...",
    "...O...",
    "..OOO..",
    ".OOOOO.",
    "OOOOOOO",
    ".XXXXX.",
    ".XXXXX.",
    ".XXXXX.",
    "..XXX..",
    "...X..."
  },
  colors = {
    O = "darkgreen",
    X = "brown"
  }
}

PICTURES.lemon = {
  rows = {
    ".GG........",
    ".GG........",
    ".GGYYYYYYY.",
    "..YYYYYYYYY",
    "..YYYYYYYYY",
    "..YYYYYYYYY",
    "....YYYYYYY",
    "....YYYYYY."
  },
  colors = {
    Y = "yellow",
    G = "green"
  }
}

-- The lemon that eats, with the eyes and teeth to prove it.
PICTURES.lemonface = {
  rows = {
    ".GG........",
    ".GG........",
    ".GGYYYYYYY.",
    "..YKYYYKYYY",
    "..YYYYYYYYY",
    "..YYKKKKKYY",
    "....KWKWKYY",
    "....YYYYYY."
  },
  colors = {
    Y = "yellow",
    G = "green",
    K = "black",
    W = "white"
  }
}

PICTURES.smallfish = {
  rows = {
    "GGGGG.GG",
    "GBGGGGGG",
    "GGPBGGGG",
    "BBBBGGGG",
    "GGGGG.GG"
  },
  colors = {
    G = "gray",
    P = "pink",
    B = "black"
  }
}

PICTURES.droplet = {
  rows = {
    "....D....",
    "...DBD...",
    "...DBD...",
    "..DBBBD..",
    ".DBBBBBD.",
    ".DBBWBBD.",
    ".DBBBBBD.",
    "..DBBBD..",
    "...DDD..."
  },
  colors = {
    B = "cyan",
    D = "blue",
    W = "white"
  }
}

PICTURES.lightning = {
  rows = {
    "....YYY..",
    "...YYY...",
    "..YYY....",
    ".YYYYYY..",
    "...YYYY..",
    "....YYY..",
    "...YYY...",
    "..YYY....",
    ".YY......"
  },
  colors = { Y = "yellow" }
}
