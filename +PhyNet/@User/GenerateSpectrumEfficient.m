function this=GenerateSpectrumEfficient(this,channel)

rxPower=0;%total received power

for i=1:length(this. channelList)
    c=this.channelList(i);
    rxPower=10^(channel(c).rxPower/10)+rxPower;
end

for i=1:length(this. channelList)
    c=this.channelList(i);
    this.spectrumEfficiencyList(i)=log2(1+10^(channel(c).rxPower/10)/(rxPower-10^(channel(c).rxPower/10)));
end

end