Version 1/221007 of Bright Brave Knight Knave Tables by Andrew Schultz begins here.

"This file contains the main verb-checking/point-scoring table as well as homonym detection."

[notes:
1 = chic shooter / fried freak
2 = meek mooter / snide sneak
3 = weak wooter / guide geek
]

volume the main stuff

to open-psg (di - a direction) and (rm - a room):
	let lp be location of player;
	change di exit of lp to rm;
	change (opposite of di) exit of rm to lp;

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"write|right"	"rave"	--	--	false	false	false	false	white wave	vc-write-right-rave rule	vr-write-right-rave rule	--	--
"kite"	"cave"	--	--	false	true	true	false	white wave	vc-kite-cave rule	vr-kite-cave rule	--	--
"jack"	"gist"	--	--	false	true	false	false	--	vc-jack-gist rule	vr-jack-gist rule	--	--
"fight"	"fave"	--	--	false	true	true	false	white wave	vc-fight-fave rule	vr-fight-fave rule	--	"You can [b]FIGHT FAVE[r] [once-now of vc-fight-fave rule] you have enough worth and confidence in you."
"pass"	"path"	--	--	false	true	true	false	bass bath	vc-pass-path rule	vr-pass-path rule	--	--
"mass"	"math"	--	--	false	true	true	false	bass bath	vc-mass-math rule	vr-mass-math rule	--	"You can use [b]MASS MATH[r] [once-now of vc-mass-math rule] you have something to calculate."
"what"	"whoa|whoah"	--	--	false	true	true	false	rut row	vc-what-whoah rule	vr-what-whoah rule	--	--
"hid"	"hum"	--	--	false	true	true	false	slid slum	vc-hid-hum rule	vr-hid-hum rule	--	--
"kid"	"come"	--	--	false	true	true	false	slid slum	vc-kid-come rule	vr-kid-come rule	--	"You can say [b]KID COME[r] [once-now of vc-hid-hum rule] a kid is around."
"rid"	"rum"	--	--	false	true	true	false	slid slum	vc-rid-rum rule	vr-rid-rum rule	--	"You can say [b]RID RUM[r] [once-now of vc-kid-come rule] you have cause to speak out against alcohol."
"mood|tude"	"mapper|tapper"	--	--	false	true	true	false	crude crapper	vc-mood-mapper rule	vr-mood-mapper rule	"mood mapper" or "tude tapper"	--
"nude"	"napper"	--	--	false	true	false	false	crude crapper	vc-nude-napper rule	vr-nude-napper rule	--	--
"meek"	"mooter"	--	--	false	true	true	false	recroom	vc-meek-mooter rule	vr-meek-mooter rule	--	--
"chic"	"shooter"	--	--	false	true	true	false	recroom	vc-chic-shooter rule	vr-chic-shooter rule	--	--
"weak"	"wooter"	--	--	false	true	true	false	recroom	vc-weak-wooter rule	vr-weak-wooter rule	--	--
"fried"	"freak"	--	--	false	true	true	false	cried creek	vc-fried-freak rule	vr-fried-freak rule	--	--
"snide"	"sneak"	--	--	false	true	true	false	cried creek	vc-snide-sneak rule	vr-snide-sneak rule	--	--
"guide"	"geek"	--	--	false	true	true	false	cried creek	vc-guide-geek rule	vr-guide-geek rule	--	--
"stride"	"streak"	--	--	false	true	true	false	cried creek	vc-stride-streak rule	vr-stride-streak rule	--	--
"harder"	"helm"	--	--	false	true	true	false	cried creek	vc-harder-helm rule	vr-harder-helm rule	--	--
"posh"	"planks"	--	--	false	true	true	false	bosh blanks	vc-posh-planks rule	vr-posh-planks rule	--	--
"plucky"	"plot"	--	--	false	true	true	false	bosh blanks	vc-plucky-plot rule	vr-plucky-plot rule	--	--
"cast"	"court"	--	--	false	true	true	false	bosh blanks	vc-cast-court rule	vr-cast-court rule	--	--
"fast"	"fort"	--	--	false	true	true	false	bosh blanks	vc-fast-fort rule	vr-fast-fort rule	--	--
"passed"	"port"	--	--	false	true	true	false	bosh blanks	vc-passed-port rule	vr-passed-port rule	--	"You can visit the [b]PASSED PORT[r] [once-now of vc-passed-port rule] you have decent directions to get there."
"murky"	"map"	--	--	false	true	true	false	cast court	vc-murky-map rule	vr-murky-map rule	--	--
"glued"	"glass"	--	--	false	true	true	false	fast fort	vc-glued-glass rule	vr-glued-glass rule	--	--
"salad"	"scent"	--	--	false	true	true	false	passed port	vc-salad-scent rule	vr-salad-scent rule	--	--
"slosh"	"slick"	--	--	false	true	true	false	passed port	vc-slosh-slick rule	vr-slosh-slick rule	--	--
"quash"	"quick"	--	--	false	true	true	false	passed port	vc-quash-quick rule	vr-quash-quick rule	--	--
"slashing"	"sword"	--	--	false	true	true	false	passed port	vc-slashing-sword rule	vr-slashing-sword rule	--	--
"time"	"toad"	--	--	false	true	true	false	passed port	vc-time-toad rule	vr-time-toad rule	--	--
"rhyme"	"road"	--	--	false	true	false	false	passed port	vc-rhyme-road rule	vr-rhyme-road rule	--	--
"need"	"knack"	--	--	false	true	true	false	treed track	vc-need-knack rule	vr-need-knack rule	--	--
"heed"	"hack"	--	--	false	true	true	false	treed track	vc-heed-hack rule	vr-heed-hack rule	--	"You can [b]HEED HACK[r] [once-now of vc-heed-hack rule] you have an idea how to navigate the Treed Track."
"seed"	"sack"	--	--	false	true	true	false	treed track	vc-seed-sack rule	vr-seed-sack rule	--	--
"plead"	"plaque"	--	--	false	true	false	false	treed track	vc-plead-plaque rule	vr-plead-plaque rule	--	--
"grew"	"gruff"	--	--	false	true	true	false	too tough blue bluff	vc-grew-gruff rule	vr-grew-gruff rule	--	--
"stew"	"stuff"	--	--	false	true	true	false	too tough blue bluff	vc-stew-stuff rule	vr-stew-stuff rule	--	--
"new"	"nuff"	--	--	false	true	true	false	too tough blue bluff	vc-new-nuff rule	vr-new-nuff rule	--	--
"hack"	"height"	--	--	false	true	true	false	lack light black blight	vc-hack-height rule	vr-hack-height rule	--	--
"quack"	"quite"	--	--	false	true	true	false	lack light black blight	vc-quack-quite rule	vr-quack-quite rule	--	--
"flak"	"flight"	--	--	false	true	true	false	lack light black blight	vc-flak-flight rule	vr-flak-flight rule	--	--
"slack"	"slight"	--	--	false	true	true	false	lack light black blight	vc-slack-slight rule	vr-slack-slight rule	--	--
"power"	"plate"	--	--	false	true	true	false	--	vc-power-plate rule	vr-power-plate rule	--	--
"bell"	"book"	--	--	false	true	true	false	knell nook	vc-bell-book rule	vr-bell-book rule	--	--
"covering"	"candle"	--	--	false	true	true	false	knell nook	vc-covering-candle rule	vr-covering-candle rule	--	--
"yall"	"yank"	--	--	false	true	true	false	tata	vc-yall-yank rule	vr-yall-yank rule	--	"You can say [b]YALL YANK[r] [once-now of vc-yall-yank rule] you have the right cohorts."
"paul"	"panks"	--	--	false	true	false	false	tata	vc-paul-panks rule	vr-paul-panks rule	--	--
"train"	"tracks"	--	--	false	true	true	false	lane lax	vc-train-tracks rule	vr-train-tracks rule	--	--
"main"	"max"	--	--	false	true	true	false	lane lax	vc-main-max rule	vr-main-max rule	--	"You can say [b]MAIN MAX[r] [once-now of vc-train-tracks rule] it's busier by the [lane lax]."
"pain"	"packs"	--	--	false	true	true	false	lane lax	vc-pain-packs rule	vr-pain-packs rule	--	--
"trod|flawed"	"trash|flash"	--	--	false	true	true	false	lane lax	vc-trod-trash rule	vr-trod-trash rule	"trod trash" or "flawed flash"	--
"trowed"	"tries"	--	--	false	true	true	false	wowed wise crowd cries	vc-trowed-tries rule	vr-trowed-tries rule	--	--
"loud"	"lies"	--	--	false	true	true	false	wowed wise crowd cries	vc-loud-lies rule	vr-loud-lies rule	--	--
"bought"	"beef"	--	--	false	true	true	false	thought thief fought fief	vc-bought-beef rule	vr-bought-beef rule	--	--
"brought"	"brief"	--	--	false	true	true	false	thought thief fought fief	vc-brought-brief rule	vr-brought-brief rule	--	--
"wrought"	"reef"	--	--	false	true	true	false	thought thief fought fief	vc-wrought-reef rule	vr-wrought-reef rule	--	--
"done"	"dish"	--	--	false	true	true	false	thought thief fought fief	vc-done-dish rule	vr-done-dish rule	--	--
"boozing"	"boo"	--	--	false	true	true	false	Bruising Brew	vc-boozing-boo rule	vr-boozing-boo rule	--	--
"using"	"you"	--	--	false	true	true	false	Bruising Brew	vc-using-you rule	vr-using-you rule	--	--
"fusing"	"phew"	--	--	false	true	true	false	Bruising Brew	vc-fusing-phew rule	vr-fusing-phew rule	--	--
"spurning"	"spew"	--	--	false	true	true	false	Bruising Brew	vc-spurning-spew rule	vr-spurning-spew rule	--	--
"fill"	"fun"	--	--	false	true	true	false	nil none	vc-fill-fun rule	vr-fill-fun rule	--	--
"will"	"won"	--	--	false	true	true	false	nil none	vc-will-won rule	vr-will-won rule	--	"You can say [b]WILL WON[r] [once-now of vc-will-won rule] you're a little less miserable."
"ill"	"un/in"	--	--	false	true	false	false	nil none	vc-ill-un rule	vr-ill-un rule	"illun/illin"	--
"grander"	"grove"	--	--	false	true	true	false	dander dove	vc-grander-grove rule	vr-grander-grove rule	--	--
"candor|candour"	"cove"	--	--	false	true	true	false	dander dove	vc-candor-cove rule	vr-candor-cove rule	--	--
"stander"	"stove"	--	--	false	true	true	false	dander dove	vc-stander-stove rule	vr-stander-stove rule	--	--
"flout"	"fluff"	--	--	false	true	true	false	route rough	vc-flout-fluff rule	vr-flout-fluff rule	--	--
"nowt"	"nuff"	--	--	false	true	true	false	route rough	vc-nowt-nuff rule	vr-nowt-nuff rule	--	--
"stout"	"stuff"	--	--	false	true	true	false	route rough	vc-stout-stuff rule	vr-stout-stuff rule	--	--
"ailing"	"ill"	--	--	false	true	true	false	hailing hill	vc-ailing-ill rule	vr-ailing-ill rule	--	--
"scaling"	"skill"	--	--	false	true	true	false	hailing hill	vc-scaling-skill rule	vr-scaling-skill rule	--	--
"mailing"	"mill"	--	--	false	true	true	false	hailing hill	vc-mailing-mill rule	vr-mailing-mill rule	--	"You can place a mailing mill [if hill-score < 2]once[else]now[end if] you are at the top of Hailing Hill[if hill-score >= 2] and [once-now of vc-mailing-mill rule] you have the raw materials[end if]."
"bailing"	"bill"	--	--	false	true	true	false	hailing hill	vc-bailing-bill rule	vr-bailing-bill rule	--	"You can contact Bailing Bill [once-now of vc-bailing-bill rule] you have something to offer him."
"failing"	"phil"	--	--	false	true	true	false	hailing hill	vc-failing-phil rule	vr-failing-phil rule	--	"You can contact Failing Phil [once-now of vc-failing-phil rule] you have something to offer him."
"wailing"	"will"	--	--	false	true	true	false	hailing hill	vc-wailing-will rule	vr-wailing-will rule	--	"You can contact Wailing Will [once-now of vc-wailing-will rule] you have something to offer him."
"fright"	"fully"	--	--	false	true	true	false	white wave	vc-fright-fully rule	vr-fright-fully rule	"frightfully"	--
"bright"	"bully"	--	--	false	true	true	false	white wave	vc-bright-bully rule	vr-bright-bully rule	--	--
"bam"	"bye"	--	--	false	true	true	false	white wave	vc-bam-bye rule	vr-bam-bye rule	--	--

section white wave/universal point scoring

a goodrhyme rule (this is the vc-write-right-rave rule):
	if sco-write-right-rave is true:
		vcal "You already appealed to my pride! Now it's my turn to feel pride by showing I don't need a second dose. Well, from you, at least. No offense.!";
		already-done;
	ready;

to decide whether extra-rave-points:
	if number of visited rooms > 2, yes;
	no;

this is the vr-write-right-rave rule:
	now sco-write-right-rave is true;
	say "For me? Really? Why, that's quite kind of you! [if extra-rave-points]And you've seen so much of the game! That means it's not just knee-jerk praise![else]Without seeing much of the game, either! I'm a bit suspicious you're prying for hints, but no, no, I'll let it pass.[end if]";
	if extra-rave-points:
		increment cur-bonus;
		now got-rave-bonus is true;
	else:
		max-down;

a goodrhyme rule (this is the vc-kite-cave rule):
	if player is not in white wave, unavailable;
	if sco-kite-cave is true:
		vcal "You already discovered the kite cave to find a path beyond!";
		already-done;
	ready;

this is the vr-kite-cave rule:
	now sco-kite-cave is true;
	say "You look around, and what do you know? You see part of a kite stuck under a rock, in a cave. You try to move the rock, and when you do, you hear a rumbling. You try to take the kite, but it's tied to a string and is sucked down the hole and around a corner. The hole itself collapses, becoming big enough to climb down.[paragraph break]The cave collapses. There's a passage down, but next to it is a hold-hole. Perhaps looking at it will give you some clues what to do with your journey.[paragraph break]Oh, and wait! Something else to look at, too. It sprung free from the kite that went in the hole. A track-tryst lack list. You take it. Then you look at the hole again. Perhaps it is worth going [b]DOWN[r].";
	move hold hole to white wave;
	now Bass Bath is mapped below White Wave;
	now White Wave is mapped below Bass Bath;
	now player has track tryst lack list;

a goodrhyme rule (this is the vc-jack-gist rule): [doesn't have to be done here but it's the best place]
	if player does not have lack list, unavailable;
	if sco-jack-gist is true:
		vcal "You already streamlined things with the list!";
		already-done;
	ready;

this is the vr-jack-gist rule:
	now sco-jack-gist is true;
	say "Wow! You figured what to do. Now instead of typing [b]X LIST[r], you can just type [b]X[r] or even [b]I[r].";

a goodrhyme rule (this is the vc-fight-fave rule):
	if player is not in white wave and debug-allow-final is false:
		vcp "Not here. There is a proper place for that, though.";
		not-yet;
	if hold hole is off-stage:
		vcp "Perhaps in the far future. But right now, you've only gotten here. You need to build your strength and worth.";
		not-yet;
	if hole-progress < 3:
		vcp "You aren't ready yet. The hold hole is not complete[if availval is 3]. And it seems to repel [the list of unblessed holeitems]. Well, for now[end if].";
		not-yet;
	if trystcount < number of trystitems:
		vcp "You look at [the list]. You only have [trystcount in words] of the [number of trystitems in words] things you need to succeed.";
		not-yet;
	if sco-fight-fave is true:
		vcal "You already started the final fight! You aren't going to, like, REALLY start fighting now.";
		already-done;
	ready;

this is the vr-fight-fave rule:
	now sco-fight-fave is true;
	say "You are ready to fight! The fave, Trite Tully, appears. Boy, is he trite! But the deal is, he's so trite, yet people like you can't deal with him, which says something about you.";
	move trite tully to White Wave;
	now cur-max-bonus is 0;
	if sco-write-right-rave is false, increase cur-max-bonus by 2;
	if sco-jack-gist is false, increase cur-max-bonus by 1;

section bass bath point scoring

a goodrhyme rule (this is the vc-pass-path rule):
	if player is not in bass bath, unavailable;
	if sco-pass-path is true:
		vcal "You already found a pass-path through the bass bath!";
		already-done;
	ready;

this is the vr-pass-path rule:
	now sco-pass-path is true;
	say "Weird! You don't expect anything to happen, but small land-bridges appear over the bath to the north, west and east. They appear tangled and looping. You might get confused going down them right away.";
	print-the-loc;
	open-psg west and rut row;
	open-psg north and bosh blanks;
	open-psg south and Treed Track;
	open-psg east and tata;

a goodrhyme rule (this is the vc-mass-math rule):
	if player is not in bass bath, unavailable;
	if sco-pass-path is false:
		vcp "You have nothing to do mass math on. Yet.";
		not-yet;
	if sco-mass-math is true:
		vcal "You already calculated! Overcalculate, and you might miss or reject the obvious.";
		already-done;
	ready;

this is the vr-mass-math rule:
	now sco-mass-math is true;
	say "You sit back and do some calculations as to where the paths must lead. You work out that many must be equivalent, and there cannot be too many. They weave about for a bit, yes, but you have figured a way not to get lost in them.[paragraph break]You hone your theorems and heuristics so well, you realize there is pretty much just one path west, one east, and one north.";

section rut row point scoring

a goodrhyme rule (this is the vc-what-whoah rule):
	if player is not in rut row, unavailable;
	if sco-what-whoah is true:
		vcal "You already had a revelation that will push you out of your rut and see a new passage through.";
		already-done;
	ready;

this is the vr-what-whoah rule:
	now sco-what-whoah is true;
	say "It sounds artificial at first to pretend you saw something. Then you think, if I did see something useful, what sort of thing would I see? And somehow, it works! You find a path west through Rut Row.";
	open-psg west and slum slid;

section slid slum point scoring

a goodrhyme rule (this is the vc-hid-hum rule):
	if player is not in slid slum, unavailable;
	if sco-hid-hum is true:
		vcal "You already did initial searching!";
		already-done;
	ready;

this is the vr-hid-hum rule:
	now sco-hid-hum is true;
	say "You figure there must be something here, and you are right ... there's a kid. They seem to be holding something behind their back. They don't trust you yet.";

a goodrhyme rule (this is the vc-kid-come rule):
	if player is not in slid slum, unavailable;
	if sco-hid-hum is false:
		vcp "There's no kid around yet!";
		not-yet;
	if sco-kid-come is true:
		vcal "You already called the kid over!";
		already-done;
	ready;

this is the vr-kid-come rule:
	now sco-kid-come is true;
	say "The kid looks awkwardly at you. They shuffle forward.";

a goodrhyme rule (this is the vc-rid-rum rule):
	if player is not in slid slum, unavailable;
	if sco-hid-hum is false:
		say "There is no rum to rid that you can sense. Yet.";
		not-yet;
	if sco-kid-come is false:
		vcp "The kid doesn't trust you enough yet! They feel no closeness.";
		not-yet;
	if sco-rid-rum is true:
		vcal "You already got rid of the rum!";
		already-done;
	ready;

this is the vr-rid-rum rule:
	now sco-rid-rum is true;
	say "The [boffin] shows what they have behind their back. They're a bit ashamed of all this. But you assure them it's very understandable. There's general discussion of what a tough world we live in and so forth. Your hearts both feel lightened by it. You and [the boffin] part ways, and you see things a bit more clearly now. Oh, wow! There's somewhere scungy you can go [b]INSIDE[r] to. You're up to it now.";
	open-psg inside and crude crapper;

section crude crapper scoring

a goodrhyme rule (this is the vc-mood-mapper rule):
	if player is not in crude crapper and player does not have mood mapper, unavailable;
	if sco-mood-mapper is true:
		vcal "You already got the mood mapper/[']tude tapper!";
		already-done;
	ready;

this is the vr-mood-mapper rule:
	now sco-mood-mapper is true;
	say "You don't really want to go looking around here too much, but knowing what might be here, you figure having that focus will help you do so. And what do you know? A mood mapper turns up!";
	now player has mood mapper;

a goodrhyme rule (this is the vc-nude-napper rule):
	if player is not in crude crapper, unavailable;
	if sco-nude-napper is true:
		vcal "You don't want to be too much of a moral scold!";
		already-done;
	ready;

this is the vr-nude-napper rule:
	now sco-nude-napper is true;
	say "You're liberal and lenient and all that, but some things cross the line. It's something you didn't want to see, and something that's awkward to deal with, but you find the offender and suggest they move on. If they aren't physically hurting anyone, they are, and will be, in others['] personal space. There's no need for lectures. You nod your head pointedly. They understand, or seem to. Perhaps they will just move on elsewhere, but maybe if enough people speak up, they'll get the big message.";

section recruiter

a goodrhyme rule (this is the vc-chic-shooter rule):
	abide by the eeker precheck rule for chic shooter;
	ready;

this is the vr-chic-shooter rule:
	now sco-chic-shooter is true;
	abide by the eeker vr rule for chic shooter;

a goodrhyme rule (this is the vc-meek-mooter rule):
	abide by the eeker precheck rule for meek mooter;
	ready;

this is the vr-meek-mooter rule:
	now sco-meek-mooter is true;
	abide by the eeker vr rule for meek mooter;

a goodrhyme rule (this is the vc-weak-wooter rule):
	abide by the eeker precheck rule for weak wooter;
	ready;

this is the vr-weak-wooter rule:
	now sco-weak-wooter is true;
	abide by the eeker vr rule for weak wooter;

section spied speak cried creek point scoring

a goodrhyme rule (this is the vc-fried-freak rule):
	abide by the eeker precheck rule for fried freak;
	ready;

this is the vr-fried-freak rule:
	now sco-fried-freak is true;
	abide by the eeker vr rule for fried freak;

a goodrhyme rule (this is the vc-snide-sneak rule):
	abide by the eeker precheck rule for snide sneak;
	ready;

this is the vr-snide-sneak rule:
	now sco-snide-sneak is true;
	abide by the eeker vr rule for snide sneak;

a goodrhyme rule (this is the vc-guide-geek rule):
	abide by the eeker precheck rule for guide geek;
	ready;

this is the vr-guide-geek rule:
	now sco-guide-geek is true;
	abide by the eeker vr rule for guide geek;

a goodrhyme rule (this is the vc-stride-streak rule):
	if player is not in cried creek, unavailable;
	if sco-stride-streak is true:
		vcal "You already encouraged more action and less moping here!";
		already-done;
	ready;

this is the vr-stride-streak rule:
	now sco-stride-streak is true;
	say "Things feel far less lethargic here. You don't feel like you're stuck, and others won't, either.";

a goodrhyme rule (this is the vc-harder-helm rule):
	if ardor elm is not touchable, unavailable;
	if sco-harder-helm is true:
		vcal "That sort of repeated ardor won't get you anywhere!";
		already-done;
	ready;

this is the vr-harder-helm rule:
	now sco-harder-helm is true;
	say "Clunk! A harder helm drops from the top branches of the ardor elm. You try it on your head. It fits perfectly, and it's actually pretty comfy. You realize it must be one of the items on [the list].";
	now player has harder helm;

section bosh blanks scoring

a goodrhyme rule (this is the vc-posh-planks rule):
	if player is not in bosh blanks, unavailable;
	if sco-posh-planks is true:
		vcal "Oh, no, let's not make things TOO posh, here!";
		already-done;
	ready;

this is the vr-posh-planks rule:
	now sco-posh-planks is true;
	say "Everything becomes a lot more sophisticated here. But not too sophisticated! Things are a bit run-down, right now, as evidenced by that yucky yacht nearby. You sense you should clean it, but you're not sure how. You're not posh enough to get near, you suspect!";
	move yucky yacht to Bosh Blanks;

a goodrhyme rule (this is the vc-plucky-plot rule):
	if yucky yacht is not touchable, unavailable;
	if sco-plucky-plot is true:
		vcal "But you already hatched a plucky plot to clean the yucky yacht!";
		already-done;
	if not assisted:
		vcal "You need a couple assistants to hatch a plot.";
		not-yet;
	if not pair-here of guide geek:
		vcal "Your current friends aren't quite up to plotting."; [the snide sneak is too overconfident]
		not-yet;
	ready;

this is the vr-plucky-plot rule:
	now sco-plucky-plot is true;
	say "You and your friends are too lazy to clean the whole yacht by yourself. Not as lazy as the people who bought the yacht, of course. Those bums.[paragraph break]But you're not too lazy to figure a way to get it cleaned! You managed to build a cleaning robot from scratch. You think of its name.[paragraph break]Of course! Bucky-Bot![paragraph break]Bucky-Bot races in and begins cleaning quickly. Unfortunately, near the end, Bucky-Bot cleans the lens of a security camera that suddenly sees it. You hear the ZAP of laser beam, then an explosion. There are sounds of a scuffle. Bucky-Bot gives a victory cry as he cranks out 'Surveillance ... destroyed.'[paragraph break]You hear footsteps. Someone introduces themselves as the Sassed Sort. They enjoyed captaining a boat, but alas, rich people who owned yachts were annoying--however, they're impressed with how you made the yacht a nicer places.[paragraph break]They have some idea of the surrounding area, as well as some places they could go. You just have to ask right.";
	move Sassed Sort to Bosh Blanks;
	dismiss-geek-wooter;

[ this costs about 200 bytes as opposed to writing this out individually ]
the sort navigation rules are a room based rulebook. the sort navigation rules have outcomes unavailable and already-done.

a sort navigation rule for a room (called rm) (this is the don't loop yacht around rule):
	if sassed sort is not in location of player, unavailable;
	if rm is location of player:
		vcal "But you're already here!";
		already-done;

a goodrhyme rule (this is the vc-cast-court rule):
	abide by the don't loop yacht around rule for Cast Court;
	ready;

this is the vr-cast-court rule:
	now sco-cast-court is true;
	yacht-go cast court;

a goodrhyme rule (this is the vc-fast-fort rule):
	abide by the don't loop yacht around rule for Fast Fort;
	ready;

this is the vr-fast-fort rule:
	now sco-fast-fort is true;
	yacht-go fast fort;

a goodrhyme rule (this is the vc-passed-port rule):
	abide by the don't loop yacht around rule for Passed Port;
	if port-score is 0:
		vcp "'Sorry,' the Sassed Sort shrugs. 'I should know how to get there, but it often, umm, gets passed. Perhaps with detailed instructions I could. The waters are tricky around there.";
		not-yet;
	if port-score is 1:
		vcp "The Sassed Sort looks at the [if player has murky map]murky map. 'Sorry, I can't quite read that yet[else]glued glass. 'It might help me if I had instructions that were hard to read. But we don't, yet[end if].'";
		not-yet;
	ready;

this is the vr-passed-port rule:
	now sco-passed-port is true;
	if passed port is unvisited:
		say "You hand the murky map and glued glass to the Sassed Sort. 'Wow! Yeah, I remember now how to get there. That's a safe route I hadn't considered. Fast, too. Mind if I keep the map and glass?'[paragraph break]Well, you could use the free inventory space. The trip doesn't take long.";
		moot glued glass;
		moot murky map;
	yacht-go passed port;

section cast court scoring

a goodrhyme rule (this is the vc-murky-map rule):
	if perky pap is not touchable, unavailable;
	ready;

this is the vr-murky-map rule:
	now sco-murky-map is true;
	say "Well, you search through the pap, and what do you know? You turn up something. It's a murky map. not very readable, but perhaps you can find a way.";
	now player has murky map;

section fast fort scoring

a goodrhyme rule (this is the vc-glued-glass rule):
	if lewd lass is not touchable, unavailable;
	ready;

this is the vr-glued-glass rule:
	now sco-glued-glass is true;
	say "You don't particularly like [lass], but it does clue you as to what you need.";
	now player has glued glass;

section passed port scoring

a goodrhyme rule (this is the vc-salad-scent rule):
	if pallid pent valid vent is untouchable, unavailable;
	if sco-salad-scent is true:
		vcal "Wow! You must really like salad!";
		already-done;
	ready;

this is the vr-salad-scent rule:
	now sco-salad-scent is true;
	say "Ah, yes, that's what it is. You smell it clearly now. But [the vent] is way up there! You can't get there by yourself! The Snide Sneak offers to climb on you, letting the Meek Mooter do the dirty work. The Meek Mooter doesn't resist. The human ladder works, with the Meek Mooter climbing through [the vent]. They hold out what looks like some salad, or something! The Snide Sneak grabs it, then jumps from your shoulder. The Meek Mooter follows down. After this, the vent itself vanishes[if clashing cord is in passed port]. The clashing cord tumbles from it as well[end if].";
	moot pallid pent valid vent;
	now player has salad sent;
	dismiss-sneak-mooter;

a goodrhyme rule (this is the vc-slosh-slick rule):
	if posh pick is not touchable, unavailable;
	if sco-slosh-slick is true:
		vcal "You already figured that part of getting the pick!";
		already-done;
	ready;

this is the vr-slosh-slick rule:
	now sco-slosh-slick is true;
	say "The Fried Freak has no problem sloshing through.";

a goodrhyme rule (this is the vc-quash-quick rule):
	if posh pick is not touchable, unavailable;
	if sco-quash-quick is true:
		vcal "You already quashed things quickly!";
		already-done;
	ready;

this is the vr-quash-quick rule:
	now sco-quash-quick is true;
	say "The Chic Shooter managed to, well, quash things quickly.";
	check-pick-score;

to check-pick-score:
	if pick-score is 2:
		say "Your two friends work together to fight through the slime. And they recover the posh pick! You wipe it clean.";
		now player has posh pick;
		dismiss-freak-shooter;
	else:
		say "That must be half of the puzzle. You wonder what the other half is."

a goodrhyme rule (this is the vc-slashing-sword rule):
	if clashing cord is not touchable, unavailable;
	ready;

this is the vr-slashing-sword rule:
	now sco-slashing-sword is true;
	moot clashing cord;
	say "The clashing cord shortens a bit and gleams a bit more. You now have a slashing sword, replete with scabbard, which checks on more thing off your list. Yay!";
	now player has slashing sword;

a goodrhyme rule (this is the vc-time-toad rule):
	if player is not in passed port, unavailable;
	if sco-time-toad is true:
		vcal "The time toad's gift of cold coal should be enough.";
		already-done;
	ready;

this is the vr-time-toad rule:
	now sco-time-toad is true;
	say "A great rumbling and ribbiting proclaims the entrance of a very loud and large toad, slurping up [the slime] as it hops towards you. You sense it wants the odd ash and right rack. You put the ask on the rack. They begin to swirl together, first into a fire, then into a lump of coal. The frog nods to it. You touch it. It is cold.[paragraph break]The time toad nods to you, then hops off, its work here done.";
	give-player cold coal;

a goodrhyme rule (this is the vc-rhyme-road rule):
	if player is not in passed port, unavailable;
	if sco-rhyme-road is true:
		vcal "You already looked down Rhyme Road!";
		already-done;
	ready;

this is the vr-rhyme-road rule:
	now sco-rhyme-road is true;
	say "The slime, slowed, momentarily opens up. You see the fun that can be had, or that you did have, from [other-ones]. Impressive, indeed! But then the vision fades. You have much left to do here.";

section lane lax scoring

a goodrhyme rule (this is the vc-train-tracks rule):
	if player is not in lane lax, unavailable;
	if sco-train-tracks is true:
		vcal "You already created train tracks[if sco-main-max is false], though they could become sturdier and farther-reaching[end if].";
		already-done;
	ready;

this is the vr-train-tracks rule:
	now sco-train-tracks is true;
	say "The ground rumbles! Train tracks pop up! They're not very good train tracks, alas.";

a goodrhyme rule (this is the vc-main-max rule):
	if player is not in lane lax, unavailable;
	if sco-train-tracks is false:
		vcp "Yes, perhaps this place could and should become bigger and more important. As a transportation hub. But not as-is.";
		not-yet;
	if sco-main-max is true:
		vcal "You already upgraded the train tracks!";
		already-done;
	ready;

this is the vr-main-max rule:
	now sco-main-max is true;
	say "The train tracks become shinier and stronger and branch a bit more. You can really get around now. But there are problems. Big problems! Other people can too. In fact, not the best sort. A broad brash clod clash breaks out!";
	move broad brash clod clash to lane lax;
	open-psg north and Wowed Wise Crowd Cries;
	open-psg south and Thought Thief Fought Fief;

a goodrhyme rule (this is the vc-pain-packs rule):
	if player is not in lane lax, unavailable;
	if sco-pain-packs is true:
		vcal "You already got some pain packs!";
		already-done;
	ready;

this is the vr-pain-packs rule:
	now sco-pain-packs is true;
	say "You look around, hoping some poor soul forgot their own emergency kits, all while of course hoping they did not need it. And what do you know? In a lane, lax, well--people forget stuff. Finders keepers!";
	now player has pain packs;

a goodrhyme rule (this is the vc-trod-trash rule):
	if broad brash clod clash is untouchable, unavailable;
	if sco-trod-trash is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-trod-trash rule:
	now sco-trod-trash is true;
	say "You and the guide geek and the weak wooter figure out how best to lay down trash so that the clods will step on it and then eventually make it bust open and stink up the great outdoors. And indeed that happens!";
	now player has odd ash;
	dismiss-geek-wooter;

section thought thief fought fief scoring

a goodrhyme rule (this is the vc-bought-beef rule):
	if player is not in thought thief fought fief, unavailable;
	if sco-bought-beef is true:
		vcal "You already pretended to have bought beef, or a beef, or something!";
		already-done;
	ready;

this is the vr-bought-beef rule:
	now sco-bought-beef is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-brought-brief rule):
	if player is not in thought thief fought fief, unavailable;
	if sco-brought-brief is true:
		vcal "You already pretended you brought huge plans!";
		already-done;
	ready;

this is the vr-brought-brief rule:
	now sco-brought-brief is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-wrought-reef rule):
	if player is not in thought thief fought fief, unavailable;
	if thief-score < 2:
		vcp "It's still too chaotic to do much!";
		not-yet;
	if sco-wrought-reef is true:
		vcal "You already wrought the reef!";
		already-done;
	ready;

this is the vr-wrought-reef rule:
	now sco-wrought-reef is true;
	say "You hear a loud crumbling noice. The landscape changes significantly! You see a fish in the reef, too, and from some sort of telepathic communication, you know it is a one-wish-fun-fish, but it's a very specific wish, and you need to bring hte right supplies.";
	move wish fun fish to Fought Fief;

a goodrhyme rule (this is the vc-done-dish rule):
	if wish fun fish is not touchable, unavailable;
	if fish-score < 2:
		vcp "The [fish] blups at you apologetically. You don't have [if fish-score is 1]enough[else]anything[end if] to work with, to complete a dish.";
		not-yet;
	ready;

this is the vr-done-dish rule:
	now sco-done-dish is true;
	say "You lay the stew stuff and the salad sent down in the shallowest part of the water. They both float. The fish starts flopping under and over them. Some sand bubbles up from the bottom to find a bowl. And--well, it's perfect for carrying the done dish! A very bold bowl, indeed.";
	moot stew stuff;
	moot salad sent;
	moot fun fish;
	give-player bold bowl;

section treed track scoring

a goodrhyme rule (this is the vc-need-knack rule):
	if player is not in treed track, unavailable;
	if only-here of Snide Sneak:
		vcp "The Snide Sneak has advice for how to find your way around, but it isn't really tempered with caution. You don't trust them enough, yet!";
		not-yet;
	if not pair-here of Snide Sneak:
		vcp "You'd like to, but you need assistance from others as to how.";
		not-yet;
	if sco-need-knack is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-need-knack rule:
	now sco-need-knack is true;
	say "It makes sense, now, with the Snide Sneak and Mooter Meek helping you. The Sneak proposes shortcuts, and the Mooter points out unnecessary risks. Surprisingly, the Sneak considers the Mooter's position. It's a productive discussion. Together, you hammer out that there is a very clear way through the track: down. Not bad![paragraph break]And yet you sense the Snide Sneak is hiding something from you. They have shown you how to cheat, and now you need to grok things.";
	open-psg west and Too Tough Blue Bluff;
	dismiss-sneak-mooter;

a goodrhyme rule (this is the vc-heed-hack rule):
	if player is not in treed track, unavailable;
	if sco-need-knack is false:
		vcp "But you have not figured out any basic hacks to progress further! Well, not yet. First things first.";
		not-yet;
	if sco-heed-hack is true:
		vcal "You look for other ways to hack through the Treed Track, but three all told is pretty good.";
		already-done;
	ready;

this is the vr-heed-hack rule:
	now sco-heed-hack is true;
	say "You figure what the Snide Sneak was really trying to say. Yep, there you go. That's easy, now you know what to do. You find two more passages.";
	open-psg up and Lack Light Black Blight;
	open-psg east and Knell Nook;

a goodrhyme rule (this is the vc-seed-sack rule):
	if player is not in treed track, unavailable;
	if sco-seed-sack is true:
		vcal "You already got a seed sack!";
		already-done;
	ready;

this is the vr-seed-sack rule:
	now sco-seed-sack is true;
	say "You manage to discover a seed sack nearby. You're not sure what it's good for--it seems to discuss more reliable methods of communication than, you know, actually growing plants. But it's bound to come in handy, you think! You hope.";
	now player has seed sack;

a goodrhyme rule (this is the vc-plead-plaque rule):
	if player is not in treed track, unavailable;
	if sco-plead-plaque is true:
		vcal "You look over the plead plaque again. Man, even more fun adventures once you're done with [this-game]! You totally can't wait to hit up [other-ones], of you haven't already.";
		already-done;
	ready;

this is the vr-plead-plaque rule:
	now sco-plead-plaque is true;
	say "Oh my goodness! You've discovered a treasure that is as priceless as your quest, but more so! It expresses congratulations for getting this far and being so observant and also humbly suggests you also enjoy [other-ones], once you've solved this terribly important quest, of course.[paragraph break]There is a perfectly sensible small-print disclaimer that those adventures are not quite as unbelievably dope as this one, since the author has only gotten better at writing text adventures with time, but the author still had fun making them.";

section lack light black blight scoring

a goodrhyme rule (this is the vc-hack-height rule):
	if player is not in lack light black blight, unavailable;
	if sco-hack-height is true:
		vcal "You already hacked the height. You don't want to, like, become a total hack!";
		already-done;
	ready;

this is the vr-hack-height rule:
	now sco-hack-height is true;
	say "You feel less dizzy and such this high up. It's a relief.";
	blight-alt;

a goodrhyme rule (this is the vc-quack-quite rule):
	if player is not in lack light black blight, unavailable;
	if sco-quack-quite is true:
		vcal "You already quacked 'Quite!'";
		already-done;
	ready;

this is the vr-quack-quite rule:
	now sco-quack-quite is true;
	say "You show you can blow off fear, a little, by quacking 'quite.'";
	blight-alt;

a goodrhyme rule (this is the vc-flak-flight rule):
	if player is not in lack light black blight, unavailable;
	if sco-flak-flight is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-flak-flight rule:
	now sco-flak-flight is true;
	say "Hooray! You figured what to do! You get a point!";
	blight-alt;


a goodrhyme rule (this is the vc-slack-slight rule):
	if player is not in lack light black blight, unavailable;
	if sco-slack-slight is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-slack-slight rule:
	now sco-slack-slight is true;
	say "Hooray! You figured what to do! You get a point!";
	blight-alt;

to blight-alt:
	if blight-score is 3:
		alt-last black blight;
		choose row with check-rule of vc-power-plate rule in table of verb checks;
		now best-room entry is black blight;
		now core entry is true;
		say "The black blight seems to fade. As it releases its grip, you see sacks. Lots of sacks. It's a sack site, now. There are too many to search through, but fortunately there's some stuff in clear view.[paragraph break]There's a sour slate lying around, which you don't want to touch in its current form.";
		now sour slate is in black blight;
		check-rack-right;
		if player does not have rack right, say "There must be something here in the Sack Site! But you wouldn't know where to start searching, and you wouldn't have the energy to search very long. Maybe if you were a more old-school parser adventurer, you would. But that part of the curriculum was streamlined these days.";

to check-rack-right:
	if fried freak is in location of player or pfft-friends is true:
		say "The fried freak begins looking through all the bags in the sack site. And what do you know? They turn something up! It's, well, a Rack-Right. What? You don't know the brand name? Well, you put stuff on it, and in the right place, and good things happen.";
		now player has rack right;
		dismiss-freak-shooter;

section too tough blue bluff scoring

a goodrhyme rule (this is the vc-grew-gruff rule):
	if player is not in too tough blue bluff, unavailable;
	if sco-grew-gruff is true:
		vcal "Don't want to overdo it!";
		already-done;
	ready;

this is the vr-grew-gruff rule:
	now sco-grew-gruff is true;
	say "You get rid of a bit of sentiment. It's certainly sad a tragedy may have happened here, but why make things more tragic?";

a goodrhyme rule (this is the vc-stew-stuff rule):
	if player is not in too tough blue bluff, unavailable;
	if sco-grew-gruff is false:
		vcp "You haven't steeled yourself to look for what you need, yet. You feel bad for the people who might've lost what they need to eat.";
		not-yet;
	if sco-stew-stuff is true:
		vcal "You can't make any more stew stuff.";
		already-done;
	ready;

this is the vr-stew-stuff rule:
	now sco-stew-stuff is true;
	say "Now that you know what to look for, it's not too bad to find. You find enough to make a stew.";
	now player has stew stuff;
	dismiss-geek-wooter;

a goodrhyme rule (this is the vc-new-nuff rule):
	if player is not in too tough blue bluff, unavailable;
	if sco-stew-stuff is false:
		vcp "You have nothing to make new [']nuff, yet.";
		not-yet;
	if sco-new-nuff is true:
		vcal "You already revitalized the stew stuff.";
		already-done;
	ready;

this is the vr-new-nuff rule:
	now sco-new-nuff is true;
	say "Boom! The stew stuff isn't perfectly shiny, but it's, well, new [']nuff.";

a goodrhyme rule (this is the vc-power-plate rule):
	if sour slate is not touchable, unavailable;
	ready;

this is the vr-power-plate rule:
	now sco-power-plate is true;
	say "Oh my goodness! The sour slate expands -- and it becomes some power plate! Perfect armor to replace what you had! You kind of slacked off in science class, but you suspect it's some really durable polymer or alloy or something like that.";
	now player has power plate;

section knell nook scoring

a goodrhyme rule (this is the vc-bell-book rule):
	abide by the any-nook rule;
	if sco-bell-book is true:
		vcal "You already got the bell and book! Now for the next part.";
		already-done;
	ready;

this is the vr-bell-book rule:
	now sco-bell-book is true;
	say "The bell and book are in place. There is one more item. Perhaps you can guess it.";

a goodrhyme rule (this is the vc-covering-candle rule):
	abide by the any-nook rule;
	if player is not in knell nook, unavailable;
	if sco-bell-book is false:
		vcp "The first part of the ceremony comes first. I think you know what it is?";
		not-yet;
	ready;

this is the vr-covering-candle rule:
	now sco-covering-candle is true;
	say "The knell nook shakes. A spirit appears -- it is a sold soul! It nods with familiarity at the posh pick and proud prize. 'DESTROY THEM.' You do. The knell nook begins shaking and soon collapses.[paragraph break]The sold soul thanks you. It will follow wordlessly until you need it.";
	give-player sold soul;
	moot proud prize;
	moot posh pick;

section tall tank(s) scoring

a goodrhyme rule (this is the vc-yall-yank rule):
	if player is not in tata, unavailable;
	if not assisted:
		vcp "Whoah! The tall tank is big! You'll need help from more than one person to move it!";
		not-yet;
	unless pair-here of Chic Shooter:
		vcp "You sense resistance to physical work from [list of visible eekers]. You need pals more action-based.";
		not-yet;
	if sco-yall-yank is true:
		vcal "You've already pulled out the tall tank(s).";
		already-done;
	ready;

this is the vr-yall-yank rule:
	now sco-yall-yank is true;
	say "The Fried Freak is ready to use that pent-up energy, and the Chic Shooter is ready for action, too. You all pull out a few tall tank(s) with a lot of grunting. Passage opens up to the east.";
	open-psg east and Lane Lax;
	dismiss-freak-shooter;

a goodrhyme rule (this is the vc-paul-panks rule):
	if player is not in tata, unavailable;
	if sco-paul-panks is true:
		vcal "You already paid your respects.";
		already-done;
	ready;

this is the vr-paul-panks rule:
	now sco-paul-panks is true;
	say "You think back to someone who competed in IFComp about as many times as the author did. Okay, the author is doing this thinking. But ... I thought about him a lot, though he died before I came on the scene. And I enjoyed Hannes Schueller's tribute, The Ninja's Fate. I was humbled to see I'd passed Paul Panks in number of things written. He paved the way for me, sort of. So when I had a chance to leave this memento, I did.";

section wowed wise crowd cries scoring

a goodrhyme rule (this is the vc-trowed-tries rule):
	if player is not in wowed wise crowd cries, unavailable;
	if sco-trowed-tries is true:
		vcal "[if sco-loud-lies is true]No need to re-try.[else]Enough trying. You need to take action![end if]";
		already-done;
	ready;

this is the vr-trowed-tries rule:
	now sco-trowed-tries is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-loud-lies rule):
	if player is not in wowed wise crowd cries, unavailable;
	if not pair-here of guide geek:
		say "You're pretty sure these are loud lies, but you don't have the necessary edge to refute them and prove it. You need assistance!";
		not-yet;
	if sco-loud-lies is true:
		vcal "You already declaimed the loud lies.";
		already-done;
	ready;

this is the vr-loud-lies rule:
	now sco-loud-lies is true;
	say "With the help of the Snide Sneak, as well as the Meek Mooter who points out what might be too much bluster, you're able to call the lies for what they are! The crowd seems shocked. You leave with a proud prize.";
	now player has proud prize;
	dismiss-sneak-mooter;

section Bruising Brew scoring

a goodrhyme rule (this is the vc-boozing-boo rule):
	if player is not in Bruising Brew, unavailable;
	if sco-boozing-boo is true:
		vcal "Don't overdo the moralizing!";
		already-done;
	ready;

this is the vr-boozing-boo rule:
	now sco-boozing-boo is true;
	say "You explain that boozing is just not the way to go.";
	lou-check;

a goodrhyme rule (this is the vc-using-you rule):
	if player is not in Bruising Brew, unavailable;
	if sco-using-you is true:
		vcal "You already let Lou know the truth!";
		already-done;
	ready;

this is the vr-using-you rule:
	now sco-using-you is true;
	say "You break down some harsh truths to Lou without hopefully being too stark. He nods in appreciation.";
	lou-check;

a goodrhyme rule (this is the vc-fusing-phew rule):
	if player is not in Bruising Brew, unavailable;
	if lou-score < 2:
		vcp "Once you have more than one perspective to fuse together, that'll work.";
		not-yet;
	if sco-fusing-phew is true:
		vcal "Fusing ideas once was exhausting enough.";
		already-done;
	ready;

this is the vr-fusing-phew rule:
	now sco-fusing-phew is true;
	say "You put things together--the boozing, the using. Lou nods. He has a revelation. 'No more will I be Losing Lou. I will be Turning-to-Learning Lou!' He runs off and scribbles out some notes on various cocktail napkins. It's impressively fast, and you're entranced. There are so many napkins, they make a pretty thick book.[paragraph break]'Oh, man! This book has everything but a title. I'm not good at that. Maybe you can help me? And I'll give you a copy?'";
	moot losing lou;
	now learning lou is in Bruising Brew;

a goodrhyme rule (this is the vc-spurning-spew rule):
	if Learning Lou is not touchable, unavailable;
	ready;

this is the vr-spurning-spew rule:
	now sco-spurning-spew is true;
	say "'Yes! That's it! Please accept my thanks!' Lou runs off, ostensibly to meet his agent.[paragraph break]Congratulations. You are now one proud owner of an oversized, overwrought motivational book. Well, it's thick enough to replace the shield you lost.";
	now player has spurning spew;
	moot Learning Lou;

section hailing hill point scoring

a goodrhyme rule (this is the vc-ailing-ill rule):
	if player is not in hailing hill, unavailable;
	if sco-ailing-ill is true:
		vcal "You already expressed that everyone hurts!";
		already-done;
	ready;

this is the vr-ailing-ill rule:
	now sco-ailing-ill is true;
	say "Man! Without getting too overwrought, you relate your disappointments and shortcomings while on your journey. Hailing Hill seems more welcoming now.";
	see-if-top;

a goodrhyme rule (this is the vc-scaling-skill rule):
	if player is not in hailing hill, unavailable;
	if sco-scaling-skill is true:
		vcal "You already improved your climbing ability!";
		already-done;
	ready;

this is the vr-scaling-skill rule:
	now sco-scaling-skill is true;
	say "You work on your climbing ability. What do you know, it pays off!";
	see-if-top;

a goodrhyme rule (this is the vc-mailing-mill rule):
	if player is not in hailing hill, unavailable;
	if sco-scaling-skill is false or sco-ailing-ill is false:
		vcp "A mailing mill would be nice, but you haven't reached the top of Hailing Hill yet!";
		not-yet;
	if sco-seed-sack is false:
		vcp "A mailing mill can't just pop out of thin air or appear from the ground spontaneously. It must come from, like, raw materials.";
		not-yet;
	if sco-mailing-mill is true:
		vcal "The mailing mill is already on Hailing Hill!";
		already-done;
	ready;

this is the vr-mailing-mill rule:
	now sco-mailing-mill is true;
	say "Pop! A mailing mill bursts from the ground! It doesn't have a directory, though, but it seems like you can just proceed as before to correspond with anyone who might want to.";

a goodrhyme rule (this is the vc-bailing-bill rule):
	abide by the can-mail rule;
	if player does not have bold bowl:
		vcp "You sense you cannot offer Bailing Bill what he needs. Yet.";
		not-yet;
	if sco-bailing-bill is true:
		vcal "You have already helped Bailing Bill!";
		already-done;
	ready;

this is the vr-bailing-bill rule:
	now sco-bailing-bill is true;
	say "Shortly, someone who must be Bailing Bill drops by. He touches the bold bowl and feels recharged. Then he thanks you.";
	now bold bowl is blessed;

a goodrhyme rule (this is the vc-failing-phil rule):
	abide by the can-mail rule;
	if player does not have cold coal:
		vcp "You sense you cannot offer Failing Phil what he needs. Yet.";
		not-yet;
	if sco-failing-phil is true:
		vcal "You have already helped Failing Phil!";
		already-done;
	ready;

this is the vr-failing-phil rule:
	now sco-failing-phil is true;
	say "Shortly, someone who must be Failing Phil drops by. He touches the cold coal, and both seem to glow as a result. He thanks you.";
	now cold coal is blessed;

a goodrhyme rule (this is the vc-wailing-will rule):
	abide by the can-mail rule;
	if player does not have sold soul:
		vcp "You sense you cannot offer Wailing Will what he needs. Yet.";
		not-yet;
	if sco-wailing-will is true:
		vcal "You have already helped Wailing Will!";
		already-done;
	ready;

this is the vr-wailing-will rule:
	now sco-wailing-will is true;
	say "Shortly, someone who must be Wailing Will drops by. He has a fruitful conversation with the sold soul, and both look happier for it.";
	now sold soul is blessed;

section nil none point scoring

a goodrhyme rule (this is the vc-fill-fun rule):
	if player is not in nil none, unavailable;
	if sco-fill-fun is true:
		vcal "You already filled yourself up with fun!";
		already-done;
	ready;

this is the vr-fill-fun rule:
	now sco-fill-fun is true;
	say "You feel a bit happier! This matters. You haven't overcome your depression fully yet, of course.";

a goodrhyme rule (this is the vc-will-won rule):
	if player is not in nil none, unavailable;
	if sco-fill-fun is false:
		vcp "Winning is cool and all, you guess, but you're in no position to enjoy it. You'd just worry you'd go back to losing soon enough.";
		not-yet;
	if sco-will-won is true:
		vcal "You already have a will to win!";
		already-done;
	ready;

this is the vr-will-won rule:
	now sco-will-won is true;
	say "Yes. You sit and think. You regain your will to win. You are ready to move on. You can move in any direction back to familiar territory, now.";
	check-nil-alts;

a goodrhyme rule (this is the vc-ill-un rule):
	if player is not in nil none, unavailable;
	if sco-ill-un is true:
		vcal "You already identified illun[']!";
		already-done;
	ready;

this is the vr-ill-un rule:
	now sco-ill-un is true;
	say "You come to grips with how you [if sco-will-won is true]were[else]are[end if] slightly illun[']. This may not be terribly practical, but it's an important part of the Knave code now, you remember.";
	check-nil-alts;

a goodrhyme rule (this is the vc-fright-fully rule):
	if Trite Tully is not fungible, unavailable;
	if sco-fright-fully is true:
		vcal "There must be another way to see Trite Tully!";
		already-done;
	ready;

to check-nil-alts:
	if nil-score is 2:
		alt-last Nil None;
		say "You feel like you can move on now in any direction, or you can really nail things down, if you're the completionist sort."
	else:
		say "You've really put a lot of anxiety to sleep. Nothing to do beyond move away in any direction."

section dander dove scoring

a goodrhyme rule (this is the vc-grander-grove rule):
	if player is not in dander dove, unavailable;
	if sco-grander-grove is true:
		vcal "You already successfully sought out the grander grove. You need something else uplifting. Something more concrete.";
		already-done;
	ready;

this is the vr-grander-grove rule:
	now sco-grander-grove is true;
	say "You dream of a place where you can relax and feel good about what you've done, whether it is big or small. It comes to pass. You see it in the distance, then you lose track of it. But it's there, for you, and for others. That makes you happier.";

a goodrhyme rule (this is the vc-candor-cove rule):
	if player is not in dander dove, unavailable;
	if sco-candor-cove is true:
		vcal "You already successfully sought out the candor cove. You need something else uplifting. Something more dreamy, stuff to reach for.";
		already-done;
	ready;

this is the vr-candor-cove rule:
	now sco-candor-cove is true;
	say "You dream of a place where people are not blunt but rather truthful about who you are, what you've done, and how much you've made of your opportunities."

a goodrhyme rule (this is the vc-stander-stove rule):
	if player is not in dander dove, unavailable;
	if sco-stander-stove is true:
		vcal "You already found the stander stove!";
		already-done;
	ready;

this is the vr-stander-stove rule:
	now sco-stander-stove is true;
	say "You picture a stove to step into! It's weird, but it's good for burning excess dander.";
	dander-upgrade;

to dander-upgrade:
	say "[line break]";
	if dander-score is 1:
		say "The dander you dove into sinks a bit. You still feel stuck.";
	else if dander-score is 2:
		say "You can now walk through all the dander you made and searched for in pretty much any direction to continue your quest.";
		alt-last dander dove;
	else:
		say "You no longer have dander on your mind.";

section route rough rules

a goodrhyme rule (this is the vc-flout-fluff rule):
	if player is not in route rough, unavailable;
	if sco-flout-fluff is true:
		vcal "You already flouted fluff!";
		already-done;
	ready;

this is the vr-flout-fluff rule:
	now sco-flout-fluff is true;
	say "You take time to flout fluff, not just the fluff that makes you feel good for no reason that brings you down, but the fluff that leaves you feeling worse for superficial reasons and keeps you down. After some reflection, you realize some exampkles from the past were, in fact, fluff, even though they were provided by Very Serious People.";
	rough-check;

a goodrhyme rule (this is the vc-nowt-nuff rule):
	if player is not in route rough, unavailable;
	if sco-nowt-nuff is true:
		vcal "You already nullified certain worries and complaints!";
		already-done;
	ready;

this is the vr-nowt-nuff rule:
	now sco-nowt-nuff is true;
	say "You recall some hang-ups you've had for a while, and you realize it's time to move on, and it has been for a while.";
	rough-check;

a goodrhyme rule (this is the vc-stout-stuff rule):
	if player is not in route rough, unavailable;
	if sco-stout-stuff is true:
		vcal "You already found ways to be stout!";
		already-done;
	ready;

this is the vr-stout-stuff rule:
	now sco-stout-stuff is true;
	say "Yup. You feel stouter now.";
	rough-check;

to rough-check:
	say "You [if route-rough-score is 1]see a light at the end of the tunnel. But it is not enough[else if route-rough-score is 2]feel as though you can leave, if you want, though it's always fun to try and do a bit more[else]went the extra mile to rid yourself of angst[end if].";
	if route-rough-score is 2:
		alt-last route rough;

section knell nook auxiliary

a goodrhyme rule (this is the any-nook rule):
	if player is not in knell nook, unavailable;
	if sco-covering-candle is true:
		vcal "You finished your work here.";
		already-done;
	if pre-nook-score < 2:
		vcp "You feel you do not have [if pre-nook-score is 0]any[else]enough[end if] artifacts to perform whatever ceremony you need to.";
		not-yet;

section hailing hill auxiliary

a goodrhyme rule (this is the the can-mail rule):
	if player is not in hailing hill, unavailable;
	if sco-mailing-mill is false:
		vcp "Nothing's (yet) available here that can message anyone by that name or, indeed, verify they exist.";
		not-yet;
	if sco-scaling-skill is false:
		vcp "The mailing mill would probably belong on the top of the hill. You can't get anywhere near the top!";
		not-yet;
	if sco-ailing-ill is false:
		vcp "You feel like the mailing mill should pop up, but alas, a voice tells you you have not shown enough solidarity with woeful people. Perhaps an exclamation will help prove your bona fides.";
		not-yet;

to see-if-top:
	if sco-ailing-ill is false:
		say "Although you're on top of the hill now, you may wish to show discretion and vent your own disappointments.";
	else if sco-scaling-skill is false:
		say "Complaining about various things wrong makes you more motivated to get to the top, but the flesh is weak.";
	else:
		say "You stand at the top of the hill and feel more connected with others despite, or perhaps because of, their faults.";

section very endgame stuff

this is the vr-fright-fully rule:
	now sco-fright-fully is true;
	say "Well, that got rid of some of the irony of 'trite.'";
	abide by the frightfully-bright-bully rule;

a goodrhyme rule (this is the vc-bright-bully rule):
	if Trite Tully is not fungible, unavailable;
	if sco-bright-bully is true:
		vcal "There must be another way to see Trite Tully!";
		already-done;
	ready;

this is the vr-bright-bully rule:
	now sco-bright-bully is true;
	say "Yes, indeed, it isn't just about being trite or having irony.";
	abide by the frightfully-bright-bully rule;

a goodrhyme rule (this is the vc-bam-bye rule):
	if tully-score < 2, unavailable;
	ready;

this is the vr-bam-bye rule:
	now sco-bam-bye is true;
	say "You dither between showing too much mercy and too little. Then you think. Tully's had their fun. You wonder if you can just dismiss people like that. Are you really that unsocial? Or antisocial?[paragraph break]Of course not. You've brought three pairs of friends together. And at the end, you brought relief to three people Tully insulted. They've caused enough annoyance. It's time for them to go.";
	win-the-game;

section auxiliary rules

to lou-check:
	if lou-score is 1:
		say "Well, that was pretty life-affirming. Lou feels a bit better, but you need to do more.";
	else:
		say "Lou nods at the different perspectives but is unable to integrate them. Maybe you can help!"

to fully-dismiss (ee - an eeker):
	now ee is finished;
	now other-guy of ee is finished;
	say "You and [the ee] and [the other-guy of ee] look at each other for a bit. There's an awkward silence, and then they mention they're pretty sure they've done all they can for you. They thank you for taking them on this journey. It was real, but, you know -- well, they want to get to know each other better now.";
	if number of finished eekers is 6:
		say "[line break]But they also realize something else--you've helped everyone you could have a bit of fun! Surely that deserves a reward. [if player is in cried creek]Your friends show you an ardor elm nearby, hidden off to the side. Perhaps you can use it![else]They suggest you go have a look back at Cried Creek. There may be a surprise for you.[end if]";
		move ardor elm to cried creek;

to dismiss-sneak-mooter: if sneak-mooter-points is 3, fully-dismiss snide sneak;

to dismiss-geek-wooter: if geek-wooter-points is 3, fully-dismiss guide geek;

to dismiss-freak-shooter: if freak-shooter-points is 4, fully-dismiss fried freak;

an eeker manipulation rule for an eeker (called ee) (this is the eeker precheck rule):
	if ee is moot:
		if vc-dont-print is false, say "But you already got through to [the ee]!";
		already-done;
	if ee is fungible:
		if vc-dont-print is false, say "But [the ee] is already here!";
		already-done;
	if ee is creeky and number of fungible creeky eekers is 1 and player is not in cried creek:
		vcp "You need to be back at [creek] to touch base with a new creek denizen.";
		not-yet;
	if ee is crooty and number of fungible crooty eekers is 1 and player is not in recroom:
		vcp "You need to be back at [recroom] to touch base with a new recruit.";
		not-yet;
	if ee is creeky and player is not in cried creek, unavailable;
	if ee is crooty and player is not in recroom, unavailable;

to bring-over (ee - an eeker):
	now ee is followish;
	move ee to location of player;

an eeker manipulation rule for an eeker (called ee) (this is the eeker vr rule):
	abide by the eeker postcheck rule for ee;
	abide by the eeker matchups rule for ee;

an eeker manipulation rule for an eeker (called ee) (this is the eeker postcheck rule):
	if nelp is 2:
		say "The [list of fungible eekers] understand you wish to call someone new. They depart to make way for [the ee].";
		sideline-eekers;
		bring-over ee;
		the rule succeeds;
	if nelp is 0:
		if ee is pairedyet:
			say "You figure [the ee] and [the other-guy of ee] would be good to call together.";
			bring-over ee;
			bring-over other-guy of ee;
			the rule succeeds;
		say "The [ee] looks around, slightly uncomfortable. They see no one they immediately dislike. They nod [if ee is postponed]in recognition[else]to show they can trust you[end if].";
		move ee to location of player;
		now ee is active;
		the rule succeeds;
	let rfe be a random fungible eeker;
	if (rfe is crooty and ee is crooty) or (rfe is creeky and ee is creeky):
		repeat through table of similar eeker conflicts:
			unless rfe is eekold entry and ee is eeknew entry, next;
			say "The [ee] and the [rfe] brush past each other with little or no acknowledgement.";
			say "[eektxt entry][line break]";
			sideline rfe;
			now rfe is postponed;
			bring-over ee;
			the rule succeeds;
		say "BUG [rfe] and [ee] should have mismatch text but don't.";
		the rule succeeds;

an eeker manipulation rule for an eeker (called ee) (this is the eeker matchups rule):
	let rfe be a random fungible eeker that is not ee;
	if matchnum of ee is not matchnum of rfe: [ make a table for this? ]
		say "Oh no! The [ee] and [rfe] seem to have nothing in common at all. They go their separate ways.";
		sideline ee;
		sideline rfe;
		the rule succeeds;
	if ee is pairedyet:
		say "The [ee] and [rfe] seem pleased to be reunited, and they're ready to go!";
	else:
		say "What do you know? The [ee] and [rfe] seem to be opposites, yet they fill in each other's holes, personality-wise.";
		now ee is pairedyet;
		now rfe is pairedyet;
		let newmatch be (number of pairedyet eekers) / 2;
		now matchnum of ee is newmatch;
		now matchnum of rfe is newmatch;
		if number of pairedyet eekers is 4:
			repeat with etemp running through eekers:
				if matchnum of etemp < 0, now matchnum of etemp is 3;
	bring-over ee;
	now rfe is followish;
	if r-warn-yet is false:
		say "[i][bracket][b]NOTE:[r][i] you can say [b]BYE[r][i] at any time to get rid of your new friends. You can also bring them back with [b]R [matchnum of ee][r][i].[close bracket][r]";
		now r-warn-yet is true;

table of similar eeker conflicts
eekold	eeknew	eektxt
fried freak	guide geek	"<stuff>"
fried freak	snide sneak	"<stuff>"
guide geek	fried freak	"<stuff>"
guide geek	snide sneak	"<stuff>"
snide sneak	fried freak	"<stuff>"
snide sneak	guide geek	"<stuff>"
chic shooter	meek mooter	"<stuff>"
chic shooter	weak wooter	"<stuff>"
meek mooter	chic shooter	"<stuff>"
meek mooter	weak wooter	"<stuff>"
weak wooter	meek mooter	"<stuff>"
weak wooter	chic shooter	"<stuff>"

this is the frightfully-bright-bully rule:
	if tully-score is 2:
		say "[tully] looks shocked! 'No! No! It can't be!' Suddenly, they look much more humble.[paragraph break]'Once ... once, they called me a name. Sham, shy! I feel that way again... it's not fair. I deserved so much more! And I had it!'[paragraph break]You wonder what to do. Tully looks pleadingly at you, but you still detect contempt. You think.";
		now Trite Tully is not proper-named;
	else:
		say "Tully shakes their head a bit. You've seen into them, but you feel like you can do more.";

to check-points:
	let any-missed be false;
	if debug-state is true:
		repeat through table of verb checks:
			if idid entry is false:
				say "[w1 entry] [w2 entry] undone.";
				now any-missed is true;
	if any-missed is false, say "Got everything!"

to win-the-game:
	check-points;
	if cur-bonus is max-bonus:
		choose row with final response rule of show-misses rule in the Table of Final Question Options;
		blank out the whole row; [don't let the player see MISSED if they got everything]
	follow the score and thinking changes rule;
	force-status;
	end the story finally saying "Woo woo woo";
	follow the shutdown rules;

to give-player (hi - a holeitem):
	say "You are now in possession of [a hi]. You [if hi is unguessed]maybe could've guessed you needed it, but now you see it[else]guessed it might be important, so[end if] you know you want to bring it back to the Hold Hole.";
	if hi is unguessed and got-hole-bonus is false and blocked-hole-bonus is false:
		now blocked-hole-bonus is true;
		max-down;
	now player has hi;
	now pre-hole-item-room is location of player;
	let carho be number of carried holeitems;
	if carho is 1:
		say "[line break]But suddenly, you feel useless and silly. You've just been finding a formula, here, not doing much. You close you eyes, wondering if you really deserve to have made any progress just through all those silly rhymes. Nothing seems to matter. Then ... you wind up in, or near, nothing.";
		move player to Nil None;
	else if carho is 2:
		say "[line break]That same weightlessness as before. Darkness envelops you, and when it releases you, you're somewhere [one of]new[or]unpleasantly familiar[stopping].";
		move player to dander dove;
	else:
		say "[line break]You start wandering. And you keep wandering. Pretty soon you are in the middle of nowhere.";
		move player to Route Rough;

section undefined-yet rules

volume table of noways

table of noways
noway-rm	noway-txt
White Wave	"[if sco-kite-cave is false]You're kind of confused about directions, here. You maybe need to find some way to see where life might be[else]You can really only go [b]DOWN[r] through the kite cave hole[end if]."
Bass Bath	"[if sco-pass-path is false]Every way but back down, and you'll fall into the bass bath[else if sco-mass-math is false]You need to figure out which way to go. It's a bit confusing here[else]You can go the main directions but not [noun][end if]."
Rut Row	"Passage south is blocked, but the other three ways, you can try."
Slum Slid	"Maybe you can go [noun], but for your safety, it is inadvisable."
Bruising Brew	"This pub houses no crazy lattice of secret passages. You can only go back out."
Hailing Hill	"You are at the top of the hill. It was such a long journey up, you lost track of compass directions. Down is the only way."
recroom	"You only have access [swh of cried creek] and [swh of slum slid]."
Cried Creek	"While the creek and greenery meander off, you might get lost. You can really only go back east."
Crude Crapper	"There are no hidden passages. Only back out."
Bosh Blanks	"You can go back south[if sco-plucky-plot is true], or you can say where you want the yacht to take you[end if]."
Cast Court	"[astort]."
Fast Fort	"[astort]."
Passed Port	"[astort]."
Treed Track	"[if sco-need-knack is false]Without any direction, the only way is back north[else if sco-heed-hack is false]You can only go north or up. But maybe with some thought you can find other passages[else]North, west, east and up are all paths out of here, but [noun] isn't[end if]."
Too Tough Blue Bluff	"You don't want to get lost in the bluff. Best just go back down once you're done here."
Black Blight	"Beyond is too dangerous. Best just go back east when you're ready."
Knell Nook	"This is a secluded place with the only exit back west."
tata	"You can only go back west or[if sco-yall-yank is true] east[else], once you've moved the tank(s), past them in whatever direction[end if]."
Lane Lax	"[if sco-train-tracks is false]Back west is the only way. For now[else]The train tracks head north and south, but you can go back west, too[end if]."
Wowed Wise Crowd Cries	"Only way out is south."
Thought Thief Fought Fief	"Only way back is north."

to say astort: say "You sense exploring this island would get you lost. ENTER the yacht to re-visit Bosh Blanks, or specify where else you want to go"

volume homonyms

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
white wave	--	"wight"	"You don't need an undead chasing you so soon. Or ever, really."

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
leet learner	--	"night/nave"	"You don't have to change yourself, here."

Bright Brave Knight Knave Tables ends here.

---- DOCUMENTATION ----
