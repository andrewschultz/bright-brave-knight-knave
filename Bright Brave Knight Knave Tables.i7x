Version 1/221007 of Bright Brave Knight Knave Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Bright Brave Knight Knave Tables."

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"write|right"	"rave"	--	--	false	false	true	false	white wave	vc-write-right-rave rule	vr-write-right-rave rule	--	--
"kite"	"cave"	--	--	false	true	true	false	white wave	vc-kite-cave rule	vr-kite-cave rule	--	--

a goodrhyme rule (this is the vc-write-right-rave rule):
	if player is not in white wave, unavailable;
	if sco-write-right-rave is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-write-right-rave rule:
	now sco-write-right-rave is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-kite-cave rule):
	if player is not in white wave, unavailable;
	if sco-kite-cave is false:
		vcp "You still need to do something!";
		not-yet;
	if sco-kite-cave is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-kite-cave rule:
	now sco-kite-cave is true;
	say "Hooray! You figured what to do! You get a point!";

volume table of noways

table of noways
noway-rm	noway-txt
White Wave	"You're kind of confused about directions, here. You maybe need to find some way to see where life might be."

volume homonyms

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
a thing	a rule	a topic	a text

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
a thing	a rule	a topic	a text

Bright Brave Knight Knave Tables ends here.

---- DOCUMENTATION ----
