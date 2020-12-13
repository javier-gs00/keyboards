# Keyboard Configs

This projects contains the configuration files I use for my keyboards.


## Instructions for updating updating the keymaps in the qmk folder
This assumes:
- This folder is in the root
- Qmk folder is in the root

Example: Update the Lily58 keymaps. To update another keyboard just change the name of the keyboard.

1. Copy the files from this folder to the QMK folder.

In the root of this project

```
./update lily58
```

This will update the files for the lily58 keyboard in the qmk folder.
After that move to the "qmk_firmware" folder and run the following command.

2. Flashing

```
make lily58:javiergs-00:dfu
```

Press the keyboard reset button when the search for the keyboard starts in the console
