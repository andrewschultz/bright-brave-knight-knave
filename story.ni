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

White Wave is a room in intro. "[if sco-kite-cave is false]Water is on almost every side. There must be a way out. You know a white wave brought you here, and they periodically crash around[else if bass bath is unvisited]The kite cave you involuntarily destroyed created a passage [b]DOWN[r]. You'll probably want to take it[else]The only exit is [b]DOWN[r] back to [bass bath][end if]."

the player is in White Wave.

check going down in White Wave:
	if sco-fight-fave is true, say "You can't shirk the final fight!" instead;
	if hold hole is unexamined and number of preguessed holeitems < 3, say "You may wish to examine the hold hole you created first." instead;

chapter leet learner

the leet learner is in White Wave. "Something called a leet learner rests here.".

chapter Hold Hole

the hold hole is a rhymable. "The hold hole created when the kite cave collapsed sits here. It's divided into three and is [if hole-progress is 0]empty[else if hole-progress is 1]one-third full[else if hole-progress is 2]two-thirds full[end if][if hold-poke]. You should probably examine it or at least try to figure out what it should hold[end if].".

description of hold hole is "It appeared when you located the kite cave. [whats-in-hole]."

check taking hold hole: say "Hole haul? Stole? Stall! (You will put things back in the hole as you find them.)" instead;

bold-hole is a truth state that varies.

to say whats-in-hole:
	if hole-progress is 0:
		say "Nothing has fit in yet";
	else:
		say "So far, you've placed [the list of holeitems in white wave] in the hold hole";
	let pgh be number of preguessed holeitems;
	if pgh > 0:
		now bold-hole is true;
		say ". You know [the list of preguessed holeitems] must go in the hold hole, but you haven't found [if pgh is 1]it[else]them[end if] yet";
		now bold-hole is false;
	else if hole-progress is 0:
		say ". Perhaps you could guess what might fit in there, as a warm-up exercise"

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
	if number of carried blessed holeitems > 0:
		say "The hold hole shakes. Suddenly [the list of carried blessed holeitems] [if nch is 1]flies[else]fly[end if] out of your hands and take [if nch is 1]its[else]their[end if] place in the hold hole.";
		now all carried holeitems are in-hold;
		now all carried holeitems are in white wave;
	else if number of carried not blessed holeitems > 0:
		say "You sort of expected something to happen with [the list of carried holeitems], but nothing did. Perhaps what you have is not properly prepared.";
	if number of holeitems in white wave is 3:
		say "[line break]The hole is completed. It cracks. You sense you must settle a score here and now.";
		moot hold hole;
		moot cold coal;
		moot sold soul;
		moot bold bowl;
	now all carried holeitems are in white wave;
	continue the action;

chapter Trite Tully

Trite Tully is a person. "[if tully-score is 2]So it's come to this. You need to figure out what to do with a (the?) Sham, Shy, the shame-artist formally known as Trite Tully. Mercy? Opprobrium? Split the difference?[else]Trite Tully stands here, [tulstill]looking confident and dismissive.[end if]"

guess-table of trite tully is the table of trite tully guesses.

to say tulstill: if tully-score is 1, say "still ";

understand "sham shy" and "sham/shy" as Trite Tully when tully-score is 2.

printed name of Trite Tully is "[if tully-score is 2]Sham, Shy[end if]".

book bass bath

Bass Bath is a room in intro. printed name is "[if sco-pass-path is false]Bass Bath[else]Pass Path[end if]". "[if sco-pass-path is false]It's very nice here, but you can't see any way forward. There are lots of nice fish here, though, and you're tempted to try and tickle one and say 'how do you pronounce yourself there, fella?'[else if sco-mass-math is false]You only see a small path to the north, but the fish are still nice to look at.[else]You see passages to the north, west and east.[end if]"

guess-table of bass bath is the table of bass bath guesses.

from-number of bass bath is 5404. to-number of bass bath is 5404.

after printing the locale description for Bass Bath:
	if bool-hill-available is false and player has mood mapper:
		say "The mood mapper beeps. Apparently there was one path you did not calculate. It's hidden ... and it leads up!";
		now bool-hill-available is true;
		now hailing hill is mapped above bass bath;
		now bass bath is mapped below hailing hill;
	continue the action;

book Hailing Hill

Hailing Hill is a room in intro. "You are at the [if hill-score is 2]top[else]bottom[end if] of a hill that just makes you want to get in touch with people[if hill-score is 5], but maybe not here. You've done what you can[else if sco-mailing-mill is true]The mailing mill you summoned waits here to be operated[end if].";

the mailing mill is scenery in Hailing Hill. "You can probably just type the name of whomever you want to contact, and the mailing mill will do the rest."

volume recruiting area (west)

book Rut Row

Rut Row is a room in recruiting. "[if sco-what-whoah is false]The air looks opaque to the west. It looks impenetrable and almost physically impenetrable[else]You cleverly forged a way west[end if], and [if recruiter is unvisited]with a careful look, you see a passage north, too[else]you can go back north to the recruiter[end if]. And there's always back east to Pass Path."

check going north in Rut Row:
	if sco-mood-mapper is false, say "You make your way north, but you are shooed by a loud voice saying 'Really! We can do better than your kind, here.' You have a feeling it's just trying to act snooty and hifalutin, but you have no proof, so you trudge back south.[paragraph break]If only you had a gauge for this sort of thing!" instead;
	if recruiter is unvisited:
		say "A voice proclaims you as perhaps not classy enough, but you're not fooled. The mood mapper helps you detect what, on reflection, is pretty lame hubris. You could've seen it easy back when you had more confidence. But you see it more fully, being more worldly-wise.";

chapter the kid

the coughin coy boffin boy is a rhymable.

guess-table of coughin coy boffin boy is the table of coughin coy boffin boy guesses.

book Slum Slid

Slid Slum is a room in recruiting.

guess-table of slid slum is the table of slid slum guesses.

book Crude Crapper

Crude Crapper is a room in recruiting. "You can only really go outside here. [crapper-status].";

to say crapper-status:
	if sco-mood-mapper is true:
		say "[if sco-nude-napper is true]There's nothing left to do here[else]You got the mood mapper, but you can mooch around for brownie points[end if]";
	else:
		say "[if sco-nude-napper is true]You've had a bit of fun, but perhaps there's something practical, here[else]Something must be at work here. You suspect you'll feel a bit silly once you figure what you're looking for[end if]"

guess-table of crude crapper is the table of crude crapper guesses.

chapter mood mapper

the mood mapper is a thing. description is "It can't offer hints like the leet learner, but maybe you can [b]MM[r] people."

book Recruiter

recroom is a privately-named room in recruiting. It is north of Rut Row. printed name of recroom is "Recruiter". "[if cried creek is unvisited]There's a passage west to more rural areas[else]You can go west to [creek][end if]. Or you can just go back south to Rut Row."

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

Spied Speak Cried Creek is west of recroom. it is in recruiting. "You can only go back east here. You might get lost in the other directions."

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

book eeker logic and manipulation

volume north area

book Bosh Blanks

Bosh Blanks is a room in northstuff. printed name is "[if sco-posh-planks is true]Posh Planks[else]Bosh, Blanks![end if]". "[if sco-posh-planks is false]It's disappointingly empty here. As-is, you can only go back south[else][planks-desc][end if]."

to say planks-desc: say "There's water on pretty much all sides here. A yucky yacht might allow access once fixed"

chapter yucky yacht

the yucky yacht is scenery in Bosh Blanks.

check entering yucky yacht:
	if sco-plucky-plot is false, say "Eww. Not until it's clean. Plus it's rich people property. Probably videocameras and stuff." instead;
	if player is in Bosh Blanks:
		move yacht to Lane Lax;
		move player to Lane Lax;
	else:
		move yacht to Bosh Blanks;
		move player to Bosh Blanks;
	the rule succeeds;

book Lane Lax

Lane Lax is a room in northstuff. printed name is "[if sco-train-tracks is false]Lane, Lax[else][mama]Train Tracks[end if]". "It's pretty barren here. The yucky yacht will lead back to Posh Planks if you [b]ENTER[r] it."

to say mama: if sco-main-max is true, say "Main Max "

check going in Lane Lax:
	if sco-train-tracks is false, say "No one way seems better than the other, at the moment." instead;
	if sco-pain-packs is false, say "You aren't equipped with emergency provisions." instead;

[the train tracks are not all they could be, and they do not lead all the places they could]

volume south area

volume east area

volume unsorted

volume meta

chapter recruiting

recruiting is an action applying to one number.

understand "r [number]" as recruiting when r-warn-yet is true.

carry out recruiting:
	if number understood > 3 or number understood < 1, say "You need to pick 1, 2 or 3." instead;
	if number of fungible eekers > 0, say "I can technically do better, but right now, you'll want to run this command without anyone else around." instead;
	repeat with XX running through creeky eekers:
		if matchnum of XX is number understood:
			let og be other-guy of XX;
			if XX is finished, say "You've already had your fun with the [XX] and [og]." instead;
			if XX is dormant and og is dormant, say "You can't join that pair up yet, since you haven't identified either of them." instead;
			if XX is dormant or og is dormant, say "You don't know who'd join the [if XX is dormant][og][else][xx][end if]." instead;
			if XX is not pairedyet:
				if number of pairedyet eekers is 4:
					increment cur-bonus;
					now r-shortcut-got is true;
					say "Because you are bright and brave, you realize by process of elimination who is left. Briefly, you wonder if you deserve both a bonus point AND a shortcut, but you've earned it. Go, you![paragraph break]";
			now xx is pairedyet;
			now og is pairedyet;
			move player to recroom;
			say "You recall [the xx] and [the og].";

chapter verbsing

carry out verbsing:
	if r-warn-yet is true and pairs-used < 3:
		say "You can say [b]BYE[r] to get rid of a friend pair.";
		repeat with XX running through creeky eekers:
			if XX is finished or XX is dormant, next;
			let og be other-guy of XX;
			if og is dormant, next;
			say "You can also say [b]R [matchnum of XX][r] to resummon the [XX] and [og].";

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

[below is how we would break things into tables. However, this is a lot slower!]

[a room has a table name called rhymetab.]

[this is the verb-checker rule:
	abide by the vc-by-table rule for table of verb checks;
	abide by the vc-by-table rule for rhymetab of location of player;

a rhymeguess rule for a table name (called tn) (this is the vc-by-table rule):]

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

section recruiting and intro

index map with Rut Row mapped west of Bass Bath.
index map with Slid Slum mapped west of Rut Row.
index map with recroom mapped north of Rut Row.
index map with Rut Row mapped north of White Wave.
index map with White Wave mapped east of Hailing Hill.
index map with Crude Crapper mapped west of Hailing Hill.

section north bit

index map with Bosh Blanks mapped north of Bass Bath.
