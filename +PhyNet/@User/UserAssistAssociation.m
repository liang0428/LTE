function user=UserAssistAssociation(user,channel,model)

switch  model
    
    case 'MaxSINR'
        [user.spectrumEfficient,user.selectedChannel]=MaxSINR(user,channel);
        user.servingBSType=user.selectedChannel.type;
        user.servingBS=user.selectedChannel.txPoint;
end
        
    
end