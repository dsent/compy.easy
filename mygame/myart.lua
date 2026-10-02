-- Your own pictures. They work like the ones in sprites.lua:
-- rows of letters, a dot for an empty square, and colors of
-- their own, by the names in colors.lua. To play with one,
-- add a name for it to the heroes or the foods in game.lua.

PICTURES.kitty = {
  rows = {
    "..YY....YY..",
    "..YVY..YVY..",
    "..YYYYYYYY..",
    ".YYWYYYYWYY.",
    "YYWWKYYKWWYY",
    ".YYYYRRYYYY.",
    "..YYYYYYYY..",
    "..YYYYYYYY..",
    "..YYYYYYYY..",
    "..YYY..YYY..",
    "..YVY..YVY..",
    "..VVV..VVV.."
  },
  colors = {
    Y = "yellow",
    V = "purple",
    W = "white",
    K = "black",
    R = "red"
  }
}

PICTURES.hen = {
  rows = {
    "....R....",
    "....R....",
    "....W....",
    "...KYK...",
    "..WWYWW..",
    "...WYW...",
    "...WRW...",
    "...WRW...",
    "..YWWWY..",
    "YYWWWWWYY",
    "YWWWWWWWY",
    "YYWWYWWYY",
    "..YYYYY..",
    "...YYY...",
    "...R.R...",
    "..RR.RR.."
  },
  colors = {
    R = "red",
    W = "white",
    K = "black",
    Y = "yellow"
  }
}

PICTURES.house = {
  rows = {
    ".....RRRRRR.....",
    "....RRRRRRRR....",
    "...RRRRRRRRRR...",
    "..RRRRRRRRRRRR..",
    ".RRRRRRRRRRRRRR.",
    "RRRRRRRRRRRRRRRR",
    "KWWWWWWWWWWWWWWK",
    "KWWWWWWWWWWYYYWK",
    "KWWWWWWWWWWYYYWK",
    "KWWWWWRRRRWYYYWK",
    "KWWWWWRRRRWWWWWK",
    "KWWWWWRYRRWWWWWK",
    "KWWWWWRRRRWWWWWK",
    "KWWWWWRRRRWWWWWK"
  },
  colors = {
    R = "red",
    K = "black",
    W = "white",
    Y = "yellow"
  }
}

PICTURES.wizard = {
  rows = {
    "......C...",
    "......CC..",
    "....BBCCC.",
    "....BBCCC.",
    "....BBCCC.",
    "...BWWBC..",
    "...YVVY...",
    "..YK..KYK.",
    "...Y..Y...",
    ".VV....VV.",
    "VVV....VVV",
    "..........",
    "........K."
  },
  colors = {
    C = "skyblue",
    B = "blue",
    W = "white",
    Y = "yellow",
    V = "purple",
    K = "black"
  }
}

PICTURES.twins = {
  rows = {
    "...........G",
    "G..........G",
    "......W.V...",
    ".C.......V..",
    ".VVV..W..CCC",
    ".CYV.....C..",
    ".YGV...CCCCC",
    ".YYY...WYWCY",
    "........Y.CY",
    "........YYYY"
  },
  colors = {
    G = "green",
    W = "white",
    V = "purple",
    C = "skyblue",
    Y = "yellow"
  }
}

PICTURES.frame = {
  rows = {
    "RRRRRRRRR",
    "R.......R",
    "R.......R",
    "R.......R",
    "R.......R",
    "R.......R",
    "R.......K",
    "R.......K",
    "R.......K",
    "RRRRVVRKV"
  },
  colors = {
    R = "red",
    K = "black",
    V = "purple"
  }
}
