Version 1/221007 of Bright Brave Knight Knave Definitions by Andrew Schultz begins here.

"This gives basic definitions used by core modules or used repeatedly by the game, such as the number of puzzles solved in a certain room."

book examineable

a thing can be unexamined or examined. a thing is usually unexamined.

report examining a thing (called th):
	now th is examined;
	continue the action;

book types

to say bkn: say "bright brave knight/knave"

a holeitem is a kind of rhymable. a holeitem is usually scenery.

a holeitem can be unguessed, preguessed or in-hold. a holeitem is usually unguessed.

a holeitem can be blessed or unblessed. a holeitem is usually unblessed.

a holeitem has a number called palindex. [ change this to a rule later? ]

guess-table of a holeitem is usually table of hold hole guesses.

to decide whether hold-poke:
	if hold hole is examined, no;
	if number of unguessed holeitems < 3, no;
	yes;

chapter eekers

to decide whether assisted:
	if number of eekers in location of player is 2, yes;
	no;

to decide whether half-assisted:
	if number of eekers in location of player is 1, yes;
	no;

an eeker is a kind of person. an eeker can be dormant, active, followish, postponed or finished. an eeker is usually dormant.

an eeker can be creeky or crooty. an eeker is usually creeky.

an eeker can be pairedyet. an eeker is usually not pairedyet.

an eeker has a number called matchnum.

the eeker manipulation rules are an eeker based rulebook. the eeker manipulation rules have outcomes unavailable, not-yet, already-done, jump-reject, semi-pass and ready.

to sideline (th - a thing):
	move th to Hidey House;
	if th is an eeker:
		now th is postponed;

definition: an eeker (called ee) is nonconflicting:
	if ee is crooty and number of fungible crooty eekers is 0, yes;
	if ee is creeky and number of fungible creeky eekers is 0, yes;
	no;

definition: an eeker (called ee) is leftbehind:
	unless ee is followish, no;
	if ee is in location of player, no;
	yes;

to decide which eeker is other-guy of (ee - an eeker):
	repeat with EKR running through eekers:
		if EKR is ee, next;
		if matchnum of EKR is matchnum of ee, decide on EKR;
	say "(BIG BUG on choosing other-guy of [ee])";
	decide on ee;

to decide which number is pairs-used:
	decide on number of finished eekers / 2;

section tracking hole progress

to decide which number is hole-progress:
	decide on availval of bold bowl + availval of cold coal + availval of sold soul;

to decide which number is availval of (th - a thing): [ usually boolvals can cover it but in this case I figured the bowl/coal/soul early on so hole-progress couldn't be expressed as sco- ]
	if player has th, decide on 1;
	if th is in nothing, decide on 0;
	decide on 1;

section hill score

to decide which number is hill-score:
	decide on (boolval of sco-ailing-ill) + (boolval of sco-failing-phil) + (boolval of sco-mailing-mill) + (boolval of sco-wailing-will) + (boolval of sco-bailing-bill) 

book definitions

definition: a room (called rm) is available-from-here:
	if rm is unvisited, no;
	yes;

book to say

to say optional-hint-think-item: say "";

volume helper definitions

to decide which number is stove-prog:
	decide on boolval of sco-candor-cove + boolval of sco-grander-grove;

to decide which number is tully-score:
	decide on boolval of sco-fright-fully + boolval of sco-bright-bully;

volume gotoing

to decide whether (di - a direction) is blocked: no;

definition: a direction (called d) is viable:
	if the room d of location of the player is nowhere, no;
	yes;

this is the flag bad goto from rule: do nothing;

this is the flag bad goto to rule: do nothing;

book to decide whether (largely game dependent stuff)

to decide whether (ru - a rule) is spaceable: yes; [annoying space breaks in inform]

to decide whether good-say-guess: no;

to decide whether rhyme-mechanism-known:
	if current-score > 0, yes;
	no;

to decide whether (r1 - a room) and (r2 - a room) are gong-adjacent:
	if r1 is adjacent to r2, yes;
	no;

this is the stuck-right-now rule: do nothing;

section mostly VVFF dependent stuff with Dean Duggan

to decide whether too-distracted: no;

to decide whether immediate-attention of (ru - a rule):
	no;

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

book rules

this is the disable-learner-options rule: if player does not have leet learner, say "You decide to take the leet learner before exercising any of its options." instead;

this is the narrative-checking rule: make no decision;

this is the game-specific-backdrop-check rule: [wry wall in VVFF, maybe put in the rick ride in CSDD]
	do nothing;

Bright Brave Knight Knave Definitions ends here.

---- DOCUMENTATION ----
