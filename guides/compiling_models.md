To compile studio models, open a command prompt window and enter the following commands:

```cmd
cd path/to/scripts
set STUDIOMDL="absolute/path/to/tools/studiomdl.exe"
compile_all.bat
```

This will compile all model qc files to one or more `.mdl` files.

Model sources are located in their own directories containing low definition and high definition versions.
The `package_all.bat` script executes the packaging script for each model which copies and renames the compiled models, placing them in `root/modelsrc/mdl/ld` and `root/modelsrc/mdl/hd`.

Simply execute this script:
```cmd
cd path/to/scripts
package_all.bat
```

Compiled models are copied from these directories to the game installation using the asset synchronizer.
See `AssetManifest.json` for the patterns responsible for copying these files.
