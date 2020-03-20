# Change Log

## v2.24

Added batch mode (Multiple Packages) to pack multiple UCE files.

## RC9

The Windows add-on tool has been updated to resize the box art to a resolution of 222x306 and bezel art to a resolution of 1280x720. This was done to preserve ALU internal storage space to allow more UCEs per USB drive. To take advantage of this space savings, the user will need to repack their existing UCEs.

# How to build an add-on file? 

1. Download and install the add-on tool to your Windows PC (Windows XP or earlier is not supported). 
1. Run the AddOn Tool.

## Single Package

1. Select "Single Package" under the "Packages" section.
1. Fill in the "Game Title" field with what you would like to display on your ALU.
1. (optional) Select box art.
1. (optional) Select bezel art.
1. Select an emulator core (.so).
1. Select a game ROM.
1. Click “Build Package…”, then select a path to save the UCE package.

## Multiple Packages

1. Select "Multiple Packages" under the "Packages" section.

2. Organize your directory as below, and modify the "sample.csv" file to point to actual files

    `│   sample.csv
    ├───BezelArt
    │       01.png
    ├───BoxArt
    │       Default.png
    │       boxart2.png
    ├───Emulator
    │       mame2010_libretro.so
    ├───Packages
    └───Roms
            avalnche.zip
            cascade.zip`

3. Click on 'Open' under AddOn Table (.csv) and select the 'sample.csv' file from step 2.
4. Click “Build Package…”, and monitor the build process under 'Build Log'.
5. The output files will be saved under the "Package" directory.

# Known Issues

- AddOn Tool is not compatible with Windows XP.
- The limit for batch mode is 1,000 UCE files.
- Batch mode will overwrite old files without asking.
