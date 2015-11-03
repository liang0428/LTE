classdef Macro <PhyNet.BaseStation
%
    %Properties
    properties (SetAccess='private') % Private parameters
        radius
        attatchedPicoList
        attatchedSmallList
    end
%    
    %Methods
    methods
       function  this = Macro(val1,val2) % Constructor: initialize id, position, and radius
                this@PhyNet.BaseStation(val1)
                this.radius = val2;
       end
    end

end