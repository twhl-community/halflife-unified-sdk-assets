# Half-Life Unified SDK Assets

This repository contains source files for Half-Life Unified SDK assets. This covers the following asset types:
* FGDs (.fgd)
* Maps (.rmf, .map, .rad, .jmf, .ent, .res)
* Models (.qc, .smd, .bmp, .max)
* Sprites (.qc, .bmp)
* WADs (.bmp)

Directory structure:
* fgdsrc
* mapsrc
* modelsrc
* spritesrc
* wadsrc
	
Directories are named &lt;asset type in plural form&gt;(s)rc. if an asset type name ends with s then a second s is not added.

Assets should be stored in a subdirectory under the directory for their asset type.
For example a map called `cs_office` should have all of its files stored under `gamesrc/mapsrc/cs_office`.
