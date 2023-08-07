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

a holeitem can be unguessed or preguessed. a holeitem is usually unguessed.

a holeitem can be unblessed, blessed or in-hold. a holeitem is usually unblessed.

guess-table of a holeitem is usually table of hold hole guesses.

to decide which number is nbh: decide on number of blessed holeitems;

to decide which number is nch: decide on number of carried holeitems;

to decide whether hold-poke:
	if hold hole is examined, no;
	if number of unguessed holeitems < 3, no;
	yes;

a trystitem is a kind of thing. a trystitem has text called vaguedesc.

to decide which number is trystcount: decide on number of carried trystitems;

chapter eekers

to decide which number is nelp: decide on number of eekers in location of player;

to decide whether assisted:
	if nelp is 2 or pfft-friends is true, yes;
	no;

to decide whether half-assisted:
	if nelp is 1 or pfft-friends is true, yes;
	no;

to decide which eeker is onlyeek: [note: this is potentially dangerous since if there is more than 1 eeker we will get non-uniform results]
	decide on random eeker in location of player;

this is the eeker-start-follow rule:
	if nelp is not 1, continue the action;
	if sco-stride-streak is true:
		now onlyeek is followish;
	else:
		say "The [onlyeek] seems apathetic, as if they'd like to follow you but can't. How can you grease the skids?";

to decide whether either-here of (ee - an eeker):
	if pfft-friends is true, yes;
	if pair-here of ee, no;
	if ee is in location of player or other-guy of ee is in location of player, yes;
	no;

to decide whether pair-here of (ee - an eeker):
	if pfft-friends is true, yes;
	if ee is in location of player and other-guy of ee is in location of player, yes;
	no;

to decide whether only-here of (ee - an eeker):
	if pfft-friends is true, no;
	if ee is in location of player and other-guy of ee is not in location of player, yes;
	no;

an eeker is a kind of person. an eeker can be dormant, active, followish, postponed or finished. an eeker is usually dormant.

an eeker can be creeky or crooty. an eeker is usually creeky.

an eeker can be pairedyet. an eeker is usually not pairedyet.

an eeker has a number called matchnum.

the eeker manipulation rules are an eeker based rulebook. the eeker manipulation rules have outcomes unavailable, not-yet, already-done, jump-reject, semi-pass and ready.

to sideline-eekers:
	repeat with X running through eekers in location of player:
		sideline X;

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

to move-eekers:
	repeat with x running through eekers:
		if x is leftbehind, move x to location of player;

to decide which number is geek-wooter-points:
	decide on (boolval of sco-plucky-plot) + (boolval of sco-trod-trash) + (boolval of sco-stew-stuff)

to decide which number is freak-shooter-points:
	decide on pick-score + (boolval of sco-yall-yank) + (boolval of whether or not rack right is not off-stage)

to decide which number is sneak-mooter-points:
	decide on (boolval of sco-loud-lies) + (boolval of sco-salad-scent) + (boolval of sco-need-knack)

section tracking hole progress

to decide which number is hole-done:
	decide on number of in-hold holeitems;

to decide which number is hole-progress:
	decide on number of not unblessed holeitems;

to decide which number is availval:
	decide on number of unblessed holeitems;

chapter yacht stuff

to yacht-go (rm - a room):
	now took-yacht is true;
	if rm is unvisited:
		say "'[rm]? Yes, yes, I know that place well. It won't be long,' says the Sassed Sort.";
	else:
		say "The Sassed Sort nods and guides the yacht back to [rm].";
	move yacht to rm;
	move sassed sort to rm;
	move-eekers;
	move player to rm;
	now took-yacht is false;

chapter score macros

section hub score

to decide what number is hub-intro-score:
	decide on (boolval of sco-plucky-plot) + (boolval of sco-need-knack) + (boolval of sco-yall-yank);

section thief score

to decide what number is thief-score:
	decide on (boolval of sco-brought-brief) + (boolval of sco-bought-beef)

section blight score

to decide what number is blight-score:
	decide on (boolval of sco-hack-height) + (boolval of sco-quack-quite) + (boolval of sco-flak-flight) + (boolval of sco-slack-slight)

to decide what number is blight-nec-score:
	if blight-score < 4, decide on blight-score;
	decide on 3;

section nook score

to decide which number is pre-nook-score:
	decide on (boolval of sco-loud-lies) + (boolval of whether or not player has posh pick)

section pick score

to decide which number is pick-score:
	decide on (boolval of sco-slosh-slick) + (boolval of sco-quash-quick)

section yacht score

to decide which number is port-score:
	decide on (boolval of sco-murky-map) + (boolval of sco-glued-glass)

section fish/bowl score

to decide which number is fish-score:
	decide on (boolval of sco-salad-scent) + (boolval of sco-stew-stuff)

section hill score

to decide which number is hill-score:
	decide on (boolval of sco-ailing-ill) + (boolval of sco-failing-phil) + (boolval of sco-mailing-mill) + (boolval of sco-wailing-will) + (boolval of sco-bailing-bill) 

section bruising brew / losing lou score

to decide which number is lou-score:
	decide on (boolval of sco-using-you) + (boolval of sco-boozing-boo);

section route rough progress

to decide which number is route-rough-score:
	decide on (boolval of sco-stout-stuff) + (boolval of sco-flout-fluff) + (boolval of sco-nowt-nuff);

book definitions

definition: a room (called rm) is available-from-here:
	if rm is unvisited, no;
	yes;

book to say

to say optional-hint-think-item: say "";

volume helper definitions

to decide which number is nil-score:
	decide on (boolval of sco-ill-un) + (boolval of sco-fill-fun) + (boolval of sco-will-won);

to decide which number is dander-score:
	decide on (boolval of sco-candor-cove) + (boolval of sco-grander-grove) + (boolval of sco-stander-stove);

to decide which number is tully-score:
	decide on boolval of sco-fright-fully + boolval of sco-bright-bully;

volume gotoing

to decide whether (di - a direction) is blocked: no;

definition: a direction (called d) is viable:
	if the room d of location of the player is nowhere, no;
	yes;

this is the flag bad goto from rule: do nothing;

this is the flag bad goto to rule: do nothing;

volume other stuff

to alt-last (rm - a room): [this makes the final flip an optional point]
	repeat through table of verb checks:
		unless there is a best-room entry and best-room entry is rm, next;
		if idid entry is false, now core entry is false;

to flag-missed (rm - a room): [ this is for the MISSED list at the end. Note it cuts corners: if you missed 2 things, it would only track the first. But BK6 doesn't allow that. ]
	repeat through table of verb checks:
		if idid entry is false and there is a best-room entry and best-room entry is rm:
			say "You could've said [b][w1 entry in upper case] [w2 entry in upper case][r] in [rm].";
			continue the action;

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
