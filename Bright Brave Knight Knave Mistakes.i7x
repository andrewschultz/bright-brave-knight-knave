Version 1/221007 of Bright Brave Knight Knave Mistakes by Andrew Schultz begins here.

"This tracks all the possible good guesses that are counted in Bright Brave Knight Knave."

to current-table-note-x (tn - a table name):
	current-table-note tn;

table of general good guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"slight"	"slave"	--	false	--	"You grumble about how you are a slight slave to your quest. It's therapeutic."
"shite"	"shave"	--	false	--	"This isn't the time or place to kvetch about personal grooming."

volume room stuff

table of bass bath guesses
mist-1	mist-2	mist-rule	got-yet	leet-rule	mist-txt
"has"	"hath"	--	false	--	"You conjugate old English verbs, in case this may be important in the future. It isn't right now."
"(lace|lass)"	"lath"	--	false	--	"You need no washing machine, especially not early in the game before you worked up a sweat[wrong-pron-lace]."
"place"	"plath"	--	false	--	"You mentally evaluate Sylvia Plath's poetry and her novel, [i]The Bell Jar[r][wrong-pron]."
"race"	"wrath"	--	false	--	"You get as mad as you can, as fast as you can[wrong-pron]."

to say wrong-pron-lace: if the player's command matches "lace", say "[wrong-pron]".

to say wrong-pron: say ". You also wonder if you are pronouncing things right"

table of crude crapper guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"booed"	"bapper"	--	false	--	"That'd make a decent final boss, but the main one is elsewhere."
"cooed"	"capper"	--	false	--	"You don't need someone busting caps here and now, regardless of how pleasant their voice is."
"food"	"fapper"	--	false	--	"I don't want to know what sort of Rule 34 stuff this would entail."
"lewd"	"lapper"	--	false	--	"Hey, now, not THAT crude, eh?"
"rude"	"rapper"	--	false	--	"But there are enough of them out there today, young whippersnappers who can't bother to rhyme, or even rhyme the same curse word with itself. Can't hold a candle to real trailblazers such as Ice-T or Public Enemy. Disgraceful!"
"sued"	"sapper"	--	false	--	"That would be a villain worth fighting, but no."
"strewed"	"strapper"	--	false	--	"No such contraption exists, fortunately. I think."
"wooed"	"whapper"	--	false	--	"You need no henchmen to carry out your dirty work."
"youd"	"yap er"	--	false	--	"You feel as though you want to say something about the state of these environs, but what good would it do?"

table of nil none guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bill"	"bun"	--	false	--	"You can pay for food once you're here."
"dill"	"done"	--	false	--	"This isn't a cooking sim."
"gill"	"gun"	--	false	--	"You don't need a fancy weapon."
"hill"	"hun|hon"	--	false	--	"You don't need to be attacked, or take saccharine praise, from above."
"pill"	"pun"	--	false	--	"Drug humor won't help here."
"shill"	"shun"	--	false	--	"Alas, there is nobody to reject and feel better about yourself."
"sill"	"sun"	--	false	--	"No light-giving window appears."
"spill"	"spun"	--	false	--	"Alas, no solution to your woes is created, nor does it tumble out."
"still"	"stun"	nil-none-name rule	false	--	"You do feel a bit stunned. And you will still feel a bit stunned even after you half make your way out of this fog."
"till|til"	"ton"	--	false	--	"Things are weighty enough here."

this is the nil-none-name rule:
	if sco-fill-fun is false, the rule succeeds;
	the rule fails;

table of recroom guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"seek"	"suitor"	--	false	--	"Other people are seeking suitors--platonic, perhaps, but it's your job to bring them together." [if all 3 are paired, say different. ??]

table of slid slum guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"chid"	"chum"	--	false	--	"[if boffin boy is fungible]You have no friend to chide[else]forgiveness is more the thing here[end if]."
"did"	"dumb"	--	false	--	"[if boffin boy is fungible]You don't want to reflect on the past[else]A [bkn] doesn't put people through the ringer for past mistakes[end if]."
"mid"	"mum"	--	false	--	"You don't need parental support or quiet."
"skid"	"scum"	--	false	--	"No. A good [bkn] don't look down on people like that."

table of stander stove guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"strander"	"strove"	--	false	--	"This would seem to be despairing. You can't already admit you tried but failed."

volume thing stuff

table of coughin coy boffin boy guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"offin"	"oi"	--	false	--	"That is not the life [the boy] deserves, and it's not the end he deserves, either."
"soften"	"soy"	--	false	--	"Perhaps [the boy] will be able to get the education for such a bioengineering job, if you turn things around."

table of hold hole guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bold"	"bowl"	--	false	--	"[item-guess of bold bowl]"
"cold"	"coal"	--	false	--	"[item-guess of cold coal]"
"fold"	"foal"	--	false	--	"[no-animal-sac]."
"gold"	"goal"	--	false	--	"'Sacrilege!' a voice booms. 'YOU HAVE DESERTED YOUR TRUE NATURE!'[gold-death]"
"mold"	"mole"	--	false	--	"[no-animal-sac]."
"polled"	"pole|poll"	--	false	--	"[too-rep]."
"rolled"	"role|roll"	--	false	--	"[too-rep]."
"scold"	"skoal"	--	false	--	"Discouraging a Viking feast might be brave, but it also might not be bright."
"sold"	"soul"	--	false	--	"[item-guess of sold soul]"
"told"	"toll"	--	false	--	"You are bright and brave! There is no time to wallow in a long story of prices paid and so forth. Or to listen to one."

to say too-rep:
	say "That's a bit too repetitive, ";
	if hole-progress is 3:
		say "and there's nothing more to figure out, anyway";
	else:
		say "but the general idea feels right";

to say no-animal-sac: say "The hold hole does not seek animal sacrifice, and neither should you"

to say gold-death:
	end the story saying "Po['], Pal! Mo['] Mal!";
	follow the shutdown rules;

to say item-guess of (hi - a holeitem):
	if hi is moot:
		say "The [hi] has already served its purpose.[no line break]";
	else if hi is not off-stage:
		say "You already have [the hi].[no line break]";
	else if hi is not unguessed:
		say "But you have already divined a need for [the hi].[no line break]";
	else:
		say "Yes. The [hi] must be one of the three entities that fit in the hold hole. This is good to know.[no line break]";
		let pgh be number of unguessed holeitems;
		if pgh is 1:
			say "[line break]You feel slightly energized now that you know what your (w)hole quest is.[no line break]";
			increment cur-bonus;
			follow the score and thinking changes rule;
		else if pgh is 3:
			say "[line break][i][bracket][b]NOTE:[r][i] you've figured one-third of the sacred items of your quest. You can guess them all for a bonus point, or you can get on with it. Knowing what you look for is not critical to finding it.[close bracket]";
		else:
			say "[line break]There is one more item to guess, if you want.";
		now hi is preguessed;

table of first check rhymes
mist-1	mist-2	mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
text	text	a topic	a rule	a truth state	a rule	text

Bright Brave Knight Knave Mistakes ends here.

---- DOCUMENTATION ----
