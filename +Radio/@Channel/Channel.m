classdef Channel
    properties(SetAccess='protected')
        type
        rxPoint
        txPoint
        pathLoss
        shadowing
        channelGain
        rxPower
    end
    
    methods
        function this=Channel(arg1,arg2,arg3) %constructor
            val1=0;
            val2=0;
            val3=0;
           if nargin > 0
                val1=arg1;
                val2=arg2;
                val3=arg3;
           end
           this.rxPoint=val1;
           this.txPoint=val2;
           this.type=val3;
        end    
    end
    
end

