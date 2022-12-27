Version 1/221216 of Bright Brave Knight Knave Beta Testing by Andrew Schultz begins here.

"This encompasses rare cases where we want commands available to beta testers but not to end players."

volume cheats

a holeitem has a number called sumnum.

sumnum of the bold bowl is 1.

sumnum of the cold coal is 2.

sumnum of the sold soul is 3.

chapter hiing

hiing is an action applying to one number.

understand the command "hi" as something new.

understand "hi [number]" as hiing.

understand "hi" as a mistake ("[holeitemlist][run paragraph on]")

to say holeitemlist:
	say "You need to specify a hole item number.[paragraph break]";
	repeat with HI running through holeitems:
		say "[sumnum of HI]. [if HI is not off-stage](already found) [end if][HI].";

carry out hiing:
	if the number understood < 1 or the number understood > 3:
		say "[holeitemlist]";
		the rule succeeds;
	repeat with HI running through holeitems:
		if sumnum of HI is number understood:
			if HI is not off-stage, say "You already found [the HI]." instead;
			give-player HI;
			the rule succeeds;
	say "WEIRD BUG: should've had a summonable help item corresponding to [the number understood].";
	the rule succeeds;

chapter hiing

hring is an action applying to one number.

understand the command "hr" as something new.

understand "hr [number]" as hring.

understand "hr" as a mistake ("[nilnonecue][run paragraph on]")

to say nilnonecue:
	say "You need to specify which slot Nil None goes in, 1 to 3."

carry out hring:
	if the number understood < 1 or the number understood > 3:
		say "[nilnonecue]";
		the rule succeeds;
	repeat with hr running through holeitems:
		if sumnum of hr is number understood:
			if hr is not off-stage, say "You already found [the hr]." instead;
			give-player hr;
			the rule succeeds;
	say "WEIRD BUG: should've had a summonable help item corresponding to [the number understood].";
	the rule succeeds;

chapter finaling

finaling is an action out of world.

understand the command "final" as something new.

understand "final" as finaling.

carry out finaling:
	now debug-allow-final is true;
	the rule succeeds;

when play begins (this is the note beta testing rule):
	say "Beta tester notes: [b]FINAL[r] will allow you to start the final command. [b]HI[r] 1-3 will allow you to pick off hole items 1-3.";

the note beta testing rule is listed last in the when play begins rulebook.

Bright Brave Knight Knave Beta Testing ends here.

---- DOCUMENTATION ----
