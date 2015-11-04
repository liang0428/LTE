classdef Channel
    properties
        rxPoint
        txPoint
        pathLoss
        shadowing
        
        type
    end
    
    methods
        function this=Channel(arg1,arg2) %constructor
            val1=0;
            val2=0;
           if nargin > 0
                val1=arg1;
                val2=arg2;
           end
           this.rxPoint=val1;
           this.txPoint=val2;
        end    
    end
    
end

