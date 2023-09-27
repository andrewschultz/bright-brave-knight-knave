Version 1/221007 of Bright Brave Knight Knave Mistakes by Andrew Schultz begins here.

"This tracks all the possible good guesses that are counted in Bright Brave Knight Knave."

to current-table-note-x (tn - a table name):
	current-table-note tn;

[Items that do not have a table: (this doesn't include fixed items subsumed by one location)
ARDOR ELM / HARDER HELM
HOVERING HANDLE

Rooms that will not have a table:
WHITE WAVE (this is captured universally, in table of general good guesses)
CAST COURT/FAST FORT/PAST PORT (these are mapped to the Sassed Sort, who is always present there)

TODO:
rack, right / Black Blight
]

table of general good guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"flight"	"flav|flave"	--	false	no-eyeing-yet rule	"You try a bit of trickery. Can you fly? No, you cannot. You can play small mind games, but you can't violate the laws of physics."
"slight"	"slave"	--	false	no-eyeing-yet rule	"You grumble about how you are a slight slave to your quest. It's therapeutic. It's important to put on a good face to the public, but sometimes, you have to grumble and admit you're not perfect. You always bounce back."
"shite"	"shave"	--	false	no-eyeing-yet rule	"This isn't the time or place to kvetch about personal grooming."
"buying"	"bees"	--	false	no-eyeing-yet rule	"You mumble 'Mo['] money? Ho, honey!' to yourself."
"crying"	"crees"	--	false	no-eyeing-yet rule	"Now's not a time for a kid's game."
"drying"	"drees"	--	false	no-eyeing-yet rule	"You feel your fate congealing, for better or worse."
"dying|dyeing"	"deez|dees"	--	false	no-eyeing-yet rule	"Bofa changing hair color or perishing are kind of nutz right now."
"frying"	"frieze|freeze|frees"	--	false	no-eyeing-yet rule	"If you were a cool cook, you could think 'Who'll hook cruel crook?'"
"skying"	"skis"	--	false	no-eyeing-yet rule	"Alas, the Winter Olympics would be another game."
"slying"	"sleaze"	--	false	no-eyeing-yet rule	"You search for some but can't find any."
"tying"	"ts|tees|teas|tease"	--	false	no-eyeing-yet rule	"If tying is a tease for you, that's your business, not mine."

this is the no-eyeing-yet rule:
	if sco-eyeing-eying-ease is false, the rule succeeds;
	the rule fails;

volume room stuff

table of bass bath guesses
mist-1	mist-2	mist-rule	got-yet	leet-rule	mist-txt
"has"	"hath"	--	false	--	"You conjugate old English verbs, in case this may be important in the future. It isn't right now."
"(lace|lass)"	"lath"	--	false	--	"You need no washing machine, especially not early in the game before you worked up a sweat[wrong-pron-lace]."
"place"	"plath"	--	false	--	"You mentally evaluate the respective merits of Sylvia Plath's poetry and her novel, [i]The Bell Jar[r][wrong-pron]."
"race"	"wrath"	--	false	--	"You get as mad as you can, as fast as you can[wrong-pron]."

to say wrong-pron-lace: if the player's command includes "lace", say "[wrong-pron]".

to say wrong-pron: say ". You also wonder if you are pronouncing things right"

table of black blight guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"back"	"bite"	--	false	--	"Now that's no way to restore order!"
"faq"	"fight"	--	false	--	"You vow to get through this without consulting an outside guide."
"frack"	"fright"	--	false	--	"It's hard not to fear how nefarious Big Oil is."
"knack"	"night|knight"	--	false	--	"You already have the knack. How to use it?"
"mac|mack"	"might"	--	false	--	"You get vernacular about your potential, but you need to do more."
"plaque"	"plight"	--	false	--	"Worry about your dentist after you took care of business."
"sprack"	"sprite"	--	false	--	"You go medieval on the English language for a bit, but no supernatural help appears."
"track"	"trite"	--	false	--	"Doing so isn't necessarily a boost. It could be quite depressing and exhausting, really."
"wack|whack"	"white|wight"	--	false	--	"Thankfully, no evil undeads are at play here."

table of bruising brew guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"choosing"	"chew"	--	false	--	"[if losing lou is moot]You think what a lovely bubble gum shop this would make![else if sco-boozing-boo is true]After helping Lou kick alcohol, you recommend that? Ouch![else]Trading alcohol for tobacco would just be a lateral move.[end if]"
"musing"	"mew"	--	false	--	"'Hmm,' you say, inflecting your voice. You guess and hope that looked smart and thoughtful."
"oozing"	"ooh"	--	false	--	"You recall irksomely unctuous people. Or unctuously irksomely. Whichever."
"rusing"	"roo|rue"	--	false	--	"No sneaky kangaroo appears, which is probably for the better."

table of cried creek guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bide"	"beak"	--	false	--	"No bird swoops along to give you pointers."
"chide"	"cheek"	--	false	--	"Nobody here has been too out of line."
"lied"	"leak|leek"	--	false	--	"You don't have time to track down who lied about what."
"pied"	"pique"	--	false	--	"You recount someone who deserved it getting a pie in their face."
"ride"	"reek"	--	false	--	"You pine for transport, even smelly transport."
"side"	"seek"	--	false	--	"You know which side you're on. Decency and justice. You hope."
"slide"	"sleek"	--	false	--	"You don't need passage down anywhere."
"tied"	"teak"	--	false	--	"No teak desk appears tied to the ground"
"wide|whyd"	"weak"	--	false	--	"You don't need to drain anyone, here."

table of crude crapper guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"booed"	"bapper"	--	false	--	"That'd make a decent final boss, but the main one is elsewhere."
"clued"	"clapper"	--	false	--	"You don't need someone applauding in the background, whether or not they do so at the right time, with or without prompts. That's not the way of a [this-game-noi]."
"cooed"	"capper"	--	false	--	"You don't need someone busting caps here and now, regardless of how pleasant their voice is."
"dude"	"dapper"	--	false	--	"[if player is not in crapper]You need companions who get stuff done, not stylish pals[else]Yes, we all wind up here once a day, even well-dressed people[end if]."
"food"	"fapper"	--	false	--	"I don't want to know what sort of Rule 34 stuff this would entail."
"lewd"	"lapper"	--	false	--	"Hey, now, not THAT crude, eh?"
"rude"	"rapper"	--	false	--	"But there are enough of them out there today, young whippersnappers who can't bother to rhyme, or even rhyme the same curse word with itself. Can't hold a candle to real trailblazers such as Ice-T or Public Enemy. Disgraceful!"
"screwed"	"scrapper"	--	false	--	"You don't need to judge someone who picks meaningless fights, and you don't want to diss someone who maybe doesn't mave much potential."
"snood"	"snapper"	--	false	--	"You don't always remember what a snood is, but you're pretty sure none need to be snapped."
"sued"	"sapper"	--	false	--	"That would be a villain worth fighting, but no."
"strewed"	"strapper"	--	false	--	"No such contraption exists, fortunately. I think."
"wooed"	"whapper"	--	false	--	"You need no henchmen to carry out your dirty work. You hope your dirty work is never that dirty."
"youd"	"yap er"	--	false	--	"You feel as though you want to say something about the state of these environs, but what good would it do?"

table of dander dove guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"(rander|rand er)"	"rove"	--	false	--	"You got here randomly, so maybe you'll get out even more randomly? Or not?"
"strander"	"strove"	--	false	--	"This would seem to be despairing. You can't already admit you tried but failed."

table of fought fief guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"grot"	"grief"	--	false	--	"You do your best Reginald Perrin impression. You didn't get this far in a text adventure by not trying a lot of things and not collecting a lot of miscellaneous items!"
"lot"	"leaf"	--	false	--	"You observe the fauna and flora, specifically not looking for any leaves to burn."
"shot"	"sheaf"	--	false	--	"You look around for papers, but [if sco-brought-brief is false]maybe you aren't looking for the right ones[else]there are no more[end if]."
"tot"	"teef"	--	false	--	"You look for something to give the Tooth Fairy. Nothing."

table of hailing hill guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"jailing"	"jill"	--	false	--	"No, there's no female antagonist, though people to contact here are all masculine. That's just the way the rhymes worked."
"paling|pailing"	"pill"	--	false	--	"You don't need to get or receive buckets of chemical stimulation."
"railing"	"rill"	--	false	--	"A river would be just charming here, but you're not in the business of fixing the landscape."
"sailing"	"sill"	--	false	--	"Waterways are more likely to be at lower elevations."
"swailing"	"swill"	--	false	--	"You're not up on the best way to contain forest fires, so better not get in a debate."
"tailing"	"til|till"	--	false	--	"You don't need to follow anyone or ask them to follow. Those who [if number of finished eekers is 6]wanted to, did[else]want to, will[end if]."
"trailing"	"trill"	--	false	--	"You don't feel a song right now. Not until you've fixed things completely."

table of lane lax guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bane"	"backs"	--	false	--	"No, you can't let despair overtake you."
"brain"	"bracks"	--	false	--	"You worry your brain is about to crack, but if you still know an obscure word like brack, it can't, really?"
"crane"	"cracks"	--	false	--	"You don't need a construction accident or dead birds."
"feign"	"facts"	--	false	--	"No, that's the bad guys."
"gain"	"gacks"	--	false	--	"Your style of humor isn't gross-out."
"jane"	"jacks"	--	false	--	"No female gangster rapper appears."
"plain"	"plaques"	--	false	--	"Nah. You'd rather have achievements."
"rain"	"racks"	--	false	--	"You don't need to catch the rain."
"sane"	"sacks|sax"	--	false	--	"You express confusion at new, high-energy jazz and appreciation of non-gaudy grocery bags."
"slain"	"slacks"	--	false	--	"You uncover no torn pairs of pants."
"stain"	"stacks"	--	false	--	"You have no need or desire to vandalize a library."
"wane"	"wax"	--	false	--	"You contemplate the ebb and flow of living and also how Kevin Arnold's older brother was so unfair to him."

table of nil none guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bill"	"bun"	--	false	--	"You can pay for food once you're here."
"dill"	"done"	--	false	--	"This isn't a cooking sim."
"gill"	"gun"	--	false	--	"You don't need a fancy weapon."
"hill"	"hun|hon"	--	false	--	"You don't need to be attacked, or take saccharine praise, from above."
"pill"	"pun"	--	false	--	"Drug humor won't help here."
"shill"	"shun"	--	false	--	"Alas, there is nobody to reject and feel better about yourself."
"sill"	"sun|son"	--	false	--	"No light-giving window appears."
"spill"	"spun"	--	false	--	"Alas, no solution to your woes is created, nor does it tumble out."
"still"	"stun"	nil-none-name rule	false	--	"You do feel a bit stunned. And you will still feel a bit stunned even if you half make your way out of this fog."
"till|til"	"ton"	--	false	--	"Things are weighty enough here."

this is the nil-none-name rule:
	if sco-fill-fun is false, the rule succeeds;
	the rule fails;

table of oecc guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bowed"	"byes|buys"	--	false	--	"No need for bowing here."
"howd"	"hies|his"	--	false	--	"How [if sco-wowed-whys is false]isn't[else]wasn't[end if] quite the question to ask."
"powed"	"pies"	--	false	--	"No pie ambushes anyone, for better or worse."
"proud"	"pries|prize"	prize-yet rule	false	--	"Well, that's what you get if you figure what to do here."
"thoud"	"thys"	--	false	--	"Old English might [if sco-loud-lies is true]have confused[else]confuse[end if] the crowd but won't really make a lasting impression."
"vowed"	"vies"	--	false	--	"You've already made vows to set things straight."

this is the prize-yet rule:
	if sco-loud-lies is false, the rule succeeds;
	the rule fails;

table of recroom guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"seek"	"suitor"	--	false	--	"Other people are seeking suitors--platonic, perhaps, but it's your job to bring them together." [if all 3 are paired, say different. ??]

table of route rough guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bout"	"buff"	--	false	--	"Bulking up won't help you overpower futility."
"doubt"	"duff"	--	false	--	"You doubt that Homer Simpson's beer is truly great. Man, you really must be bummed!"
"gout"	"guff"	--	false	--	"You hope you don't get gout, whatever that is."
"grout"	"gruff"	--	false	--	"You grumble at the thought of home repairs."
"pout"	"puff"	--	false	--	"You should be trying to bring yourself up, here."
"scout"	"scuff"	--	false	--	"You remember being disillusioned by a Boy Scout troop that was completely not Norman Rockwell."
"snout"	"snuff"	--	false	--	"You make various sniffy noises, hoping for catharsis."
"tout"	"tough"	--	false	--	"You talk yourself up, but you come back down to earth quickly."

table of rut row guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"but"	"bo"	--	false	--	"There's no time to argue! Boss and Rosco are up to another devious plan!"
"cut"	"co"	--	false	--	"What an ideal name for a corporate hellscape that drains profits and happiness from a city."
"gut"	"go"	--	false	--	"You feel full of urban gumption and do-it-now-ness, until you don't."
"mutt"	"mo|mow"	--	false	--	"Alas, there are no lovely houses with friendly dogs and green lawns here."
"nut"	"no"	--	false	--	"There is nobody to tell off, but there will be if you wait here. Not that you want to wait here."
"putt"	"po"	--	false	--	"This place is far away from a golf course, but yeah, everyone here is probably bad at golf."
"shut"	"show"	--	false	--	"The fine arts have long since disappeared from here."
"slut"	"slow"	--	false	--	"You are not the morality police."

table of slid slum guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bid"	"bum"	--	false	--	"That's not a huge epithet, but you try not look down on the less fortunate."
"chid"	"chum"	--	false	--	"[if boffin boy is not fungible]You have no friend to chide[else]Forgiveness is more the thing here[end if]."
"did"	"dumb"	--	false	--	"[if boffin boy is not fungible]You don't want to reflect on the past[else]A [this-game-noi] doesn't put people through the ringer for past mistakes[end if]."
"mid"	"mum"	--	false	--	"You don't need parental support or quiet."
"skid"	"scum"	--	false	--	"No. A good [this-game-noi] don't look down on people like that."

table of tata guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"ball"	"bank|banks"	--	false	--	"You don't have time for silly games! Okay, silly games that give lots of exercise. Okay, squared, silly games that give lots of exercise beyond walking between all these room."
"crawl"	"crank|cranks"	--	false	--	"There is no hidden mechanism under the tanks."
"drawl"	"drank|dranks"	--	false	--	"You don't want to endorse alcohol in any way."
"gall"	"gank|ganks"	--	false	--	"You're a [this-game-noi], not a thief."
"hall|haul"	"hank|hanks"	--	false	--	"You sort of need[if sco-yall-yank is true]ed[end if] to push the tanks out of the way. But first names aren't necessary."
"lol|loll"	"lank|lanks"	--	false	--	"A [this-game-noi] mocks the oppressively powerful, not body types."
"stall"	"stank|stanks"	--	false	--	"No, that's a few rooms to the west."
"wall"	"wank|wanks"	--	false	--	"To steal from Futurama, this rhyme is technically correct: the best kind of correct!"

table of treed track guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bead"	"back"	--	false	--	"You don't need to drop things to get out of the forest."
"bleed"	"black"	--	false	--	"That'd make you one of the bad guys, though, right?"
"breed"	"brack"	--	false	--	"No, you need the opposite of a brack, to bring things together."
"creed"	"crack"	--	false	--	"You aren't looking to proselytize."
"feed"	"faq"	--	false	--	"Now's not the time to worry about nourishment."
"fleed"	"flack|flak"	--	false	--	"There is no flak to flee here."
"freed"	"frack"	--	false	--	"Oh no! It's not Big Oil that needs freedom."
"lead|lede"	"lack"	--	false	--	"You bemoan the lack of leadership, or a lede, whichever."
"mead"	"mac|mack"	--	false	--	"This'd be a great call to an olde-time forest picnic."
"pd|peed"	"pack"	--	false	--	"You don't need angry followers, allies or enemies."
"reed|read"	"rack"	--	false	--	"You think back to reading gossip magazines in line at the grocery store as a kid. It was fun. But you grew up."
"sneed"	"snack"	--	false	--	"[i]The Simpsons[r] made a better joke about Chuck's than I ever could."
"steed"	"stack"	--	false	--	"This world's not big enough to need a horse. Plus the horses above would crush the ones below."
"teed"	"tack"	--	false	--	"But you have nothing to tack up on a board, or tee up for a game of golf."
"weed"	"wack|whack"	--	false	--	"Landscaping's not your specialty."
"yed"	"yack"	--	false	--	"There is nobody to silence in the immediate area."

volume thing stuff

table of clashing cord guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"flashing"	"ford"	--	false	--	"No bridge across a river, or car, or intergalactic space traveler whizzes by."

table of clod clash guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bod|bawd|baud"	"bash"	--	false	need-ash rule	"No, one fight is enough."
"cod"	"cash|cache"	--	false	need-ash rule	"All sea life will be clearly visible."
"crawed"	"crash"	--	false	need-ash rule	"You remember people actually glad they got into an accident."
"god"	"gash"	--	false	need-ash rule	"You don't need to hurt anyone or express anger at being hurt."
"lawd|lawed"	"lash"	--	false	need-ash rule	"You aren't big on thinking about the details of punishment."
"mod"	"mash"	--	false	need-ash rule	"You do not need to start a new dance craze."
"nod"	"nash|gnash"	--	false	need-ash rule	"There's nobody you can see to commiserate here with."
"rod|rawed"	"rash"	--	false	need-ash rule	"You need leave no welt with instruments of punishment."
"sawed"	"sash"	--	false	need-ash rule	"You need no fancy clothes."

this is the need-ash rule:
	if sco-trod-trash is false, the rule succeeds;
	the rule fails;

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
"sued"	"sass"	--	false	--	"How very anti-freedom of speech and unlike a [this-game-noi]!"
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
"trolled"	"troll"	--	false	trivially false rule	"[too-rep]."

definition: a holeitem (called hi) is playerknown:
	if hi is preguessed, yes;
	if hi is not off-stage, yes;
	no;

to say too-rep:
	say "That's a bit too repetitive, ";
	if number of playerknown holeitems is 3:
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
		say "You deduce [the hi] would fit nicely into the hold hole.[no line break]";
		let pgh be number of unguessed holeitems;
		if pgh is 1:
			say "[paragraph break]You feel slightly energized now that you know what your (w)hole quest is.[line break]";
			increment cur-bonus;
			follow the score and thinking changes rule;
			now got-hole-bonus is true;
		else if pgh is 3:
			say "[paragraph break][i][bracket][b]NOTE:[r][i] you've figured one-third of the sacred items of your quest. You can guess them all for a bonus point, or you can get on with it. Knowing what you look for is not critical to finding it.[close bracket]";
		else:
			say "[paragraph break]So, that's two of the three things the hole needs. Figuring the third wouldn't be critical, but it'd be a morale booster.";
		now hi is preguessed;

table of lack list guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"black"	"blissed"	--	false	--	"You wonder how you'd look in all black. Pretty neat." [brack brissed was too much]
"hack"	"hissed"	--	false	--	"You mentally deplore how you were pushed aside."
"mac|mack"	"missed|mist"	--	false	--	"You'd hate for this useful bit of paper to disappear into a mist."
"pack"	"pissed"	--	false	--	"Whoah! Guns aren't good if you're angry!"
"rack|wrack"	"wrist"	--	false	--	"You vow to continue typing out good-guess rhymes until it hurts."
"sack"	"cyst"	--	false	--	"Your skin is not perfect. You'd love to wipe out something."
"wack"	"wist"	--	false	--	"You recognize pining for the past might be too much."

table of one wish fun fish guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"gun"	"gish"	--	false	--	"You get a gish gallop going, but the fish doesn't seem to understand."
"none"	"nish"	--	false	--	"The fish swims around, ignoring your temporary nihilism."
"pun"	"pish"	--	false	--	"The fish looks blankly at you. It has no knowledge of puns."

table of pallid pent valid vent guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"ballad"	"bent"	--	false	--	"Being a [this-game-noi], you love keeping an ear open for off-color tunes."

table of perky pap guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"clerky"	"clap"	--	false	--	"You consider the right way to applaud bureaucracy."
"irky"	"app"	--	false	--	"You download no annoying application to your phone. You don't even have a phone on you."
"kirky"	"cap"	--	false	--	"You find no clothes that make you talk with dramatic pauses or yell KHAN."
"lurky"	"lap"	--	false	--	"You slightly fear your junior-high gym teacher just waiting to give out punishment."
"turkey"	"tap"	--	false	--	"Even if one appeared, you'd wonder how they'd fit through there."
"worky"	"whap"	--	false	--	"Nobody is there to kick or shove you into gear."

table of posh pick guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"cosh"	"kick"	--	false	--	"You momentarily fear different types of violence. It keeps you motivated, you hope."
"frosh"	"frick"	--	false	--	"You remember in high school how underclassmen were beaten up for swearing or not swearing."
"mosh"	"mick"	--	false	--	"You neither see Jagger nor develop moves like him"
"nosh"	"nick"	--	false	--	"Ugh! Prison food!"
"tosh"	"tick"	--	false	--	"Thankfully, you have no insects or time crunches to worry about."
"wash"	"wick"	--	false	--	"Doing so would mean you can't light a candle. That's what you meant, right?"

table of rime road guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"chime"	"choad|chode"	--	false	--	"You are all for off-color humor but it doesn't seem appropriate here."
"crime"	"crowed"	--	false	--	"You eavesdrop on no criminal confessions."
"dime"	"doughed|dohed"	--	false	--	"You find no money in a loaf of bread."
"grime"	"growed"	--	false	--	"Ungrammatical, and anyway, you are trying to clean things up here!"
"im"	"owed"	--	false	--	"All this entitlement is brave but not bright."
"lime"	"load"	--	false	--	"The fruit or the stone, you can't see yourself lugging it around."

table of sassed sort guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"blast"	"blort"	--	false	--	"You wonder if this is cheating, since blort is a portmanteau of ... wait, BLOW and snort, not blast. Then you realize there's nothing to snort about!"
"mast|massed"	"mort"	--	false	--	"Not what you need now, death around the corner, for the ship or otherwise."

table of sour slate guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"hour"	"late"	--	false	--	"You frown at the [if sco-power-plate is true]power plate[else]sour slate[end if], wishing you'd seen it sooner."

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
"drew"	"druff"	--	false	--	"You remember shaking your hair out and suddenly understanding those shampoo commercials."
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
"damn"	"die"	sham-yet rule	false	--	"Tully obviously had to be neutralized, but that was too much. Sadly, though many people sympathize you, enough say 'Aww, that's just Tully, you'd have liked them if you got to know them.' Which wasn't quite true, but perhaps there was another way to deal forcefully.[end-tough]"
"dram"	"dry"	sham-yet rule	false	--	"Now's not the time for alcohol."
"fam"	"fie"	sham-yet rule	false	--	"Tully isn't really looking to be a close friend."
"ham"	"hi|high"	sham-yet rule	false	--	"Yes, Tully is overacting, but knowing this fact won't do enough."
"lamb"	"lie"	sham-yet rule	false	--	"You figure you should be much, much nicer to trolls than they are to you, neglecting that that is already the case. Trite Tully eases up for a bit but comes back with a new style a few weeks later ... and new allegations against you! This time, everyone says, well, they were okay forgiving you the first time, but people just don't deserve second chances like that. Unless they are as exciting as Tully.[end-lenient]"
"maam"	"my"	sham-yet rule	false	--	"Your appeal to female authority falls on deaf ears."
"spam"	"spy"	sham-yet rule	false	--	"It's no secret that Tully spams their opinions."
"tram"	"try"	sham-yet rule	false	--	"If there were a train to catch, you could send Tully on it. Alas, no."
"wham"	"why"	sham-yet rule	false	--	"It's pointless to ask a troll why."

to say end-tough:
	end the story saying "Struck, Strikes? Yuck, Yikes!";
	follow the shutdown rules;

to say end-lenient:
	end the story saying "Curse-y Cad Mercy?! MAD!";
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
"sucky"	"sot|sought"	--	false	--	"[this-game-noi]s aren't negative like that! Everyone sought is worthwhile!"
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
