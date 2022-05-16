# Half-Life Unified SDK Assets

This repository contains source files for Half-Life Unified SDK assets. This covers the following asset types:
* configuration files (.cfg, .json, .scr.install, .txt)
* FGDs (.fgd)
* Maps (.rmf, .map, .rad, .jmf, .ent, .res)
* Models (.qc, .smd, .bmp, .max)
* Resource files (.txt)
* Scripts (.bat, .sh, .ps1, .csx, and related files)
* Sprites (.qc, .bmp)
* WADs (.bmp)

Directory structure:
* cfgsrc
* fgdsrc
* mapsrc
* modelsrc
* resourcesrc
* scripts
* scriptsrc
* spritesrc
* wadsrc
	
Directories are named &lt;asset type in singular form&gt;src.

Assets consisting of multiple files should be stored in a subdirectory under the directory for their asset type.
For example a map called `cs_office` should have all of its files stored under `mapsrc/cs_office`.

Scripts used in the assets repository itself are located in the `scripts` directory.
