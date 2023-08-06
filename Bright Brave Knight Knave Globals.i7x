Version 1/221007 of Bright Brave Knight Knave Globals by Andrew Schultz begins here.

"This defines basic global variables to help keep the main file that much cleaner."

volume score values

core-max is 71.

max-bonus is 10.

[ note in this case there are 2 bonus-bonus points outside the table:
--figuring what the hold hole needs to hold
--waiting to say WRITE RAVE gets 2 points instead of 1
--so core_max + max_bonus = rows in big table
We can double-check what core-max + max-bonus should be by search/replacing sco-
]

intro is a region.

recruiting is a region.

northstuff is a region.

southstuff is a region.

eaststuff is a region.

interlude is a region.

volume point scoring booleans

chapter intro area

section white wave

sco-write-right-rave is a truth state that varies.
sco-kite-cave is a truth state that varies.

sco-jack-gist is a truth state that varies.

section bass bath

sco-pass-path is a truth state that varies.
sco-mass-math is a truth state that varies.

chapter west area

sco-what-whoah is a truth state that varies.

sco-hid-hum is a truth state that varies.
sco-kid-come is a truth state that varies.
sco-rid-rum is a truth state that varies.

sco-mood-mapper is a truth state that varies.
sco-nude-napper is a truth state that varies.

sco-meek-mooter is a truth state that varies.
sco-chic-shooter is a truth state that varies.
sco-weak-wooter is a truth state that varies.

sco-fried-freak is a truth state that varies.
sco-snide-sneak is a truth state that varies.
sco-guide-geek is a truth state that varies.
sco-stride-streak is a truth state that varies.

sco-harder-helm is a truth state that varies.

chapter north area

sco-posh-planks is a truth state that varies.
sco-plucky-plot is a truth state that varies.

sco-cast-court is a truth state that varies.
sco-fast-fort is a truth state that varies.
sco-passed-port is a truth state that varies.

section cast court

sco-murky-map is a truth state that varies.

section fast fort

sco-glued-glass is a truth state that varies.

section passed port

sco-salad-scent is a truth state that varies.
sco-slosh-slick is a truth state that varies.
sco-quash-quick is a truth state that varies.

sco-time-toad is a truth state that varies.
sco-slashing-sword is a truth state that varies.

chapter south area

section treed track

sco-seed-sack is a truth state that varies.
sco-need-knack is a truth state that varies.
sco-heed-hack is a truth state that varies.
sco-plead-plaque is a truth state that varies.

section too tough blue bluff

sco-grew-gruff is a truth state that varies.
sco-stew-stuff is a truth state that varies.
sco-new-nuff is a truth state that varies.

section lack light black blight

sco-hack-height is a truth state that varies.
sco-quack-quite is a truth state that varies.
sco-flak-flight is a truth state that varies.
sco-slack-slight is a truth state that varies.

sco-power-plate is a truth state that varies.

section knell nook

sco-bell-book is a truth state that varies.
sco-covering-candle is a truth state that varies.

chapter east area

section tata tall tank(s)

sco-yall-yank is a truth state that varies.

sco-paul-panks is a truth state that varies.

section Lane Lax

sco-train-tracks is a truth state that varies.
sco-main-max is a truth state that varies.
sco-pain-packs is a truth state that varies.

sco-trod-trash is a truth state that varies.

section Wowed Wise Crowd Cries

sco-trowed-tries is a truth state that varies.
sco-loud-lies is a truth state that varies.

section Thought Thief Fought Fief

sco-brought-brief is a truth state that varies.
sco-bought-beef is a truth state that varies.
sco-wrought-reef is a truth state that varies.

sco-done-dish is a truth state that varies.

section Bruising Brew

sco-boozing-boo is a truth state that varies.
sco-using-you is a truth state that varies.
sco-fusing-phew is a truth state that varies.

sco-spurning-spew is a truth state that varies.

chapter interlude (detours after each hold hole piece is recovered)

section nil none

sco-fill-fun is a truth state that varies.
sco-will-won is a truth state that varies.
sco-ill-un is a truth state that varies.

section stander stove

sco-grander-grove is a truth state that varies.
sco-candor-cove is a truth state that varies.
sco-stander-stove is a truth state that varies.

section route rough

sco-flout-fluff is a truth state that varies.
sco-nowt-nuff is a truth state that varies.
sco-stout-stuff is a truth state that varies.

chapter endgame--well, start

sco-ailing-ill is a truth state that varies.
sco-scaling-skill is a truth state that varies.
sco-mailing-mill is a truth state that varies.
sco-failing-phil is a truth state that varies.
sco-bailing-bill is a truth state that varies.
sco-wailing-will is a truth state that varies.

sco-fight-fave is a truth state that varies.

sco-fright-fully is a truth state that varies.
sco-bright-bully is a truth state that varies.

sco-bam-bye is a truth state that varies.

chapter unsorted globals

volume game state variables

took-yacht is a truth state that varies.

bool-hill-available is a truth state that varies.
bool-brew-available is a truth state that varies.

debug-allow-final is a truth state that varies.

pre-hole-item-room is a room that varies.

game-elm-seen is a truth state that varies.

chapter miscellaneous bonus variables (game state)

guessed-bold-bowl is a truth state that varies.
guessed-cold-coal is a truth state that varies.
guessed-sold-soul is a truth state that varies.

got-hole-bonus is a truth state that varies. [guessed all 3 above]

got-rave-bonus is a truth state that varies. [2 points instead of 1]

blocked-hole-bonus is a truth state that varies. [set to true if got one item before guessed all 3]

r-shortcut-got is a truth state that varies. [r 3 before pairing everyone manually]

chapter what verbs are known?

r-warn-yet is a truth state that varies. [allows us to use the R command]

chapter debug variables

pfft-friends is a truth state that varies.

Bright Brave Knight Knave Globals ends here.

---- DOCUMENTATION ----
