# easy

A Compy project where the library does the work, so a five-year-old
writing three short lines gets a real game on screen.

The child's whole `main.lua`:

```lua
require("game")
hero("cat")
food("star")
many(20)
```

`require("game")` pulls in the game. The three lines under it are the
child's: who they are, what they collect, how many there are.

## The commands

Every line has the same shape — one word, a bracket, a word in quotes.
`many` takes a number instead.

| Line | What it does |
| --- | --- |
| `hero("cat")` | who the player controls — a name from `HEROES` in `game.lua` |
| `food("star")` | what the player collects — a name from `FOODS` in `game.lua` |
| `many(20)` | how many there are, 1 to `MOST` (40) |
| `speed("fast")` | how fast the hero walks — `walk`, `slow`, `fast` |
| `color("blue")` | the backdrop — `black`, `blue`, `red`, `magenta`, `green`, `cyan`, `yellow`, `white` |

A word that is not on the list is not an error. The game plays with
the cat, or collects stars, instead. To see what a name looks like,
write it in `main.lua` and run the game.

A missing line is not an error either: every line has an answer the
game uses when the child does not write one.

## Playing

Arrow keys walk the hero. The hero never turns — left is always left.
Walk off one edge and come back on the other. Touching a food collects
it and the counter in the corner goes up by one.

There is nothing to lose. No enemies, no timer, no game over. When the
last food is collected the game cheers and shows "You won!". Any key
but an arrow then closes it.

`Ctrl+Q` leaves the game.

## The files

Three levels, each one Ctrl+J away from the `require` line above it:

| Level | File | What is in it |
| --- | --- | --- |
| 1 | `main.lua` | the child's four lines |
| 2 | `game.lua` | the lists of heroes and foods, and the few numbers worth changing: `MOST`, the speeds, the backdrops, picture sizes, the win words |
| 3 | `colors.lua` | one letter for each color every picture uses |
| 3 | `sprites.lua` | the pictures that come with the game, drawn as letters — one letter per big square |
| 3 | `myart.lua` | your own pictures; add a name to `HEROES` or `FOODS` to play with one |
| 3 | `engine.lua` | how the game works: building it, walking, collecting, drawing |

Every picture lives in one table, `PICTURES`, so any picture can be a
hero, a food, or both: the lists in `game.lua` decide.

All of it is ordinary Lua. A child who opens any of these files finds
the same language they just wrote.

## mygame

`.compy/build` also emits `mygame`, for older students, with an empty
`main.lua`: a student types every line of their own game,
`require("game")` included. It has the same three levels and the same
commands, with two differences:

- Each picture has its own colors: `colors = { Y = "yellow" }` names a
  color from `mygame/colors.lua` for each letter it uses.
- The heroes and foods in `game.lua` are names that point at pictures:
  `HEROES.fish = "smallfish"` and `FOODS.fish = "fish"` make one word
  mean a different picture as a hero and as a food.

## The repository

| Path | What it is |
| --- | --- |
| `engine.lua` | the game itself, shared by both projects |
| `easy/` | the rest of `easy` |
| `mygame/` | the rest of `mygame` |
| `.compy/build` | copies `engine.lua` and each folder into a project |

## Screen

Built against 1024x600. It reads the real screen size at startup, so
other sizes work.
