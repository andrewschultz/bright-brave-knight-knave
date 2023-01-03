"Bright Brave Knight Knave" by Andrew Schultz

include Trivial Niceties by Andrew Schultz.

include Prime Pro Rhyme Row Universal by Andrew Schultz.

include Prime Pro Rhyme Row Leet Learner by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

include Prime Pro Rhyme Row E34 by Andrew Schultz.

include Bright Brave Knight Knave Definitions by Andrew Schultz.

include Bright Brave Knight Knave Globals by Andrew Schultz.

include Bright Brave Knight Knave Mistakes by Andrew Schultz.

include Bright Brave Knight Knave Tables by Andrew Schultz.

section testing - not for release

include Bright Brave Knight Knave Tests by Andrew Schultz.

section Beta Testing - not for release

include Bright Brave Knight Knave Beta Testing by Andrew Schultz.

volume game specific stuff

this is the situational-cuing-reject rule: do nothing;

volume rooms

book white wave

White Wave is a room. "[if sco-kite-cave is false]Water is on almost every side. There must be a way out. You know a white wave brought you here, and they periodically crash around[else if bass bath is unvisited]The kite cave you created an involuntarily destroyed gave passage [b]DOWN[r]. You'll probably want to take it[else]The only exit is [b]DOWN[r] back to [bass bath][end if]."

the player is in White Wave.

check going down in White Wave:
	if sco-fight-fave is true, say "You can't shirk the final fight!" instead;
	if hold hole is unexamined and number of preguessed holeitems < 3, say "You may wish to examine the hold hole you created first." instead;

chapter leet learner

the leet learner is in White Wave. "Something called a leet learner rests here.".

chapter Hold Hole

the hold hole is a rhymable. "The hold hole created when the kite cave collapsed sits here. It's divided into three and is [if hole-progress is 0]empty[else if hole-progress is 1]one-third full[else if hole-progress is 2]two-thirds full[end if][whats-in-hole][if hold-poke]. You should probably examine it or at least try to figure out what it should hold[end if].".

check taking hold hole: say "Hole haul? Stole? Stall! (You will put things back in the hole as you find them.)" instead;

bold-hole is a truth state that varies.

to say whats-in-hole:
	if hole-progress is 0, continue the action;
	say ". So far, you've placed [the list of holeitems in white wave] in the hold hole";
	let pgh be number of preguessed holeitems;
	if pgh > 0:
		now bold-hole is true;
		say ". You know [the list of preguessed holeitems] must go in the hold hole, but you haven't found [if pgh is 1]it[else]them[end if] yet";
		now bold-hole is false;

rule for printing the name of a holeitem (called hi) when bold-hole is true: say "[b][printed name of hi in upper case][r]";

guess-table of hold hole is table of hold hole guesses.

section cold coal

a cold coal is a holeitem.

section bold bowl

a bold bowl is a holeitem.

section sold soul

a sold soul is a holeitem.

chapter hole finding items

after printing the locale description for white wave:
	let nch be number of carried holeitems;
	if nch is 0, continue the action;
	if number of carried holeitems > 0:
		say "The hold hole shakes. Suddenly [the list of carried holeitems] [if nch is 1]flies[else]fly[end if] out of your hands and take [if nch is 1]its[else]their[end if] place in the hold hole.";
		now all carried holeitems are in-hold;
		now all carried holeitems are in white wave;
	if number of holeitems in white wave is 3:
		say "[line break]The hole is completed. It cracks. You sense you must settle a score here and now.";
		moot hold hole;
		moot cold coal;
		moot sold soul;
		moot bold bowl;
	now all carried holeitems are in white wave;
	continue the action;

chapter Trite Tully

Trite Tully is a person.

book bass bath

Bass Bath is a room. printed name is "[if sco-pass-path is false]Bass Bath[else]Pass Path[end if]". "[if sco-pass-path is false]It's very nice here, but you can't see any way forward. There are lots of nice fish here, though, and you're tempted to try and tickle one and say 'how do you pronounce yourself there, fella?'[else if sco-mass-math is false]You only see a small path to the north, but the fish are still nice to look at.[else]You see passages to the north, west and east.[end if]"

guess-table of bass bath is the table of bass bath guesses.

from-number of bass bath is 5404. to-number of bass bath is 5404.

book Rut Row

Rut Row is a room.

chapter the kid

the coughin coy boffin boy is a rhymable.

guess-table of coughin coy boffin boy is the table of coughin coy boffin boy guesses.

book Slum Slid

Slid Slum is a room.

guess-table of slid slum is the table of slid slum guesses.

book Crude Crapper

Crude Crapper is a room.

guess-table of crude crapper is the table of crude crapper guesses.

chapter mood mapper

the mood mapper is a thing. description is "It can't offer hints like the leet learner, but maybe you can [b]MM[r] people."

volume unsorted

book Recruiter

recroom is a privately-named room. printed name of recroom is "Recruiter". "[if cried creek is unvisited]There's a passage west to more rural areas[else]You can go west to [creek][end if]. Or you can just go back south to Rut Row."

guess-table of recroom is the table of recroom guesses.

the Recruiter is scenery in recroom. "You can feel the recruiter all around, but somehow it feels like you have to ask for what you need."

after printing the locale description for recroom:
	unless player was in Cried Creek, continue the action;
	follow the eeker-match rule;

chapter chic shooter

the Chic Shooter is a crooty eeker. matchnum of Chic Shooter is 1.

chapter meek mooter

the Meek Mooter is a crooty eeker. matchnum of Meek Mooter is 2.

chapter weak wooter

the Weak Wooter is a crooty eeker. matchnum of Weak Wooter is 3.

book spied speak cried creek

Spied Speak Cried Creek is west of recroom. "You can only go back east here. You might get lost in the other directions."

check going east in Cried Creek:
	if number of eekers in Cried Creek is 0, continue the action;
	let myeek be a random eeker in Cried Creek;
	if sco-stride-streak is true:
		now myeek is followish;
	else:
		say "The [myeek] seems apathetic, as if they'd like to follow you but can't. How can you grease the skids?";

after printing the locale description when number of leftbehind eekers > 0:
	say "The [list of leftbehind eekers] follow[if number of leftbehind eekers is 1]s[end if] you to [location of player].";
	if number of leftbehind eekers is 1 and number of eekers in location of player is 1:
		let randcree be a random creeky eeker in creek;
		let randcroo be a random crooty eeker in recroom;
		if matchnum of randcree is not matchnum of randcroo, say "Oh no! The [randcree] and [randcroo] don't like each other.";
	repeat with x running through eekers:
		if x is leftbehind, move x to location of player;
	continue the action;

chapter fried freak

the Fried Freak is an creeky eeker. matchnum of Fried Freak is 1.

chapter snide sneak

the Snide Sneak is an eeker. matchnum of Snide Sneak is 2.

chapter guide geek

the Guide Geek is an eeker. matchnum of Guide Geek is 3.

volume distraction rooms

book Nil None

Nil None is a room.

check going down in Nil None:
	if sco-will-won is false, say "You feel a fog of purpose, or lack thereof, around. You need to regain your values." instead;
	if sco-ill-un is false, max-down;

guess-table of Nil None is  the table of nil none guesses.

book Stander Stove

Stander Stove is a room. "You're trapped in what appears to be a metal stove[if stove-prog > 0], again[end if]. There seems to be no way out[if stove-prog > 0], and the way you left last time seems blocked[end if]. You need to envision a much nicer place than here."

guess-table of Stander Stove is the table of stander stove guesses.

volume verb-checker rule

this is the verb-checker rule:
	let local-ha-half-level be 0;
	let local-post-hom be false;
	let brightness be false;
	let new-point-to-get be false;
	let global-row-check be 0;
	let hom-row be 0;
	let my-count be 0;
	let nwpc be number of words in the player's command;
	repeat through the table of verb checks:
		increment global-row-check;
		now my-count is 0;
		now vc-dont-print is true;
		process the check-rule entry;
		let rb-out be the outcome of the rulebook;
		if rb-out is the unavailable outcome, next;
		now vc-dont-print is false;
		[say "[check-rule entry].";]
		if there is a wfull entry and the player's command matches the wfull entry:
			now my-count is 4; [ 4 = topic match, 3 = mix up alt solutions, 2 = 2 word match (or DIMD). This is a magic number to get rid of a boolean, so we can have all non global variables inside one rule, because Inform only allows 15 local variables. ]
		else:
			if the player's command matches the regular expression "(^|\W)([w1 entry])($|\W)", increment my-count;
			if there is a w2 entry:
				if the player's command matches the regular expression "(^|\W)([w2 entry])($|\W)", increment my-count;
			else if my-count > 0:
				increment my-count;
			if there is a wfull entry and my-count is 2:
				increment my-count;
		if my-count >= 2:
[			if debug-state is true, say "DEBUG: processing [check-rule entry], outcome [if rb-out is unavailable outcome]UA[else if rb-out is not-yet outcome]NOT YET[else if rb-out is already-done outcome]already done[else]rady[end if].";]
			process the check-rule entry;
			let rb-out be the outcome of the rulebook;
			if rb-out is the already-done outcome, the rule succeeds;
			if rb-out is the not-yet outcome:
				let exact-cmd be whether or not the player's command matches the text "[first-of-ors of w1 entry][if there is a w2 entry] [first-of-ors of w2 entry][end if]", case insensitively;
				if think-cue entry is false:
					say "[line break][one of][b]NOTE[r]: this command[if exact-cmd is false] (well, an equivalent, as there were alternate solutions)[end if] will be useful later, but you aren't ready to use it, yet. You can track commands like this by typing [b]THINK[r], which will also clue you if they now work.[or](useful command[if exact-cmd is false] (or a functionally equivalent alternate solution)[end if] again saved to [b]THINK[r] for later reference.)[stopping]";
					now think-cue entry is true;
				else:
					say "[line break]Hmph. That [if exact-cmd is false](or a functionally equivalent alternate solution) [end if]still doesn't quite work! You'll figure out the how and when and where, though.";
				the rule succeeds;
			if rb-out is semi-pass outcome:
				now think-cue entry is true;
				the rule succeeds;
			if okflip entry is false:
				unless my-count is 4 or there is no w2 entry or the player's command matches the regular expression "^([w1 entry])\W": [using only w1 is for the DIM'D test case... and "my-count is 4" is a hack for FLIMFLAM]
					say "You've got it backwards! Just flip things around, and it'll be okay.";
					the rule succeeds;
			if my-count is 3:
				say "Ooh! You're close. You've probably juggled two valid solutions.";
				the rule succeeds;
			abide-nlb the situational-cuing-reject rule;
			process the run-rule entry;
			if the rule failed:
				now think-cue entry is true;
				the rule succeeds;
			if there is a core entry and idid entry is false:
				if core entry is true and nwpc > 2:
					say "You may have used too many words. Any necessary command just needs two words, no more, no less. I put this in to make sure you can't just spam guesses. It's a bit strict, but ... I wanted some cursory protection, as well as simple guidance to narrow down what you should guess.";
					the rule fails;
				up-which core entry;
				if core entry is false:
					increase lump-count by 1;
			now idid entry is true;
			now think-cue entry is false;
			if zap-core-entry is true: [must be after "process the run-rule entry" or next LLP may not register]
				blank out the core entry;
				now zap-core-entry is false;
			process the score and thinking changes rule;
			if there is a core entry and core entry is false, check-lump-progress;
			the rule succeeds;
		if shut-scan is true, next;
		if two-too is true and player has leet learner:
			if there is a posthom entry:
				if the player's command includes the posthom entry:
					if rb-out is worth-parsing:
						now local-post-hom is true;
						now hom-row is global-row-check;
		if ha-half is true and my-count is 1 and player has leet learner:
			now vc-dont-print is true;
			process the check-rule entry;
			let rb-out be the outcome of the rulebook;
			now vc-dont-print is false;
			unless rb-out is the not-yet outcome or rb-out is the ready outcome or rb-out is semi-pass outcome, next;
			if rb-out is ready outcome or rb-out is semi-pass outcome:
				now local-ha-half-level is 2;
			else if local-ha-half-level < 2:
				now local-ha-half-level is 1;
			if debug-state is true, say "DEBUG: [check-rule entry] tipped off the HA HALF button.";
			if there is a core entry:
				now new-point-to-get is true;
				if core entry is true, now brightness is true;
			next;
	if local-post-hom is true:
		if hom-row > 0:
			choose row hom-row in table of verb checks;
			if there is a hom-txt-rule entry:
				abide by the hom-txt-rule entry;
			else:
				say "The Leet Learner shakes back and forth. Something you said sounded right, but it didn't feel right.";
		abide by the two-too-help rule;
	if local-ha-half-level > 0:
		say "The [b]HA HALF[r] button on your Leet Learner lights up [if local-ha-half-level is 1]yellow[one of]--one of the words must work for a future solution[or][stopping][else]green[one of]--one of the words you thought must be right[or][stopping][end if][if new-point-to-get is false]. Oh, wait, you're just switching back to a rhyme you knew before. You must've mis-thought a word[else if brightness is false]. Very dim, though. Perhaps this is a rhyme you don't strictly need to figure to win[else if local-post-hom is true]. Its brightness suggests your rhyme must be very close, indeed[end if].";
		abide-nlb the ha-half-help rule;

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see the points you [b]MISSED[r]" 	true	"missed/misses"	show-misses rule	--

volume endgame

this is the show-misses rule:
	if sco-write-right-rave is false:
		say "You could have tried to [b]WRITE/RIGHT RAVE[r] to flatter me.";
	else if got-rave-bonus is false:
		say "You decided to [b]WRITE/RIGHT RAVE[r] too soon.";
	if got-hole-bonus is false:
		say "You could have figured the items to put in the hold hole before finding them. You missed out on [the list of unguessed holeitems].";
	if sco-nude-napper is false:
		say "You could have told a [b]NUDE NAPPER[r] to be more modest in the Crude Crapper.";
	if sco-ill-un is false:
		say "You could've identified yourself as [b]ILLUN[r] in Nil None.";

volume mapping stuff

index map with Rut Row mapped west of Bass Bath.
index map with Slid Slum mapped west of Rut Row.
index map with Crude Crapper mapped south of Slid Slum.
index map with recroom mapped north of Rut Row.
