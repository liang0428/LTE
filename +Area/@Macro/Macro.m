classdef Macro < Area.Location
    %Area.Macro Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods
        function this=Macro(val1)
            this@Area.Location(val1)
            this.center=Center(this);
        end
            
    end
    
end

function center=Center(this)
center=MacroCellLocation(this.id);
end

