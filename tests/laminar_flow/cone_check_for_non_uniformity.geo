lc = 0.5;
Point(1) = {0,0,0,lc};
Point(2) = {0.5,0,0,lc};
Point(3) = {0, 0, 1, lc};
Point(4) = {1, 0, 1, lc};
Line(1) = {1, 3};
Line(2) = {3, 4};
Line(3) = {4, 2};
Line(4) = {2, 1};
Line Loop(5) = {1, 2, 3, 4};
Plane Surface(6) = {5};
// Can comment out these next three lines if unstructured desired
Transfinite Line{1:4} = 8;
Transfinite Surface{6};
Recombine Surface{6};
Extrude {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Surface{6}; Layers{2}; Recombine;
}
Extrude {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Surface{23}; Layers{2}; Recombine;
}
Extrude {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Surface{40}; Layers{2}; Recombine;
}
Extrude {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Surface{57}; Layers{2}; Recombine;
}
Physical Point("PressurePoint") = {3};
Physical Surface("Walls") = {19, 70, 53, 36};
Physical Surface("Outlet") = {66, 49, 32, 15};
Physical Surface("Inlet") = {73, 22, 39, 56};
Physical Volume("Channel") = {2, 3, 4, 1};
