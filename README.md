# easy

A Compy project where the library does the work, so a five-year-old
writing three short lines gets a real game on screen.

The child's whole `main.lua`:

```lua
-- MOYA IGRA
require("game")
hero("cat")
food("star")
many("20")
```

`require("game")` pulls in the game. The three lines under it are the
child's: who they are, what they collect, how many there are.

## The commands

Every line has the same shape — one word, a bracket, a word in quotes.
Each takes exactly one string.

| Line | What it does |
| --- | --- |
| `hero("cat")` | who the player controls — `cat`, `turtle`, `ufo`, `mouse`, `dog`, `fox`, `chicken`, `squish`, `tree`, `dino`, `tornado`, `spider` |
| `food("star")` | what the player collects — `star`, `cheese`, `apple`, `acorn`, `lemon`, `fish`, `droplet`, `lightning` |
| `many("20")` | how many there are, 1 to 40 |
| `speed("fast")` | how fast the hero walks — `walk`, `slow`, `fast` |
| `color("blue")` | the backdrop — `black`, `blue`, `red`, `magenta`, `green`, `cyan`, `yellow`, `white` |

A word that is not in the list is not an error. The game takes the
first choice instead and shows the pictures to choose from along the
bottom of the screen.

A missing line is not an error either: every line has an answer the
game uses when the child does not write one.

## Playing

Arrow keys walk the hero. The hero never turns — left is always left.
Walk off one edge and come back on the other. Touching a food collects
it and the counter in the corner goes up by one.

There is nothing to lose. No enemies, no timer, no game over. When the
last food is collected the field is empty and the number in the corner
is the answer to "how many was 20?".

`Ctrl+Q` leaves the game.

## The files

| File | What is in it |
| --- | --- |
| `main.lua` | the child's four lines |
| `game.lua` | the five commands, and the start of every frame |
| `sprites.lua` | the pictures, drawn as letters — one letter per big square |
| `world.lua` | building the game, walking, collecting |
| `show.lua` | putting it on the screen |

All of it is ordinary Lua. A child who opens any of these files finds
the same language they just wrote.

## Deploying

From the workspace root:

```sh
dev/tools/deploy-project repos/games/easy
```

It lands as `Documents/compy/projects/easy` on the SD card, keeping a
backup of whatever was there.

## Screen

Built against 1024x600. It reads the real screen size at startup, so
other sizes work.
