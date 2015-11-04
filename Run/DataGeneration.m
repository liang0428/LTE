

%Generate mesh numbers and positions for small cell and UE. 
smallFineness=30;
ueFineness=100;
[smallMeshNum, smallMeshPosition] =  CellMesh(smallFineness);
[ueMeshNum,ueMeshPosition]=CellMesh(ueFineness);