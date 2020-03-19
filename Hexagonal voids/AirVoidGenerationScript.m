clear;
clf;
warning('off');

%read the coordinates of all particle vertices (i.e., aggregates) from the AUTOCAD file containing the 
%X-Ray image of the material
A = xlsread('COORDSALLAGG.xls');

%PlotExtractedDataPoints(A);

%store the coordinates connecting each particle in order in a Matrix M;
M = FindPolygons(A);

%Generate the polygons and output two results: number of voids + void
%content
[counter_of_air_voids, air_void_content] = GenerateRandomPolygonVoid(M,0, 0.6,1.5,6,0.05,7);
