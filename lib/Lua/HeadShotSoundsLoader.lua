--[[

Headshot Hitsounds v1.0 by Game Mechanic

License: Simplified BSD License

	Copyright (c) 2015, Game Mechanic.
	All rights reserved.

	Redistribution and use in source and binary forms, with or without
	modification, are permitted provided that the following conditions are met:

	1. Redistributions of source code must retain the above copyright notice, this
	   list of conditions and the following disclaimer. 
	2. Redistributions in binary form must reproduce the above copyright notice,
	   this list of conditions and the following disclaimer in the documentation
	   and/or other materials provided with the distribution.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
	ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
	DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
	ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	The views and conclusions contained in the software and documentation are those
	of the authors and should not be interpreted as representing official policies, 
	either expressed or implied, of the FreeBSD Project.
	
	Please note that all code written by OVERKILL Software is
	Copyright 2015 OVERKILL Software. All Rights Reserved, Starbreeze AB

	
Included files:

	LUA Hook 3.2.0 (c) Hafatus
		/IPHLPAPI.dll
		
	Script:
		/lib/Lua/HeadShotSoundsLoader.lua
		/lib/Lua/HeadShotSounds/HeadShotSounds.lua
	
	Sounds:
		/lib/Lua/HeadShotSounds/bubble.wav
		/lib/Lua/HeadShotSounds/double bubble.wav
		/lib/Lua/HeadShotSounds/game mechanic hitsound.wav
		/lib/Lua/HeadShotSounds/glassbust.wav
		/lib/Lua/HeadShotSounds/headshot.wav
		/lib/Lua/HeadShotSounds/hitsound Q3.wav
		/lib/Lua/HeadShotSounds/hitsound Q3_lowpitch.wav
		/lib/Lua/HeadShotSounds/snowshot.wav
	
About Me:
	I am a YouTube content creator currently creating videos exclusively for Payday 2,
	focused around teaching how to play the game and be better at it.
	
	I am a developer in other languages, but this is my first completed LUA project.
	I hope to continue learning and create more LUA based mods for Payday 2 as I gain
	more understanding of the way LUA and specifically Payday 2's LUA works.
	
Connect:
	youtube.com/gamemechanic1
	twitter.com/gamemechanic_
	steamcommunity.com/id/gamemechanic

Usage:
	Plays "lib/Lua/HeadShotSounds/headshot.wav" audio file upon successful headshot.
	Optionally you can change path to audio file in the local variable headshotsound. I
	do not know every audio file type PlayMediaV2() supports, but I do know it supports
	.wav and .mp3 files, so you are free to use either. Check LUA hook documentation for
	usage of PlayMediaV2() for further details.

Known Issues:
	Does not always play the entire headshot audio file upon successful headshot. No 
	fix is planned at this time because playback has a very high success rate.

Change log:
	1/28/2015 v1.0 Initial release

Planned Updates:
	;)

Thanks:
	Being my first project, my biggest thanks would be to Google. I wore Google out during
	the development of this mod. I also got some help from:
		Olipro
			-for calling me out for not learning LUA yet [challenge accepted]
		KarateF22
		Dougley
		Simon (GREAT BIG BUSHY BEARD)
		Anyone else that I may have forgotten
		
Notes:
	I know that this info block is abundantly excessive for this tiny script ;)
]]

-- Register as post require to lib/managers/PlayerManager
RegisterScript("lib/Lua/HeadShotSounds/HeadShotSounds.lua", 2, "lib/managers/playermanager")
