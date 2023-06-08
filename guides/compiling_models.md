To compile studio models, open a command prompt window and enter the following commands:

```cmd
cd path/to/scripts
set STUDIOMDL="absolute/path/to/scripts/studiomdl.exe"
compile_all.bat
```

This will compile all model qc files to one or more `.mdl` files.

Compiled models are copied to the game installation using the asset synchronizer.
See `AssetManifest.json` for the patterns responsible for copying these files.
