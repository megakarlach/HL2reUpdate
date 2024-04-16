<img src="https://raw.githubusercontent.com/megakarlach/HL2UpdatePlusPlus/main/hl2reupdatelogo.jpg" width="640" ><br>

**IMPORTANT**, this mod was formerly called as "__Half-Life 2: Update++__", but decided to renamed it to "**Half-Life 2: reUpdate**" as it's was cooler.

IMPORTANT: THIS IS FOR HALF-LIFE 2: UPDATE (by Fillip Victor) ONLY, DO NOT INSTALL THIS ON VANILLA HL2 (AND IT'S EPISODES), OR ANY OTHER MODS (including MMOD).
This mod was formerly known as "__Half-Life 2: Update++__", but has been renamed to "**Half-Life 2: reUpdate**".

See this patch showcases here:
https://www.youtube.com/embed/BPhvxuZAkQ4

This is the raw source files of the patch itself.<br>
(Link Updated 4/16/24)<br>

There's also HL2 reUpdate for Mac and Linux, but those are currently untested since I don't use these OS.

README FOR HL2: reUPDATE (formerly HL2: Update++)
1.0.4.1 - build 8491853 - Windows version - 4/16/2024

For more information about this patch, see:
GameBanana: https://gamebanana.com/mods/429040
PCGW: https://community.pcgamingwiki.com/files/file/2588-hl2-update-new-engine-patch-new-bugfixes-for-hl2-update-updated-2023/

Downloads:
Gamebanana, PCGW: See above.
MEGA: https://mega.nz/folder/cj8VWTgI#hsPshFA1J4ARrqcw_UVmHQ

			== How to install/update patch? ==
1. Run Installer > Next
2. Read stuff carefully if needed (as it's include details about new version, or duplication of README which you can ignore) then Agree
3. Select the game install folder, Example: C:\Program Files (x86)\Steam\steamapps\common\Half-Life 2 Update
3b. For those who don't know where Steam and the game is installed, go to Steam Library > 
right click Half-Life 2 Update > Properties > Local Files > Browse...
4. Install (make sure the game is closed)
5. Launch it, you are basically done!

6 (Optional). If you want to install the custom Orange UI with Verdana & Trebuchet MS font, 
put the VPK file into hl2\custom folder (if it doesn't exist, create it).

			== INFO ==

This is the unofficial patch for Half-Life 2: Update (http://store.steampowered.com/app/290930), which upgrades the outdated version of the Source engine to latest version using files from vanilla version of Half-Life 2, aka the original 
(https://store.steampowered.com/app/220), which allows Half-Life 2: Update to have new features and bug fixes from the vanilla game such as:

- Increased FOV from 90 to 110 (120 max via Console "fov_desired 120" or Gamepad UI)
- HUD Aspect Ratio (4:3, 16:9, 16:10)
- Vulkan renderer (-vulkan)
- Working Gamepad UI/Steam Deck UI (-gamepadui)
- Legacy controller support (XInput) has working rumble/vibration (through updated SDL2) (WINDOWS ONLY).
- Better controller support (Steam Input, may not work)

Beside the official changes above. The reUpdate patch also added/changed some features:
- The Gamepad UI have been customized, in this case, most thumbnails on "New Game" chapters are taken from HL2: Update instead of the vanilla HL2.
- (NEW) More improvements and few new features to Gamepad UI, restored some missing options, including:
Keyboard Advanced Options:
Fast Weapon Switch - Disabled (0), Enabled (1), Gamepad style (2), Horizontal style/Postal III style (3), can be also changed with "hud_fastswitch" command.
Enable Developer Console directly via Gamepad UI
Mouse sensitivity on Gamepad UI can be increased up to 20.
- (NEW) Some improvements to old VGUI:
Video - Advanced
Removed broken "Use 'bloom' effect when available" that always uncheck itself when saved. Bloom and HDR will still functioning normally with it's options remain available.
FOV options increased to 120 without using Console command.
- Optional: Orange Gamepad UI scheme with Verdana & Trebuchet MS font included.

Bugs that are also fixed (by Valve), will now works with HL2: Update aswell including:
Recently:
- Fixed a hang where NPC pathfinding could stall forever
- Fixed sprinting when using an external controller (This fix would be pointless with HL2 reUPDATE due to Steam Controller being unsupported anyway).

Previously:
- Dropship container gun fix which makes the gun possible to turn (existed since 2010, now fixed).
- Long loading saves bug/engine freezing while saving has been fixed (caused by the game tries to access \\MOD, which freezes the engine).
- Improved loading times
- Fixed some stuttering on level transitions
- NPC eyes not blinking
- Missing Combine sounds has been fixed (noticeable by shooting them)
- and much more... (see https://web.archive.org/web/20160830085422/http://forums.steampowered.com/forums/showthread.php?t=1286478)

== OTHER UNFIXED BUGS ==
- Steam Input are non-functional. You can use the legacy XInput mode (using -nosteamcontroller command line) for game controllers (this is optimized for X360 Controller, but may work
with anything else).
- Demo mode. This may or may not happen, you can follow the instruction above if you encountered this.
- DirectX 8 mode by default. This is a common bug that also affect vanilla HL2 aswell, and there's no way we gonna fix them. To fix this, launch the game with -dxlevel 95, configure your video settings, save it (by clicking OK), then
exit the game, remove the launch options, launch the game again, if you got video settings reset, configuring it again, then save it, try to relaunch
just to make sure, if video settings isn't reset to low quality or DX8, then you are good to go.

			== LICENSE ==

Games files included in this patch are © 2004 - 2024 Valve Corporation.
Redistributing this patch is allowed as long if you credit this to me, and Valve. Commercial purposes not allowed.

For SDL2:

This software is provided 'as-is', without any express or implied
warranty.  In no event will the authors be held liable for any damages
arising from the use of this software.


Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software
   in a product, an acknowledgment in the product documentation would be
   appreciated but is not required.

2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.

3. This notice may not be removed or altered from any source distribution.

The setup icon was based off the Half-Life 2 icon made by vaksa
© 2005 vaksa, used with permissions
https://www.deviantart.com/vaksa/art/Half-Life-2-icon-16869820
and the Windows Vista/7 setup icon from Microsoft Windows. © Microsoft Corporation.

This patch is not made by, or affiliated with Valve, Fillip Victor, and others who have worked on the game.



