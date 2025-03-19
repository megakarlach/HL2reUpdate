# Half-Life 2: reUpdate
## Enhances Half-Life 2: Update, with 20th anniversary update features & bug fixes
<center><img src="https://github.com/megakarlach/HL2reUpdate/blob/main/hl2reupdatelogo.jpg?raw=true" width="480" ></center>

## About this patch
Half-Life 2: reUpdate is a patch that enhances Half-Life 2: Update. It adds 20th anniversary bug fixes, new featres (including Steam Deck Gamepad UI) from original (vanilla) Half-Life 2. Additionally, reUpdate also adds many exclusive map changes (which are not present on 20th Anniversary, pre-Anniversary nor Update).

## Key Features
### reUpdate Features:
- Customized Gamepad UI (screenshots are taken from HL2: Update, instead of original HL2, used for New Game thumbnails)
- More improvements and few new features to Gamepad UI, restored some missing options, including:
  - Weapon Selection Style - Disabled (0), Enabled (1), Cross (Controller) (2), Carousel (Postal III style) (3), can be also changed with "hud_fastswitch" command.
  - Options to Enable Developer Console on Gamepad UI
  - Mouse sensitivity on Gamepad UI can be increased up to 20.
- Improvements to VGUI menu:
  - Removed broken "Use 'bloom' effect when available" that always uncheck itself when saved. Bloom and HDR will still functioning normally with it's options remain available.
  - FOV options increased to 120 without using Console command.
- Optional stuff:
  - Orange Gamepad UI scheme with Verdana & Trebuchet MS font included.

### Upcoming reUpdate Features (BETA):
- Combining Developer Commentary (20th anniversary) with Community Commentary
- Also fixing typos in official Developer Commentary and the audio caching commentary subtitles being missing
- Map changes (will feature exclusive changes, for example, 3D Skybox on Ravenholm, all maps have radial fog, and maps are more detailed)

### Official Features:
- Increased FOV from 90 to 120
- HUD Aspect Ratio (4:3, 16:9, 16:10)
- Vulkan renderer (-vulkan)
- Classic Old Engine particles
- Working Gamepad UI/Steam Deck UI (-gamepadui), also to use Gamepad UI with DX9, use (-dx9 alongside -gamepadui)
- XInput/Legacy controller support has working rumble/vibration (as SDL2 was updated) (Windows only).
- Steam Input (needs to be enabled on Steam client)

### Important Note:
THE CURRENT PATCH (OUTSIDE BETA) DOES NOT INCLUDE ALL MAP CHANGES YET (this is still work in progress, but you can try it now on the BETA version)

NOTE (1/31/2025): The latest version of the patch currently were based off the 20th anniversary version (with Nov 17, 2024 official hotfix), which has most of the features of 20th anniversary like classic particles effect, working Steam Input, bicubic lightmaps. However, map changes are not available except in the work in progress BETA version (which only feature changes from Chapter 1 to 3 - Point Insertion to Route Kanal). Next BETA version will have changes from Chapter 4 to 6 (Water Hazard, Black Mesa East and Ravenholm), aswell running on newer engine build.

At the moment, instead you can play the regular Half-Life 2 for now, and wait for this to be finished.

## Download
**WARNING:** This patch is made for "Half-Life 2: Update" (AppID: 290930) only.

See this patch showcases here:
https://www.youtube.com/embed/BPhvxuZAkQ4

More information about this patch:

- GameBanana: https://gamebanana.com/mods/429040

- PCGW: https://community.pcgamingwiki.com/files/file/2588-hl2-update-new-engine-patch-new-bugfixes-for-hl2-update-updated-2023/

- GitHub: Go to [Releases](https://github.com/megakarlach/HL2reUpdate/releases).

## Versions

- Patch current version: 2.0.0.2 - build 9352380 (20th anniversary hotfix) - 11/18/2024 (Windows)
- Released Nov 20, 2024

- BETA version: [2.1.0.0](https://github.com/megakarlach/HL2reUpdate/releases/tag/v2.1.0.0-beta1) - BETA 1 - build 9377890 - 11/26/2024 (Windows)
- Released Jan 3, 2025

Linux version: 1.0.4.1 (I might try to port changes from 20th anniversary at some point but linux is not my main OS so expect delays, or might as well not be released)

The latest version is based off the slightly old version of 20th anniversary update + official hotfix (Nov 16, 2024).

BETA version is based on the latest 20th anniversary version (Nov 27, 2024). The next BETA 2 version will be based on newer version (Feb 11, 2025 update) and features map changes in "Water Hazard, Black Mesa East and Ravenholm". It will also feature new bug fixes aswell.

BETA version also feature **maps changes**, but **it will be incompatible with save files made on unpatched Update, or older version of reUpdate.** Start with New Game (or use "map" console command) instead.

## Installation Guide / Updating reUpdate
* See [Wiki - Installation](https://github.com/megakarlach/HL2reUpdate/wiki/Installation)

SINCE 2.0.0.0 UPDATE, YOU MUST UNINSTALL PREVIOUS VERSION (reUpdate 1.x.x.x), AND VERIFY HL2: UPDATE ON STEAM, BEFORE INSTALL ANY NEW VERSION.

(Optional) If you want to install the custom Orange-themed Gamepad UI with Verdana & Trebuchet MS font (inspired by the X360/PS3 Orange Box menu UI),<br>
put the VPK file into hl2\custom folder (if it doesn't exist, create it).

**NOTE:* For those who don't know where Steam and the game (Half-Life 2: Update) is installed, go to Steam Library > 
right click Half-Life 2: Update > Properties > Local Files > Browse...
An explorer/file browser window will pop-up. Copy the path from the address bar (example: V:\Steam\steamapps\common\Half-Life 2 Update, may vary by system).

## System requirements
- Windows Vista or later (newer Source 2013 builds are no longer compatible with XP since Steam Deck update)
- Atleast 2 GB disk space or higher
- Any graphics card from 2010 should be able to run with maximum settings with LOD disabled (Anniversary Update disables LOD).

**NOTE:** To get the best anti-aliasing, you can enable [SGSSAA anti-aliasing](https://github.com/megakarlach/HL2reUpdate/wiki/Get-the-best-graphical-settings#sgssaa-anti-aliasing) instead of MSAA which produces inferior result with alpha textures (even with alpha to coverage), 
however you need a good graphics card (GTX 1080Ti or RTX 3060 (latter tested) should handle 8X SGSSAA easily with 100+ FPS). Doing this also makes transparent or decal textures on far distance look sharper (if you adjust LOD bias).

**NOTE for Intel users or stuck on DX8:** To get the best graphics on Intel GPU, or to fix the game stuck on DirectX 8 mode, [Follow instructions on PCGW](https://www.pcgamingwiki.com/wiki/Engine:Source#Game_runs_on_DirectX_8.0.2F9.0_level_.28instead_of_9.0.2B.29).

## Changelogs
### **HALF-LIFE 2 20th ANNIVERSARY UPDATE**
See changes at: https://www.half-life.com/en/halflife2/20th
### **Other**
- Steam Input seems to be functional, again. To get this to work you need to enable it on Steam > View controller settings.
- Updated SDL to 2.30.9
- Updated DXVK to 2.5
- Updated dxsupport.cfg (again) to includes NVIDIA GPU from GTX 700 series up to RTX 40 series, aswell as forcing dxlevel 95 on Intel HD Graphics.
-- This meant that the game will now set anti-aliasing, textures and other settings to highest on these GPUs by default when launching the game for first time.
-- On other GPUs, the game will default to 4x MSAA, just like the 20th anniversary version.

### Bugs fixed:
November 16/17, 2024 (Hotfix)
- Fixed a crash that could occur in some languages when starting a new chapter.
- UI - Fixed some weapon icon alignment issues at various resolutions.
- Workshop changes included even through HL2 Update never have one anyway.

November 16, 2024
- See changes at: https://www.half-life.com/en/halflife2/20th
- ReUpdate: Fixed Steam Input support. You might need to enable this on Steam first to make sure it's working.

Previously:
- Dropship container gun fix which makes the gun possible to turn (broken since 2007 on X360/PS3, and 2010 on PC. Fixed in 2022.)
- Long loading saves bug/engine freezing while saving has been fixed.
- Improved loading times (for users with HDD only)
- Fixed some stuttering on level transitions
- NPC eyes not blinking (fixed in 2019)
- Some missing Combine sounds has been fixed (noticeable by shooting them)
- and much more... (see [here](https://web.archive.org/web/20160830085422/http://forums.steampowered.com/forums/showthread.php?t=1286478))

# LICENSE (ignore)

Games files included in this patch are © 2004 - 2024 Valve Corporation.
Commercial purposes not allowed.

SDL 2 and DXVK:
```
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

                  Copyright (c) 2017 Philip Rebohle
                  Copyright (c) 2019 Joshua Ashton
                  Copyright (c) 2019 Robin Kertels
                  Copyright (c) 2023 Jeffrey Ellison

                          zlib/libpng license

This software is provided 'as-is', without any express or implied
warranty. In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

– The origin of this software must not be misrepresented; you must not
  claim that you wrote the original software. If you use this software
  in a product, an acknowledgment in the product documentation would be
  appreciated but is not required.

– Altered source versions must be plainly marked as such, and must not
  be misrepresented as being the original software.

– This notice may not be removed or altered from any source distribution.
```
Uses Half-Life 2 icon made by vaksa for the setup bitmap.
© 2005 vaksa
https://www.deviantart.com/vaksa/art/Half-Life-2-icon-16869820
and the Windows Vista/7 setup icon from Microsoft Windows. © Microsoft Corporation.

Rest in Peace, Viktor Antonov (1972 - 2025) - HL2 (and Dishonored) Art Director.

This patch is not made by, or affiliated with Valve, Fillip Victor, and others who have worked on the game.



