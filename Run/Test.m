clear all;
clc;
userDensity=30;% 30 users per macrocell
smallDensity=20;% 20 SBS per macrocell
smallFineness=30;
UserFineness=100;
[smallMeshNum, smallMeshPosition] =  CellMesh(smallFineness);
[UserMeshNum,UserMeshPosition]=CellMesh(UserFineness);
for i=1:19
    x(i)=PhyNet.Macro(i,100);
    
    for j=1:smallDensity
        t=(i-1)*smallDensity+j;
        y(j,i)=PhyNet.Small(t,i);
        y(j,i)=SmallcellLocation(y(j,i),x(y(j,i).attatchedMacroId),smallMeshNum,smallMeshPosition);
    end
    
    for j=1:userDensity
        t=(i-1)*userDensity+j;
        z(j,i)=PhyNet.User(t,i);
        z(j,i)=UserLocation(z(j,i),x(z(j,i).attatchedMacroId),UserMeshNum,UserMeshPosition);
    end
end


%Set Channel
 for i=1:userDensity
     for j=1:19
            cM(i,j)=Radio.Channel(z(i,j),x(j));
     end 
 end
 
%   for i=1:userDensity
%      for j=1:length(y)
%             cS(i,j)=Radio.Channel(z(j,i),x(j));
%      end 
 %  end