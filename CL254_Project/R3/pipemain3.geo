// Gmsh project created on Thu May 13 12:43:10 2021
SetFactory("OpenCASCADE");
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, 0.5, 0, 1.0};
//+
Point(3) = {5, 0.5, 0, 1.0};
//+
Point(4) = {5, 0, 0, 1.0};
//+
Point(5) = {5, -2, 0, 1.0};
//+
Point(6) = {7, -2, 0, 1.0};
//+
Point(7) = {7.5, -2, 0, 1.0};
//+
Point(8) = {7, -7, 0, 1.0};
//+
Point(9) = {7.5, -7, 0, 1.0};
//+
Line(1) = {2, 3};
//+
Line(2) = {2, 1};
//+
Line(3) = {1, 4};
//+
Line(4) = {6, 8};
//+
Line(5) = {8, 9};
//+
Line(6) = {9, 7};
//+
Circle(7) = {3, 5, 7};
//+
Circle(8) = {4, 5, 6};
//+
Curve Loop(1) = {2, 3, 8, 4, 5, 6, -7, -1};
//+
Plane Surface(1) = {1};
//+
Extrude {0, 0, 0.2} {
  Surface{1}; Layers {3}; Recombine;
}
//+
Physical Surface("inlet", 25) = {2};
//+
Physical Surface("outlet", 26) = {6};
//+
Physical Surface("sym", 27) = {3, 9, 5, 7};
//+
Physical Surface("fw", 28) = {8, 4};
//+
Physical Surface("fb", 29) = {10, 1};
//+
Physical Volume("vol", 30) = {1};
