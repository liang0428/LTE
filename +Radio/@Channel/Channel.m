classdef Channel
    properties
        rxPoint
        txPoint
        type
    end
    
    methods
        function this=Channel(val1,val2)
           if nargin > 0
                this.rxPoint=val1;
                this.txPoint=val2;
           end
        end
    end
    
end

