Version 1/221007 of Bright Brave Knight Knave Mistakes by Andrew Schultz begins here.

"This tracks all the possible good guesses that are counted in Bright Brave Knight Knave."

to current-table-note-x (tn - a table name):
	current-table-note tn;

[Items that I found nothing for:
ARDOR ELM
HOVERING HANDLE
Rooms I found nothing for:
CAST COURT/FAST FORT/PAST PORT
]

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

table of bruising brew guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"choosing"	"chew"	--	false	--	"[if losing lou is moot]You think what a lovely bubble gum shop this would make![else if sco-boozing-boo is true]After helping Lou kick alcohol, you recommend that? Ouch![else]Trading alcohol for tobacco would just be a lateral move.[end if]"
"rusing"	"roo|rue"	--	false	--	"No sneaky kangaroo appears, which is probably for the better."

table of crude crapper guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"booed"	"bapper"	--	false	--	"That'd make a decent final boss, but the main one is elsewhere."
"clued"	"clapper"	--	false	--	"You don't need someone applauding in the background, whether or not they do so at the right time, with or without prompts. That's not the way of a [bkn]."
"cooed"	"capper"	--	false	--	"You don't need someone busting caps here and now, regardless of how pleasant their voice is."
"food"	"fapper"	--	false	--	"I don't want to know what sort of Rule 34 stuff this would entail."
"lewd"	"lapper"	--	false	--	"Hey, now, not THAT crude, eh?"
"rude"	"rapper"	--	false	--	"But there are enough of them out there today, young whippersnappers who can't bother to rhyme, or even rhyme the same curse word with itself. Can't hold a candle to real trailblazers such as Ice-T or Public Enemy. Disgraceful!"
"screwed"	"scrapper"	--	false	--	"You don't need to judge someone who picks meaningless fights, and you don't want to diss someone who maybe doesn't mave much potential."
"snood"	"snapper"	--	false	--	"You don't always remember what a snood is, but you're pretty sure none need to be snapped."
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

table of dander dove guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"strander"	"strove"	--	false	--	"This would seem to be despairing. You can't already admit you tried but failed."

volume thing stuff

table of clashing cord guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"flashing"	"ford"	--	false	--	"No bridge across a river, or car, or intergalactic space traveler whizzes by."

table of coughin coy boffin boy guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"offin"	"oi"	--	false	--	"That is not the life [the boy] deserves, and it's not the end he deserves, either."
"soften"	"soy"	--	false	--	"Perhaps [the boy] will be able to get the education for such a bioengineering job, if you turn things around."

table of crude crass lewd lass guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"booed"	"bass"	--	false	--	"You don't want to get sea bass irritable."
"brewed|brood"	"brass"	--	false	--	"[if player has power plate]You already have much better armor[else]The armor on [the lack list] probably needs to be stronger than brass[end if]."
"mood|mooed"	"mass"	--	false	--	"You'd be kind of creeped out to hear something inanimate start making morose cow noises."
"poohed"	"pass"	--	false	--	"You think you see an exit out, but nah, it's just get you more lost."
"sued"	"sass"	--	false	--	"How very anti-freedom of speech and unlike a Bright Brave Knight Knave!"
"tude"	"tass"	--	false	--	"You're already in the text adventure spirit."

table of hold hole guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bold"	"bowl"	--	false	trivially false rule	"[item-guess of bold bowl]"
"cold"	"coal"	--	false	trivially false rule	"[item-guess of cold coal]"
"fold"	"foal"	--	false	trivially false rule	"[no-animal-sac]."
"gold"	"goal"	--	false	trivially false rule	"'Sacrilege!' a voice booms. 'YOU HAVE DESERTED YOUR TRUE NATURE!'[gold-death]"
"mold"	"mole"	--	false	trivially false rule	"[no-animal-sac]."
"polled"	"pole|poll"	--	false	trivially false rule	"[too-rep]."
"rolled"	"role|roll"	--	false	trivially false rule	"[too-rep]."
"scold"	"skoal"	--	false	trivially false rule	"You picture yourself telling kids chewing tobacco isn't safe. I mean, the alternative of discouraging a Viking feast might be brave, but it also might not be bright."
"sold"	"soul"	--	false	trivially false rule	"[item-guess of sold soul]"
"told"	"toll"	--	false	trivially false rule	"You are bright and brave! There is no time to wallow in a long story of prices paid and so forth. Or to listen to one."

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
		say "You already got [the hi].[no line break]";
	else if hi is not unguessed:
		say "But you have already divined a need for [the hi].[no line break]";
	else:
		say "Yes. The [hi] must be one of the three entities that fit in the hold hole. This is good to know.[no line break]";
		let pgh be number of unguessed holeitems;
		if pgh is 1:
			say "[line break]You feel slightly energized now that you know what your (w)hole quest is.[no line break]";
			increment cur-bonus;
			follow the score and thinking changes rule;
			now got-hole-bonus is true;
		else if pgh is 3:
			say "[line break][i][bracket][b]NOTE:[r][i] you've figured one-third of the sacred items of your quest. You can guess them all for a bonus point, or you can get on with it. Knowing what you look for is not critical to finding it.[close bracket]";
		else:
			say "[line break]There is one more item to guess, if you want.";
		now hi is preguessed;

table of one wish fun fish guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"gun"	"gish"	--	false	--	"You get a gish gallop going, but the fish doesn't seem to understand."
"none"	"nish"	--	false	--	"The fish swims around, ignoring your temporary nihilism."
"pun"	"pish"	--	false	--	"The fish looks blankly at you. It has no knowledge of puns."

table of pallid pent valid vent guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"ballad"	"bent"	--	false	--	"Being a bright brave knight knave, you love keeping an ear open for off-color tunes."

table of perky pap guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"clerky"	"clap"	--	false	--	"You consider the right way to applaud bureaucracy."
"irky"	"app"	--	false	--	"You download no annoying application to your phone. You don't even have a phone on you."
"kirky"	"cap"	--	false	--	"You find no clothes that make you talk with dramatic pauses or yell KHAN."
"lurky"	"lap"	--	false	--	"You slightly fear your junior-high gym teacher just waiting to give out punishment."
"turkey"	"tap"	--	false	--	"Even if one appeared, you'd wonder how they'd fit through there."
"worky"	"whap"	--	false	--	"Nobody is there to kick or shove you into gear."

table of rime road guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"chime"	"choad|chode"	--	false	--	"You are all for off-color humor but it doesn't seem appropriate here."
"crime"	"crowed"	--	false	--	"You eavesdrop on no criminal confessions."
"dime"	"doughed|dohed"	--	false	--	"You find no money in a loaf of bread"
"grime"	"growed"	--	false	--	"Ungrammatical, and anyway, you are trying to clean things up here!"
"im"	"owed"	--	false	--	"All this entitlement is bravebut not bright."
"lime"	"load"	--	false	--	"The fruit or the stone, you can't see yourself lugging it around."

table of sour slate guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"hour"	"late"	--	false	--	"You frown at the slate, wishing you'd seen it sooner."

table of spurning spew guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"burning"	"boo"	--	false	--	"No, you need[edspew] something more positive."
"churning"	"chew"	--	false	--	"No, you need[edspew] something less reflexive."

to say edspew: if sco-spurning-spew is true, say "ed"

table of stew stuff guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"boo"	"buff"	--	false	--	"[if sco-grew-gruff is false]You try to puff yourself out as more muscular than you actually are. No dice[else]It's stew ingredients, not protein shake ingredients[end if]."
"chew|choo"	"chuff"	--	false	--	"You make train noises, but none appears."
"coo"	"cuff"	--	false	--	"You consider lashing out for its own sake."
"do"	"duff"	--	false	--	"No, you want to do something right."
"flew|flu"	"fluff"	--	false	--	"You don't have time to fly, or get sick, or other frivolities!"
"goo"	"guff"	--	false	--	"You produce no sticky stuff."
"moo"	"muff"	--	false	--	"You try and fail to sound like a cow. Or maybe you were trying to make a bad cow noise."
"poo|pooh"	"puff"	--	false	--	"You feel fake exhaustion for a bit."
"rue"	"rough"	--	false	--	"Bummer, you think, that things aren't given to you."
"skew"	"scuff"	--	false	--	"You shuffle your feet a bit, exaggerating what has happened and what you face."
"slew|slue"	"sluff|slough"	--	false	--	"You blink, only to find you have not wound up in a bog, which is probably for the better."
"hoo|who"	"huff"	--	false	--	"Alas (or not,) there is nobody to get huffy at."

table of trite tully guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"cram"	"cry"	sham-yet rule	false	--	"Now's not the time to get too emotional."
"damn"	"die"	sham-yet rule	false	--	"You were too harsh![end-tough]"
"dram"	"dry"	sham-yet rule	false	--	"Now's not the time for alcohol."
"fam"	"fie"	sham-yet rule	false	--	"Tully isn't really looking to be a close friend."
"ham"	"hi|high"	sham-yet rule	false	--	"Yes, Tully is overacting, but knowing this fact won't do enough."
"lamb"	"lie"	sham-yet rule	false	--	"You were not harsh enough![end-lenient]"
"maam"	"my"	sham-yet rule	false	--	"Your appeal to female authority falls on deaf ears."
"spam"	"spy"	sham-yet rule	false	--	"It's no secret that Tully spams their opinions."
"tram"	"try"	sham-yet rule	false	--	"If there were a train to catch, you could send Tully on it. Alas, no."
"wham"	"why"	sham-yet rule	false	--	"It's pointless to ask a troll why."

to say end-tough:
	end the story saying "Flout Fluff?! ... Stout stuff!";
	follow the shutdown rules;

to say end-lenient:
	end the story saying "Route: Rough?!";
	follow the shutdown rules;

this is the sham-yet rule:
	if tully-score < 2, the rule fails;
	the rule succeeds;

table of yucky yacht guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bucky"	"bought|bot"	no-plot-yet rule	false	--	"Hmm. Maybe you could create a robot named Bucky to clean up the yacht. But how?"
"clucky"	"clot"	--	false	--	"You think about people who've wasted your time with meaningless jabber."
"ducky"	"dot"	--	false	--	"You see no dot or person named Dorothea to proclaim as ducky."
"lucky"	"lot"	--	false	--	"You grumble about rich people for a bit. It doesn't hurt."
"nucky"	"not|knot"	--	false	--	"You don't want to cross a mogul of a Boardwalk Empire just now."
"sucky"	"sot|sought"	--	false	--	"Bright Brave Knight Knaves aren't negative like that! Everyone sought is worthwhile!"
"trucky"	"trot"	--	false	--	"You have no need to walk through or over anyone."

this is the no-plot-yet rule:
	if sco-plucky-plot is false, the rule succeeds;
	the rule fails;

volume other

table of first check rhymes
mist-1	mist-2	mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
text	text	a topic	a rule	a truth state	a rule	text

Bright Brave Knight Knave Mistakes ends here.

---- DOCUMENTATION ----
