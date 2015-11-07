function [M,c]=MaxSINR(user,channel)

[M,I] = max(user.spectrumEfficiencyList);

c = channel(I);

end