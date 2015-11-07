function this=GenerateChannelGain(this)

%PathLoss is used to calculate the pathloss of a channel object 'this'
%arg is used to select the pathloss model
%Results return to this.pathLoass units in dB


d=pdist2(this.rxPoint.position,this.txPoint.position,'Euclidean'); %Distance (in Meters) between Rx and Tx

switch this.type
    case 'Macro'
        PL=34 + 40* log10(d);
    case 'Small'
        PL=37 + 30 *log10(d);
    otherwise
end

this.pathLoss=PL;
%%%shadowing Generation
switch this.type
    case 'Macro'
        SD=normrnd(0,8);
    case 'Small'
        SD=normrnd(0,4);
    otherwise
end

this.shadowing=SD;


this.channelGain=PL+SD;
end