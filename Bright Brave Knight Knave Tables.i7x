Version 1/221007 of Bright Brave Knight Knave Tables by Andrew Schultz begins here.

"This file contains the main verb-checking/point-scoring table as well as homonym detection."

to open-psg (di - a direction) and (rm - a room):
	let lp be location of player;
	change di exit of lp to rm;
	change (opposite of di) exit of rm to lp;

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"write|right"	"rave"	--	--	false	false	false	false	white wave	vc-write-right-rave rule	vr-write-right-rave rule	--	--
"kite"	"cave"	--	--	false	true	true	false	white wave	vc-kite-cave rule	vr-kite-cave rule	--	--
"fight"	"fave"	--	--	false	true	true	false	white wave	vc-fight-fave rule	vr-fight-fave rule	--	--
"pass"	"path"	--	--	false	true	true	false	bass bath	vc-pass-path rule	vr-pass-path rule	--	--
"mass"	"math"	--	--	false	true	true	false	bass bath	vc-mass-math rule	vr-mass-math rule	--	"You can use [b]MASS MATH[r] [once-now of vc-mass-math rule] you have something to calculate."
"what"	"whoa|whoah"	--	--	false	true	true	false	rut row	vc-what-whoah rule	vr-what-whoah rule	--	--
"hid"	"hum"	--	--	false	true	true	false	slid slum	vc-hid-hum rule	vr-hid-hum rule	--	--
"kid"	"come"	--	--	false	true	true	false	slid slum	vc-kid-come rule	vr-kid-come rule	--	--
"rid"	"rum"	--	--	false	true	true	false	slid slum	vc-rid-rum rule	vr-rid-rum rule	--	--
"fright"	"fully"	--	--	false	true	true	false	white wave	vc-fright-fully rule	vr-fright-fully rule	"frightfully"	--
"bright"	"bully"	--	--	false	true	true	false	white wave	vc-bright-bully rule	vr-bright-bully rule	--	--

a goodrhyme rule (this is the vc-write-right-rave rule):
	if sco-write-right-rave is true:
		vcal "You already appealed to my pride! Now it's my turn to feel pride by showing I don't need a second dose. Well, from you. No offense.!";
		already-done;
	ready;

to decide whether extra-rave-points:
	if number of visited rooms > 2, yes;
	no;

this is the vr-write-right-rave rule:
	now sco-write-right-rave is true;
	say "For me? Really? Why, that's quite kind of you! [if extra-rave-points]And you've seen so much of the game![else]Without seeing much of the game, either! I'm a bit suspicious you're prying for hints, but no, no, I'll let it pass.[end if]";
	increment cur-bonus;
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
	say "The kid shows what they have behind their back. They're a bit ashamed of all this. But you assure them it's very understandable.";

a goodrhyme rule (this is the vc-fright-fully rule):
	if Trite Tully is not fungible, unavailable;
	if sco-fright-fully is true:
		vcal "There must be another way to see Trite Tully!";
		already-done;
	ready;

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
