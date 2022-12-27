Version 1/221007 of Bright Brave Knight Knave Tables by Andrew Schultz begins here.

"This file contains the main verb-checking/point-scoring table as well as homonym detection."

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
"mood|tude"	"mapper|tapper"	--	--	false	true	true	false	crude crapper	vc-mood-mapper rule	vr-mood-mapper rule	--	--
"nude"	"napper"	--	--	false	true	false	false	crude crapper	vc-nude-napper rule	vr-nude-napper rule	--	--
"meek"	"mooter"	--	--	false	true	true	false	recroom	vc-meek-mooter rule	vr-meek-mooter rule	--	--
"chic"	"shooter"	--	--	false	true	true	false	recroom	vc-chic-shooter rule	vr-chic-shooter rule	--	--
"weak"	"wooter"	--	--	false	true	true	false	recroom	vc-weak-wooter rule	vr-weak-wooter rule	--	--
"fried"	"freak"	--	--	false	true	true	false	cried creek	vc-fried-freak rule	vr-fried-freak rule	--	--
"snide"	"sneak"	--	--	false	true	true	false	cried creek	vc-snide-sneak rule	vr-snide-sneak rule	--	--
"guide"	"geek"	--	--	false	true	true	false	cried creek	vc-guide-geek rule	vr-guide-geek rule	--	--
"stride"	"streak"	--	--	false	true	true	false	cried creek	vc-stride-streak rule	vr-stride-streak rule	--	--
"fill"	"fun"	--	--	false	true	true	false	nil none	vc-fill-fun rule	vr-fill-fun rule	--	--
"will"	"won"	--	--	false	true	true	false	nil none	vc-will-won rule	vr-will-won rule	--	"You can say [b]WILL WON[r] [once-now of vc-will-won rule] you're a little less miserable."
"ill"	"un/in"	--	--	false	true	true	false	nil none	vc-ill-un rule	vr-ill-un rule	"illun/illin"	--
"grander"	"grove"	--	--	false	true	true	false	stander stove	vc-grander-grove rule	vr-grander-grove rule	--	--
"candor|candour"	"cove"	--	--	false	true	true	false	stander stove	vc-candor-cove rule	vr-candor-cove rule	--	--
"fright"	"fully"	--	--	false	true	true	false	white wave	vc-fright-fully rule	vr-fright-fully rule	"frightfully"	--
"bright"	"bully"	--	--	false	true	true	false	white wave	vc-bright-bully rule	vr-bright-bully rule	--	--

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

section recruiter

a goodrhyme rule (this is the vc-chic-shooter rule):
	if player is not in recroom, unavailable;
	if sco-chic-shooter is false:
		vcp "You still need to do something!";
		not-yet;
	if sco-chic-shooter is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-chic-shooter rule:
	now sco-chic-shooter is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-meek-mooter rule):
	if player is not in recroom, unavailable;
	if sco-meek-mooter is false:
		vcp "You still need to do something!";
		not-yet;
	if sco-meek-mooter is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-meek-mooter rule:
	now sco-meek-mooter is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-weak-wooter rule):
	if player is not in recroom, unavailable;
	if sco-weak-wooter is false:
		vcp "You still need to do something!";
		not-yet;
	if sco-weak-wooter is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-weak-wooter rule:
	now sco-weak-wooter is true;
	say "Hooray! You figured what to do! You get a point!";

section spied speak cried creek point scoring

a goodrhyme rule (this is the vc-fried-freak rule):
	abide by the freak-sneak-geek check rule for fried freak;
	ready;

this is the vr-fried-freak rule:
	now sco-fried-freak is true;
	abide by the freak-sneak-geek swap rule for fried freak;

a goodrhyme rule (this is the vc-snide-sneak rule):
	abide by the freak-sneak-geek check rule for snide sneak;
	ready;

this is the vr-snide-sneak rule:
	now sco-snide-sneak is true;
	abide by the freak-sneak-geek swap rule for snide sneak;

a goodrhyme rule (this is the vc-guide-geek rule):
	abide by the freak-sneak-geek check rule for guide geek;
	ready;

this is the vr-guide-geek rule:
	now sco-guide-geek is true;
	abide by the freak-sneak-geek swap rule for guide geek;

a goodrhyme rule (this is the vc-stride-streak rule):
	if player is not in cried creek, unavailable;
	if sco-stride-streak is false:
		vcp "You still need to do something!";
		not-yet;
	if sco-stride-streak is true:
		vcal "You already encouraged more action and less moping here!";
		already-done;
	ready;

this is the vr-stride-streak rule:
	now sco-stride-streak is true;
	say "Things feel far less lethargic here. You don't feel like you're stuck, and others won't, either.";

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

section auxiliary rules

an eeker manipulation rule for an eeker (called ee) (this is the freak-sneak-geek check rule):
	if ee is moot:
		now already-rhymed-this is true;
		if vc-dont-print is false, say "But you already got through to [the ee]!";
		already-done;
	if ee is fungible:
		if vc-dont-print is false, say "But [the ee] is already here!";
		already-done;
	if number of fungible eekers is 1 and player is not in cried creek:
		vcp "You need to be back at [creek] to change whom to summon.";
		not-yet;
	if player is not in cried creek, unavailable;

an eeker manipulation rule for an eeker (called ee) (this is the freak-sneak-geek swap rule):
	if number of fungible eekers is 0:
		say "The [ee] looks around, slightly uncomfortable. They see no one they dislike. They nod [if ee is postponed]in recognition[else]to show they can trust you[end if].";
		continue the action;
	let rfe be random fungible eeker;
	let got-one be false;
	repeat through table of eeker conflicts:
		unless rfe is eekold entry and ee is eeknew entry, next;
		say "[eektxt entry][line break]";
		break;
	if got-one is false, say "BUG: need non-generic response for sidelining [rfe] for [ee].";
	move rfe to gazy gap;
	now rfe is postponed;
	move ee to location of player;

table of eeker conflicts
eekold	eeknew	eektxt
fried freak	guide geek	"<stuff>"
fried freak	snide sneak	"<stuff>"
guide geek	fried freak	"<stuff>"
guide geek	snide sneak	"<stuff>"
snide sneak	fried freak	"<stuff>"
snide sneak	guide geek	"<stuff>"

this is the frightfully-bright-bully rule:
	if tully-score is 2:
		say "And you win.";
		win-the-game;
	else:
		say "You see into Tully a bit. But not enough. There's more.";

to win-the-game:
[	if debug-state is true:
		repeat through table of verb checks:
			if idid entry is false:
				say "[w1 entry] [w2 entry] undone.";]
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
White Wave	"You're kind of confused about directions, here. You maybe need to find some way to see where life might be."
Bass Bath	"[if sco-pass-path is false]Every way but south, and you'll fall into the bass bath[else if sco-mass-math is false]The path through the bath bass cuts north and south[else]You can go the main directions but not [noun][end if]."
Slum Slid	"Maybe you can go [noun], but for your safety, it is inadvisable."

volume homonyms

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
white wave	--	"wight"	"You don't need an undead chasing you so soon. Or ever, really."

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
leet learner	--	"night/nave"	"You don't have to change yourself, here."

Bright Brave Knight Knave Tables ends here.

---- DOCUMENTATION ----
