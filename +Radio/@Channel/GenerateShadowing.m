function this=GenerateShadowing(this)

%PathLoss is used to calculate the pathloss of a channel object 'this'
%arg is used to select the pathloss model
%Results return to this.pathLoass units in dB


switch this.type
    case 'Macro'
        SD=normrnd(0,8);
    case 'Small'
        SD=normrnd(0,4);
    otherwise
end

this.shadowing=SD;

    
end
