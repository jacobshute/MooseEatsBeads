
this is pretty much all the stuff that should be in the program, from a programming standpoint. (no "this feature" stuff, like "this class" stuff)
All of the psuedocode really.


## Image storage class
holds the pixel data of an image

array to hold pixel data
string to hold file name
string to hold file system path

function to load new Image
    input of file path and name

function to store Image
    input of file name
    input of image data
    input of image type?

## Bead grid storage class?
should this be part of the image class or its own thing?

array to hold bead pixels

function to calculate pixels to beads
    input image storage object
    input bead library

function to output to file
outputs to image and/or to csv
    input for file path and name


## Bead Library class
holds the bead colors that exist in the users bead library

string filename of library
string path to library

HashMap (java's associative array workaround) color name -> hexcode
    or maybe do a special object for this and do a linked list thing?

Hashmap or something for owned beadboards
    I don't know how to really impliment this but YOLO

function to load library from file
    input file path and name

function to store library to file
    input of path and name

## Display class (or panel or w/e its called)
The parent class for all the display elements


### Library Window
Opens a pane (or something?) that shows the users bead library and allows edits


---------
this wrapped up in something biigger because we NEED MORE CLASSES!
but also to give a unified display with zoom cntrols and such
### Image display
Displays the original image

### Bead display
Displays the beads for the project

### Bead board display
Displays an underlay of beadboards for the project
----------

### Image editing functions
crop, color change, resize, etc?

### Report display
Shows the beads needed for the project

### Cursor display
Display infor for the bead/pixel under the cursor
Also, should have a zoom window for this?



## Settings class
store all of the users program settings
pretty much hide this until we actually want to use it.

function to write file
    input path and name

function to read file
    input path and name