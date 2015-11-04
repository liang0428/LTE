function this=SmallcellLocation(this,macro,smallMeshNum,smallMeshPosition)

i=unidrnd(smallMeshNum);

relativePosition=smallMeshPosition(i,:);

this.position=macro.position+macro.radius.*relativePosition;

end

