# 4Dia
A tool for automated 4D microscope image alignment.

4Dia is an ImageJ/Fiji macro script that aligns three-dimensional time-lapse images both in Z-stacks and over timepoints.

1.	Overview

•	4Dia is an ImageJ/Fiji macro script that aligns three-dimensional time-lapse images both in Z-stacks and over timepoints.
•	4Dia consists of two ImageJ/Fiji macros that must be run sequentially: (1) ‘MultiStackReg_BatchProcess1of2.ijm’ and (2)  ‘MultiStackReg_BatchProcess2of2.ijm’. 
  o	The first macro aligns the Z-stack images at each timepoint through the Z-axis. 
  o	The second macro uses the processed images from the first macro and further aligns the Z-stacks through all timepoints.
•	The script was created using images of the Caenorhabditis elegans and it has not been tested for images other than the C. elegans germline. 
  o	The script could essentially work for all tissue types as they are not based on any specific features of the C. elegans germline tissue 
•	4Dia has no limit with the size of the Z-stack or the number of timepoints.

2.	System requirement
Any system that can run ImageJ/Fiji (ImageJ v1.53f), and two ImageJ plugins: ‘MultiStackReg’ (http://bradbusse.net/downloads.html) and ‘TurboReg’ (http://bigwww.epfl.ch/thevenaz/turboreg/).

3.	How to use
Run ‘MultiStackReg_BatchProcess1of2.ijm’ first and then ‘MultiStackReg_BatchProcess2of2.ijm’.

a.	‘MultiStackReg_BatchProcess1of2.ijm’
  1)	Open the macro in ImageJ to edit. Use the shortcut ‘[‘ and then open the macro file.
  2)	Assign a value to the variable ‘ChToUse’ to specify the channel to use for image alignment. E.g., ChToUse = 2.
  3)	Press ‘run’ on the bottom of the macro editor to execute the macro.
  4)	Specify the input and output folders on the pop-up windows.

b.	‘MultiStackReg_BatchProcess2of2.ijm’
  1)	Similar to the macro above, open the macro and specify the channel to use for alignment (see 3.a.1-2).
  2)	Press ‘run’ to execute the macro and specify the input and output folders.

The resulting files, aligned through the Z-axis and timepoints, will be found in the output folder with a suffix ‘_Zreg_Treg’.
