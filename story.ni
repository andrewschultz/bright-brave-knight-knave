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

chapter specific holeitems

to decide which number is help-index:
	if number of eekers in location of player is 0, decide on 0;
	decide on (matchnum of random eeker in location of player);

chapter track tryst lack list

the track tryst lack list is a thing. description is "Here's a list of needs:[line break][tryst-list][run paragraph on]";

after examining lack list when sco-jack-gist is false:
	say "You have a sneaking suspicion you could summarize the list with the right command, so you'd need just one letter to access it later and get a bonus point to boot. A suspicion snuck in there by me!";
	continue the action;

understand "x" and "examine" as examining.

rule for supplying a missing noun when examining:
	if player has lack list and sco-jack-gist is true:
		now noun is lack list;
	else:
		now noun is the player;

to say tryst-list:
	repeat with ti running through trystitems:
		say " [fixed letter spacing]([if player has ti]+[else]-[end if])[variable letter spacing] [if player has ti][ti][else][vaguedesc of ti][end if][line break]"

section cold coal

a cold coal is a holeitem. palindex of cold coal is 1.

section bold bowl

a bold bowl is a holeitem. palindex of bold bowl is 2.

section sold soul

a sold soul is a holeitem. palindex of sold soul is 3.

chapter hole finding items

after printing the locale description for white wave:
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
	if bool-brew-available is false and hub-intro-score is 3:
		say "Wait! What's this? A passage you hadn't noticed before! You can go inside to what looks like a bar!";
		now bool-brew-available is true;
		open-psg inside and Bruising Brew;
	continue the action;

book Hailing Hill

Hailing Hill is a room in intro. "You are at the [if hill-score is 2]top[else]bottom[end if] of a hill that just makes you want to get in touch with people[if hill-score is 5], but maybe not here. You've done what you can[else if sco-mailing-mill is true]The mailing mill you summoned waits here to be operated[end if].";

the mailing mill is scenery in Hailing Hill. "You can probably just type the name of whomever you want to contact, and the mailing mill will do the rest."

volume recruiting area (west)

book Rut Row

Rut Row is a room in recruiting. "[if sco-what-whoah is false]The air looks opaque to the west. It looks impenetrable and almost physically impenetrable[else]You cleverly forged a way west[end if], and [if recruiter is unvisited]with a careful look, you see a passage north, too[else]you can go back north to the recruiter[end if]. And there's always back east to Pass Path."

check going west in Rut Row:
	if sco-what-whoah is false, say "Oh, man! Things just get too chokey to the west. Maybe you could find passage there, if something surprising happened." instead;

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

check going in recroom:
	unless noun is west or noun is south, continue the action;
	abide by the eeker-start-follow rule;

chapter chic shooter

the Chic Shooter is a crooty eeker. matchnum of Chic Shooter is -1.

chapter meek mooter

the Meek Mooter is a crooty eeker. matchnum of Meek Mooter is -2.

chapter weak wooter

the Weak Wooter is a crooty eeker. matchnum of Weak Wooter is -3.

book spied speak cried creek

Spied Speak Cried Creek is west of recroom. it is in recruiting. "You can only go back east here. You might get lost in the other directions."

check going east in Cried Creek:
	abide by the eeker-start-follow rule;

after printing the locale description when number of leftbehind eekers > 0:
	if took-yacht is true, continue the action;
	say "The [list of leftbehind eekers] follow[if number of leftbehind eekers is 1]s[end if] you to [location of player].";
	if number of leftbehind eekers is 1 and number of eekers in location of player is 1:
		let rle be random leftbehind eeker;
		follow the eeker matchups rule for rle;
		continue the action;
	move-eekers;
	continue the action;

chapter fried freak

the Fried Freak is an creeky eeker. matchnum of Fried Freak is -1.

chapter snide sneak

the Snide Sneak is an eeker. matchnum of Snide Sneak is -2.

chapter guide geek

the Guide Geek is an eeker. matchnum of Guide Geek is -3.

book eeker logic and manipulation

volume north area

book Bosh Blanks

Bosh Blanks is a room in northstuff. printed name is "[if sco-posh-planks is true]Posh Planks[else]Bosh, Blanks![end if]". "[if sco-posh-planks is false]It's disappointingly empty here. As-is, you can only go back south[else][planks-desc][end if]."

to say planks-desc: say "There's water on pretty much all sides here. A yucky yacht might allow access once fixed"

chapter yucky yacht

the yucky yacht is scenery.

rule for supplying a missing noun when entering:
	if yacht is in location of player, now noun is yacht;

check going inside:
	if yacht is in location of player, try entering yacht instead;

check entering yucky yacht:
	if player is not in bosh blanks:
		yacht-go bosh blanks;
		the rule succeeds;
	say "[if sco-plucky-plot is false]Eww. Not until it's clean. Plus it's rich people property. Probably videocameras and stuff[else]You need to ask the Sassed Sort where, specifically, to go[end if]." instead;

chapter sassed sort

the Sassed Sort is a person. "The Sassed Sort stands here by the yacht, waiting for guidance where to go next[if player is not in bosh blanks], or you can [b]ENTER[r] it to return to [bosh blanks]."

book Cast Court

Cast Court is a room in northstuff. "Stuff is strewn about here."

the perky pap is a thing in Cast Court. "Some perky pap lies about. Perhaps it can be made into something better."

the murky map is a thing.

book Fast Fort

Fast Fort is a room in northstuff.

Crude Crass Lewd Lass is a thing in Fast Fort.

the glued glass is a thing.

book Passed Port

Passed Port is a room in northstuff. "It's rather busy here with weirdness and magic. Of course, that's not surprising, since it's so hard to find[if valid vent is in port]. A pallid pent valid vent is off to the side. Maybe something is flowing through it[end if][cord-note]."

to say cord-note: if clashing cord is in passed port, say ". A clashing cord [if sco-salad-scent is false]hangs down from it[else]has fallen to the ground, too[end if]"

the slime slowed rime road is scenery in Passed Port.

chapter pallid pent valid vent

the pallid pent valid vent is scenery in Passed Port. "There's some air flow here. It probably isn't toxic, or if it was, it would've killed you already."

the salad sent is a thing.

chapter posh pick

the posh pick is a thing in passed port. "A posh pick is buried in the slime-slowed rime road.". description is "It looks very pricey. It seems monogrammed with the letters S S. Hmm."

chapter clashing cord

the clashing cord is scenery in passed port. "It doesn't really fit aesthetically with the vent. Or here at all, really. And it doesn't seem useful to you, either. What could it become?"

chapter slashing sword

the slashing sword is a trystitem. vaguedesc is "a weapon, probably for defense".

volume south area

book Treed Track

Treed Track is a room in southstuff. "[if sco-need-knack is false]You just can't make your way through this forest! Having a method to would help[else]With your friends['] help, you've figured there are passages west, east and up[end if]."

the seed sack is a thing.

book Too Tough Blue Bluff

Too Tough Blue Bluff is a room in southstuff. "It's bleak here, man, bleak. [if sco-stew-stuff is false]A deserted campground--perhaps if you knew what to look for, and you could steel yourself properly, you could find what you need[else]There's nothing more to do here[end if]. You can go back down to Treed Track."

chapter stew stuff

The stew stuff is a thing.

book Lack Light Black Blight

Lack Light Black Blight is a room in southstuff. printed name is "[if blight-score < 3]Lack-Light Black Blight[else]Sack Site[end if]". "The only way back is down. [if blight-score < 3]You feel unseen forces backbite, smack, smite, both verbally and physically. Perhaps you need to show you can take abuse without surrendering to it[else]This is a sack site now, with sacks you don't need. Perhaps one day a decent shack will be built here ... nah[end if]."

after printing the locale description when player is in Black Blight and rack right is off-stage and blight-score > 3:
	if fried freak is followish, check-rack-right;
	continue the action;

chapter rack right

the rack right is a thing. printed name is "rack, right". description of rack right is "It just looks and feels right, both the shape and texture, and that you should have it. You suspect it'll be important in some ritual somewhere.".

chapter sour slate

the sour slate is a thing. "A sour slate lies here, pushing you away in its current form.". description is "Whew! You feel the negativity bouncing off it. It's good at repelling stuff, but maybe it's a bit too good in its current form. You know the difference between good defense and defensiveness? The sour slate doesn't."

chapter power plate

the power plate is a trystitem. description is "Surprisingly lightweight but sturdy armor.". vaguedesc is "replacement armor".

book Knell Nook

Knell Nook is a room in southstuff.

chapter sold soul

the sold soul is a thing.

volume east area

book Tall Tank(s)

tata is a privately-named room in eaststuff. printed name is "Tall Tank(s)". understand "tata" as tata when debug-state is true.

the tall tanks are plural-named scenery in tata. "They're tall! They look like they could be moved, but not on your own.".

chapter ardor elm

the ardor elm is a thing. "[if game-elm-seen is false]Your friends escort you over somewhere out of the way. 'Look! An ardor elm! Just for you! We're sure you'll find what you want.[else]The ardor elm your friends showed you stands here. [elm-status][end if]."

to say elm-status:
	say "[if game-elm-seen is false]Perhaps it holds something[else]You would appreciate it even without what you got from it[end if]"

chapter harder helm

the harder helm is a trystitem. vaguedesc is "replacement head protection".

book Lane Lax

Lane Lax is a room in eaststuff. printed name is "[if sco-train-tracks is false]Lane, Lax[else][mama]Train Tracks[end if]". "[if sco-main-max is true]The train tracks lead somewhere that's actually somewhere to the north and south[else if sco-train-tracks is true]The train tracks lead north or south to goodness knows where, but right now, this region feels too out-of-the-way[else]It's pretty barren here. There doesn't seem to be any way for people to arrive or leave here efficiently[end if]."

to say mama: if sco-main-max is true, say "Main Max "

check going in Lane Lax:
	if sco-train-tracks is false, say "No one way seems better than the other, at the moment." instead;
	if sco-pain-packs is false, say "You aren't equipped with emergency provisions." instead;

[??the train tracks are not all they could be, and they do not lead all the places they could]

chapter broad brash clod clash

The broad brash clod clash is scenery in Lane Lax. "Sheesh. A bunch of clods. Loud. Un-self-aware. There's got to be a way to break it up nonviolently."

chapter odd ash

the odd ash is a thing. "Looking at the odd ash, you wonder what it could've been, and feel oddly enough that you could find what it was, if only you found the right instrument."

chapter pain packs

the pain packs are a plural-named trystitem. "They look like they could really heal some hit points, if that's how health is tracked here.". vaguedesc is "something to heal you if you get a scratch".

book Wowed Wise Crowd Cries

Wowed Wise Crowd Cries is a room in eaststuff.

the proud prize is a thing.

book Thought Thief Fought Fief

Thought Thief Fought Fief is a room in eaststuff. printed name is "[if sco-wrought-reef is false]Thought-Thief-Fought Fief[else]Wrought Reef[end if]".

chapter one wish fun fish

there is a thing called the one wish fun fish. "A one-wish fun fish blups about in one of the watery tanks here. It looks intelligently at you, as if expecting you to ask for something. Maybe you can guess what.". description is "It blups back at you wordlessly.".

book Bruising Brew

Bruising Brew is a room in intro.

chapter the two faces of Lou (not-Christie)

Losing Lou is a person in Bruising Brew.

Turning to Learning Lou is a person in Bruising Brew. "Turning-to-Learning Lou stands here pensively. He is still looking for a name for his brilliant book about coping. What could it be?" [more bytes saved this way]

chapter spurning spew

Spurning Spew is a proper-named trystitem. description is "It's the book that Lou gave you. Man, it's pretty thick. It could help you defend yourself in more ways than one.". vaguedesc is "a replacement shield".

volume unsorted

volume meta verbs

book taking inventory

to say note-bless:
	if nbh < nch, say ". However, [the list of carried not blessed holeitems] seem[if nch - nbh is 1]s[end if], well, not perfect, yet"

check taking inventory when player has lack list:
	let nci be number of things carried by the player;
	if nci > 1: [technically we must check if trystitems are available, but since we can't get them until we have a lot of items ... forget it]
		say "You are carrying:[line break]";
	now all carried things are marked for listing;
	now lack list is unmarked for listing;
	now power plate is unmarked for listing;
	now all holeitems are unmarked for listing;
	list the contents of the player, with newlines, indented, with extra indentation, listing marked items only;
	if nch is 0:
		say "You don't have any items that fit in the hold hole.";
	else:
		say "So far, you've found [the list of carried holeitems] to fit in the hold hole[note-bless].";
	if nci > 1, say "[line break]";
	if player has lack list:
		if trystcount is 0:
			say "You haven't found anything on [the list] yet.";
		else:
			say "So far, from [the list], you've found [the list of carried trystitems].";
	the rule succeeds;

book eeker stuff

chapter byeing

byeing is an action out of world.

understand the command "bye" as something new.

understand "bye" as byeing.

carry out byeing:
	if number of not dormant eekers is 0, say "You haven't met anyone yet to say bye to!" instead;
	if nelp is 0, say "But there is nobody here to say bye to!" instead;
	say "You say good-bye to [the list of eekers in location of player].";
	sideline-eekers;
	the rule succeeds;

chapter recruiting

recruiting is an action applying to one number.

understand "r [number]" as recruiting when r-warn-yet is true.

carry out recruiting:
	if number understood > 3 or number understood < 1, say "You need to pick 1, 2 or 3." instead;
	if number of pairedyet eekers is 2 and number understood > 1, say "I can't deduce the next pair you'd like to enlist. There are two more." instead;
	if number of fungible eekers > 0, say "I can technically do better, but right now, you'll want to run this command without anyone else around." instead;
	repeat with XX running through creeky eekers:
		if matchnum of XX is number understood:
			let og be other-guy of XX;
			if XX is finished, say "You've already had your fun with the [XX] and [og]." instead;
			if XX is dormant and og is dormant:
				say "You can't join that pair up yet, since you haven't identified either of them.";
				follow the cheat-bonus rule;
				the rule succeeds;
			if XX is dormant or og is dormant:
				say "You don't know who'd join the [if XX is dormant][og][else][xx][end if].";
				process the cheat-bonus rule;
				the rule succeeds;
			if XX is not pairedyet:
				if number of pairedyet eekers is 4:
					increment cur-bonus;
					now r-shortcut-got is true;
					say "Because you are bright and brave, you realize by process of elimination who is left. Briefly, you wonder if you deserve both a bonus point AND a shortcut, but you've earned it. Go, you![paragraph break]";
			now xx is pairedyet;
			now og is pairedyet;
			let pairindex be (number of pairedyet eekers) / 2;
			now matchnum of xx is pairindex;
			now matchnum of og is pairindex;
			move player to recroom;
			say "You recall [the xx] and [the og].";

this is the cheat-bonus rule:
	if number of pairedyet eekers is 4:
		increment cur-bonus;
		now r-shortcut-got is true;
		say "You try to be a bit sneaky. You recognize, by process of elimination, that there can only be one person left to recruit both in the creek and in the office proper. So you wonder if you can, just, you know, call them up without knowing who they are. It's a nice idea, nice enough to deserve a bonus point as a possible loophole, but you'll have to figure who you want.";

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

book Dander Dove

Dander Dove is a room. printed name is "Dander, Dove". "You've gone off and gotten yourself into a real dander. It expands in all directions, not actually blocking you. Well, you yourself dove into it. It's soft, but it's hard to move out of. You [if dander-score is 0]may need to visualize places to go[else if dander-score is 1]feel you can almost get out of here. Just one more place to memorize[else if dander-score is 2]can move on now[else]have nothing else to deduce here. You're feeling less mad[end if]."

check going in Dander Dove:
	if dander-score < 2, say "You're still in enough of a dander you can't let go and move on, yet." instead;
	if dander-score is 2, max-down;
	say "Your mind lighter, you wander off back to where you were...";
	move player to pre-hole-item-room instead;

guess-table of Dander Dove is the table of Dander Dove guesses.

book Rough Route

Route Rough is a room. "Man! You [if route-rough-score is 3]did everything you can here. Just go any direction to leave[else if route-rough-score is 2]can probably leave, but if you're the sort to nail things down, great[else if route-rough-score is 1]have made some mental headway but would like to do more[else]sure feel bummed. Once again, you need to organize your thoughts[end if].". printed name is "[if route-rough-score < 2]Route, Rough[else]Out, Uff![end if]"

check going in route rough:
	if route-rough-score >= 2:
		say "You walk a long way ... then suddenly you wind up back where you were.";
		if route-rough-score is 2, max-down;
		move player to pre-hole-item-room instead;
	say "That would just be wandering. You need to get your head clear and put angst to the side." instead;

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
			if there is a core entry and idid entry is false:
				if core entry is true and nwpc > 2:
					say "You may have used too many words. Any necessary command just needs two words, no more, no less. I put this in to make sure you can't just spam guesses. It's a bit strict, but ... I wanted some cursory protection, as well as simple guidance to narrow down what you should guess.";
					the rule fails;
				up-which core entry;
				if core entry is false:
					increase lump-count by 1;
			now idid entry is true;
			process the run-rule entry;
			if the rule failed:
				now think-cue entry is true;
				the rule succeeds;
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

to say wr: say "[b]WRITE/RIGHT RAVE[r]"

this is the show-misses rule:
	if sco-write-right-rave is false:
		say "You could have tried to [wr] to flatter me.";
	else if got-rave-bonus is false:
		say "You decided to [wr] too soon.";
	if got-hole-bonus is false:
		say "You didn't guess the [the list of unguessed holeitems] before finding [if number of unguessed holeitems is 1]it[else]them[end if].";
	if sco-nude-napper is false:
		say "You could have told a [b]NUDE NAPPER[r] to be more modest in the Crude Crapper.";
	if sco-ill-un is false:
		say "You could've identified yourself as [b]ILLUN[r] in Nil None.";
	flag-missed route rough;
	flag-missed black blight;
	flag-missed dander dove;
	if sco-plead-plaque is false:
		say "You didn't find the [b]PLEAD PLAQUE[r] in Treed Track.";
	if sco-jack-gist is false:
		say "You could have tried to [b]JACK GIST[r] for a shorter command to read [the list].";

volume mapping stuff

section recruiting and intro

index map with Rut Row mapped west of Bass Bath.
index map with Slid Slum mapped west of Rut Row.
index map with recroom mapped north of Rut Row.
index map with Slid Slum mapped north of White Wave.
index map with Crude Crapper mapped west of Slid Slum.
index map with White Wave mapped south of Crude Crapper.
index map with Hailing Hill mapped north of recroom.
index map with Bruising Brew mapped northeast of Bass Bath.

section north bit

index map with Bosh Blanks mapped north of Bass Bath.

index map with Cast Court mapped north of Bosh Blanks.
index map with Fast Fort mapped east of Cast Court.
index map with Passed Port mapped east of Fast Fort.

section south bit

index map with Treed Track mapped south of Bass Bath.
index map with Too Tough Blue Bluff mapped south of Slum Slid.
index map with Knell Nook mapped east of Treed Track.

section east bit

index map with tata mapped east of Bass Bath.
index map with Lane Lax mapped east of tata.
index map with Wowed Wise Crowd Cries mapped north of Lax Lane.
index map with Thought Thief Fought Fief mapped south of Lax Lane.

section breakups

index map with Route Rough mapped west of Cried Creek.
index map with Dander Dove mapped north of Route Rough.
index map with Nil None mapped east of Dander Dove.
