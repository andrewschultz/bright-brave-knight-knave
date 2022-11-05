Version 1/221007 of Bright Brave Knight Knave Mistakes by Andrew Schultz begins here.

"This tracks all the possible good guesses that are counted in Bright Brave Knight Knave."

to current-table-note-x (tn - a table name):
	current-table-note tn;

table of general good guesses
mist-regex(text)	mist-rule	got-yet	leet-rule	mist-txt
"slight slave"	--	false	--	"You grumble about how you are a slight slave to your quest. It's therapeutic."

volume room stuff

table of bass bath guesses
mist-regex	mist-rule	got-yet	leet-rule	mist-txt
"has hath"	--	false	--	"You conjugate old English verbs, in case this may be important in the future. It isn't right now."
"lace|lass lath"	--	false	--	"You need no washing machine, especially not early in the game before you worked up a sweat[wrong-pron-lace]."
"place plath"	--	false	--	"You mentally evaluate Sylvia Plath's poetry and her novel, [i]The Bell Jar[r][wrong-pron]."
"race wrath"	--	false	--	"You get as mad as you can, as fast as you can[wrong-pron]."

to say wrong-pron-lace: if the player's command matches "lace", say "[wrong-pron]".

to say wrong-pron: say ". You also wonder if you are pronouncing things right"

volume thing stuff

table of first check rhymes
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
a topic	a rule	a truth state	a rule	text

Bright Brave Knight Knave Mistakes ends here.

---- DOCUMENTATION ----
