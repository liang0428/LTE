classdef Location
    %UNTITLED6 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (SetAccess='private')
        id
        center
        radius
    end
    
    methods
        function  this = Area(value1)
                this.id = value1;
        end
        function  this = Set(this,variable,value)
             switch variable
                 case 'radius'
                     this.radius = value;
%                 case 'center'
%                     this.center = value;
%                 case 'radius'
%                     this.radius = value;
%                 case 'bandwidth'
%                     this.bandwidth= value;
%                 case 'backhaulCapacity'
%                     this.backhaulCapacity = value;
%                 case 'userList'
%                     this.userList = value;
                 otherwise
%                     'The input variable is not correct.';
             end
       end
    end  
end

