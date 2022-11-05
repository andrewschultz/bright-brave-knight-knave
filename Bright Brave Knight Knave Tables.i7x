Version 1/221007 of Bright Brave Knight Knave Tables by Andrew Schultz begins here.

"This file contains the main verb-checking/point-scoring table as well as homonym detection."

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"write|right"	"rave"	--	--	false	false	false	false	white wave	vc-write-right-rave rule	vr-write-right-rave rule	--	--
"kite"	"cave"	--	--	false	true	true	false	white wave	vc-kite-cave rule	vr-kite-cave rule	--	--
"pass"	"path"	--	--	false	true	true	false	bass bath	vc-pass-path rule	vr-pass-path rule	--	--
"mass"	"math"	--	--	false	true	true	false	bass bath	vc-mass-math rule	vr-mass-math rule	--	"You can use [b]MASS MATH[r] [once-now of vc-mass-math rule] you have something to calculate."
"what"	"whoa|whoah"	--	--	false	true	true	false	rut row	vc-what-whoah rule	vr-what-whoah rule	--	--

a goodrhyme rule (this is the vc-what-whoah rule):
	if player is not in rut row, unavailable;
	if sco-what-whoah is true:
		vcal "You already had a revelation that will push you out of your rut and see a new passage through.";
		already-done;
	ready;

this is the vr-what-whoah rule:
	now sco-what-whoah is true;
	say "It sounds artificial at first to pretend you saw something. Then you think, if I did see something useful, what sort of thing would I see? And somehow, it works! You find a path west through Rut Row.";
	now slum slid is mapped west of rut row;
	now rut row is mapped east of slum slid;

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
	say "For me? Really? Why, that's quite kind of you! [if extra-rave-points]And you've seen so much of the game[else]Without seeing much of the game, either[end if]!";
	if extra-rave-points:
		increment cur-bonus;
		now got-rave-bonus is true;

a goodrhyme rule (this is the vc-kite-cave rule):
	if player is not in white wave, unavailable;
	if sco-kite-cave is true:
		vcal "You already discovered the kite cave to find a path beyond!";
		already-done;
	ready;

this is the vr-kite-cave rule:
	now sco-kite-cave is true;
	say "You look around, and what do you know? You remember you were given a magical kite to start things off. It's a kite in a cave. But as you unravel it to fly it outside, it slips under a rock. You follow it some more, and it leads to an underground passage which eventually goes back up to...";
	move player to Bass Bath;

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
	now rut row is mapped west of bass bath;
	now bass bath is mapped east of rut row;

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
a thing	a rule	a topic	a text

Bright Brave Knight Knave Tables ends here.

---- DOCUMENTATION ----
