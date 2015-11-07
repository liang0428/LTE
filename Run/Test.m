clear all;
clc;
userDensity=30;% 30 users per macrocell
smallDensity=20;% 20 SBS per macrocell
totalUser=userDensity*19;
totalSmall=smallDensity*19;
smallFineness=30;
UserFineness=100;
[smallMeshNum, smallMeshPosition] =  CellMesh(smallFineness);
[UserMeshNum,UserMeshPosition]=CellMesh(UserFineness);
for i=1:19
    x(i)=PhyNet.Macro(i,100);
    
    for j=1:smallDensity
        t=(i-1)*smallDensity+j;
        y(t)=PhyNet.Small(t,i);
        y(t)=SmallcellLocation(y(t),x(y(t).attatchedMacroId),smallMeshNum,smallMeshPosition);
        x(i)=x(i).UpdateSmall(t);
    end
    
    for j=1:userDensity
        t=(i-1)*userDensity+j;
        z(t)=PhyNet.User(t,i);
        z(t)=UserLocation(z(t),x(z(t).attatchedMacroId),UserMeshNum,UserMeshPosition);
        x(i)=x(i).UpdateCoveredUser(t);
    end
end


%Set Channel
 for i=1:totalUser
     for j=1:19
         cM(i,j)=Radio.Channel(z(i),x(j),'Macro');
         cM(i,j)=cM(i,j).GenerateShadowing;
     end 
 end
% %  
for i=1:totalUser
    for j=1:totalSmall
        cS(i,j)=Radio.Channel(z(i),y(j),'Small');
    end
end