function this=RadioResourceAllocation(this,model)

switch model
    case 'equal'
        this.spectrumStrategy=EqualSpectrum(this);
    otherwise
end

end