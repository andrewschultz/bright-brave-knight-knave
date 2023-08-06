Version 1/221007 of Bright Brave Knight Knave Tests by Andrew Schultz begins here.

"This file lays out basic Bright Brave Knight Knave Tests, including IDE-specific tests and seeing what is missed before we get to the end."

volume tests

[
Key:
G = general
C = cheat
H = honest
W = walkthrough
WARP = warp
WC = walkthrough-cheat-rollup
]

book general stuff

test g1 with "kite cave"

test g1b with "jack gist/bold bowl/cold coal/sold soul".

test g2 with "x hole/d/pass path/mass math".

test g3 with "w/what whoah/w/hid hum/kid come/rid rum/in/mood mapper".

test g3b with "nude napper/write rave".

test g4 with "out/e/n/w/stride streak".

test g5 with "guide geek/fried freak/snide sneak/e/meek mooter/weak wooter/chic shooter/w/fried freak/e/bye".

test g7 with "s/e/n/posh planks/plucky plot/fast fort/glued glass/cast court/murky map/passed port/slashing sword"

test glou with "in/using you/boozing boo/fusing phew/spurning spew/out".

test ghelm with "w/n/w/harder helm/e/s/e".

test ghill with "u/scaling skill/ailing ill/failing phil/wailing will/bailing bill/d".

test gend with "d/fight fave/frightfully/bright bully/bam bye".

book honest stuff

test h6m with "weak wooter/w/guide geek/e"

test h6 with "r 3"

test h7 with "test g7/in/s".

test h8 with "bye/w/n/r 2/s/e/e/yall yank/e/train tracks/main max/pain packs/bye/w/w".

test h9 with "w/n/r 1/s/e/s/need knack/heed hack".

test h9b with "plead plaque".

test h10 with "n/e/e/n/trowed tries/loud lies/s/w/w/n/passed port/salad scent".

test h11 with "in/s/w/n/r 3/s/e/s/u/grew gruff/stew stuff/new nuff/d/n/e/e/trod trash/s/bought beef/brought brief/wrought reef/done dish/illun/fill fun/will won/n".

test h12 with "n/w/w/n/r 2/s/e/s/w/flak flight/hack height/slack slight/quack quite/power plate/e/n".

test h13 with "n/passed port/quash quick/slosh slick/time toad/candor cove/grander grove/stander stove/n".

test h14 with "in/s/w/n/r 1/s/e/s/e/bell book/covering candle/stout stuff/flout fluff/nowt nuff/n/w/n".

[choose a number when only 1 left]

test wa with "test g1/test g1b/test g2/test g3/test g4/test g5/test h6/test h6m/test h7/test h8/test h9/test h9b/test h10/test h11/test h12/test h13/test h14/test glou/test ghelm/test ghill/test gend".

book full walkthrough

test wi5 with "test g1/test g1b/test g2/test g3/test g3b/test g4/test g5".

book cheat through

test c6 with "r 3/bye/lone 1/test g7/quash quick/slosh slick/salad scent/in/s".

test c7 with "e/yall yank/e/train tracks/pain packs/main max/trod trash/n/trowed tries/loud lies/s/s/brought brief/bought beef/wrought reef/n/w/w".

test c8 with "s/need knack/seed sack/heed hack/plead plaque/u/grew gruff/stew stuff/new nuff/d/e/bell book/covering candle/illun/fill fun/will won/w/w/quack quite/slack slight/hack height/power plate/flak flight/e/n".

test c9 with "in/boozing boo/using you/fusing phew/spurning spew/out".

test c10 with "e/e/s/done dish/grander grove/candor cove/stander stove/n/n/w/w"

test c11 with "n/passed port/time toad/stout stuff/flout fluff/nowt nuff/s/in/s".

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

test warp with "test w1/test w2/test w3/test wj".

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
