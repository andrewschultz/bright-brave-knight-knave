Version 1/221007 of Bright Brave Knight Knave Tests by Andrew Schultz begins here.

"This file lays out basic Bright Brave Knight Knave Tests, including IDE-specific tests and seeing what is missed before we get to the end."

volume tests

[
Key:
G = general
C = cheat
H = honest
W = walkthrough
WA = warp
WC = walkthrough-cheat-rollup
]

book general stuff

test g1 with "kite cave"

test g1b with "jack gist/bold bowl/cold coal/sold soul".

test g2 with "x hole/d/pass path/mass math".

test g3 with "w/what whoah/w/hid hum/kid come/rid rum/in/mood mapper".

test g3b with "nude napper/write rave".

test g4 with "out/e/n/w/stride streak".

test g5 with "guide geek/fried freak/snide sneak/e/meek mooter/weak wooter/chic shooter/w/fried freak/e/bye/r 3".

test w5 with "test g1/test g1b/test g2/test g3/test g3b/test g4/test g5".

book cheat through

[test w4]

test c6 with "bye/lone 1/s/e/n/posh planks/plucky plot/fast fort/glued glass/cast court/murky map/passed port/salad scent/slosh slick/quash quick/enter yacht/s".

test c7 with "e/yall yank/e/train tracks/pain packs/main max/trod trash/n/trowed tries/loud lies/s/s/brought brief/bought beef/wrought reef/n/w/w".

test c8 with "s/need knack/seed sack/heed hack/plead plaque/w/grew gruff/stew stuff/new nuff/e/e/bell book/covering candle/illun/fill fun/will won/w/u/quack quite/slack slight/hack height/power plate/flak flight/d/n".

test c9 with "in/boozing boo/using you/fusing phew/spurning spew/out".

test c10 with "e/e/s/done dish/grander grove/candor cove/stander stove/n/n/w/w"

test c11 with "n/passed port/slashing sword/time toad/stout stuff/flout fluff/nowt nuff/s/in/s".

test c12 with "w/n/w/harder helm/e/s/e".

test c13 with "u/scaling skill/ailing ill/mailing mill/wailing will/failing phil/bailing bill/d"

test c14 with "d/fight fave/frightfully/bright bully/bam bye".

test w14 with "test w5/test c6/test c7/test c8/test c9/test c10/test c11/test c12/test c13/test c14".

book other stuff

test w4e with "fried freak/e/chic shooter/s/e/e/yall yank".

test w4n with "guide geek/e/weak wooter/s/e/n/posh planks/plucky plot/cast court/fast fort/passed port".

test wsf with "test w1/test w1b/test w2/test w3/test w3b". [walkthrough so far]

test wend1 with "u/scaling skill/ailing ill/mailing mill/bailing bill/failing phil/wailing will".

test wend2 with "d/d/fight fave/frightfully/bright bully/bam bye".

section cheaty bits

test wc1 with "hi 1/illun/fill fun/will won".

test wc2 with "hi 2/grander grove".

test wc3 with "hi 3/candor cove".

test wa with "test w1/test w2/test w3/test wj".

test wf with "test w1/test w1b/test w2/test w3/test w3b/test w4/test w4n/test wc1/test wc2/test wc3/test wend1/test wend2".

book bonus point testing

test bp with "gonear creek/stride streak/guide geek/e/weak wooter/bye".

book quick walkthrough

test j1 with "test w1/hi 1"

test j2 with "illun/fill fun/will won/hi 2"

test j3 with "candor cove/hi 3"

test j4 with "grander grove"

book weird cases

test cr with "gonear creek/stride streak".

test cr1 with "test cr/fried freak/e/chic shooter".
test cr2 with "test cr/guide geek/e/weak wooter".
test cr3 with "test cr/snide sneak/e/meek mooter".

book testing commands

chapter loneing

loneing is an action out of world applying to one number.

understand the command "lone" as something new.

understand "lone [number]" as loneing.

carry out loneing:
	now pfft-friends is whether or not number understood is not 0;
	say "Friends now [if pfft-friends is true]not [end if]needed to complete puzzles.";
	the rule succeeds;

Bright Brave Knight Knave Tests ends here.

---- DOCUMENTATION ----
