classdef BaseStation
    properties (SetAccess='protected') % Private parameters
    id
    position=[];
    TxP
    bandwidth
    backhaulCapacity
    userList
    userCsiList
    spectrumStrategy
    end
 %
    properties % Public parameters
    activeUeList
    userCsi
    userContentRequest
    userQoeRequest
    userResource
    contentList
    end
    methods
       function  this = BaseStation(value1)
           if nargin > 0
                this.id = value1;
           end
       end
       function  this = Set(this,variable,value)
            switch variable
                case 'position'
                    this.position = value;
                case 'TxP'
                    this.TxP = value;
                case 'bandwidth'
                    this.bandwidth= value;
                case 'backhaulCapacity'
                    this.backhaulCapacity = value;
                case 'userList'
                    this.userList = value;
                case 'spectrumStrategy'
                    this.spectrumStrategy = value;
                case 'userCsiList'
                    this.userCsiList = value;
                otherwise
                    fprint
            end
       end
       
       function  value = Get(this,variable)
            switch variable
                case 'id'
                    value=this.id;
                case 'position'
                    value=this.position;
                case 'TxP'
                    value=this.TxP;
                case 'bandwidth'
                    value=this.bandwidth;
                case 'backhaulCapacity'
                    value=this.backhaulCapacity;
                case 'userList'
                    value=this.userList;
            end
       end
   
    end
end
