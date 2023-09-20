"Bright Brave Knight Knave" by Andrew Schultz

[use memory economy.] [pull the trigger on this if files get close to z-machine. Remember they can always be tested in glulx and compiled in z-machine.]

include Trivial Niceties by Andrew Schultz.

include Prime Pro Rhyme Row Universal by Andrew Schultz.

include Prime Pro Rhyme Row Leet Learner by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

include Prime Pro Rhyme Row E34 by Andrew Schultz.

include Bright Brave Knight Knave Definitions by Andrew Schultz.

include Bright Brave Knight Knave Globals by Andrew Schultz.

include Bright Brave Knight Knave Mistakes by Andrew Schultz.

include Bright Brave Knight Knave Tables by Andrew Schultz.

include Punctuation Stripper by Andrew Schultz.

section testing - not for release

include Bright Brave Knight Knave Tests by Andrew Schultz.

section Beta Testing - not for release

include Bright Brave Knight Knave Beta Testing by Andrew Schultz.

volume game specific stuff

this is the situational-cuing-reject rule: do nothing;

volume when play begins

when play begins:
	say "Rue rep? You? Yep!"

volume Flying Flees (intro)

book white wave

White Wave is a room in Flying Flees. "[if sco-kite-cave is false]Water is on almost every side. There must be a way out. You know a white wave brought you here, and they periodically crash around[else if bass bath is unvisited]The kite cave you involuntarily destroyed created a passage [b]DOWN[r]. You'll probably want to take it[else]The only exit is [b]DOWN[r] back to [bass bath][end if]."

from-number of white wave is 2754. to-number of white wave is 2704.

the player is in White Wave. description is "Not quite as bright and brave as ever. Your reputation took a hit. You tried to make sure you never went over the line, but ... whispers happened."

the bkbk self check rule is listed instead of the ll self check rule in the check lling rulebook.

check lling (this is the bkbk self check rule):
	if noun is player and sco-write-right-rave is true, say "You don't have any other bonus point tricks up your sleeve." instead;
	if noun is boffin boy, say "Nothing. It looks like the area around that's influencing him is what you need to deal with. Which is a relief, it having fewer letters and all." instead;
	if sassed sort is touchable:
		if noun is sassed sort or noun is location of player:
			if passed port is visited, say "Nothing. You've found everywhere the Sassed Sort can go." instead;

from-number of player is -5610. to-number of player is -2754.

check going down in White Wave:
	if sco-fight-fave is true, say "You can't shirk the final fight!" instead;
	if sco-kite-cave is false, continue the action;
	if hold hole is unexamined and number of preguessed holeitems < 3, say "You may wish to examine the hold hole you created first." instead;

chapter leet learner

the leet learner is in White Wave. "Something called a leet learner rests here.".

chapter Hold Hole

the hold hole is a rhymable. "The hold hole created when the kite cave collapsed sits here. It's divided into three and is [if hole-done is 0]empty[else if hole-done is 1]one-third full[else if hole-done is 2]two-thirds full[end if][if hold-poke]. You should probably examine it or at least try to figure out what it should hold[end if].".

description of hold hole is "It appeared when you located the kite cave. [whats-in-hold]."

check taking hold hole: say "Hole haul? Stole? Stall! (You will put things back in the hole as you find them.)" instead;

to say whats-in-hold:
	if hole-done is 0:
		say "Nothing has fit in yet";
	else:
		say "So far, you've placed [the list of in-hold holeitems] in the hold hole";
		continue the action;
	if number of carried holeitems > 0, continue the action;
	let pgh be number of preguessed holeitems;
	if pgh > 0:
		now bold-hole is true;
		say ". You know [the list of preguessed holeitems] must go in the hold hole, but you haven't found [if pgh is 1]it[else]them[end if] yet";
		now bold-hole is false;
	else if hole-progress is 0:
		say ". Perhaps you could guess what might fit in there, as a warm-up exercise"

rule for printing the name of a holeitem (called hi) when bold-hole is true: say "[b][printed name of hi in upper case][r]";

guess-table of hold hole is table of hold hole guesses.

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

a cold coal is a holeitem. "You'd assume it's just a cold coal, but perhaps it can be something more."

section bold bowl

a bold bowl is a holeitem. "It's very round and sturdy, yet as you inspect it, you feel some supernatural power flow through it."

section sold soul

a sold soul is a holeitem. description is "So ethereal. You can see through it, sort of. It looks exhausted, searching for a final resting place."

chapter hole finding items

check taking a holeitem: if noun is in white wave, say "No, [the noun] belongs in the hold hole." instead;

after printing the locale description for white wave:
	if nch is 0, continue the action;
	if number of carried blessed holeitems > 0:
		say "The hold hole shakes. Suddenly [the list of carried blessed holeitems] [if nch is 1]flies[else]fly[end if] out of your hands and take [if nch is 1]its[else]their[end if] place in the hold hole.";
		now all carried holeitems are in-hold;
		now all carried holeitems are in white wave;
	else if number of carried not blessed holeitems > 0:
		say "You sort of expected something to happen with [the list of carried holeitems], but nothing did. Perhaps what you have is not properly prepared.";
		continue the action;
	if number of holeitems in white wave is 3:
		say "[line break]The hole is completed. It cracks. You sense you must settle a score here and now.";
		moot hold hole;
		moot cold coal;
		moot sold soul;
		moot bold bowl;
	now all carried holeitems are in white wave;
	continue the action;

chapter Trite Tully

Trite Tully is a person. "[if tully-score is 2]So it's come to this. You need to figure out what to do with a (the?) Sham, Shy, the shame-artist formally known as Trite Tully. Mercy? Opprobrium? Split the difference?[else]Trite Tully stands here, [tulstill]looking confident and dismissive.[end if]". description is "Trite Tully sneers at you. You're nice and all, but Tully is DYNAMIC, man, not bothering with boring stuffy stuff like basic decency."

from-number of trite tully is 2755. to-number of trite tully is 5610.

guess-table of trite tully is the table of trite tully guesses.

to say tulstill: if tully-score is 1, say "still ";

understand "sham shy" and "sham/shy" as Trite Tully when tully-score is 2.

printed name of Trite Tully is "[if tully-score is 2]Sham, Shy[else]Trite Tully[end if]".

book bass bath

Bass Bath is a room in Flying Flees. printed name is "[if sco-pass-path is false]Bass Bath[else]Pass Path[end if]". "[if sco-pass-path is false]It's very nice here, but you are sort of on an isle and can't see any way forward. Lovely fish zoom in and out of sight too quickly to [b]EXAMINE[r], and you imagine them replying if you tickle one and say 'how do you pronounce yourself there, fella?'[else if sco-mass-math is false]Paths loop around here confusingly. There seem to be too many possibilities where to go next. Perhaps some concrete thinking would sort things out[else]You see passages to the north, west and east.[end if] You can also go back [b]DOWN[r] to White Wave."

guess-table of bass bath is the table of bass bath guesses.

from-number of bass bath is 2704. to-number of bass bath is 2704.

after printing the locale description for Bass Bath:
	if bool-hill-available is false and player has mood mapper:
		say "The mood mapper beeps. Apparently there was one path you did not calculate. It's hidden ... and it leads up!";
		now bool-hill-available is true;
		open-psg up and hailing hill;
	if bool-brew-available is false and hub-expand-score is 3:
		say "Wait! What's this? The mood mapper beeps once again! Then, surprisingly, it vaporizes! A passage you hadn't noticed before! You can go inside to what looks like a bar! Perhaps someone is really bummed there, though.";
		moot mood mapper;
		now bool-brew-available is true;
		open-psg inside and Bruising Brew;
	continue the action;

book Hailing Hill

Hailing Hill is a room in Flying Flees. "You are at the [if hill-score is 2]top[else]bottom[end if] of a hill that just makes you want to get in touch with people[if hill-score is 5], but maybe not here. You've done what you can[else if sco-mailing-mill is true]The mailing mill you summoned waits here to be operated[end if].";

from-number of hailing hill is 2854. to-number of hailing hill is 5658.

chapter mailing mill

the mailing mill is scenery. "You can probably just type the name of whomever you want to contact, and the mailing mill will do the rest."

from-number of mailing mill is 2854. to-number of mailing mill is 8562.

volume Plying Please (west)

book Rut Row

Rut Row is a room in Plying Please. "[if sco-what-whoah is false]The air looks opaque to the west. It looks impenetrable for the moment, unless you figure a crazy, surprising way through[else]You cleverly forged a way west[end if][rut-2]."

from-number of rut row is 2653. to-number of rut row is 2705.

to say rut-2:
	if sco-what-whoah is true:
		say ", and [if recruiter is unvisited]with a careful look, you see a passage north, too[else]you can go back north to the recruiter[end if]. And";
	 else:
		say "Well,";
	say " there's always back east to Pass Path"

check going west in Rut Row:
	if sco-what-whoah is false, say "Oh, man! Things just get too chokey to the west. Maybe you could find passage there, if something surprising happened." instead;

check going north in Rut Row:
	if sco-mood-mapper is false, say "You make your way north, but you are shooed by a loud voice saying 'Really! We can do better than your kind, here.' You have a feeling it's just trying to act snooty and hifalutin, but you have no proof, so you trudge back south.[paragraph break]If only you had a gauge for this sort of thing!" instead;
	if recruiter is unvisited:
		say "A voice proclaims you as perhaps not classy enough, but you're not fooled. The mood mapper helps you detect what, on reflection, is pretty lame hubris. You could've seen it easy back when you had more confidence. But you see it more fully, being more worldly-wise.";

book Slum Slid

Slid Slum is a room in Plying Please. "[if sco-rid-rum is true]You can see around a bit more clearly now. In addition to the path back east, there's somewhere you can go inside[else]It's very crowded and suspicious here. Until you get more street-savvy, you only feel like you can go back east[end if].".

guess-table of slid slum is the table of slid slum guesses.

from-number of slid slum is 2704. to-number of slid slum is 2653.

chapter coughin coy boffin boy

chapter the kid

the coughin coy boffin boy is a rhymable. "The coughin['] coy boffin boy continues to shuffle around here, mistrusting, yet wanting to trust you, with the right kind words.". description is "Terrified and meek and small. Maybe you can do him a kindness.". printed name is "coughin['] coy boffin boy".

understand "kid" as boffin boy when boffin boy is in slid slum.

guess-table of coughin coy boffin boy is the table of coughin coy boffin boy guesses.

book Crude Crapper

Crude Crapper is a room in Plying Please. "You can only really go outside here. [crapper-status].";

from-number of crude crapper is 2757. to-number of crude crapper is 2706.

to say crapper-status:
	if sco-mood-mapper is true:
		say "[if sco-nude-napper is true]You're surprised you found anything at all, really[else]You got the mood mapper, but you can mooch around for brownie points[end if]";
	else:
		say "[if sco-nude-napper is true]You've had a bit of fun, but perhaps there's something practical, here[else]Something must be at work here. You suspect you'll feel a bit silly once you figure what you're looking for[end if]"

guess-table of crude crapper is the table of crude crapper guesses.

chapter mood mapper

the mood mapper is a thing. description is "It can't offer hints like the leet learner, but maybe you can [b]MM[r] people."

book Recruiter

recroom is a privately-named room in Plying Please. It is north of Rut Row. printed name of recroom is "Recruiter". "[if cried creek is unvisited]There's a passage west to more rural areas[else]You can go west to [creek][end if]. Or you can just go back south to Rut Row.". understand "rec/recroom" as recroom when debug-state is true.

guess-table of recroom is the table of recroom guesses.

chapter recruiter

the Recruiter is scenery in recroom. "You can feel the recruiter all around, but somehow it feels like you have to ask for what you need."

from-number of recruiter is 2656. to-number of recruiter is 8119.

check going in recroom:
	unless noun is west or noun is south, continue the action;
	abide by the eeker-start-follow rule;

chapter chic shooter

the Chic Shooter is a crooty eeker. description is "A bit too cool for his own good, maybe, but his coolness may keep you in good stead through certain challenges.". matchnum of Chic Shooter is -1.

chapter meek mooter

the Meek Mooter is a crooty eeker. description is "Seems to have the word 'but' perpetually on their lips. They need encouragement, you sense, to note when things aren't quite going right.". matchnum of Meek Mooter is -2.

chapter weak wooter

the Weak Wooter is a crooty eeker. description is "Very earnest, but not very loud. Still, they may give encouragement when needed, even if -- or especially when -- someone is not fully confident they're right and any push will help.". matchnum of Weak Wooter is -3.

book spied speak cried creek

Spied Speak Cried Creek is west of recroom. it is in Plying Please. "It would be lovely to wander around here, but any direction other than back east to the Recruiter, and you might get lost.". printed name is "Spied-Speak-Cried Creek".

from-number of spied speak cried creek is 5510. to-number of spied speak cried creek is 11070.

check going east in Cried Creek:
	abide by the eeker-start-follow rule;

after printing the locale description when number of leftbehind eekers > 0:
	if took-yacht is true or mrlp is Shying Sheez, continue the action;
	say "The [list of leftbehind eekers] follow[if number of leftbehind eekers is 1]s[end if] you to [location of player].";
	if number of leftbehind eekers is 1 and number of eekers in location of player is 1:
		let rle be random leftbehind eeker;
		follow the eeker matchups rule for rle;
		continue the action;
	move-eekers (location of player);
	continue the action;

chapter fried freak

the Fried Freak is an creeky eeker. description is "A bit odd, really, with hair sticking out everywhere. But as a [this-game-noi], you know not to rely on such appearances.". matchnum of Fried Freak is -1.

chapter snide sneak

the Snide Sneak is an eeker. description is "A bit too shifty to be a long-term close friend. But as a [this-game-noi], you know they can be goaded into clever insights, if you ask right.". matchnum of Snide Sneak is -2.

chapter guide geek

the Guide Geek is an eeker. description is "Perhaps at risk of droning on too much to show how smart they are. But as a [this-game-noi], you know how to keep them focused to provide useful information to you and others.". matchnum of Guide Geek is -3.

book eeker logic and manipulation

volume Sighing Seas (north)

book Bosh Blanks

Bosh Blanks is a room in Sighing Seas. printed name is "[if sco-posh-planks is true]Posh Planks[else]Bosh, Blanks![end if]". "[if sco-posh-planks is false]It's disappointingly empty here. As-is, you can only go back south[else][planks-desc][end if]."

from-number of bosh blanks is 2706. to-number of bosh blanks is 2706.

to say planks-desc: say "There's water on pretty much all sides here. A yucky yacht [if sco-plucky-plot is true]allows you to travel, now you fixed it[else]might allow access once fixed[end if]"

chapter yucky yacht

the yucky yacht is a rhymable. it is scenery. "[if sco-plucky-plot is false]Obviously it's seen better days. Maybe you can find a way to make it serviceable[else]The people who bought this yacht would still find it yucky, but it works just fine for you[end if]."

guess-table of yucky yacht is the table of yucky yacht guesses.

from-number of yucky yacht is 2755. to-number of yucky yacht is 2804.

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

the Sassed Sort is a person. "The Sassed Sort stands here by the yacht, waiting for guidance where to sail next[if player is not in bosh blanks], or you can [b]ENTER[r] it to return to [bosh blanks][end if].". description is "Slightly disheveled, but peaceful. They seem to sense you're more considerate than the usual clientele."

from-number of sassed sort is 2804. to-number of sassed sort is 8213.

book Cast Court

Cast Court is a room in Sighing Seas. "Stuff is strewn about here[if sco-murky-map is true], but you can't imagine there's anything more valuable than the map[end if]. You can't really wander off, either. You might lose track of your yucky yacht."

from-number of cast court is 2705. to-number of cast court is 8213.

chapter perky pap

the perky pap is a rhymable in Cast Court. "Some perky pap lies about. Perhaps it can be made into something better.". description is "You try to read the perky pap, but it's all fluff and no information. Much as you hate to be all utilitarian, you really aren't in the mood for that right now.".

guess-table of perky pap is the table of perky pap guesses.

from-number of perky pap is 2753. to-number of perky pap is 2753.

section murky map

the murky map is a thing. description is "Unfortunately, you can't quite read it. You need the right tool. Nothing too fancy, you'd assume.".

book Fast Fort

Fast Fort is a room in Sighing Seas. "Here in the fort, you feel overwhelmed with thoughts rushing through your head. You sense if you went anywhere on foot, you might get lost, uh, fast."

from-number of fast fort is 2704. to-number of fast fort is 8213.

chapter CCLL

Crude Crass Lewd Lass is a rhymable in Fast Fort. "[one of]Oh dear. Someone left a copy of [ccll] here. You're not acquainted with the literature, but it can't be good. It would be better as anything else[or]The copy of [ccll] sits there, daring you to turn it into something useful[stopping], even something broken.". description is "No. No. You don't have time to read [ccll]. If you did have time to read it, you'd be better off reading the ingredients of a cereal box, or something."

understand "ccll" as crude crass lewd lass.

to say ccll: say "[i]Crude Crass Lewd Lass[r]"

guess-table of crude crass lewd lass is the table of crude crass lewd lass guesses.

from-number of crude crass lewd lass is 5459. to-number of crude crass lewd lass is 2755.

section glued glass

the glued glass is a rhymable. description is "It works pretty well, for having fallen apart a bit. It can magnify what you need."

guess-table of glued glass is the table of crude crass lewd lass guesses.

book Passed Port

Passed Port is a room in Sighing Seas. "The air is alive here with weirdness and magic. Of course, that's not surprising, since it's so hard to find[if valid vent is in port]. A pallid pent valid vent is off to the side. Maybe something is flowing through it[end if][cord-note]."

to say cord-note: if clashing cord is in passed port, say ". A clashing cord [if sco-salad-scent is false]hangs down from it[else]has fallen to the ground, too[end if]"

from-number of passed sort is 2804. to-number of passed sort is 8213.

chapter slime slowed rime road

the slime slowed rime road is a rhymable in Passed Port. it is scenery. "[if sco-time-toad is true]You regard the road with reverence. You'll never look at slime the same way again![else]Well, it's not something you feel comfortable touching. Who knows what secrets it might hide, though?[end if]"

guess-table of rime road is the table of rime road guesses.

from-number of slime slowed rime road is 5460. to-number of slime slowed rime road is 2704.

chapter pallid pent valid vent

the pallid pent valid vent is a rhymable in Passed Port. it is scenery. "There's some air flow here. It probably isn't toxic, or if it was, it would've killed you already."

from-number of pallid pent valid vent is 5558. to-number of pallid pent valid vent is 2755.

guess-table of valid vent is table of pallid pent valid vent guesses.

section salad sent

the salad sent is a thing. description is "Oh, man! What a salad it is! All sorts of vegetables you recognize and all sorts you don't!"

chapter posh pick

the posh pick is a thing in passed port. "A posh pick is buried in the slime-slowed rime road.". description is "It looks very pricey. It seems monogrammed with the letters S S. Hmm."

from-number of posh pick is 2704. to-number of posh pick is 5510.

chapter clashing cord

the clashing cord is a rhymable in passed port. it is scenery. "It doesn't really fit aesthetically with the vent. Or here at all, really. And it doesn't seem useful to you, either. What could it become?"

guess-table of clashing cord is the table of clashing cord guesses.

from-number of clashing cord is 2904. to-number of clashing cord is 2905.

chapter slashing sword

the slashing sword is a trystitem. vaguedesc is "a weapon, probably for defense". description is "The slashing sword feels right for you. You sense it should be used for defense, not offense."

guess-table of slashing sword is the table of clashing cord guesses.

volume Trying Trees (south)

book Treed Track

Treed Track is a room in Trying Trees. "[if sco-need-knack is false]You just can't make your way through this forest! Having a method to would help[else]With your friends['] help, you've figured there are passages west, east and up[end if]. You can, of course, always go back north to Pass Path."

the seed sack is a thing. description is "Instead of discussing what plants the seeds grow, the sack emphasizes the importance of meaningful interpersonal communication. How could seeds help with that?"

book Too Tough Blue Bluff

Too Tough Blue Bluff is a room in Trying Trees. "It's not, like, actually blue here. Except for the sky. But it sure is bleak. [if sco-stew-stuff is false]A deserted campground--perhaps if you knew what to look for, and you could steel yourself properly, you could find what you need[else]You've looted the campground. There's nothing more to do here[end if]. You can go back east to Treed Track. You'd probably get lost wandering anywhere else.". printed name is "Too-Tough Blue Bluff".

from-number of too tough blue bluff is 5360. to-number of too tough blue bluff is 2705.

guess-table of blue bluff is the table of stew stuff guesses.

check lling bluff when player has stew stuff:
	say "Nothing, but the stew stuff...";
	try lling stew stuff instead;

chapter stew stuff

The stew stuff is a rhymable. description is "Mmm. All manner of meat and mushrooms and seasoning. Good enough to eat now without cooking. Alas, you have no can opener. Perhaps you will find someone who does. And who can cook it, too!"

from-number of stew stuff is 2705. to-number of stew stuff is 2654.

guess-table of stew stuff is the table of stew stuff guesses.

book Lack Light Black Blight

Lack Light Black Blight is a room in Trying Trees. printed name is "[if blight-score < 3]Lack-Light Black Blight[else]Sack Site[end if]". "The only way back is down. [if blight-score < 3]You feel unseen forces backbite, smack, smite, both verbally and physically. Perhaps you need to show you can take abuse without surrendering to it[else]This is a sack site now, with sacks you don't need. Perhaps one day a decent shack will be built here ... nah[end if]."

from-number of lack light black blight is 5461. to-number of lack light black blight is 10923.

after printing the locale description when player is in Black Blight and rack right is off-stage and blight-score >= 3 (this is the rack right discovery rule):
	if fried freak is followish:
		check-rack-right;
	else:
		say "There's got to be something under those sacks, though your skill set isn't miscellaneous enough to find it.";
	continue the action;

The rack right discovery rule is listed last in after printing the locale description.

chapter rack right

the rack right is a thing. printed name is "rack, right". description of rack right is "It just looks and feels right, both the shape and texture, and that you should have it. You suspect it'll be important in some ritual somewhere.".

chapter sour slate

the sour slate is a rhymable. "A sour slate lies here, pushing you away in its current form.". description is "Whew! You feel the negativity bouncing off it. It's good at repelling stuff, but maybe it's a bit too good in its current form. You know the difference between good defense and defensiveness? The sour slate doesn't."

guess-table of sour slate is the table of sour slate guesses.

from-number of sour slate is 2705. to-number of sour slate is 2755.

chapter power plate

the power plate is a trystitem. description is "Surprisingly lightweight but sturdy armor.". vaguedesc is "replacement armor".

guess-table of power plate is table of sour slate guesses.

book Knell Nook

Knell Nook is a room in Trying Trees. "This certainly is a nook, having only a passage back west. You [knell-txt]."

from-number of knell nook is 2754. to-number of knell nook is 2704.

to say knell-txt:
	if sco-covering-candle is true:
		say "performed a ritual, so there's not much else to do here";
	else:
		say "[if sco-bell-book is true]got the bell and the book for the ritual, but you need more[else]may have to summon ritual materials[end if]. Also, there's a hovering handle floating about, which seems odd"

chapter covering candle

the hovering handle is scenery in knell nook. "The handle hovers in mid-air. It doesn't seem to be opening anything."

from-number of hovering handle is 2906. to-number of hovering handle is 2906.

volume Lying Leas (east)

book Tall Tank(s)

tata is a privately-named room in Lying Leas. printed name is "Tall Tank(s)". understand "tata" as tata when debug-state is true. "You can go back west to Pass Path, [if sco-yall-yank is false]but a tall tank blocks the way east. It might be tanks. But perhaps it is easier to think: one tank at a time[else]and tall tanks you pushed aside allow passage east[end if]."

chapter tall tanks

the tall tanks are plural-named scenery in tata. "They're tall! They look like they could be moved, but not on your own.".

understand "tall tank" and "tank" as tall tanks.

check lling tata:
	try lling tall tanks;

from-number of tall tanks is 2704. to-number of tall tanks is 2704.

check lling tata when sco-yall-yank is true and sco-paul-panks is false:
	say "You think of the tanks as tanks, here...";

chapter ardor elm

the ardor elm is a thing. "[if game-elm-seen is false]Your friends escort you over somewhere out of the way. 'Look! An ardor elm! Just for you! We're sure you'll find what you want.[else]The ardor elm your friends showed you stands here. [elm-status][end if].". description is "[if sco-harder-helm is false]Given how things are here, it's very important what kind of tree it is, you suspect[else]You admire the ardor elm both for its intrinsic beauty and its gift of the harder helm[end if]."

from-number of ardor elm is 2753. to-number of ardor elm is 2804.

to say elm-status:
	say "[if game-elm-seen is false]Perhaps it holds something[else]You would appreciate it even without what you got from it[end if]"

chapter harder helm

the harder helm is a trystitem. description is "So lightweight, you don't even feel it on your head.". vaguedesc is "replacement head protection".

book Lane Lax

Lane Lax is a room in Lying Leas. printed name is "[if sco-train-tracks is false]Lane, Lax[else][mama]Train Tracks[end if]". "[if sco-main-max is true]The train tracks lead somewhere that's actually somewhere to the north and south[else if sco-train-tracks is true]The train tracks lead north or south to goodness knows where, but right now, this region feels too out-of-the-way[else]It's pretty barren here. There doesn't seem to be any way for people to arrive or leave here efficiently[end if][if broad brash clod clash is in lane lax].[paragraph break]Oh! There's a broad brash clod clash going on here that you probably need to break up, some way[end if].[paragraph break]Of course, you can always just go back west, too."

from-number of lane lax is 2703. to-number of lane lax is 5461.

to say mama: if sco-main-max is true, say "Main Max "

check going in Lane Lax:
	if noun is not west and sco-train-tracks is false, say "Back west is the only way. For now." instead;

[??the train tracks are not all they could be, and they do not lead all the places they could]

chapter broad brash clod clash

The broad brash clod clash is scenery. "Sheesh. A bunch of clods. Loud. Un-self-aware. There's got to be a way to break it up nonviolently."

chapter odd ash

the odd ash is a thing. description is "It's bound together by some sort of translucent gelatinous ball that's surprisingly sturdy. You wonder what it could've been, and feel oddly enough that you could find what it was, if only you found the right instrument."

chapter pain packs

the pain packs are a plural-named trystitem. description is "They look like they could really heal some serious hit points, if that's how health is tracked here. This isn't an RPG, but you never know.". vaguedesc is "something to heal you if you get a scratch".

book Ow'ed Eyes / Crowd Cries

OECC is a room in Lying Leas. "An invisible crowd roars at debates heard and unheard. [if sco-loud-lies is true]You've proven your worth and have nothing to do here[else]As much as you hate getting sucked into arguments, you recognize this is the sort of place where you might win a reward for winning one. It's worth a try[end if]. The only exit is south.". printed name is "Ow'ed Eyes, Crowd Cries".

from-number of OECC is 5459. to-number of OECC is 2754.

the crowd cries are scenery in OECC. understand "owed/eyes" and "owed eyes" as crowd cries when player is in OECC.

chapter proud prize

the proud prize is a thing. description is "It appears the original recipient had their name rubbed off. If you squint very closely, you see S S."

book Thought Thief Fought Fief

Thought Thief Fought Fief is a room in Lying Leas. printed name is "[if sco-wrought-reef is false]Thought-Thief-Fought Fief[else]Wrought Reef[end if]". "[if sco-done-dish is true]The one-wish fun fish has left. It's idyllic here. So idyllic, there's nothing to do[else if sco-wrought-reef is true]The old evil village is gone, and a more idyllic reef remains[else if thief-score < 2]Here is a dark village, full of suspicion and double-talk. Perhaps being less than honest is a survival strategy here[else]You are alone here, in a dark village, but you sense it could become much more in tune with nature[end if]. The only way back is north."

from-number of thought thief fought fief is 5659. to-number of thought thief fought fief is 5659.

chapter one wish fun fish

there is a rhymable called the one wish fun fish. "A one-wish fun fish blups about in one of the watery tanks here. It looks intelligently at you, as if expecting you to ask for something. Maybe you can guess what.". description is "It blups back at you wordlessly.". printed name is "one-wish fun fish".

guess-table of wish fun fish is the table of one wish fun fish guesses.

from-number of wish fun fish is 5308. to-number of wish fun fish is 2704.

book Bruising Brew

Bruising Brew is a room in Flying Flees. "This is a seedy bar that pretends to thrive on its seediness. You'd have found it very exciting once and felt bad you couldn't be exciting enough for it. You know better now.".

guess-table of bruising brew is the table of bruising brew guesses.

from-number of bruising brew is 2904. to-number of bruising brew is 5606.

chapter the two faces of Lou (not-Christie)

Losing Lou is a person in Bruising Brew. "[one of]Someone is slouched off in the corner, frowning. You wonder if you should introduce yourself. You wait a bit. Yes, why not? He introduces himself as Losing Lou. He seems bummed about many things[or]Losing Lou sits here, pensively--well, he thinks so, but it's a bit worse than that[stopping].". description is "Very very frowny. You need to help cheer Lou up!".

from-number of losing lou is 2803. to-number of losing lou is 5606.

section learning lou

Turning to Learning Lou is a person. "Turning-to-Learning Lou stands here pensively. He is still looking for a name for his brilliant book about coping. What could it be?". description is "Lou seems happy with whatever new knowledge he's gotten from you, even if it isn't profound. He just needs insight into his book title, now!" [more bytes saved this way]

guess-table of Learning Lou is the table of spurning spew guesses.

from-number of turning to learning lou is 5755. to-number of turning to learning lou is 2904.

chapter spurning spew

Spurning Spew is a proper-named trystitem. description is "It's the book that Lou gave you. Man, it's pretty thick. It could help you defend yourself in more ways than one.". vaguedesc is "a replacement shield".

guess-table of spurning spew is the table of spurning spew guesses.

volume miscellaneous eeker manipulation

book eeker cheats

chapter cheatchopping

cheatchopping is an action out of world.

understand the command "cheat chop" as something new.
understand the command "chop cheat" as something new.

understand "cheat chop" as cheatchopping.
understand "chop cheat" as cheatchopping.

carry out cheatchopping:
	say "The sweet-swap option is [if opt-sweet-swap is false]now[else]already[end if] off.";
	now opt-sweet-swap is false;
	now know-sweet-swap is true;
	the rule succeeds;

chapter sweetswaping

sweetswaping is an action out of world.

understand the command "sweet swap" as something new.
understand the command "swap sweet" as something new.

understand "sweet swap" as sweetswaping.
understand "swap sweet" as sweetswaping.

carry out sweetswaping:
	say "The sweet-swap option is [if opt-sweet-swap is false]now[else]already[end if] on.";
	now opt-sweet-swap is true;
	now know-sweet-swap is true;
	let npe be number of pairedyet eekers;
	if npe is 6, the rule succeeds;
	if npe is 0:
		if zero-swap-warn is false:
			say "[line break][i][bracket][b]NOTE:[r][i] setting this option doesn't make things easier until you pair two friends together.[close bracket][r]";
			now zero-swap-warn is true;
	else if below-six-swap-warn is false:
		say "[i][bracket][b]NOTE:[r][i] friends you haven't paired together yet won't be quickly accessible for certain puzzles.[close bracket][r]";
		now below-six-swap-warn is true;
	the rule succeeds;

book printing their appearance

for printing a locale paragraph about an eeker (called ee):
	if ee is mentioned, continue the action;
	if number of eekers in location of player is 1:
		say "The [ee] shuffles around here, seemingly glad to follow you, but also a bit lonely.";
	else:
		say "The [list of eekers in location of player] hang together here, chatting with each other but ready to help when needed.";
	now ee is mentioned;
	now other-guy of ee is mentioned;

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

chapter Plying Please

recruiting is an action applying to one number.

understand "r [number]" as recruiting when r-warn-yet is true.

carry out recruiting:
	if number understood > 3 or number understood < 1, say "You need to pick 1, 2 or 3." instead;
	if number of pairedyet eekers is 2 and number understood > 1, say "I can't deduce the next pair you'd like to enlist. There are two more." instead;
	if mrlp is Shying Sheez, say "You can't call on anyone when you're stuck here!" instead;
	if number of fungible eekers > 0:
		let er be a random fungible eeker;
		if matchnum of er is number understood, say "But you've already got [list of fungible eekers] here!" instead;
		sideline-eekers;
		say "Dismissing [list of fungible eekers]...[paragraph break]";
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
			if matchnum of xx < 0:
				let pairindex be (number of pairedyet eekers) / 2;
				now matchnum of xx is pairindex;
				now matchnum of og is pairindex;
			say "You recall [the xx] and [the og].";
			if player is not in recroom, move player to recroom;
			move xx to recroom;
			move og to recroom;
			now xx is followish;
			now og is followish;
			if player is in passed port or player is in cast court or player is in fast fort, move sassed sort to bosh blanks;
			the rule succeeds;

this is the cheat-bonus rule:
	if number of pairedyet eekers is 4:
		increment cur-bonus;
		now r-shortcut-got is true;
		say "You try to be a bit sneaky. You recognize, by process of elimination, that there can only be one person left to recruit both in the creek and in the office proper. So you wonder if you can, just, you know, call them up without knowing who they are. It's a nice idea, nice enough to deserve a bonus point as a possible loophole, but you'll have to figure who you want.";

volume parsing

after reading a command:
	abide by the punctuation-munge rule;

volume meta verbs

book taking inventory

to say note-bless:
	if nbh < nch, say ". However, [the list of carried not blessed holeitems] seem[if nch - nbh is 1]s[end if], well, not perfect, yet"

check taking inventory when lack list is not off-stage:
	let nci be number of things carried by the player;
	if nci > 1: [technically we must check if trystitems are available, but since we can't get them until we have a lot of items ... forget it]
		say "You are carrying:[line break]";
	now all carried things are marked for listing;
	now lack list is unmarked for listing;
	now all trystitems are unmarked for listing;
	now all holeitems are unmarked for listing;
	list the contents of the player, with newlines, indented, with extra indentation, listing marked items only;
	if nch is 0 and hole-done < 3:
		say "You don't have any [if hole-done > 0]additional [end if]items that fit in the hold hole.";
	else:
		say "So far, you've found [the list of carried holeitems] to fit in the hold hole[note-bless].";
	if nci > 1, say "[line break]";
	if lack list is moot:
		say "You got all the items on [the lack list]: [the list of trystitems].";
	else if player has lack list:
		if trystcount is 0:
			say "You haven't found anything on [the list] yet.";
		else:
			say "So far, from [the list], you've found [the list of carried trystitems].";
	the rule succeeds;

book abouting

carry out abouting:
	say "[this-game] is the sixth entry in the [pprr] series. You do not need experience with [series-names] to get through successfully.";
	say "[line break]It came about while I figured 'haha, I've overdone the concept, but what if?' And I had some ideas. But I wanted to do more. I wanted to give you NPCs.";
	say "[line break]I had a month-or-so desert after doing a lot of technical tests, so the story may not have the polish it could, for the comp. But I stand by the work, and the jokes.";
	say "[line break]I welcome bug reports, big or small, as well as transcripts. [this-game]'s repository is at https://github.com/andrewschultz/bright-brave-knight-knave/issues. Transcripts sent to my email blurglecruncheon@gmail.com are also appreciated.";
	the rule succeeds;

book creditsing

carry out creditsing:
	say "Thanks to ClubFloyd for testing this game so well!";
	say "[line break]Thanks to Zarf for his Python scripts that helped me regression-test.";

book optsing

carry out optsing:
	if guide-gong-warn is true, say "[2da][b]GUIDE GONG[r] will restrict you from solved rooms, [b]PRIDE PRONG[r] will notify you of rooms with just bonus points left, and [b]STRIDE STRONG[r] will remove these bumpers. Currently this is set to [b][if player-room-allow-threshold is bonus-left]PRIDE PRONG[else if player-room-allow-threshold is bonus-left]GUIDE GONG[else]player-room-allow-threshold is bonus-left[end if][r].";
	if player has leet learner, say "You can [b]READ[r] the leet learner for options there.";
	if know-sweet-swap is true, say "You can [b]SWEET SWAP[r] to swap companions in and out without going back to the recruiter and creek. This speeds the game up a bit.";
	the rule succeeds;

book verbsing

carry out verbsing:
	say "[this-game] doesn't have many custom verbs that are used regularly. In fact, many standard verbs such as [b]PUSH[r] and [b]PULL[r] are disabled, and [b]CLIMB[r] or [b]ATTACK[r], for instance, have minimal implementation. This is to help you focus on certain phrases you need to guess to advance.";
	say "[line break]The four cardinal directions and [b]UP[r] are used, as well as [b]X[r] or [b]EXAMINE[r]. [b]READ[r] may provide different output. Use [b]I[r] to take inventory as well. The four ";
	say "[line break]Useful meta-verbs: [b]OPTS[r] gives game options, and [b]META[r] gives general information commands.";
	the rule succeeds;

report verbsing:
	if r-warn-yet is true and pairs-used < 3:
		say "You can say [b]BYE[r] to get rid of a friend pair.";
		repeat with XX running through creeky eekers:
			if XX is finished or XX is dormant, next;
			let og be other-guy of XX;
			if og is dormant, next;
			say "You can also say [b]R [matchnum of XX][r] to resummon the [XX] and [og].";

book xyzzying

carry out xyzzying:
	say "A mean note scribbled 'Too Marty Stu, Smarty,' with a caricature of you on it, floats down and goes POOF before you realize it isn't very gender-inclusive.";

volume standard and action verbs

chapter ting

ting is an action applying to thing.

understand the command "t" as something new.

understand "t [something]" as ting.

carry out ting:
	if noun is the player, say "'Be back, Me! ... Mac?'" instead;
	if noun is chic shooter, say "'[if chic shooter is pairedyet]Oh, man, me and the Fried Freak are gonna be the ultimate buddy cop team! Just don't you be the Sergeant who yells too loud at us[else]Man, I'd love to have a friend who is undercover cool[end if].'" instead; [recruiter]
	if noun is meek mooter, say "'[if meek mooter is pairedyet]Geez, I hope I can help the Snide Sneak out. Maybe they will help me take those shortcuts I talk myself out of[else]It's pretty cool to be able to sort out the details in braver people's plans, I think. When I get the chance[end if].'" instead;
	if noun is weak wooter, say "'[if weak wooter is pairedyet]I'm happier than I look and sound to have met the Guide Geek! They know so much[else]I don't know if I deserve a friend full of knowledge and wisdom because I might not praise them enthusiastically enough. But I'd like to try[end if]!'" instead;
	if noun is fried freak, say "'[if fried freak is pairedyet]Wow, man, the Chic Shooter is really cool! They might help me be less uncool but still be me and use my special talents, whatever they are[else]Boy, I could use someone to help me be less uncool. I have talents I'm pretty sure. They're just weird ones[end if]!'" instead; [cried creek]
	if noun is guide geek, say "'[if guide geek is pairedyet]Hey wow thanks for finding a friend who's properly impressed by me! I'll be showing them a lot of plans[else]Sure would be nice if you could find someone who finds my wisdom great[end if].'" instead;
	if noun is snide sneak, say "'[if snide sneak is pairedyet]Hey, this pal you found for me seems to be good at filling in details[else]People say I could use a little humility and caution, but really, I'd just like a friend to delegate that to[end if].'" instead;
	if noun is boffin boy, say "He has probably had enough of lectures." instead; [west]
	if noun is mailing mill, say "You can just request whomever you need." instead;
	if noun is losing lou, say "Losing Lou doesn't need small talk right now but answers." instead; [center]
	if noun is learning lou, say "Lou need something specific--the right name for that new book." instead;
	if noun is fun fish, say "It says nothing but looks at you ... hungrily?" instead; [east]
	if noun is broad brash clod clash, say "Interrupting their fight with words won't help." instead;
	if noun is crowd cries, say "Casual chat won't work. You need to be more forceful." instead;
	if noun is sassed sort, say "The Sassed Sort does look a bit weary. Perhaps you should just point out where to go." instead; [north]
	if noun is valid vent, say "You hear an old echo and think 'Hold, heck, oh.' But no gold gecko scrambles out, for better or worse." instead;
	if noun is trite tully, say "[if tully-score is 2]You just need to find the final phrase[else]Conversation won't change Tully's mind[end if]." instead; [finale]
	say "Silence back." instead;
	the rule succeeds;

volume distraction rooms

book Nil None

Nil None is a room in Shying Sheez. printed name is "[if sco-fill-fun is false]Nil, None[else]Still Stun[end if]". description is "[if nil-score is 0]Bummer! You don't feel like going anywhere. You need to mope, or find a way to stop moping. Whichever[else if nil-score is 1]You see a possible way out. But not yet[else]Now you've dug a way out of your mental rut, it seems like you could just leave any which way. [nilstuff][end if]."

to say nilstuff:
	if nil-score is 3:
		say "You've shaken everything off, after all";
	else:
		say "There's something more to shake off, but you feel like you don't have to deal with it"

check going in Nil None:
	if sco-fill-fun is false, say "You have momentarily lost all sense of joy, or all hope to find it. Why bother to look?" instead;
	if nil-score is 1, say "You've regained some fun, but you feel a bit frivolous. You need a philosophical revelation, general or colloquial." instead;
	if nil-score < 3, max-down;
	say "You walk out of nowhere to ... somewhere. Somewhere familiar! The place you last were!";
	move player to pre-hole-item-room;

guess-table of Nil None is  the table of nil none guesses.

book Dander Dove

Dander Dove is a room in Shying Sheez. printed name is "Dander, Dove". "[dander-detail]."

from-number of dander dove is 2804. to-number of dander dove is 8514.

dander-list is a list of text variable. dander-list is { "cold", "small", "fraudulent" }.

to say dander-detail:
	let ned be number of entries in dander-list;
	if ned is 0:
		say "You've got a feel for the randomness by now";
	else:
		say "Ugh! Another place walking aimlessly! You feel [dander-list][if ned is 1], though two out of three bad things shook off isn't bad[end if]";
	if ned <= 1, say ". You're confident you'll find a way out, whichever way you go"

check going in Dander Dove:
	if dander-score < 2, say "You're still in enough of a dander you can't let go and move on, yet." instead;
	if dander-score is 2, max-down;
	say "Your mind lighter, you wander off back to where you were...";
	move player to pre-hole-item-room instead;

guess-table of Dander Dove is the table of Dander Dove guesses.

book Rough Route

Route Rough is a room in Shying Sheez. "Man! You [if route-rough-score is 3]did everything you can here. Just go any direction to leave[else if route-rough-score is 2]can probably leave, but if you're the sort to nail things down, great[else if route-rough-score is 1]have made some mental headway but would like to do more[else]sure feel bummed. Once again, you need to organize your thoughts[end if].". printed name is "[if route-rough-score < 2]Route, Rough[else]Out, Uff![end if]"

from-number of route rough is 2755. to-number of route rough is 8163.

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

volume auxiliary rules for general PPRR commands

rule for supplying a missing noun when lling (this is the get readings from room rule):
	say "You scan the area[one of]. This will suffice most of the time, though you may wish to [b]LL[r] a thing that doesn't jibe with its rhymes[or][stopping].";
	if player is in recroom:
		now noun is recruiter;
	else if player is in tata:
		now noun is tall tanks;
	else if player is in cast court or player is in fast fort or player is in passed port:
		now noun is location of player;
	else:
		abide by the general-ll-locations rule;
		reject the player's command;

volume gong rules and files

this-gong-rule of White Wave is the everything-left gong rule.

this-gong-rule of Bass Bath is the bass-bath-gong rule.

this is the bass-bath-gong rule:
	if number of carried trystitems is 5, completed;
	uncompleted;

this-gong-rule of Hailing Hill is the hailing-hill-gong rule.

this is the hailing-hill-gong rule:
	if hill-score is 6, completed;
	uncompleted;

this-gong-rule of Rut Row is the rut-row-gong rule.

this is the rut-row-gong rule:
	if sco-what-whoah is true, completed;
	uncompleted;

this-gong-rule of Slid Slum is the slid-slum-gong rule.

this is the slid-slum-gong rule:
	if sco-rid-rum is true, completed;
	uncompleted;

this-gong-rule of Crude Crapper is the crude-crapper-gong rule.

this is the crude-crapper-gong rule:
	if sco-mood-mapper is false, uncompleted;
	if sco-nude-napper is false, llp-remaining;
	completed;

this-gong-rule of recroom is the recroom-gong rule.

this is the recroom-gong rule:
	if eekers-done, completed;
	uncompleted;

this-gong-rule of Spied Speak Cried Creek is the spied-speak-cried-creek-gong rule.

this is the spied-speak-cried-creek-gong rule:
	if sco-harder-helm is false, uncompleted;
	completed;

this-gong-rule of Bosh Blanks is the bosh-blanks-gong rule.

this is the bosh-blanks-gong rule:
	if sco-passed-port is false, uncompleted;
	completed;

this-gong-rule of Cast Court is the cast-court-gong rule.

this is the cast-court-gong rule:
	if sco-murky-map is false, uncompleted;
	completed;

this-gong-rule of Fast Fort is the fast-fort-gong rule.

this is the fast-fort-gong rule:
	if sco-glued-glass is false, uncompleted;
	completed;

this-gong-rule of Passed Port is the passed-port-gong rule.

this is the passed-port-gong rule:
	if sco-time-toad is false or pick-score < 2, uncompleted;
	if sco-mime-mode is false, llp-remaining;
	completed;

this-gong-rule of Treed Track is the treed-track-gong rule.

this is the treed-track-gong rule:
	if sco-heed-hack is false or sco-seed-sack is false, uncompleted;
	if sco-plead-plaque is false, llp-remaining;
	completed;

this-gong-rule of Too Tough Blue Bluff is the too-tough-blue-bluff-gong rule.

this is the too-tough-blue-bluff-gong rule:
	if sco-stew-stuff is false, uncompleted;
	completed;

this-gong-rule of Lack Light Black Blight is the lack-light-black-blight-gong rule.

this is the lack-light-black-blight-gong rule:
	if sco-power-plate is false, uncompleted;
	if blight-score is 3, llp-remaining;
	completed;

this-gong-rule of Knell Nook is the knell-nook-gong rule.

this is the knell-nook-gong rule:
	if sco-covering-candle is false, uncompleted;
	completed;

this-gong-rule of tata is the tata-gong rule.

this is the tata-gong rule:
	if sco-yall-yank is false, uncompleted;
	if sco-paul-panks is false, llp-remaining;
	completed;

this-gong-rule of Lane Lax is the lane-lax-gong rule.

this is the lane-lax-gong rule:
	if sco-trod-trash is false, uncompleted;
	completed;

this-gong-rule of OECC is the oecc-gong rule.

this is the oecc-gong rule:
	if sco-loud-lies is false, uncompleted;
	completed;

this-gong-rule of Thought Thief Fought Fief is the thought-thief-fought-fief-gong rule.

this is the thought-thief-fought-fief-gong rule:
	if sco-done-dish is false, uncompleted;
	completed;

this-gong-rule of Bruising Brew is the bruising-brew-gong rule.

this is the bruising-brew-gong rule:
	if sco-spurning-spew is false, uncompleted;
	completed;

[this-gong-rule of Nil None is the nil-none-gong rule.

this is the nil-none-gong rule:
	if nil-score < 2, uncompleted;
	if nil-score is 2, llp-remaining;
	completed;

this-gong-rule of Dander Dove is the dander-dove-gong rule.

this is the dander-dove-gong rule:
	if dander-score < 2, uncompleted;
	if dander-score is 2, llp-remaining;
	uncompleted;

this-gong-rule of Route Rough is the route-rough-gong rule.

this is the route-rough-gong rule:
	if route-rough-score < 2, uncompleted;
	if route-rough-score is 2, llp-remaining;
	uncompleted;]

volume endgame

to say wr: say "[b]WRITE/RIGHT RAVE[r]"

this is the show-misses rule:
	if sco-write-right-rave is false:
		say "You could have tried to [wr] to flatter me.";
	else if got-rave-bonus is false:
		say "You decided to [wr] too soon.";
	if sco-eyeing-eying-ease is false:
		say "You could have noted a pattern with the regions in the status line and tried [b]EYEING EASE[r].";
	if r-shortcut-got is false:
		say "You could have been a bright knave and said [b]R 3[r] once you'd paired two groups of friends, whether you knew their names or not.";
	if got-hole-bonus is false:
		say "You didn't guess the [the list of unguessed holeitems] before finding [if number of unguessed holeitems is 1]it[else]them[end if].";
	if sco-nude-napper is false:
		say "You could have told a [b]NUDE NAPPER[r] to be more modest in the Crude Crapper.";
	flag-missed nil none;
	flag-missed route rough;
	flag-missed black blight;
	flag-missed dander dove;
	if sco-mime-mode is false:
		say "You didn't enter [b]MIME MODE[r] in Passed Port.";
	if sco-paul-panks is false:
		say "You didn't take a moment to remember [b]PAUL PANKS[r] in Tall Tank(s).";
	if sco-plead-plaque is false:
		say "You didn't find the [b]PLEAD PLAQUE[r] in Treed Track.";
	if sco-jack-gist is false:
		say "You could have tried to [b]JACK GIST[r] for a shorter command to read [the list].";

volume mapping stuff

section Plying Please/Flying Flees (intro and west)

index map with Rut Row mapped west of Bass Bath.
index map with Slid Slum mapped west of Rut Row.
index map with recroom mapped north of Rut Row.
index map with Slid Slum mapped north of White Wave.
index map with Crude Crapper mapped west of Slid Slum.
index map with White Wave mapped south of Crude Crapper.
index map with Hailing Hill mapped north of recroom.
index map with Bruising Brew mapped northeast of Bass Bath.

section Sighing Seas (north)

index map with Bosh Blanks mapped north of Bass Bath.

index map with Cast Court mapped north of Bosh Blanks.
index map with Fast Fort mapped east of Cast Court.
index map with Passed Port mapped east of Fast Fort.

section Trying Trees (south)

index map with Treed Track mapped south of Bass Bath.
index map with Too Tough Blue Bluff mapped south of Slum Slid.
index map with Knell Nook mapped east of Treed Track.

section Lying Leas (east)

index map with tata mapped east of Bass Bath.
index map with Lane Lax mapped east of tata.
index map with OECC mapped north of Lax Lane.
index map with Thought Thief Fought Fief mapped south of Lax Lane.

section Shying Sheez (interlude)

index map with Route Rough mapped west of Cried Creek.
index map with Dander Dove mapped north of Route Rough.
index map with Nil None mapped east of Dander Dove.
