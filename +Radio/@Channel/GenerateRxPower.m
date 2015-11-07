function this=GenerateRxPower(this)

p=this.txPoint.TxP-this.channelGain;
this.rxPower=p;

end