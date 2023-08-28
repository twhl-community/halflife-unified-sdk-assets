# Half-Life Unified SDK V1 assets Changelog

This changelog lists all assets changes meant to be used with Half-Life Unified SDK V1.

> <span style="background-color:darkseagreen; color: black">Note
> </br>
> All changes are expected to be compatible with any minor and patch versions of Half-Life Unified SDK V1.</span>

Table of contents:
* [FGD](#fgd)
* [Models](#models)
* [Sprites](#sprites)

## FGD

### General

* Added RPG placement mode [#1](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/1)
* Added Gauss placement mode [#2](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/2)
* Added Satchel placement mode [#3](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/3)
* Added RPG ammo placement mode [#4](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/4)

## Models

### General

* Added weapon view models
* Added weapon world models
* Added player weapon models
* Added item models
* Added NPC models
* Updated many models to include all data in a single file (as opposed to split into a main and texture file along with sequence group files)
* Standardized variants of the same model from different games and low and high definitions versions to include the same properties
* Fixed various animation issues
* Normalized HD sequences fps to be consistent with LD sequences fps
* Standardized weapons bodygroup submodels order across all models

### Specific models

#### Alien gibs

* Removed 2 HD submodels to match the LD submodel count (4)
* Fixed misaligned bone with the floor in LD variant
* Tweaked hitboxes

#### Alien Slave

* Added Op4 specific sequences 
* Added extra frames to the  HD `crouch` sequence to have the same length as in LD
* Reworked HD collar to be connected to the head to prevent animation glitches in some sequences
* Tweaked hitboxes
* Merged collar mesh in the main body mesh

#### Barney

* HD uses Op4 HD mesh as a base
* Added Op4 and Blue Shift specific sequences [#98](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/98)
* Added Otis sequences to Barney LD/HD models [#82](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/82)
* Changed `otis_range_fire` to use `barney/ba_attack2.wav` instead of `weapons/de_shot1.wav`
* Reworked finger animations in `otis_range_fire`
* Removed duplicate gun holster polygons in LD variant
* Removed alternate hand mesh used in unholstered mesh LD variant
* Fixed Gun holster mesh normals flipped in LD variant
* Fixed glitchy vertex on the upper right arm in LD variant
* Reworked hitboxes in LD/HD variants
* Removed gun holster bone position and rotation in LD animations to allow sharing animations with Otis

#### Big rat

* Removed loop option on sequences `die1` and `jump` [#119](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/119)
* Removed last frame identical to first one in sequences `die1` and `jump` [#119](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/119)
* Added polygons under paws [#126](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/126)
* Reworked sharp edges around paws [#126](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/126)
* Made forward right paw symmetrical with respect to the others [#126](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/126)

#### Bullsquid

* Animated tentacles in HD sequence `draggruntidle`
* Fixed HD sequences length to be consistent with LD ones
* Reworked hitboxes

#### Civilian scientist

* Rigged blue shirt HD civilian on top of HD scientist skeleton
* Added shared scientist items bodygroup with clipboard and stick
* Added shared scientist sequences

#### Cleansuit scientist

* Rigged model on top of HL1 LD skeleton
* Uses default scientist face textures instead of the custom Op4 ones
* Added shared scientist items bodygroup with clipboard and stick
* Added shared scientist sequences

#### Dead Barney

* Removed unneeded frames in various sequences
* Reworked meshes
* Tweaked hitboxes
* Reshare textures with default Barney model
* Rigged mouth vertices to mouth bone to allow speaking
* Removed helmet hitboxes
* Uses sequences `idle1`, `idle3`, `idle4` from default Barney model

#### Dead hazard suit

* Removed head mesh from body mesh
* Removed Gordon glasses mesh from model
* Renamed main bodygroup `studio` to `body`

#### Gman

* Added Op4 specific sequences
* Removed entire Gman mesh from cell mesh
* Renamed `heads` bodygroup to `items`
* Added custom bone controller to open the suitcase
* Added hitboxes to suitcase
* Tweaked hitboxes
* Made fingers tight in `push_button` sequence
* Cut several end frame of HD sequences `yes`, `no` to fit the original LD sequences durations
* Added suitcase interior for HD gman

#### Gonome

* Sorted events by frame number in various sequences
* Replaced missing step sounds with common NPC step sounds
* Changed event 1011 to 1004 for walk and run sounds events
* Play attack, death, pain sounds on `CHAN_VOICE` channel
* Removed idle, pain sounds events since they are played in code

#### Headcrab

* Added Op4 specific sequences

#### Hologram

* Added Blue Shift specific sequences
* Added teeth mesh
* Reworked mouth mesh
* Reworked bone weights
* Reworked UVs
* Added XR bone controller

#### Houndeye

* Added Op4 and Blue Shift specific sequences
* Added custom bone Bone01 for animators to use
* Tweaked hitboxes
* Removed unnecessary frames in LD/HD `dead` sequence
* Fixed left arm in `dead` sequence
* Made pose in HD `dead` sequence' concur with LD sequence

#### Human grunt

* Update Human grunt weapon meshes [#86](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/62)
* Added Blue Shift specific sequences
* Fixed LD `dragleft` and `dragright` sequences swapped
* Fixed arm bone lengths in Blue Shift sequences
* Fixed neck vertices sticking out of the body
* Reworked UVs
* Reworked hitboxes
* Converted LD `cliffdie` sequence to HD due to missing frames
* Fixed right foot rotation in sequence `WM_moatjump`
* Removed unneeded frames in various animations
* Use LD Op4 shotgun world model mesh for the LD gun meshes
* Use HD world model meshes for the HD gun meshes
* Reuse HL1 LD/HD grunt textures
* Added shared Op4 intro grunts sequences
* Added shared male BlackOps sequences

#### Human grunt ally medic

* Removed duplicate head meshes and use skin families
* Moved needle to separate bodygroup
* Use LD Barney gun mesh for LD gun
* Moved glock to separate bodygroup
* Added gun holster mesh to LD variant
* Added blank submodel to weapons bodygroup
* Improved LD weapons meshes
* Improved holstered gun mesh
* Added back faces to helmet chin straps
* Reworked meshes
* Added shared grunt ally sequences
* Added shared grunt sequences
* Reworked backpack vertex weights
* Fixed neck vertices sticking out of torso
* Reuse HL1 LD/HD grunt textures
* Fixed mouth offset in HD meshes
* Centered LD/HD run sequence
* Fixed deagle rotation in HD death sequences 
* Added shared male BlackOps sequences
* Added shared Op4 intro grunts sequences

#### Human grunt ally regular

* Added shared grunt ally sequences
* Added shared grunt sequences
* Use HL1 LD grunt gun meshes for consistency
* Reworked backpack vertex weights
* Fixed neck vertices sticking out of torso
* Changed generic hitgroup to head hitgroup
* Reuse HL1 LD/HD grunt textures
* Fixed HD grunt MP mesh elbow texture
* Use HD medic head texture for HD MP grunt for consistency
* Fixed mouth offset in HD meshes
* Added shared male BlackOps sequences
* Added shared Op4 intro grunts sequences

#### Human grunt ally engineer

* Moved torch to separate bodygroup
* Added blank submodel to weapons bodygroup
* Improved LD weapon mesh
* Improved holstered gun mesh
* Added back faces to helmet chin straps
* Reworked meshes
* Added shared grunt ally sequences
* Added shared grunt sequences
* Reworked backpack vertex weights
* Fixed neck vertices sticking out of torso
* Reuse HL1 HD grunt textures
* Fixed mouth offset in HD meshes
* Centered LD/HD run sequence
* Fixed deagle rotation in HD death sequences 
* Added shared male BlackOps sequences
* Added shared Op4 intro grunts sequences

#### Intro Barney

* Added missing gun bodygroup to HD variant

#### Intro Op4 grunt ally medic

* Applied updated Human grunt ally medic changes
* Removed superfluous hitboxes in LD/HD variants
* Added holstered Desert Eagle gun mesh
* Added unused black skin from Op4 medic grunt

#### Intro Op4 grunt commander

* Applied updated Human grunt ally regular changes
* Removed superfluous hitboxes in HD variant
* Added additional hand attachment to LD variant
* Renamed sequences to allow sharing across different models

#### Intro Op4 grunt regular

* Applied updated Human grunt ally regular changes
* Removed blank submodel in LD/HD variants
* Fixed bone length in HD variant
* Removed superfluous hitboxes in LD/HD variant
* Removed green gun holster texture on fatigues in HD variant for consistency
* Renamed sequences to allow sharing across different models

#### Intro Op4 grunt SAW

* Applied updated Human grunt ally regular changes
* Removed blank submodel in LD/HD variant
* Fixed bone length in HD variant
* Removed superfluous hitboxes in LD/HD variants
* Removed green gun holster texture on fatigues in HD variant for consistency
* Fixed glicthy right arm vertices in LD variant
* Renamed sequences to allow sharing across different models

#### Intro Op4 grunt engineer

* Applied updated Human grunt ally engineer changes
* Added missing cigar to LD variant
* Removed superfluous hitboxes in LD/HD variants
* Added missing holstered Desert Eagle gun mesh in HD variant
* Renamed sequences to allow sharing across different models

#### Loader

* Added Op4 specific sequences
* Removed `freeze` sequence identical to `heroidle`
* Reworked hitboxes
* Added Op4 green crate as 2nd skin
* Fixed Op4 green crate stretched texture

#### Male BlackOps

* Merged head mesh into body mesh and added skin families for head
* Reworked meshes
* Reworked UVs
* Use same MP5 mesh as grunt mesh for consistency for LD variant
* Added strafeleft/straferight sequences for AI
* Added `strafeleft_cine`, `straferight_cine` for scripted sequences
* Added shared grunt sequences
* Tweaked muzzle attachment position
* Reworked hitboxes
* Added shared Op4 intro grunts sequences

#### Otis

* Added Barney HL1, Op4, Blue Shift specific sequences
* Added Intro Otis Blue Shift specific sequences
* Fixed facemaps UVs flipped
* Reworked face, body, gun UVs
* Added Barney gun holster bone
* Changed `range_fire` to use `weapons/de_shot1.wav` instead of `weapons/pl_gun3.wav`
* Changed event 5001 to 1003 in `range_fire`
* Renamed `fence` to `otis_fence` to avoid naming collision with Barney `fence` sequence
* Renamed `wave` to `otis_wave` to avoid naming collision with Barney `wave` sequence
* Removed helmet hitboxes surrounding head
* Tweaked hitboxes
* Use skin families instead of duplicate head/sleeve meshes
* Added bodypart sleeves and added long and short sleeve submodels
* Added bodypart items and added clipboard and donut submodels
* Added blank submodel to gun bodypart
* Added unused black skin from Blue Shift
* Removed duplicate gun mesh from donut mesh

#### Osprey

* Uses Op4 model as a base
* Tweaked hitboxes
* Added hitboxes to wheels
* Fixed issues with several mesh polygons
* Reworked misaligned UVs
* Fixed left/right bone names

#### Player (Blue Shift)

* Reworked several areas of the mesh to get better mesh deformation in animations
* Replaced hands meshes with those from multiplayer Barney model so they can be animated like the ones in regular HEV player.mdl

#### Rosenberg

* Use HL1 LD body mesh instead of the original Blue Shift one
* Use HL1 HD mouth texture instead of the original Blue Shift one

#### Scientist

* Improved HD scientists hitboxes [#81](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/81)
* Added bodypart items and added clipboard and stick as submodels
* Added Op4 and Blue Shift specific sequences
* Added Cleansuit scientist specific sequences
* Added civilian scientist specific sequences
* Added console civilian scientist specific sequences
* Added Gordon scientist specific sequences
* Added cower scientist specific sequences
* Added valid sequences for dummy HD sequences
* Added Op4 ZR bone controller
* Improved LD hitboxes
* Fixed fps in LD sequences `180_left` and `sitlookright` playing faster than their respective counterpart
* Removed unused event 1003 - gameover in sequence `cowering_in_corner`
* Added loop option to `fallingloop`
* Removed extra hand mesh on needle bodygroup
* Refactored and optimized texture sheets

#### Scientist gun (scigun)

* Uses Op4 world model as a base for LD variant
* Added HD variant based on HL1 HD world mesh

#### Shocktrooper

* Sorted events by frame number in various sequences
* Added missing extension `.wav` extensions in sequences
* Play attack, death sounds on `CHAN_VOICE` channel

#### Skeleton

* Uses Op4 model as a base
* Uses HL1 skeleton textures instead of those from Op4
* Reworked hitboxes
* Fixed flipped normals
* Fixed uncapped surfaces
* Fixed asymmetrical clavicle mesh
* Fixed asymmetrical bone positions for forearms and fingers
* Reworked bone weights
* Fixed inconsistent bone length in various sequences
* Fixed hands clipping through floor in various sequences

#### Voltigore

* Sorted events by frame number in various sequences
* Added missing extension `.wav` extensions in sequences
* Play walk, eat sounds on `CHAN_BODY` channel
* Removed pain sounds events since they are played in code
* Fixed left/right arms hitboxes inverted
* Fixed left/right legs hitboxes inverted
* Tweaked hitboxes

#### Zombies

* Added sequences exclusive to specific zombie models to all zombie model variants
* Added valid sequences for dummy HD sequences [#26](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/26)

#### Player weapons models

##### Player Egon model

* Fixed misaligned cannon in HD variant
* Reworked HD mesh, UVs, uncapped areas
* Reworked hitboxes

##### Player Shotgun model

* Uses Op4 world model mesh for LD variant
* Removed right hand hitbox on LD variant

##### Player Snark model

* Fixed HD model flickering due to different frame poses
* Reused HD viewmodel textures

#### View models

##### Crossbow

* Use HD Op4 crossbow textures for HD variants
* Removed unneeded arm mesh in LD/HD variants
* Use HD `idle1` as a base for HD dummy sequences `idle2`, `fidget2`
* Moved string to unloaded position in HD unloaded sequences
* Moved clip bolts away in HD unloaded sequences
* Moved clip bolts away in HD sequence `fire3`
* Replaced LD HEV crossbow hand mesh with LD HEV Python hand mesh

##### Crowbar

* Removed left arm in HD HL1/Op4 variants
* Removed unneeded hitboxes
* Tweaked hitboxes

##### Desert eagle

* Tweaked muzzle attachment position in LD/HD variants

##### Displacer

* Reworked fire animation to make the hand correctly follow the handle [#111](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/111)

##### Egon

* Removed right arm mesh in HD variant
* Replaced unfinished LD sequences `fire1`, `fire2` with those from Op4
* Removed loop option on HD sequences `altfireon`, `altfireoff`

##### Gauss

* Use HD Op4 gauss texture for HD variants
* Replaced HEV arm with soldier and guard arm in LD variants

##### Glock

* Use HD Blue Shift animation `reload_noshot` for all HD variants
* Removed unneeded hitboxes
* Tweaked muzzle attachment offset in LD/HD variants
* Added silencer bodygroup to HD variants
* Added backfaces to clip in LD/HD variants
* Fixed glitchy vertices in LD Op4/Blue Shift glock mesh
* Reworked LD Op4/Blue Shift hands mesh rig to allow sharing animations

##### Hand grenade

* Use HD Op4 grenade texture for HD variants
* Removed unneeded hitboxes
* Use LD HL1 animations for LD Op4/Blue Shift variants for consistency

##### Knife

* Lengthen knife LD/HD HEV and guard arms mesh to ensure the viewmodel's end is not seen [#110](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/110)

##### MP5

* Reworked LD Op4/Blue Shift LD MP5 mesh sharp edges
* Fixed gun attachments in Op4/Blue Shift LD variants
* Removed unfinished sequence `deploy_2` in Op4/Blue Shift LD variants
* Fixed LD HEV left arm vertices [#122](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/122)

##### Python

* Fixed gun attachment offset in HD variants
* Added missing reload sound event to LD/HD variants

##### RPG

* Use Op4 missile mesh for LD variants
* Added missing sequences `fidget2`, `holster2` to Op4/Blue Shift LD variants
* Added missing sequence `fidget2` to HD variants
* Use Op4 reload animation in LD variants

##### Satchel

* Removed right arm in LD Op4 variant
* Removed right arm in HD variants
* Removed unneeded hitboxes
* Moved satchel mesh bodygroup after hands bodygroups in HD variants for consistency

##### Satchel radio

* Use HD Op4 satchel radio texture for HD variants
* Removed unneeded hitboxes
* Removed left arm in HD variants
* Fixed glitchy hand vertices in LD/HD Op4 variants
* Use LD HL1 animations for LD Blue Shift variant

##### Shock rifle

* Removed unnecessary polygons [#13](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/13)

##### Shotgun

* Rigged Blue Shift hand mesh on top of HL1 skeleton
* Use LD HL1 animations for all LD variants
* Changed event 5001 option 41 to 31 in HD `shoot` sequence for consistency with LD sequences
* Removed duplicate event 5001 in HD sequence `shoot_big`

##### Snark

* Fixed Snark hand animation [#131](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/131) (Thanks [Ronin4862](https://github.com/Ronin4862))

##### Spore launcher

* Reworked fire animation to make the hand correctly follow the handle [#104](https://github.com/SamVanheer/halflife-unified-sdk-assets/issues/104)
* Fixed spore flying off screen in reload animation [#129](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/129)

##### Tripmine

* Use LD HL1 sequence `fidget` for LD Blue Shift sequence `fidget`
* Removed loop option on HD sequence `arm1`

#### World models

##### Crossbow world model

* Added missing clip to HD mesh
* Reworked mesh
* Reworked HD sequences to fit with LD ones
* Reworked hitboxes

##### Gauss world model

* Reworked HD sequences to fit with LD ones

##### Glock world model

* Centered HD mesh
* Rigged HD mesh on top of LD skeleton
* Reworked hitboxes

##### Hand grenade world model

* Rigged HD mesh on top of LD skeleton
* Tweaked hitboxes
* Use HD hand grenade viewmodel texture for HD variant

##### M203 grenade

* Centered HD mesh to origin
* Reworked HD mesh UVs
* Tweaked hitboxes

##### RPG ammo model

* Reworked meshes
* Reworked UVs
* Added back faces beneath cap

##### RPG world model

* Added missing `onside` sequence to HD variant
* Reworked HD sequence `idle1` to fit with LD
* Reworked mesh
* Reworked UVs
* Removed loop option from HD sequence `stayput`

##### Satchel world model

* Rigged HD mesh on top of LD skeleton
* Reworked hitboxes

##### Shotgun shells

* Centered HD mesh to same position as LD mesh
* Reworked UVs
* Reworked hitboxes

##### Shotgun world model

* Uses Op4 model mesh as a base

## Sprites

### General

* Added custom HUD sprites [#114](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/114)
* Reworked HUD sprites to reduce the number of sprites used
* Fixed background pixels that weren't exactly black [#114](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/114)
* Added variant of Op4 weapons HUD sprites without scanline
* Added variant of HL1 HUD sprites with scanline
* Added variant of Blue Shift HUD sprites with scanline
* Added variant of HD weapons sprites with scanline

### Specific sprites

#### Crosshairs

* Added missing Op4 crosshairs from `ofch1.spr` [#114](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/114)

#### CTF

* Replaced third row of `ctf_hud1.spr` with sprites from `ctf_hud2.spr`. [#114](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/114)

#### Nightvision

* Fixed NVG flash empty image width [#114](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/114)
* Fixed NVG flash full image width [#114](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/114)

#### Tripmine

* Fixed `640hud6.spr` tripmine image offset [#114](https://github.com/SamVanheer/halflife-unified-sdk-assets/pull/114)
