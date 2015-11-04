classdef Small <PhyNet.BaseStation
%
    %Properties
    properties (SetAccess='private') % Private parameters
        radius
        attatchedMacroId
        %relativePosition
        backhaulNextHop
    end
%    
    %Methods
    methods
       function  this = Small(val1,val2) % Constructor: initialize id, attachedMarcoId, and radius
           args1=0;
           args2=0;
           if nargin > 0
               args1=val1;
               args2=val2;
           end
           this@PhyNet.BaseStation(args1);
           this.attatchedMacroId = args2;
           end
       end
end
