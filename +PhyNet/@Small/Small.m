classdef Small <PhyNet.BaseStation
%
    %Properties
    properties (SetAccess='private') % Private parameters
        radius
        attatchedMacroId
    end
%    
    %Methods
    methods
       function  this = Small(val1, val2, val3) % Constructor: initialize id, position, and radius
                this@PhyNet.BaseStation(val1,val2)
                this.radius = val3;
       end
    end
end