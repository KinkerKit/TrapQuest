Opening by Actions begins here.

Understand "op [something]" as opening.

[!<autoOpen:Integer>*

REQUIRES COMMENTING

*!]
autoopen is a number that varies.

Does the player mean opening a container: it is very likely.

[!<CheckOpeningAContainer>+

REQUIRES COMMENTING

+!]
Check opening a container:
	if the noun is open, say "But it's already open?" instead;
	if the player is throne stuck, say "You can't reach it while stuck on the throne." instead;
	if the player is drill stuck, say "You can't reach it while stuck on the drill." instead;
	if the player is pole stuck, say "You can't reach it while stuck on the dildo." instead;
	if the player is hook stuck, say "You can't reach it while stuck on the ass hook." instead;
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if autoopen is 0 and the prevsearch of the noun is 2 or the prevsearch of the noun is 4:
		say "Are you sure you want to open this trapped container? [yesnolink] ";
		unless the player consents, say "You decide against it." instead;
	if the prevsearch of the noun is 0 and the noun is not pink wardrobe and the bimbo of the player <= 12 and autosearch is 1 and the player is upright and autoopen is 0 and the player is able to use manual dexterity and the player is not breasts blinded and tutorial is 0:
		if the delicateness of the player > 1:
			say "You search the [ShortDesc of noun] for traps first[one of][if the bimbo of the player < 10].  [line break][variable custom style]This game is mental.  I need to be careful.[roman type][line break][otherwise].[end if][or].[stopping]";
			try searching the noun;
			if the prevsearch of the noun is 2 or the prevsearch of the noun is 4:
				do nothing instead;
			otherwise:
				compute extra turn;
				if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type]" instead;
				now seconds is 2;
			if the noun is open, now autoopen is 0 instead; [If the player automatically searches, there's a chance this could then cause the player to automatically open the container!  SO it might already be open here.]
		otherwise:
			say "[one of][line break][variable custom style]Searching for traps sounds like a waste of time.  What's the worst they could do?[roman type][line break][or][stopping]";
	now autoopen is 0.

[!<CarryOutOpeningAContainer>+

REQUIRES COMMENTING

+!]
Carry out opening a container:
	decrease the charge of the dungeon altar by a random number between 1 and 30;
	now seconds is 2.

[!<ReportOpeningAContainer>+

REQUIRES COMMENTING

+!]
Report opening a container:
	if the noun is pink wardrobe:
		add treasure to the noun;
	otherwise if the noun is memic:
		compute mimic;
	otherwise:
		if the noun is not emptied:
			add treasure to the noun;
		otherwise if the number of objects in the noun is 0:
			say "How lame, it's empty.";
		otherwise:
			say "The [noun] still contains [ShortDesc of list of things in the noun].";
		if the noun is not friendly:
			say "CLICK!  Opening this container has triggered a trap!";
			let T be a random untriggered click trap in the location of the noun;
			trigger T;
			repeat with C running through all closed containers in the location of the player:
				now the prevsearch of C is 0.
The reveal any newly visible interior rule is not listed in the report opening rulebook.
The standard report opening rule is not listed in the report opening rulebook.

[!<CheckClosingAContainer>+

REQUIRES COMMENTING

+!]
Check closing a container:
	if the noun is open, say "You don't see the point." instead.


Opening ends here.

