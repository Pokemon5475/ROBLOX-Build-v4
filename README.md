ROBLOX-Build-v4
===============

ROBLOX Build v4 Developer's Edition

An edition of Build v4 in which the source code is easily visible. Changes can be made to the sources which will be reflected in the tool/plugin.


--[[

Icons by PyroInfinity (thanks bud).

	The Developer's kit is for those who may want to adjust the tool
or make your own plugins for it. It provides the raw code in an easy-
to-read form. Here's how to set up.
- "Buildv4_Sources" should be placed in game.ReplicatedStorage.
- "Buildv4_ColorAdjust" belongs in game.ServerScriptService
- "Buildv4_LoadCharacter" also belongs in game.ServerScriptService
- "Build v4" (the hopperbin) belongs in StarterPack

	Once you've done that, delete this model (maybe move the README
to Lighting so you can refer to it).

--////////////////////////////
--//
--// To launch the plugin:
--//			loadstring(game.ReplicatedStorage.Buildv4_Sources.Buildv4Plugin.Source)();
--//

Permissions System:
	The tool by default has permissions enabled. This makes for
a good public build server tool. In fact, with a complementary
script or two, you can keep your server perfectly clean even if
it's totally public.
	To disable permissions: open up the hopperbin, change line 5 to:]]
USES_PERMISSIONS = false;

--[[
	How the system works: there exists a model in workspace called
"Permissions." Inside this model there is another model for every
player (all of these sub-models are lowercase). If a player has build
permissions for that player, then a BoolValue will exist inside of
this model with his or her name (also, lowercase).
	
	Have fun with my tool. I'd love for you to give it a thumbs up/
favorite if you enjoy it (or best yet: spread the word).
]]
