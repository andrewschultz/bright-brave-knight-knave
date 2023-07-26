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
"fight"	"fave"	--	--	false	true	true	false	white wave	vc-fight-fave rule	vr-fight-fave rule	--	"You can [b]FIGHT FAVE[r] [once-now of vc-fight-fave rule] you have enough worth and confidence in you."
"pass"	"path"	--	--	false	true	true	false	bass bath	vc-pass-path rule	vr-pass-path rule	--	--
"mass"	"math"	--	--	false	true	true	false	bass bath	vc-mass-math rule	vr-mass-math rule	--	"You can use [b]MASS MATH[r] [once-now of vc-mass-math rule] you have something to calculate."
"what"	"whoa|whoah"	--	--	false	true	true	false	rut row	vc-what-whoah rule	vr-what-whoah rule	--	--
"hid"	"hum"	--	--	false	true	true	false	slid slum	vc-hid-hum rule	vr-hid-hum rule	--	--
"kid"	"come"	--	--	false	true	true	false	slid slum	vc-kid-come rule	vr-kid-come rule	--	"You can say [b]KID COME[r] [once-now of vc-kid-come rule] a kid is around."
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
"posh"	"planks"	--	--	false	true	true	false	bosh blanks	vc-posh-planks rule	vr-posh-planks rule	--	--
"plucky"	"plot"	--	--	false	true	true	false	bosh blanks	vc-plucky-plot rule	vr-plucky-plot rule	--	--
"train"	"tracks"	--	--	false	true	true	false	lane lax	vc-train-tracks rule	vr-train-tracks rule	--	--
"main"	"max"	--	--	false	true	true	false	lane lax	vc-main-max rule	vr-main-max rule	--	--
"pain"	"packs"	--	--	false	true	true	false	lane lax	vc-pain-packs rule	vr-pain-packs rule	--	--
"grew"	"gruff"	--	--	false	true	true	false	too tough blue bluff	vc-grew-gruff rule	vr-grew-gruff rule	--	--
"stew"	"stuff"	--	--	false	true	true	false	too tough blue bluff	vc-stew-stuff rule	vr-stew-stuff rule	--	--
"new"	"nuff"	--	--	false	true	true	false	too tough blue bluff	vc-new-nuff rule	vr-new-nuff rule	--	--
"boozing"	"boo"	--	--	false	true	true	false	cruising crew	vc-boozing-boo rule	vr-boozing-boo rule	--	--
"using"	"you"	--	--	false	true	true	false	cruising crew	vc-using-you rule	vr-using-you rule	--	--
"fusing"	"phew"	--	--	false	true	true	false	cruising crew	vc-fusing-phew rule	vr-fusing-phew rule	--	--
"fill"	"fun"	--	--	false	true	true	false	nil none	vc-fill-fun rule	vr-fill-fun rule	--	--
"will"	"won"	--	--	false	true	true	false	nil none	vc-will-won rule	vr-will-won rule	--	"You can say [b]WILL WON[r] [once-now of vc-will-won rule] you're a little less miserable."
"ill"	"un/in"	--	--	false	true	false	false	nil none	vc-ill-un rule	vr-ill-un rule	"illun/illin"	--
"grander"	"grove"	--	--	false	true	true	false	stander stove	vc-grander-grove rule	vr-grander-grove rule	--	--
"candor|candour"	"cove"	--	--	false	true	true	false	stander stove	vc-candor-cove rule	vr-candor-cove rule	--	--
"ailing"	"ill"	--	--	false	true	true	false	hailing hill	vc-ailing-ill rule	vr-ailing-ill rule	--	--
"scaling"	"skill"	--	--	false	true	true	false	hailing hill	vc-scaling-skill rule	vr-scaling-skill rule	--	--
"mailing"	"mill"	--	--	false	true	true	false	hailing hill	vc-mailing-mill rule	vr-mailing-mill rule	--	"You can place a mailing mill [once-now of vc-mailing-mill rule] you find a way to the top of Hailing Hill."
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
	say "You look around, and what do you know? You see part of a kite stuck under a rock, in a cave. You try to move the rock, and when you do, you hear a rumbling. The floor under disappears. You run back out, unable to hold the kite.[paragraph break]The cave collapses. All that's left is a hold-hole, along with a passage down. Perhaps looking at the hold hole will give you some clues what to do with your journey.";
	move hold hole to white wave;
	now Bass Bath is mapped below White Wave;
	now White Wave is mapped below Bass Bath;

a goodrhyme rule (this is the vc-fight-fave rule):
	if player is not in white wave and debug-allow-final is false:
		vcp "Not here. There is a proper place for that, though.";
		not-yet;
	if hold hole is off-stage:
		vcp "Perhaps in the far future. But right now, you've only gotten here. You need to build your strength and worth.";
		not-yet;
	if hole-progress < 3:
		vcp "You aren't ready yet. The hold hole is not complete.";
		not-yet;
	if sco-fight-fave is true:
		vcal "You already started the final fight!";
		already-done;
	ready;

this is the vr-fight-fave rule:
	now sco-fight-fave is true;
	say "You are ready to fight! The fave, Trite Tully, appears. Boy, is he trite! But the deal is, he's so trite, yet people like you can't deal with him, which says something about you.";
	move trite tully to White Wave;

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
	open-psg south and Too Tough Blue Bluff;
	open-psg east and Cruising Crew;

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
	abide by the eeker check rule for chic shooter;
	ready;

this is the vr-chic-shooter rule:
	now sco-chic-shooter is true;
	abide by the mooter-shooter-wooter swap rule for chic shooter;

a goodrhyme rule (this is the vc-meek-mooter rule):
	abide by the eeker check rule for meek mooter;
	ready;

this is the vr-meek-mooter rule:
	now sco-meek-mooter is true;
	abide by the mooter-shooter-wooter swap rule for meek mooter;

a goodrhyme rule (this is the vc-weak-wooter rule):
	abide by the eeker check rule for weak wooter;
	ready;

this is the vr-weak-wooter rule:
	now sco-weak-wooter is true;
	abide by the mooter-shooter-wooter swap rule for weak wooter;

section spied speak cried creek point scoring

a goodrhyme rule (this is the vc-fried-freak rule):
	abide by the eeker check rule for fried freak;
	ready;

this is the vr-fried-freak rule:
	now sco-fried-freak is true;
	abide by the freak-sneak-geek swap rule for fried freak;

a goodrhyme rule (this is the vc-snide-sneak rule):
	abide by the eeker check rule for snide sneak;
	ready;

this is the vr-snide-sneak rule:
	now sco-snide-sneak is true;
	abide by the freak-sneak-geek swap rule for snide sneak;

a goodrhyme rule (this is the vc-guide-geek rule):
	abide by the eeker check rule for guide geek;
	ready;

this is the vr-guide-geek rule:
	now sco-guide-geek is true;
	abide by the freak-sneak-geek swap rule for guide geek;

a goodrhyme rule (this is the vc-stride-streak rule):
	if player is not in cried creek, unavailable;
	if sco-stride-streak is true:
		vcal "You already encouraged more action and less moping here!";
		already-done;
	ready;

this is the vr-stride-streak rule:
	now sco-stride-streak is true;
	say "Things feel far less lethargic here. You don't feel like you're stuck, and others won't, either.";

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
	if player is not in bosh blanks, unavailable;
	if sco-plucky-plot is true:
		vcal "But you already hatched a plucky plot to clean the yucky yacht!";
		already-done;
	ready;

this is the vr-plucky-plot rule:
	now sco-plucky-plot is true;
	say "You and your friends are too lazy to clean the whole yacht by yourself. Not as lazy as the people who bought the yacht, of course. Those bums.[paragraph break]But you're not too lazy to figure a way to get it cleaned! You managed to build a cleaning robot from scratch. You think of its name.[paragraph break]Of course! Bucky-Bot![paragraph break]Bucky-Bot races in and begins cleaning quickly. Unfortunately, near the end, Bucky-Bot cleans the lens of a security camera that suddenly sees it. You hear the ZAP of laser beam, then an explosion. There are sounds of a scuffle. Bucky-Bot gives a victory cry as he cranks out 'Surveillance ... destroyed.'[paragraph break]The yacht is yours! It's still yucky due to excessive bad taste, but it's transport, too, and comfortable, if you [b]ENTER[r] it.";

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
	say "The train tracks become shinier and stronger and branch a bit more.";

a goodrhyme rule (this is the vc-pain-packs rule):
	if player is not in lane lax, unavailable;
	if sco-pain-packs is true:
		vcal "You already got some pain packs!";
		already-done;
	ready;

this is the vr-pain-packs rule:
	now sco-pain-packs is true;
	say "You look around, hoping some poor soul forgot their own emergency kits, all while of course hoping they did not need it. And what do you know? In a lane, lax, well--people forget stuff. Finders keepers!";

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
	if sco-stew-stuff is false:
		vcp "You haven't steeled yourself to look for what you need, yet. You feel bad for the people who might've lost what they need to eat.";
		not-yet;
	if sco-stew-stuff is true:
		vcal "You can't make any more stew stuff.";
		already-done;
	ready;

this is the vr-stew-stuff rule:
	now sco-stew-stuff is true;
	say "Now that you know what to look for, it's not too bad to find. You find enough to make a stew.";

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

section cruising crew scoring

a goodrhyme rule (this is the vc-boozing-boo rule):
	if player is not in cruising crew, unavailable;
	if sco-boozing-boo is true:
		vcal "Don't overdo the moralizing!";
		already-done;
	ready;

this is the vr-boozing-boo rule:
	now sco-boozing-boo is true;
	say "You explain that boozing is just not the way to go.";
	lou-check;

a goodrhyme rule (this is the vc-using-you rule):
	if player is not in cruising crew, unavailable;
	if sco-using-you is true:
		vcal "You already let Lou know the truth!";
		already-done;
	ready;

this is the vr-using-you rule:
	now sco-using-you is true;
	say "Hooray! You figured what to do! You get a point!";
	lou-check;

a goodrhyme rule (this is the vc-fusing-phew rule):
	if player is not in cruising crew, unavailable;
	if lou-score < 2:
		vcp "Once you have more than one perspective to fuse together, that'll work.";
		not-yet;
	if sco-fusing-phew is true:
		vcal "Fusing ideas once was exhausting enough.";
		already-done;
	ready;

this is the vr-fusing-phew rule:
	now sco-fusing-phew is true;
	say "You put things together--the boozing, the using. Lou nods. He thanks you and leaves.";
	moot losing lou;

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
	if sco-mailing-mill is true:
		vcal "The mailing mill is already on Hailing Hill!";
		already-done;
	ready;

this is the vr-mailing-mill rule:
	now sco-mailing-mill is true;
	say "Pop! A mailing mill bursts from the ground! It doesn't have a directory, though, but it seems like you can just proceed as before to correspond with anyone who might want to.";

a goodrhyme rule (this is the vc-bailing-bill rule):
	if player is not in hailing hill, unavailable;
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
	if player is not in hailing hill, unavailable;
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
	if player is not in hailing hill, unavailable;
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
	say "Yes. You sit and think. You regain your will to win. You are ready to move on. You move back to familiar territory...";
	move player to pre-hole-item-room;

a goodrhyme rule (this is the vc-ill-un rule):
	if player is not in nil none, unavailable;
	if sco-ill-un is true:
		vcal "You already identified illun[']!";
		already-done;
	ready;

this is the vr-ill-un rule:
	now sco-ill-un is true;
	say "You come to grips with how you [if sco-will-won is true]were[else]are[end if] slightly illun[']. This may not be terribly practical, but it's an important part of the Knave code now, you remember.";

a goodrhyme rule (this is the vc-fright-fully rule):
	if Trite Tully is not fungible, unavailable;
	if sco-fright-fully is true:
		vcal "There must be another way to see Trite Tully!";
		already-done;
	ready;

section stander stove rules

a goodrhyme rule (this is the vc-grander-grove rule):
	if player is not in stander stove, unavailable;
	if sco-grander-grove is true:
		vcal "You already successfully sought out the grander grove. You need something else uplifting. Something more concrete.";
		already-done;
	ready;

this is the vr-grander-grove rule:
	now sco-grander-grove is true;
	say "You dream of a place where you can relax and feel good about what you've done, whether it is big or small. It comes to pass, as a wall of the stander stove dissolves. But you know it won't last. You retreat back to where you were.";
	move player to pre-hole-item-room;

a goodrhyme rule (this is the vc-candor-cove rule):
	if player is not in stander stove, unavailable;
	if sco-candor-cove is true:
		vcal "You already successfully sought out the candor cove. You need something else uplifting. Something more dreamy, stuff to reach for.";
		already-done;
	ready;

this is the vr-candor-cove rule:
	now sco-candor-cove is true;
	say "You dream of a place where people are not blunt but rather truthful about who you are, what you've done, and how much you've made of your opportunities. It comes to pass, as a wall of the stander stove dissolves. But you know it won't last. You retreat back to where you were.";
	move player to pre-hole-item-room;

section hailing hill stuff

a goodrhyme rule (this is the the can-mail rule):
	if sco-scaling-skill is false:
		vcal "The mailing mill would probably belong on the top of the hill. You can't get anywhere near the top!";
		not-yet;
	if sco-ailing-ill is false:
		vcal "You feel like the mailing mill should pop up, but alas, a voice tells you you have not shown enough solidarity with woeful people. Perhaps an exclamation will help prove your bona fides.";
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

an eeker manipulation rule for an eeker (called ee) (this is the eeker check rule):
	if ee is moot:
		now already-rhymed-this is true;
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

an eeker manipulation rule for an eeker (called ee) (this is the freak-sneak-geek swap rule):
	abide by the eeker conflict rule for ee;
	abide by the eeker-match rule;

an eeker manipulation rule for an eeker (called ee) (this is the mooter-shooter-wooter swap rule):
	abide by the eeker conflict rule for ee;
	abide by the eeker-match rule;

an eeker manipulation rule for an eeker (called ee) (this is the eeker conflict rule):
	if ee is nonconflicting:
		say "The [ee] looks around, slightly uncomfortable. They see no one they immediately dislike. They nod [if ee is postponed]in recognition[else]to show they can trust you[end if].";
		move ee to location of player;
		now ee is active;
		continue the action;
	let rfe be the player;
	if ee is crooty:
		now rfe is random fungible crooty eeker;
	else:
		now rfe is random fungible creeky eeker;
	let got-one be false;
	repeat through table of eeker conflicts:
		unless rfe is eekold entry and ee is eeknew entry, next;
		say "[eektxt entry][line break]";
		break;
	if got-one is false, say "BUG: need non-generic response for sidelining [rfe] for [ee].";
	sideline rfe;
	now rfe is postponed;
	move ee to location of player;

this is the eeker-match rule:
	if number of fungible eekers is 1:
		let rfe be random fungible eeker;
		if rfe is pairedyet:
			say "You figure [the rfe] and [the other-guy of rfe] would be good to call both at once.";
			now other-guy of rfe is followish;
			now rfe is followish;
			continue the action;
	unless number of fungible eekers is 2, continue the action;
	let croo be a random crooty fungible eeker;
	let cree be a random creeky fungible eeker;
	if matchnum of croo is not matchnum of cree:
		say "Oh no! The [croo] and [cree] seem to have nothing in common at all. They go their separate ways.";
		sideline croo;
		sideline cree;
		continue the action;
	if croo is pairedyet:
		say "The [croo] and [cree] seem pleased to be reunited.";
	else:
		say "What do you know? The [croo] and [cree] seem to be opposites, yet they fill in each other's holes, personality-wise.";
		now croo is followish;
		if r-warn-yet is false:
			say "[i][bracket][b]NOTE:[r][i] you can say [b]BYE[r][i] at any time to get rid of your new friends. You can also bring them back with [b]R [matchnum of croo][r][i].[close bracket][r]";
			now r-warn-yet is true;
		now croo is pairedyet;
		now cree is pairedyet;

table of eeker conflicts
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
	if any-missed is true, say "Got everything!"

to win-the-game:
	check-points;
	increment core-score;
	if cur-bonus is max-bonus:
		choose row with final response rule of show-misses rule in the Table of Final Question Options;
		blank out the whole row; [don't let the player see MISSED if they got everything]
	follow the score and thinking changes rule;
	force-status;
	end the story finally saying "Woo woo woo";
	follow the shutdown rules;

to give-player (hi - a holeitem):
	say "You are now in possession of [a hi]. You [if hi is unguessed]maybe could've guessed you needed it, but now you see it[else]guessed it might be important, so[end if] you know you want to bring it back to the Hold Hole.";
	now player has hi;
	now pre-hole-item-room is location of player;
	if hole-progress is 1:
		say "[line break]But suddenly, you feel useless and silly. You've just been finding a formula, here, not doing much. You close you eyes, wondering if you really deserve to have made any progress just through all those silly rhymes. Nothing seems to matter. Then ... you wind up in, or near, nothing.";
		move player to Nil None;
	else:
		say "[line break]That same weightlessness as before. Darkness envelops you, and when it releases you, you're somewhere [one of]new[or]unpleasantly familiar[stopping].";
		move player to Stander Stove;

volume table of noways

table of noways
noway-rm	noway-txt
White Wave	"[if sco-kite-cave is false]You're kind of confused about directions, here. You maybe need to find some way to see where life might be[else]You can really only go [b]DOWN[r] through the kite cave hole[end if]."
Bass Bath	"[if sco-pass-path is false]Every way but back down, and you'll fall into the bass bath[else if sco-mass-math is false]You need to figure out which way to go. It's a bit confusing here[else]You can go the main directions but not [noun][end if]."
Slum Slid	"Maybe you can go [noun], but for your safety, it is inadvisable."
recroom	"You only have access west and back south to the slum, slid."
Cried Creek	"While the creek and greenery meander off, you might get lost. You can really only go back east."

volume homonyms

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
white wave	--	"wight"	"You don't need an undead chasing you so soon. Or ever, really."

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
leet learner	--	"night/nave"	"You don't have to change yourself, here."

Bright Brave Knight Knave Tables ends here.

---- DOCUMENTATION ----
