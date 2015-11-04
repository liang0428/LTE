classdef User
    properties (SetAccess='protected') % Private parameters
        id
        attatchedMacroId
        position
    end
 %
    properties % Public parameters
%     activeUeList
%     userCsi
%     userContentRequest
%     userQoeRequest
%     userResource
%     contentList
    end
    methods
       function  this = User(val1,val2)
           if nargin > 0
                this.id = val1;
                this.attatchedMacroId = val2;
           end
%                this.channel=Radio.Channel(this.id);
       end
%        function  this = Set(this,variable,value)
%             switch variable
%                 case 'position'
%                     this.position = value;
%                 case 'TxP'
%                     this.TxP = value;
%                 case 'bandwidth'
%                     this.bandwidth= value;
%                 case 'backhaulCapacity'
%                     this.backhaulCapacity = value;
%                 case 'userList'
%                     this.userList = value;
%                 otherwise
%                     fprint
%             end
%        end
%        
%        function  value = Get(this,variable)
%             switch variable
%                 case 'id'
%                     value=this.id;
%                 case 'position'
%                     value=this.position;
%                 case 'TxP'
%                     value=this.TxP;
%                 case 'bandwidth'
%                     value=this.bandwidth;
%                 case 'backhaulCapacity'
%                     value=this.backhaulCapacity;
%                 case 'userList'
%                     value=this.userList;
%             end
%        end
   
    end
end