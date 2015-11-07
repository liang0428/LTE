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
       function  this = Small(val1,val2,val3) % Constructor: initialize id, attachedMarcoId, and backhaulNextHop
           args1=0;
           args2=0;
           args3=0;
           if nargin > 0
               args1=val1;
               args2=val2;
               args3=val3;
           end
           this@PhyNet.BaseStation(args1);
           this.attatchedMacroId = args2;
           this.backhaulNextHop=args3;
           this.TxP=20; %20dBm tramsmission power 
           end
       end
end
