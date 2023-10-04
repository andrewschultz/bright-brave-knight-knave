Version 1/231004 of Bright Brave Knight Knave Postcomp by Andrew Schultz begins here.

"This adds a post-comp feature for BBKK: your friends talking as you wander around."

table of walkarounds
rm	hityet	croot	ru	quotey
Slid Slum	false	--	trivially false rule	"'Should we be here?' asks [pal1]. 'Yeah,' says [other-guy of pal1]. 'I thought we were gonna see cool new places.'"
Rut Row	false	--	--	"[pal1] looks kind of bummed. 'Well, I guess we can't go everywhere.'"
Bass Bath	false	Guide Geek	--	"The Guide Geek begins mentioning how they've been everywhere, or at least seen it on a map. The Weak Wooter is amazed they thought of doing so."
Bass Bath	false	Snide Sneak	--	"The Snide Sneak begins bragging about how they could find all sorts of weird places with diagonal directions. The Meek Mooter wonders if that wouldn't just make the adventure a mess. The Snide Sneak nods, impressed. Perhaps you all will find a passage inside somewhere. But diagonal directions are kind of wack."
Bass Bath	false	Fried Freak	--	"The Fried Freak and Chic Shooter take their time to appreciate the majesty of the hill rising above. They both mention they are not worthy to climb it."

pal1 is an eeker that varies.

after printing the locale description:
	if lbe < 2, continue the action;
	repeat through table of walkarounds:
		if hityet entry is true, next;
		if rm entry is not location of player, next;
		if there is a ru entry:
			process the ru entry;
			if the rule failed, next;
		now pal1 is random touchable eeker;
		say "[quotey entry][line break]";
		now hityet entry is true;

Bright Brave Knight Knave Postcomp ends here.

---- DOCUMENTATION ----
