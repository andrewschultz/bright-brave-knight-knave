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
]

table of general good guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"flight"	"flav|flave"	--	false	wave-todo rule	"You try a bit of trickery. Can you fly? No, you cannot. You can play small mind games, but you can't violate the laws of physics."
"slight"	"slave"	--	false	wave-todo rule	"You grumble about how you are a slight slave to your quest. It's therapeutic. It's important to put on a good face to the public, but sometimes, you have to grumble and admit you're not perfect. You always bounce back."
"shite"	"shave"	--	false	wave-todo rule	"This isn't the time or place to kvetch about personal grooming."
"buying"	"bees"	--	false	eyeing-todo rule	"You mumble 'Mo['] money? Ho, honey!' to yourself."
"crying"	"crees"	--	false	eyeing-todo rule	"Now's not a time for a kid's game."
"drying"	"drees"	--	false	eyeing-todo rule	"You feel your fate congealing, for better or worse."
"dying|dyeing"	"deez|dees"	--	false	eyeing-todo rule	"Bofa changing hair color or perishing are kind of nutz right now."
"frying"	"frieze|freeze|frees"	--	false	eyeing-todo rule	"If you were a cool cook, you could think 'Who'll hook cruel crook?'"
"skying"	"skis"	--	false	eyeing-todo rule	"Alas, the Winter Olympics would be another game."
"slying"	"sleaze"	--	false	eyeing-todo rule	"You search for some but can't find any."
"tying"	"ts|tees|teas|tease"	--	false	eyeing-todo rule	"If tying is a tease for you, that's your business, not mine."

this is the wave-todo rule:
	if sco-fight-fave is false, the rule succeeds;
	the rule fails;

this is the eyeing-todo rule:
	if sco-eyeing-eying-ease is false, the rule succeeds;
	the rule fails;

volume room stuff

table of bass bath guesses
mist-1	mist-2	mist-rule	got-yet	leet-rule	mist-txt
"has"	"hath"	--	false	bath-todo rule	"You conjugate old English verbs, in case this may be important in the future. It isn't right now."
"(lace|lass)"	"lath"	--	false	bath-todo rule	"You need no washing machine, especially not early in the game before you worked up a sweat[wrong-pron-lace]."
"place"	"plath"	--	false	bath-todo rule	"You mentally evaluate the respective merits of Sylvia Plath's poetry and her novel, [i]The Bell Jar[r][wrong-pron]."
"race"	"wrath"	--	false	bath-todo rule	"You get as mad as you can, as fast as you can[wrong-pron]."

this is the bath-todo rule:
	if sco-mass-math is false, the rule succeeds;
	the rule fails;

to say wrong-pron-lace: if the player's command includes "lace", say "[wrong-pron]".

to say wrong-pron: say ". You also wonder if you are pronouncing things right"

table of black blight guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"back"	"bite"	--	false	blight-todo rule	"Now that's no way to restore order!"
"faq"	"fight"	--	false	blight-todo rule	"You vow to get through this without consulting an outside guide."
"frack"	"fright"	--	false	blight-todo rule	"It's hard not to fear how nefarious Big Oil is."
"knack"	"night|knight"	--	false	blight-todo rule	"You already have the knack. How to use it?"
"mac|mack"	"might|mite"	--	false	blight-todo rule	"You get vernacular about your potential, but you need to do more."
"plaque"	"plight"	--	false	blight-todo rule	"Worry about your dentist after you took care of business."
"rack|wrack"	"right|write"	no-rack-right rule	false	blight-todo rule	"You poke at your brain for more useful rhymes."
"sprack"	"sprite"	--	false	blight-todo rule	"You go medieval on the English language for a bit, but no supernatural help appears."
"track"	"trite"	--	false	blight-todo rule	"Doing so isn't necessarily a boost. It could be quite depressing and exhausting, really."
"wack|whack"	"white|wight"	--	false	blight-todo rule	"Thankfully, no evil undeads are at play here."

this is the no-rack-right rule:
	if rack right is off-stage, the rule succeeds;
	the rule fails;

this is the blight-todo rule:
	if blight-score < 4, the rule succeeds;
	the rule fails;

table of bruising brew guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"choosing"	"chew"	--	false	brew-todo rule	"[if losing lou is moot]You think what a lovely bubble gum shop this would make![else if sco-boozing-boo is true]After helping Lou kick alcohol, you recommend that? Ouch![else]Trading alcohol for tobacco would just be a lateral move.[end if]"
"musing"	"mew"	--	false	brew-todo rule	"'Hmm,' you say, inflecting your voice. You guess and hope that looked smart and thoughtful."
"oozing"	"oo|ooh|ew|eww"	--	false	brew-todo rule	"You recall irksomely unctuous people. Or unctuously irksomely. Whichever."
"rusing"	"roo|rue"	--	false	brew-todo rule	"No sneaky kangaroo appears, which is probably for the better."

this is the brew-todo rule:
	if sco-fusing-phew is false, the rule succeeds;
	the rule fails;

table of cried creek guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bide"	"beak"	--	false	creek-score rule	"No bird swoops along to give you pointers."
"chide"	"cheek"	--	false	creek-score rule	"Nobody here has been too out of line."
"lied"	"leak|leek"	--	false	creek-score rule	"You don't have time to track down who lied about what."
"pied"	"pique|peek|peak"	--	false	creek-score rule	"You recount someone who deserved it getting a pie in their face and worry you are open for a sneak attack."
"ride"	"reek"	--	false	creek-score rule	"You pine for transport, even smelly transport."
"side"	"seek"	--	false	creek-score rule	"You know which side you're on. Decency and justice. You hope."
"slide"	"sleek"	--	false	creek-score rule	"You don't need passage down anywhere."
"tied"	"teak"	--	false	creek-score rule	"No teak desk appears tied to the ground"
"wide|whyd"	"weak"	--	false	creek-score rule	"You don't need to drain anyone, here."

this is the creek-score rule:
	if sco-stride-streak is false or sco-fried-freak is false or sco-snide-sneak is false or sco-guide-geek is false, the rule succeeds;
	the rule fails;

table of crude crapper guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"booed"	"bapper"	--	false	crapper-todo rule	"That'd make a decent final boss, but the main one is elsewhere."
"clued"	"clapper"	--	false	crapper-todo rule	"You don't need someone applauding in the background, whether or not they do so at the right time, with or without prompts. That's not the way of a [this-game-noi]."
"cooed"	"capper"	--	false	crapper-todo rule	"You don't need someone busting caps here and now, regardless of how pleasant their voice is."
"dude"	"dapper"	--	false	crapper-todo rule	"[if player is not in crapper]You need companions who get stuff done, not stylish pals[else]Yes, we all wind up here once a day, even well-dressed people[end if]."
"food"	"fapper"	--	false	crapper-todo rule	"I don't want to know what sort of Rule 34 stuff this would entail."
"lewd"	"lapper"	--	false	crapper-todo rule	"Hey, now, not THAT crude, eh?"
"rude"	"rapper"	--	false	crapper-todo rule	"But there are enough of them out there today, young whippersnappers who can't bother to rhyme, or even rhyme the same curse word with itself. Can't hold a candle to real trailblazers such as Ice-T or Public Enemy. Disgraceful!"
"screwed"	"scrapper"	--	false	crapper-todo rule	"You don't need to judge someone who picks meaningless fights, and you don't want to diss someone who maybe doesn't mave much potential."
"snood"	"snapper"	--	false	crapper-todo rule	"You don't always remember what a snood is, but you're pretty sure none need to be snapped."
"sued"	"sapper"	--	false	crapper-todo rule	"That would be a villain worth fighting, but no."
"strewed"	"strapper"	--	false	crapper-todo rule	"No such contraption exists, fortunately. I think."
"wooed"	"whapper"	--	false	crapper-todo rule	"You need no henchmen to carry out your dirty work. You hope your dirty work is never that dirty."
"youd"	"yap er"	--	false	crapper-todo rule	"You feel as though you want to say something about the state of these environs, but what good would it do?"

this is the crapper-todo rule:
	if sco-mood-mapper is false or sco-nude-napper is false, the rule succeeds;
	the rule fails;

table of dander dove guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"(rander|rand er)"	"rove"	--	false	dove-todo rule	"You got here randomly, so maybe you'll get out even more randomly? Or not?"
"strander"	"strove"	--	false	dove-todo rule	"This would seem to be despairing. You can't already admit you tried but failed."

this is the dove-todo rule:
	if dander-score < 3, the rule succeeds;
	the rule fails;

table of fought fief guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"grot"	"grief"	--	false	fief-todo rule	"You do your best Reginald Perrin impression. You didn't get this far in a text adventure by not trying a lot of things and not collecting a lot of miscellaneous items!"
"lot"	"leaf"	--	false	fief-todo rule	"You observe the fauna and flora, specifically not looking for any leaves to burn."
"shot"	"sheaf"	--	false	fief-todo rule	"You look around for papers, but [if sco-brought-brief is false]maybe you aren't looking for the right ones[else]there are no more[end if]."
"tot"	"teef"	--	false	fief-todo rule	"You look for something to give the Tooth Fairy. Nothing."

this is the fief-todo rule:
	if fief-score < 2, the rule succeeds;
	the rule fails;

table of hailing hill guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"jailing"	"jill"	--	false	hill-todo rule	"No, there's no female antagonist, though people to contact here are all masculine. That's just the way the rhymes worked."
"nailing"	"nil|nill"	--	false	hill-todo rule	"Ouch! That's defeatist."
"paling|pailing"	"pill"	--	false	hill-todo rule	"You don't need to get or receive buckets of chemical stimulation."
"quailing"	"quill"	--	false	hill-todo rule	"You don't need sad writing now."
"railing"	"rill"	--	false	hill-todo rule	"A river would be just charming here, but you're not in the business of fixing the landscape."
"sailing"	"sill"	--	false	hill-todo rule	"Waterways are more likely to be at lower elevations."
"swailing"	"swill"	--	false	hill-todo rule	"You're not up on the best way to contain forest fires, so better not get in a debate."
"tailing"	"til|till"	--	false	hill-todo rule	"You don't need to follow anyone or ask them to follow. Those who [if number of finished eekers is 6]wanted to, did[else]want to, will[end if]."
"trailing"	"trill"	--	false	hill-todo rule	"You don't feel a song right now. Not until you've fixed things completely."

this is the hill-todo rule:
	if hill-score < 6, the rule succeeds;
	the rule fails;

table of knell nook guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"hell"	"hook"	--	false	nook-todo rule	"That's not the sort of summoning you'd want here."
"shell"	"shook"	nook-undone rule	false	nook-todo rule	"You don't need to destroy this area."
"spell"	"spook"	nook-undone rule	false	nook-todo rule	"No, it doesn't rhyme, but it made me laugh when I saw it, too."
"tell"	"took"	--	false	nook-todo rule	"Perhaps things have been stolen from here. That is a wrong you can't right."

this is the nook-todo rule:
	if sco-covering-candle is false, the rule succeeds;
	the rule fails;

this is the nook-undone rule:
	if sco-covering-candle is true, the rule succeeds;
	the rule fails;

table of lane lax guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"attain"	"attacks"	--	false	lax-todo rule	"No need for aggression on your part here."
"bane"	"backs"	--	false	lax-todo rule	"No, you can't let despair overtake you."
"brain"	"bracks"	--	false	lax-todo rule	"You worry your brain is about to crack, but if you still know an obscure word like brack, it can't, really?"
"crane"	"cracks"	--	false	lax-todo rule	"You don't need a construction accident or dead birds."
"feign"	"facts"	--	false	lax-todo rule	"No, that's the bad guys."
"gain"	"gacks"	--	false	lax-todo rule	"Your style of humor isn't gross-out."
"jane"	"jacks"	--	false	lax-todo rule	"No female gangster rapper appears."
"plain"	"plaques"	--	false	lax-todo rule	"Nah. You'd rather have achievements."
"rain"	"racks"	--	false	lax-todo rule	"You don't need to catch the rain."
"sane"	"sacks|sax"	--	false	lax-todo rule	"You express confusion at new, high-energy jazz and appreciation of non-gaudy grocery bags."
"shane"	"shacks|shax"	--	false	lax-todo rule	""
"slain"	"slacks"	--	false	lax-todo rule	"You uncover no torn pairs of pants."
"stain"	"stacks"	--	false	lax-todo rule	"You have no need or desire to vandalize a library."
"wain|wane|wayne"	"wax|whacks"	--	false	lax-todo rule	"You contemplate the stars, the ebb and flow of living, and how Kevin Arnold's older brother was so unfair to him."

this is the lax-todo rule:
	if sco-pain-packs is false and sco-main-max is false, the rule succeeds;
	the rule fails;

table of nil none guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bill"	"bun"	--	false	nil-none-todo rule	"You can pay for a burger once you're done here."
"dill"	"done"	--	false	nil-none-todo rule	"This isn't a cooking sim."
"gill"	"gun"	--	false	nil-none-todo rule	"You don't need a fancy weapon."
"hill"	"hun|hon"	--	false	nil-none-todo rule	"You don't need to be attacked, or take saccharine praise, from above."
"pill"	"pun"	--	false	nil-none-todo rule	"Drug humor won't help here."
"shill"	"shun"	--	false	nil-none-todo rule	"If only there were haters nearby to zone out, that would work!"
"sill"	"sun|son"	--	false	nil-none-todo rule	"No light-giving window appears."
"spill"	"spun"	--	false	nil-none-todo rule	"Alas, no solution to your woes is created, nor does it tumble out."
"still"	"stun"	nil-none-name rule	false	nil-none-todo rule	"You do feel a bit stunned. And you will still feel a bit stunned even if you half make your way out of this fog."
"till|til"	"ton"	--	false	nil-none-todo rule	"Things are weighty enough here."

this is the nil-none-todo rule:
	if nil-score < 3, the rule succeeds;
	the rule fails;

this is the nil-none-name rule:
	if sco-fill-fun is false, the rule succeeds;
	the rule fails;

table of oecc guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bowed"	"byes|buys"	--	false	oecc-todo rule	"No need for bowing here."
"howd"	"hies|his"	--	false	oecc-todo rule	"How [if sco-wowed-whys is false]isn't[else]wasn't[end if] quite the question to ask."
"powed"	"pies"	--	false	oecc-todo rule	"No pie ambushes anyone, for better or worse."
"proud"	"pries|prize"	oecc-todo rule	false	oecc-todo rule	"Well, that's what you get if you figure what to do here."
"thoud"	"thys"	--	false	oecc-todo rule	"Old English might [if sco-loud-lies is true]have confused[else]confuse[end if] the crowd but won't really make a lasting impression."
"vowed"	"vies"	--	false	oecc-todo rule	"You've already made vows to set things straight."

this is the oecc-todo rule:
	if sco-loud-lies is false, the rule succeeds;
	the rule fails;

table of recroom guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"beak"	"booter"	--	false	recruiter-todo rule	"You know the words to Tom Lehrer's [i]Poisoning Pigeons in the Park[r], but that's way too far."
"leak|leek"	"looter"	--	false	recruiter-todo rule	"You'd prefer not to consort with thieves."
"seek"	"suitor"	--	false	recruiter-todo rule	"[if recruiter-score is 3]You've found everyone available[else]Other people are seeking suitors--platonic, perhaps, but it's your job to bring them together[end if]." [if all 3 are paired, say different. ??]

this is the recruiter-todo rule:
	if recruiter-score < 3, the rule succeeds;
	the rule fails;

table of route rough guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"boot|bout"	"buff"	--	false	route-todo rule	"[oot-out]Bulking up won't help you overpower futility."
"coot"	"cuff"	--	false	route-todo rule	"[oot-out]You aren't up to fighting."
"doubt"	"duff"	--	false	route-todo rule	"You doubt that Homer Simpson's beer is truly great. Man, you really must be bummed!"
"gout"	"guff"	--	false	route-todo rule	"You hope you don't get gout, whatever that is."
"grout"	"gruff"	--	false	route-todo rule	"You grumble at the thought of home repairs."
"pout"	"puff"	--	false	route-todo rule	"You should be trying to bring yourself up, here."
"scoot|scout"	"scuff"	--	false	route-todo rule	"[oot-out]You remember being disillusioned by a Boy Scout troop that was completely not Norman Rockwell."
"snoot|snout"	"snuff"	--	false	route-todo rule	"[oot-out]You make various sniffy noises, hoping for catharsis."
"toot|tout"	"tough"	--	false	route-todo rule	"[oot-out]You talk yourself up, but you come back down to earth quickly."

to say oot-out:
	if the player's command includes "oot":
		say "(Ignoring the voices['] message to find a few extra rhymes.) ";

this is the route-todo rule:
	if route-rough-score < 3, the rule succeeds;
	the rule fails;

table of rut row guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"but|butt"	"bo|bow"	--	false	row-todo rule	"No time to argue! Boss and Rosco done hatched another devious plan!"
"cut"	"co|cow"	--	false	row-todo rule	"[cow-cut]"
"gut"	"go"	--	false	row-todo rule	"You feel full of urban gumption and do-it-now-ness, until you don't."
"hutt|hut"	"hoe|ho|how"	--	false	row-todo rule	"[rut-row-ow-oh]You recall a clever, funny phrase from [i]You Will Select a Decision[r]."
"mutt"	"mo|mow"	--	false	row-todo rule	"Alas, there are no lovely houses with friendly dogs and green lawns here."
"nut"	"no|now"	--	false	row-todo rule	"[rut-row-ow-oh]There is nobody to tell off, but there will be if you wait here. Not that you want to wait here."
"putt"	"po|pow"	--	false	row-todo rule	"[rut-row-ow-oh]This place is far away from a golf course, but yeah, everyone here is probably bad at golf."
"shut"	"show"	--	false	row-todo rule	"The fine arts have long since disappeared from here."
"slut"	"slow"	--	false	row-todo rule	"You are not the morality police."

to say cow-cut:
	if the player's command includes "cow":
		say "No need for animal sacrifices.";
	else:
		say "What an ideal name for a corporate hellscape that drains profits and happiness from a city.";

this is the row-todo rule:
	if sco-what-whoah is false, the rule succeeds;
	the rule fails;

to say rut-row-ow-oh:
	if the player's command includes "ow":
		say "(Looking at the row of houses and seeing no fight...) "

table of slid slum guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bid"	"bum"	--	false	slum-todo rule	"That's not a huge epithet, but you try not look down on the less fortunate."
"chid"	"chum"	--	false	slum-todo rule	"[if boffin boy is not fungible]You have no friend to chide[else]Forgiveness is more the thing here[end if]."
"did"	"dumb"	--	false	slum-todo rule	"[if boffin boy is not fungible]You don't want to reflect on the past[else]A [this-game-noi] doesn't put people through the ringer for past mistakes[end if]."
"mid"	"mum"	--	false	slum-todo rule	"You don't need parental support or quiet."
"skid"	"scum"	--	false	slum-todo rule	"No. A good [this-game-noi] don't look down on people like that."

this is the slum-todo rule:
	if sco-rid-rum is false, the rule succeeds;
	the rule fails;

table of tata guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"all"	"ankh|ankhs"	--	false	tata-todo rule	"Greedy! Even Lord British's Avatar gets only one ankh."
"ball"	"bank|banks"	--	false	tata-todo rule	"You don't have time for silly games! Okay, silly games that give lots of exercise. Okay, squared, silly games that give lots of exercise beyond walking between all these room."
"crawl"	"crank|cranks"	--	false	tata-todo rule	"There is no hidden mechanism under the tanks."
"drawl"	"drank|dranks"	--	false	tata-todo rule	"You don't want to endorse alcohol in any way."
"gall"	"gank|ganks"	--	false	tata-todo rule	"You're a [this-game-noi], not a thief."
"hall|haul"	"hank|hanks"	--	false	tata-todo rule	"You sort of need[if sco-yall-yank is true]ed[end if] to push the tanks out of the way. But first names aren't necessary."
"lol|loll"	"lank|lanks"	--	false	tata-todo rule	"A [this-game-noi] mocks the oppressively powerful, not body types."
"maul|mall"	"manx"	--	false	tata-todo rule	"You don't need to buy or (especially) mistreat a pet cat."
"stall"	"stank|stanks"	--	false	tata-todo rule	"No, that's a few rooms to the west."
"wall"	"wank|wanks"	--	false	tata-todo rule	"To steal from Futurama, this rhyme is technically correct: the best kind of correct!"

this is the tata-todo rule:
	if sco-paul-panks is false or sco-yall-yank is false, the rule succeeds;
	the rule fails;

table of treed track guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bead"	"back"	--	false	track-todo rule	"You don't need to drop things to get out of the forest."
"bleed"	"black"	--	false	track-todo rule	"That'd make you one of the bad guys, though, right?"
"breed"	"brack"	--	false	track-todo rule	"No, you need the opposite of a brack, to bring things together."
"creed"	"crack"	--	false	track-todo rule	"You aren't looking to proselytize."
"feed"	"faq"	--	false	track-todo rule	"Now's not the time to worry about nourishment."
"fleed"	"flack|flak"	--	false	track-todo rule	"There is no flak to flee here."
"freed"	"frack"	--	false	track-todo rule	"Oh no! It's not Big Oil that needs freedom."
"lead|lede"	"lack"	--	false	track-todo rule	"You bemoan the lack of leadership, or a lede, whichever."
"mead"	"mac|mack"	--	false	track-todo rule	"This'd be a great call to an olde-time forest picnic."
"pd|peed"	"pack"	--	false	track-todo rule	"You don't need angry followers, allies or enemies."
"reed|read"	"rack"	--	false	track-todo rule	"You think back to reading gossip magazines in line at the grocery store as a kid. It was fun. But you grew up."
"sneed"	"snack"	--	false	track-todo rule	"[i]The Simpsons[r] made a better joke about Chuck's than I ever could."
"steed"	"stack"	--	false	track-todo rule	"This world's not big enough to need a horse. Plus the horses above would crush the ones below."
"teed"	"tack"	--	false	track-todo rule	"But you have nothing to tack up on a board, or tee up for a game of golf."
"weed"	"wack|whack"	--	false	track-todo rule	"Landscaping's not your specialty."
"yed"	"yack"	--	false	track-todo rule	"There is nobody to silence in the immediate area."

this is the track-todo rule:
	if sco-heed-hack is false or sco-seed-sack is false or sco-plead-plaque is false, the rule succeeds;
	the rule fails;

volume thing stuff

table of clashing cord guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"flashing"	"ford"	--	false	cord-todo rule	"No bridge across a river, or car, or intergalactic space traveler whizzes by."

this is the cord-todo rule:
	if sco-slashing-sword is false, the rule succeeds;
	the rule fails;

table of clod clash guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bod|bawd|baud"	"bash"	--	false	clash-todo rule	"No, one fight is enough."
"cod"	"cash|cache"	--	false	clash-todo rule	"All sea life will be clearly visible."
"crawed"	"crash"	--	false	clash-todo rule	"You remember people actually glad they got into an accident."
"god"	"gash"	--	false	clash-todo rule	"You don't need to hurt anyone or express anger at being hurt."
"lawd|lawed"	"lash"	--	false	clash-todo rule	"You aren't big on thinking about the details of punishment."
"mod"	"mash"	--	false	clash-todo rule	"You do not need to start a new dance craze."
"nod"	"nash|gnash"	--	false	clash-todo rule	"There's nobody you can see to commiserate here with."
"rod|rawed"	"rash"	--	false	clash-todo rule	"You need leave no welt with instruments of punishment."
"sawed"	"sash"	--	false	clash-todo rule	"You need no fancy clothes."

this is the clash-todo rule:
	if sco-trod-trash is false, the rule succeeds;
	the rule fails;

table of coughin coy boffin boy guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"offin"	"oi"	--	false	--	"That is not the life [the boy] deserves, and it's not the end he deserves, either."
"soften"	"soy"	--	false	--	"Perhaps [the boy] will be able to get the education for such a bioengineering job, if you turn things around."

table of crude crass lewd lass guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"booed"	"bass"	--	false	lass-todo rule	"You don't want to get sea bass irritable."
"brewed|brood"	"brass"	--	false	lass-todo rule	"[if player has power plate]You already have much better armor[else]The armor on [the lack list] probably needs to be stronger than brass[end if]."
"mood|mooed"	"mass"	--	false	lass-todo rule	"You'd be kind of creeped out to hear something inanimate start making morose cow noises."
"nude"	"nahs"	--	false	lass-todo rule	"Scolding never works."
"poohed"	"pass"	--	false	lass-todo rule	"You think you see an exit out, but nah, it's just get you more lost."
"sued"	"sass"	--	false	lass-todo rule	"How very anti-freedom of speech and unlike a [this-game-noi]!"
"tude"	"tass"	--	false	lass-todo rule	"You're already in the text adventure spirit."
"youd"	"yass"	--	false	lass-todo rule	"You manufacture feelings of optimism."

this is the lass-todo rule:
	if sco-glued-glass is false, the rule succeeds;
	the rule fails;

table of hold hole guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bold"	"bowl"	--	false	trivially false rule	"[item-guess of bold bowl]"
"cold"	"coal"	--	false	trivially false rule	"[item-guess of cold coal]"
"fold"	"foal"	--	false	hole-guess-todo rule	"[no-animal-sac]."
"gold"	"goal"	--	false	hole-guess-todo rule	"You think for a minute. More money would be nice. But no. That cannot be a goal! That is not why you do things! Surely there are more altruistic goals out there."
"mold"	"mole"	--	false	hole-guess-todo rule	"[no-animal-sac]."
"old"	"ole|ol"	--	false	hole-guess-todo rule	"You try think up a song about the Old Ol['] Hold Hole, but there is no creative burst."
"polled"	"pole|poll"	--	false	hole-guess-todo rule	"[too-rep]."
"rolled"	"role|roll"	--	false	hole-guess-todo rule	"[too-rep]."
"scold"	"skoal"	--	false	hole-guess-todo rule	"You picture yourself telling kids chewing tobacco isn't safe. I mean, the alternative of discouraging a Viking feast might be brave, but it also might not be bright."
"sold"	"sole|soul"	--	false	trivially false rule	"[item-guess of sold soul]"
"told"	"toll"	--	false	hole-guess-todo rule	"You are bright and brave! There is no time to wallow in a long story of prices paid and so forth. Or to listen to one."
"trolled"	"troll"	--	false	hole-guess-todo rule	"[too-rep]."

this is the hole-guess-todo rule:
	if number of playerknown holeitems < 3, the rule succeeds;
	the rule fails;

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

to say item-guess of (hi - a holeitem):
	if hi is moot:
		say "The [hi] has already served its purpose.[no line break]";
	else if hi is not off-stage:
		say "You already got [the hi].[no line break]";
	else if hi is not unguessed:
		say "But you have already divined a need for [the hi].[no line break]";
	else:
		if the player's command includes "sole":
			say "That seems close, but you probably won't run into any fish markets. Perhaps something more spiritual?";
			continue the action;
		say "You deduce a [hi] would fit nicely into the hold hole.[no line break]";
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
	if number of playerknown holeitems is 3, declue-hole-and;

to declue-hole-and:
	declue hold hole;
	declue bold bowl;
	declue sold soul;
	declue cold coal;

table of lack list guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"black"	"blissed"	--	false	list-todo rule	"You wonder how you'd look in all black. Pretty neat." [brack brissed was too much]
"faq"	"fist"	--	false	list-todo rule	"You aren't up on hand-to-hand combat and don't want to be."
"hack"	"hissed"	--	false	list-todo rule	"You mentally deplore how you were pushed aside."
"mac|mack"	"missed|mist"	--	false	list-todo rule	"You'd hate for this useful bit of paper to disappear into a mist."
"pack"	"pissed"	--	false	list-todo rule	"Whoah! Guns aren't good if you're angry!"
"rack|wrack"	"wrist"	--	false	list-todo rule	"You vow to continue typing out good-guess rhymes until it hurts."
"sack"	"cyst"	--	false	list-todo rule	"Your skin is not perfect. You'd love to wipe out something."
"wack"	"wist"	--	false	list-todo rule	"You recognize pining for the past might be too much."

this is the list-todo rule:
	if sco-jack-gist is false, the rule succeeds;
	the rule fails;

table of one wish fun fish guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"gun"	"gish"	--	false	--	"You get a gish gallop going, but the fish doesn't seem to understand."
"none"	"nish"	--	false	--	"The fish swims around, ignoring your temporary nihilism."
"pun"	"pish"	--	false	--	"The fish looks blankly at you. It has no knowledge of puns."

table of pallid pent valid vent guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"ballad"	"bent"	--	false	vent-todo rule	"Being a [this-game-noi], you love keeping an ear open for off-color tunes."

this is the vent-todo rule:
	if sco-salad-scent is false, the rule succeeds;
	the rule fails;

table of perky pap guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"clerky"	"clap"	--	false	pap-todo rule	"You consider the right way to applaud bureaucracy."
"irky"	"app"	--	false	pap-todo rule	"You download no annoying application to your phone. You don't even have a phone on you."
"kirky"	"cap"	--	false	pap-todo rule	"You find no clothes that make you talk with dramatic pauses or yell KHAN."
"lurky"	"lap"	--	false	pap-todo rule	"You slightly fear your junior-high gym teacher just waiting to give out punishment."
"turkey"	"tap"	--	false	pap-todo rule	"Even if one appeared, you'd wonder how they'd fit through there."
"worky"	"whap"	--	false	pap-todo rule	"Nobody is there to kick or shove you into gear."

this is the pap-todo rule:
	if sco-murky-map is false, the rule succeeds;
	the rule fails;

table of posh pick guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"cosh"	"kick"	--	false	pick-todo rule	"You momentarily fear different types of violence. It keeps you motivated, you hope."
"frosh"	"frick"	--	false	pick-todo rule	"You remember in high school how underclassmen were beaten up for swearing or not swearing."
"mosh"	"mick"	--	false	pick-todo rule	"You neither see Jagger nor develop moves like him"
"nosh"	"nick"	--	false	pick-todo rule	"Ugh! Prison food!"
"tosh"	"tick"	--	false	pick-todo rule	"Thankfully, you have no insects or time crunches to worry about."
"wash"	"wick"	--	false	pick-todo rule	"Doing so would mean you can't light a candle. That's what you meant, right?"

this is the pick-todo rule:
	if pick-score < 2, the rule succeeds;
	the rule fails;

table of rime road guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"chime"	"choad|chode"	--	false	road-todo rule	"You are all for off-color humor but it doesn't seem appropriate here."
"crime"	"crowed"	--	false	road-todo rule	"You eavesdrop on no criminal confessions."
"dime"	"doughed|dohed"	--	false	road-todo rule	"You find no money in a loaf of bread."
"grime"	"growed"	--	false	road-todo rule	"Ungrammatical, and anyway, you are trying to clean things up here!"
"im"	"owed"	--	false	road-todo rule	"All this entitlement is brave but not bright."
"lime"	"load"	--	false	road-todo rule	"The fruit or the stone, you can't see yourself lugging it around."

this is the road-todo rule:
	if sco-time-toad is false, the rule succeeds;
	the rule fails;

table of sassed sort guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"blast"	"blort"	--	false	sort-todo rule	"You wonder if this is cheating, since blort is a portmanteau of ... wait, BLOW and snort, not blast. Then you realize there's nothing to snort about!"
"mast|massed"	"mort"	--	false	sort-todo rule	"Not what you need now, death around the corner, for the ship or otherwise."

this is the sort-todo rule:
	if sco-passed-port is false, the rule succeeds;
	the rule fails;

table of sour slate guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"hour"	"late"	--	false	slate-todo rule	"You frown at the [if sco-power-plate is true]power plate[else]sour slate[end if], wishing you'd seen it sooner."

this is the slate-todo rule:
	if sco-power-plate is false, the rule succeeds;
	the rule fails;

table of spurning spew guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"burning"	"boo"	--	false	spew-todo rule	"No, Lou need[edspew] something more positive."
"churning"	"chew"	--	false	spew-todo rule	"No, Lou need[edspew] something less reflexive."
"yearning"	"you"	--	false	spew-todo rule	"No, Lou need[edspew] something less overtly earnest, something with solutions."

this is the spew-todo rule:
	if sco-spurning-spew is false, the rule succeeds;
	the rule fails;

to say edspew: say "[if sco-spurning-spew is true]ed[else]s[end if]"

table of stew stuff guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"boo"	"buff"	--	false	stuff-todo rule	"[if sco-stew-stuff is false]You try to puff yourself out as more muscular than you actually are. No dice[else]It's stew ingredients, not protein shake ingredients[end if]."
"chew|choo"	"chuff"	--	false	stuff-todo rule	"You make train noises, but none appears."
"coo"	"cuff"	--	false	stuff-todo rule	"You consider lashing out for its own sake."
"do"	"duff"	--	false	stuff-todo rule	"No, you want to do something right."
"drew"	"druff"	--	false	stuff-todo rule	"You remember shaking your hair out and suddenly understanding those shampoo commercials."
"flew|flu"	"fluff"	--	false	stuff-todo rule	"You don't have time to fly, or get sick, or other frivolities!"
"goo"	"guff"	--	false	stuff-todo rule	"You produce no sticky stuff."
"moo"	"muff"	--	false	stuff-todo rule	"You try and fail to sound like a cow. Or maybe you were trying to make a bad cow noise."
"poo|pooh"	"puff"	--	false	stuff-todo rule	"You feel fake exhaustion for a bit."
"rue"	"rough"	--	false	stuff-todo rule	"Bummer, you think, that things aren't given to you."
"screw"	"scruff"	--	false	stuff-todo rule	"Hey, now. This far along on the adventure, you may not be looking perfect, yourself."
"skew"	"scuff"	--	false	stuff-todo rule	"You shuffle your feet a bit, exaggerating what has happened and what you face."
"slew|slue"	"sluff|slough"	--	false	stuff-todo rule	"You blink, only to find you have not wound up in a bog, which is probably for the better."
"hoo|who"	"huff"	--	false	stuff-todo rule	"Alas (or not,) there is nobody to get huffy at."

this is the stuff-todo rule:
	if sco-new-nuff is false, the rule succeeds;
	the rule fails;

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
"write|right"	"wooly"	--	false	tully-todo rule	"That could be construed as a compliment. Ruggedness and all."

to say end-tough:
	end the story saying "Struck, Strikes? Yuck, Yikes!";
	follow the shutdown rules;

to say end-lenient:
	end the story saying "Curse-y Cad Mercy?! MAD!";
	follow the shutdown rules;

this is the sham-yet rule:
	if tully-score < 2, the rule fails;
	the rule succeeds;

this is the tully-todo rule:
	if tully-score < 2, the rule succeeds;
	the rule fails;

table of yucky yacht guesses
mist-1 (text)	mist-2 (text)	mist-rule	got-yet	leet-rule	mist-txt
"bucky"	"bought|bot"	yacht-todo rule	false	yacht-todo rule	"Hmm. Maybe you could create a robot named Bucky to clean up the yacht. But how?"
"clucky"	"clot"	--	false	yacht-todo rule	"You think about people who've wasted your time with meaningless jabber."
"ducky"	"dot"	--	false	yacht-todo rule	"You see no dot or person named Dorothea to proclaim as ducky."
"lucky"	"lot"	--	false	yacht-todo rule	"You grumble about rich people for a bit. It doesn't hurt."
"nucky"	"not|knot"	--	false	yacht-todo rule	"You don't want to cross a mogul of a Boardwalk Empire just now."
"rucky"	"rot"	--	false	yacht-todo rule	"You take a moment to internally deplore pointless fighting."
"sucky"	"sot|sought"	--	false	yacht-todo rule	"[this-game-noi]s aren't negative like that! Everyone sought is worthwhile!"
"trucky"	"trot"	--	false	yacht-todo rule	"You have no need to walk through or over anyone."

this is the yacht-todo rule:
	if sco-plucky-plot is false, the rule succeeds;
	the rule fails;

volume other

table of first check rhymes
mist-1	mist-2	mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
text	text	a topic	a rule	a truth state	a rule	text

Bright Brave Knight Knave Mistakes ends here.

---- DOCUMENTATION ----
