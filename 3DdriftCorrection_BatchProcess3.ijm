// This macro runs HyperStackReg (v04 or v05) on all the files ending with .tif in a folder
//
// Author: Ved P. Sharma,     June 7, 2016

dirS = getDirectory("Choose source Directory");
dirD = getDirectory("Choose destination Directory");

filenames = getFileList(dirS);
for (i = 0; i < filenames.length; i++) {
	currFile = dirS+filenames[i];
	title = substring(filenames[i], 0, lengthOf(filenames[i])-4);
	if(endsWith(currFile, ".tif")) { // process only files ending with .tif
		open(currFile);
		run("Make Substack...", "channels=1-2");
		selectWindow(filenames[i]);
		close();

		selectWindow(title+"-1.tif");
		run("Correct 3D drift", "channel=1 edge_enhance");
		saveAs("Tiff", dirD+title+"_3Dcor"+".tif");
		selectWindow(title+"_3Dcor"+".tif");
		close(); // close registered file
		selectWindow(title+"-1.tif");
		close(); // close original file
	}
}
print("DONE!");
