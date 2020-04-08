This code generates voids of circular geometry. 
The input parameters begin with the Matrix M which is done when the code reads the COORDSALLAGG.xls file.
The second parameter (nstep) is used as a step in determining the radius of each air void.
The radius generation is a vector ranging from 0:pi/nstep:2*pi
The third parameter is the target air void area percentage the code will generate. 
The code will oupput a file named Origin_of_Void_Circles in the folder.
