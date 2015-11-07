%Set Channel
t=0;
channel(totalUser*totalMacro+totalUser*totalSmall)=Radio.Channel(z(1),x(1),'Macro');
 for i=1:totalUser

     for j=1:totalMacro
         t=t+1;
         channel(t)=Radio.Channel(z(i),x(j),'Macro');
         z(i) = z(i).Set('channelList',[z(i).channelList,t]);
         channel(t)=channel(t).GenerateChannelGain;
         channel(t)=channel(t).GenerateRxPower;
     end
     
     for j=1:totalSmall
         t=t+1;
        channel(t)=Radio.Channel(z(i),y(j),'Small');
        z(i) = z(i).Set('channelList',[z(i).channelList,t]);
        channel(t)=channel(t).GenerateChannelGain;
        channel(t)=channel(t).GenerateRxPower;
    end
 end
 
 for i=1:totalUser
 z(i)=GenerateSpectrumEfficient(z(i),channel);
 end
