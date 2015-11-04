function this=PathLoss(this,arg1,arg2)

%PathLoss is used to calculate the pathloss of a channel object 'this'
%arg is used to select the pathloss model
%Results return to this.pathLoass units in dB


d=pdist2(this.rxPoint.position,this.txPoint.position,'Euclidean'); %Distance (in Meters) between Rx and Tx

switch arg1

    case 'Macro'
        PL=34 + 40* log10(d);
    case 'Small'
        PL=37 + 30 *log10(d);
    otherwise
        ;
end

switch 

end
