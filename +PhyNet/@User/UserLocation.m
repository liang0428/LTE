function this=UserLocation(this,macro,UserMeshNum,UserMeshPosition)

i=unidrnd(UserMeshNum);

relativePosition=UserMeshPosition(i,:);

this.position=macro.position+macro.radius.*relativePosition;

end