Version 1/231003 of Bright Brave Knight Knave Hints by Andrew Schultz begins here.

"This gives hints by room or thing for Bright Brave Knight Knave."

[Skeleton code created with the MKHI.PY command.
Example for Knell Nook: mkhi.py knell=nook bell-book covering-candle
]

[rooms are organized by how you find them in a region. If there isn't a clear progression, alphabetical order is the tiebreaker.]

volume suss it all out

when play begins:
	repeat with X running through things:
		if thing-hint-rule of X is trivially false rule, say "Define THING rule for [X].";

volume room hints

book definition(s)

carry out hinting (this is the usurp hints rule):
	process room-hint-rule of location of player;
	the rule succeeds;

to say guylist of (ee - an eeker):
	let eo be other-guy of ee;
	if ee is dormant and eo is dormant:
		say "two friends you don't know yet";
	else if ee is dormant or eo is dormant:
		say "a friend to go with the [if ee is dormant][ee][else][eo][end if]";
	else:
		say "[the ee] and [the eo]"

book assigning rules

chapter starting out

the room-hint-rule of White Wave is the hint-white-wave rule.

the room-hint-rule of Bass Bath is the hint-bass-bath rule.

the room-hint-rule of Hailing Hill is the hint-hailing-hill rule.

the room-hint-rule of Bruising Brew is the hint-bruising-brew rule.

chapter west

the room-hint-rule of Rut Row is the hint-rut-row rule.

the room-hint-rule of Slid Slum is the hint-slid-slum rule.

the room-hint-rule of Crude Crapper is the hint-crude-crapper rule.

the room-hint-rule of recroom is the hint-recroom rule.

the room-hint-rule of Spied Speak Cried Creek is the hint-spied-speak-cried-creek rule.

chapter north

the room-hint-rule of Bosh Blanks is the hint-bosh-blanks rule.

the room-hint-rule of Cast Court is the hint-cast-court rule.

the room-hint-rule of Fast Fort is the hint-fast-fort rule.

the room-hint-rule of Passed Port is the hint-passed-port rule.

chapter south

the room-hint-rule of Treed Track is the hint-treed-track rule.

the room-hint-rule of Knell Nook is the hint-knell-nook rule.

the room-hint-rule of Lack Light Black Blight is the hint-black-blight rule.

the room-hint-rule of Too Tough Blue Bluff is the hint-too-tough-blue-bluff rule.

chapter east

the room-hint-rule of Tata is the hint-tata rule.

the room-hint-rule of Oecc is the hint-oecc rule.

the room-hint-rule of Lane Lax is the hint-lane-lax rule.

the room-hint-rule of Thought Thief Fought Fief is the hint-fought-fief rule.

chapter limbo

the room-hint-rule of Nil None is the hint-nil-none rule.

the room-hint-rule of Dander Dove is the hint-dander-dove rule.

the room-hint-rule of Route Rough is the hint-route-rough rule.

book rules

chapter central

this is the hint-white-wave rule:
	if sco-kite-cave is false, say "[one of]You need to look for a way out[pplus][or]There's something in a passage[pplus][or]Look for a [b]KITE CAVE[r][pminus][cycling]" instead;
	if number of moot holeitems < 3, say "You still need to fill the hold hole with three blessed items." instead;
	if nti < 5, say "You need to get all the items on [the list]." instead;
	if sco-fight-fave is false, say "[one of]You'll need to start the final challenge[pplus][or][pplus][or][b]FIGHT FAVE[r][pminus][cycling]" instead;
	try hintobjing tully instead;
	say "[done-here]." instead;

this is the hint-bass-bath rule:
	if sco-pass-path is false, say "[one of]You need to find a reliable way through the bath[pplus][or]What is something that rhymes with bath that you can walk down[qplus][or][b]PASS PATH[r][pminus][cycling]" instead;
	if sco-mass-math is false, say "[one of]You need to calculate where to go next[pplus][or]What school subject would work[qplus][or][b]MASS MATH[r][pminus][cycling]" instead;
	say "[done-here]." instead;

to mill-hint (nu - a number):
	say "[one of]The mailing mill can access three people. Each blesses an item for the hold hole[pplus]One of them, [b][if nu is 1]BAILING BILL[else if nu is 2]FAILING PHIL[else if nu is 3]WAILING WILL[end if][r], needs the [if nu is 1]bold bowl[else if nu is 2]cold coal[else]sold soul[end if][pminus][cycling]"

this is the hint-hailing-hill rule:
	if sco-scaling-skill is false, say "[one of][pplus][or][pplus][or][b]SCALING SKILL[r][pminus][cycling]" instead;
	if sco-ailing-ill is false, say "[one of][pplus][or][pplus][or][b]AILING ILL[r][pminus][cycling]" instead;
	if sco-mailing-mill is false, say "[one of][pplus][or][pplus][or][b]MAILING MILL[r][pminus][cycling]" instead;
	if sco-bailing-bill is false, mill-hint 1 instead;
	if sco-failing-phil is false, mill-hint 2 instead;
	if sco-wailing-will is false, mill-hint 3 instead;
	say "[done-here]." instead;

this is the hint-bruising-brew rule:
	if sco-using-you is false, say "[one of][pplus][or][pplus][or][b]USING YOU[r][pminus][cycling]" instead;
	if sco-boozing-boo is false, say "[one of]Get didactic with Lou[pplus][or]Alcohol bad[xplus][or][b]BOOZING BOO[r][pminus][cycling]" instead;
	if sco-fusing-phew is false, say "[one of]Combine your advice[pplus][or]It's a bit exhausting[pplus][or][b]FUSING PHEW[r][pminus][cycling]" instead;
	if sco-spurning-spew is false, say "[one of]Learning Lou rhymes with a good enough title[pplus][or]How can you ignore the haters and their vitriol[qplus][or][b]SPURNING SPEW[r][pminus][cycling]" instead;
	say "[done-here]." instead;

chapter west

this is the hint-rut-row rule:
	if sco-what-whoah is false, say "[one of]Something surprising will happen if you anticipate it[pplus]Try for two expressions of surprise at once, to make sure[pplus][b]WHAT WHOAH[r][pminus][cycling]" instead;
	say "[done-here]" instead;

this is the hint-slid-slum rule:
	if sco-hid-hum is false, say "[one of][pplus][or][pplus][or][b]HID HUM[r][pminus][cycling]" instead;
	if sco-kid-come is false, say "[one of][pplus][or][pplus][or][b]KID COME[r][pminus][cycling]" instead;
	if sco-rid-rum is false, say "[one of][pplus][or][pplus][or][b]RID RUM[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-crude-crapper rule:
	if sco-mood-mapper is false, say "[one of][pplus][or][pplus][or][b]MOOD MAPPER[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-recroom rule:
	if sco-chic-shooter is false, say "[one of][pplus][or][pplus][or][b]CHIC SHOOTER[r][pminus][cycling]" instead;
	if sco-meek-mooter is false, say "[one of][pplus][or][pplus][or][b]MEEK MOOTER[r][pminus][cycling]" instead;
	if sco-weak-wooter is false, say "[one of][pplus][or][pplus][or][b]WEAK WOOTER[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-spied-speak-cried-creek rule:
	if sco-stride-streak is false, say "[one of][pplus][or][pplus][or][b]STRIDE STREAK[r][pminus][cycling]" instead;
	if sco-fried-freak is false, say "[one of][pplus][or][pplus][or][b]FRIED FREAK[r][pminus][cycling]" instead;
	if sco-guide-geek is false, say "[one of][pplus][or][pplus][or][b]GUIDE GEEK[r][pminus][cycling]" instead;
	if sco-snide-sneak is false, say "[one of][pplus][or][pplus][or][b]SNIDE SNEAK[r][pminus][cycling]" instead;
	if ardor elm is in cried creek and sco-harder-helm is false, try hintobjing ardor elm instead;
	say "[done-here]." instead;

chapter north

this is the hint-bosh-blanks rule:
	if sco-posh-planks is false, say "[one of]Something could appear here. Something to walk on.[or][b]POSH PLANKS[r][pminus][cycling]" instead;
	if sco-plucky-plot is false, try hintobjing yucky yacht instead;
	say "[done-here]" instead;

this is the hint-cast-court rule:
	if sco-murky-map is false, say "[one of]The perky pap is very shiny and easy to read, but something less easy to read will help more[pplus].[or]Try a [r]MURKY MAP[b][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-fast-fort rule:
	if sco-glued-glass is false, say "[one of]CCLL doesn't actually help you see anything worth seeing[pplus][or]What could, if you use it right[qplus][or][b]GLUED GLASS[r][pminus][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-passed-port rule:
	if sco-slashing-sword is false, say "[one of]The clashing cord can be one of your list items[pplus][or]Specifically, a [b]SLASHING SWORD[r][pminus][cycling]" instead;
	if sco-slosh-slick is false, say "[one of][pminus][or][pminus][or][r]SLOSH SLICK[b][pminus][cycling]" instead;
	if sco-quash-quick is false, say "[one of][pminus][or][pminus][or][r]QUASH QUICK[b][pminus][cycling]" instead;
	if sco-slosh-slick is false, say "[one of][or][or][r]SLOSH SLICK[b][pminus][cycling]" instead;
	if sco-salad-scent is false, say "[one of][or][or][r]SALAD SCENT[b][pminus][cycling]" instead;
	if sco-time-toad is false, say "[one of][or][or][r]TIME TOAD[b][pminus][cycling]" instead;
	say "[done-here]." instead;

chapter south

this is the hint-treed-track rule: [??note who must come along]
	if sco-need-knack is false, say "[one of]You have to figure out what you're doing. Have a way to look around[pplus][or]It'll help to have someone to ask[pplus][or][b]NEED KNACK[r], once you have [guylist of Snide Sneak][pminus][cycling]" instead;
	if sco-heed-hack is false, say "[one of]You have the knack, but you can apply it a bit more[pplus][or]How to mix it up and follow your intuition[qplus][or][b]HEED HACK[r][pminus][cycling]" instead;
	if sco-seed-sack is false, say "[one of][pplus][or][pplus][or][b]SEED SACK[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-knell-nook rule:
	if sco-bell-book is false, say "[one of]Three things are canonically needed for a ceremony[pplus][or]Two match with the room title[pplus][or][b]BELL BOOK[r][pminus][cycling]" instead;
	if sco-covering-candle is false, say "[one of]What goes with the bell and book[qplus][or]The handle can become a [b]COVERING CANDLE[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-black-blight rule:
	if sco-slack-slight is false, say "[one of][pplus][or][pplus][or][b]SLACK SLIGHT[r][pminus][cycling]" instead;
	if sco-quack-quite is false, say "[one of][pplus][or][pplus][or][b]QUACK QUITE[r][pminus][cycling]" instead;
	if sco-hack-height is false, say "[one of][pplus][or][pplus][or][b]HACK HEIGHT[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-too-tough-blue-bluff rule:
	if sco-grew-gruff is false, say "[one of]You feel bad taking the possessions of people who left[pplus][or]How could you change this[qplus][or][b]GREW GRUFF[r][pminus][cycling]" instead;
	if sco-stew-stuff is false, say "[one of]There's something worth finding here, but what[qplus][or]Some people who tried roughing it cheated a bit[pplus][or][b]STEW STUFF[r][pminus][cycling]" instead;
	if sco-new-nuff is false, try hintobjing stew stuff instead;
	say "[done-here]." instead;

chapter east

this is the hint-tata rule:
	if sco-yall-yank is false, say "[one of]You can't push the tanks by yourself[pplus][or]With the right friends, you can give a command[pplus][or][b]YALL YANK[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-lane-lax rule:
	if sco-train-tracks is false, say "[one of][pplus][or][pplus][or][b]TRAIN TRACKS[r][pminus][cycling]" instead;
	if sco-main-max is false, say "[one of][pplus][or][pplus][or][b]MAIN MAX[r][pminus][cycling]" instead;
	if sco-pain-packs is false, say "[one of][pplus][or][pplus][or][b]PAIN PACKS[r][pminus][cycling]" instead;
	if sco-trod-trash is false, say "[one of][pplus][or][pplus][or][b]TROD TRASH[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-oecc rule:
	if sco-wowed-whys is false, say "[one of][pplus][or][pplus][or][b]WOWED WHYS[r][pminus][cycling]" instead;
	if sco-loud-lies is false, say "[one of][pplus][or][pplus][or][b]LOUD LIES[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-fought-fief rule:
	if sco-bought-beef is false, say "[one of][or][or][b]BOUGHT BEEF[r][pminus][cycling]" instead;
	if sco-brought-brief is false, say "[one of][or][or][b]BROUGHT BRIEF[r][pminus][cycling]" instead;
	if sco-wrought-reef is false, say "[one of][or][or][b]WROUGHT REEF[r][pminus][cycling]" instead;
	if sco-done-dish is false, say "[one of][or][or][b]DONE DISH[r][pminus][cycling]" instead;
	say "[done-here]." instead;

chapter limbo

this is the hint-nil-none rule:
	if sco-fill-fun is false, say "[one of]The joy has drained from you[pplus][or]Bring it all back[pplus][or][b]FILL FUN[r][pminus][cycling]" instead;
	if sco-will-won is false, say "[one of]You feel happy but a bit flaky[pplus][or]Boost your sticktoitiveness[xplus][or][b]WILL WON[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-dander-dove rule:
	if sco-candor-cove is false, say "[one of]You seek truth[pplus][or][b]CANDOR COVE[r][pminus][cycling]" instead;
	if sco-grander-grove is false, say "[one of]You seek bigger things[pplus][or][b]GRANDER GROVE[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-route-rough rule:
	if sco-flout-fluff is false, say "[one of][pplus][or][pplus][or][b]FLOUT FLUFF[r][pminus][cycling]" instead;
	if sco-stout-stuff is false, say "[one of][pplus][or][pplus][or][b]STOUT STUFF[r][pminus][cycling]" instead;
	say "[done-here]." instead;

volume thing hints

this is the hint-stew-stuff rule:
	if sco-new-nuff is false, say "[one of]The stew stuff needs to be in better condition[pplus][or]It can't be in perfect condition[pplus][or]Make it [b]NEW NUFF[r][pminus][cycling]" instead;

Bright Brave Knight Knave Hints ends here.

---- DOCUMENTATION ----
