# rofi-screenshot-utility

Simple bash script to use rofi to take screenshots.

Designed for i3wm, but will most likely work on any linux-based environment.

Supports taking screenshots of a region, or the whole screen, and saving it to the clipboard. If you would not like the image to be saved to the ```Screenshots``` directory, simply leave the 'file name' option blank.

## Setup

1. Download the .sh script and place it in any suitable directory.
2. Make the script executable: ```chmod +x takess.sh```.
3. Ensure that you have a ```Screenshots``` directory (named as such) at ```~/Pictures/Screenshots```. If not, make it by running ```mkdir ~/Pictures/Screenshots```.
4. In your i3 config file, add the following line: ```bindsym $mod+Shift+s exec path/to/takess.sh``` (note that you can replace the binding to anything you may prefer). This can also be achieved on other WMs, just add an equivalent line binding a key combination to the script.
5. Reload the configuration file, and the setup is complete!

## Dependencies

- rofi
- bash
- ImageMagick (to take the screenshot)
- xclip (to save to clipboard)
