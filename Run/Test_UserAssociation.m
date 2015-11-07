
for i=1:totalUser
 z(i)=z(i).UserAssistAssociation(channel,'MaxSINR');
end

for i=1:totalUser
    switch z(i).servingBSType
        case 'Macro'
        ID=z(i).servingBS.id;
        x(ID)=x(ID).Set('userList', [x(ID).userList, z(i).id]);
        x(ID)=x(ID).Set('userCsiList', [x(ID).userCsiList, z(i).spectrumEfficient]);
        case 'Small'
         ID=z(i).servingBS.id;
         y(ID)=y(ID).Set('userList', [y(ID).userList, z(i).id]);
         y(ID)=y(ID).Set('userCsiList', [y(ID).userCsiList, z(i).spectrumEfficient]);
        otherwise
    end
end



