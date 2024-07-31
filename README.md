# Half-Life 2: reUpdate - Patch & ported Steam Deck features & bug fixes for Half-Life 2: Update
<img src="https://raw.githubusercontent.com/megakarlach/HL2UpdatePlusPlus/main/hl2reupdatelogo.jpg" width="640" ><br>

See this patch showcases here:
https://www.youtube.com/embed/BPhvxuZAkQ4

More information about this patch:
GameBanana: https://gamebanana.com/mods/429040

PCGW: https://community.pcgamingwiki.com/files/file/2588-hl2-update-new-engine-patch-new-bugfixes-for-hl2-update-updated-2023/

Patch current version: 1.0.4.1 - build 8491853 - 4/16/2024 (Windows & Linux)

Downloads:
Gamebanana, PCGW: See above.
MEGA: https://mega.nz/folder/cj8VWTgI#hsPshFA1J4ARrqcw_UVmHQ
Last updated 4/16/2024.

# About this mod
WARNING: This mod is for "Half-Life 2: Update" only.
This is the unofficial patch for Half-Life 2: Update, which adds all the bug fixes, Steam Deck features from original (vanilla) Half-Life 2 to HL2: Update.

## Installation / Update (Windows)
1. [Buy Half-Life 2](https://store.steampowered.com/app/290930) (you don't need to download the original version unless you want to play the episodes, as HL2 Update is standalone)
2. [Download and Install Half-Life 2: Update from Steam](https://store.steampowered.com/app/290930)
3. [Download the reUpdate patch](https://github.com/megakarlach/HL2reUpdate/releases)
4. Extract, then run the reUpdate installer > Next
5. These are just readme about the patch itself, with links in case you need to update patch. Simply click "Agree".
6. Select the game install folder, example: C:\Program Files (x86)\Steam\steamapps\common\Half-Life 2 Update (different on most systems)
7. Install (make sure the game is closed)
8. Launch it, you are basically done!

## Installation / Update (Mac, 32-bit only)
1. [Buy Half-Life 2](https://store.steampowered.com/app/290930) (you don't need to download the original version unless you want to play the episodes, as HL2 Update is standalone)
2. [Download and Install Half-Life 2: Update from Steam](https://store.steampowered.com/app/290930)
3. [Download the reUpdate patch](https://github.com/megakarlach/HL2reUpdate/releases)
4. Go to these following folders (depends where Steam & the game is installed):
~/Library/Application Support/Steam/SteamApps/common/Half-Life 2 Update
5. Open "1. Mac Binaries (untested)" folder, copy everything then paste on "Half-Life 2 Update" folder, overwrite everything.
6. Open "2. Assets" folder, copy everything & paste on "Half-Life 2 Update" folder
7. Launch it, see if its work, if it was, you are basically done!

## Installation / Update (Linux)
1. [Buy Half-Life 2](https://store.steampowered.com/app/290930) (you don't need to download the original version unless you want to play the episodes, as HL2 Update is standalone)
2. [Download and Install Half-Life 2: Update from Steam](https://store.steampowered.com/app/290930)
3. [Download the reUpdate patch](https://github.com/megakarlach/HL2reUpdate/releases)
4. Go to these following folders (depends where Steam & the game is installed)
	Normal: ~/.local/share/Steam/steamapps/common/Half-Life 2 Update
	Flatpak: ~/.var/app/com.valvesoftware.Steam/steamapps/common/Half-Life 2 Update
		(sudo perms or similar might be required, idk)
5. Open "1. Linux Binaries (untested)" folder, copy everything then paste on "Half-Life 2 Update" folder, overwrite everything.
6. Open "2. Assets" folder, copy everything & paste on "Half-Life 2 Update" folder
7. Launch it, see if its work, if it was, you are basically done!

(Optional) If you want to install the custom Orange-themed Gamepad UI with Verdana & Trebuchet MS font (looks similar to the console version), 
put the VPK file into hl2\custom folder (if it doesn't exist, create it).

NOTE: For those who don't know where Steam and the game (Half-Life 2: Update) is installed, go to Steam Library > 
right click Half-Life 2: Update > Properties > Local Files > Browse...
An explorer/file browser window will pop-up. Copy the path from the address bar (example: V:\Steam\steamapps\common\Half-Life 2 Update, may vary by system).

NOTE: There will be limited support for cracked version (like cs.rin.ru) of HL2: Update as it's too much work.

## Here are the features:
- Increased FOV from 90 to 110 (120 max via Console "fov_desired 120" or Gamepad UI)
- HUD Aspect Ratio (4:3, 16:9, 16:10)
- Vulkan renderer (-vulkan)
- Working Gamepad UI/Steam Deck UI (-gamepadui)
- XInput/Legacy controller support has working rumble/vibration (as SDL2 was updated) (Windows only).
- Steam Input (may not work)

Beside the official changes above. The reUpdate patch also added/changed some features:
- The Gamepad UI have been customized, in this case, most thumbnails on "New Game" chapters are taken from HL2: Update instead of the vanilla HL2.
- More improvements and few new features to Gamepad UI, restored some missing options, including:
  Keyboard Advanced Options:
    Fast Weapon Switch - Disabled (0), Enabled (1), Gamepad style (2), Horizontal style/Postal III style (3), can be also changed with "hud_fastswitch" command.
    Enable Developer Console directly via Gamepad UI
    Mouse sensitivity on Gamepad UI can be increased up to 20.
- (NEW) Some improvements to old VGUI:
  Video - Advanced
    Removed broken "Use 'bloom' effect when available" that always uncheck itself when saved. Bloom and HDR will still functioning normally with it's options remain available.
    FOV options increased to 120 without using Console command.
- Optional: Orange Gamepad UI scheme with Verdana & Trebuchet MS font included.

## Bugs fixed:
November 17, 2023
- Fixed a hang where NPC pathfinding could stall forever
- Fixed sprinting when using an external controller (This fix would be pointless with HL2 reUPDATE due to Steam Controller being unsupported anyway).

Previously:
- Dropship container gun fix which makes the gun possible to turn (previously present since 2007 on X360/PS3 (Orange Box), and 2010 on PC, now fixed).
- Long loading saves bug/engine freezing while saving has been fixed (caused by the game tries to access \\MOD, which freezes the engine).
- Improved loading times (for users with HDD only)
- Fixed some stuttering on level transitions
- NPC eyes not blinking (fixed in 2019)
- Some missing Combine sounds has been fixed (noticeable by shooting them)
- and much more... (see [here](https://web.archive.org/web/20160830085422/http://forums.steampowered.com/forums/showthread.php?t=1286478))

# Bugs that hasn't been fixed
- Steam Input are non-functional.
  You can use the legacy XInput mode (using -nosteamcontroller command line) for game controllers (this is optimized for X360/Xbox One/Series X|S Controller, but may work
  with anything else).
- DirectX 8 compability mode by default. This is a common bug that also affect vanilla HL2 aswell, when playing the game on some modern hardware/GPUs.
  To workaround this bug, launch the game with -dxlevel 95, configure your video settings, save it (by clicking OK), then
  exit the game, remove the launch options, launch the game again, if your video settings was reset again, just configuring it again, then save it, try to relaunch
  just to make sure, if video settings doesn't reset to low quality, low textures or DX8, then you are good to go.

# LICENSE (ignore)

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



