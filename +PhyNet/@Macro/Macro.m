classdef Macro <PhyNet.BaseStation
%
    %Properties
    properties (SetAccess='protected') % Private parameters
        radius %Radius
        attatchedPicoList
        attatchedSmallList
    end
%    
    %Methods
    methods
       function  this = Macro(val1,val2) % Constructor: initialize id, position, and radius
                this@PhyNet.BaseStation(val1)
                this.radius = val2;
                this.position=this.radius.*MacroCellLocation(this);
                this.TxP=49; %49dBm tramsmission power 
       end
    end

end