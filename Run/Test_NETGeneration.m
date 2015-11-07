clear all;
clc;
userDensity=30;% 30 users per macrocell
smallDensity=10;% 20 SBS per macrocell
totalMacro=1;
totalUser=userDensity*totalMacro;
totalSmall=smallDensity*totalMacro;
smallFineness=30;
UserFineness=100;
[smallMeshNum, smallMeshPosition] =  CellMesh(smallFineness);
[UserMeshNum,UserMeshPosition]=CellMesh(UserFineness);
bandwidth=20;%20Mhz
%
backhaulNextHopSmall='Macro';
bhMacro=1000; %1Gbps backhaul for macrocell to gateway.
bhSmall=50;%50Mbps backhaul for smallcell to gateway.

for i=1:totalMacro
    x(i)=PhyNet.Macro(i,100);
    x(i)=x(i).Set('bandwidth',bandwidth);
    
    for j=1:smallDensity
        t=(i-1)*smallDensity+j;
        y(t)=PhyNet.Small(t,i,backhaulNextHopSmall);
        y(t)=SmallcellLocation(y(t),x(y(t).attatchedMacroId),smallMeshNum,smallMeshPosition);
        y(t)=y(t).Set('bandwidth',bandwidth);
        x(i)=x(i).UpdateSmall(t);
    end
    
    for j=1:userDensity
        t=(i-1)*userDensity+j;
        z(t)=PhyNet.User(t,i);
        z(t)=UserLocation(z(t),x(z(t).attatchedMacroId),UserMeshNum,UserMeshPosition);
        x(i)=x(i).UpdateCoveredUser(t);
    end
end