function spectrum=EqualSpectrum(this)

if isempty(this.userList)
    spectrum=[];
else
    numUser=length(this.userList);
    spectrum=this.bandwidth.*ones(1,numUser)./numUser;
end

end