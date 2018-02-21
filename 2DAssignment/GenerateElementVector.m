
% Module for element mass matrix for reactive term
%
% Output: felem  ====== vector of two components
%
% felem(1), felem(2) to be computed in this routine.

xc=zeros(1,topology);
yc = zeros(1,topology);
felem = zeros(1,topology);

for index1 = 1:topology
	xc(index1) = x(elmat(i,index1));
	yc(index1) = y(elmat(i,index1));
end


for index1 = 1:topology
		felem(index1) = abs(Delta)/24 * sum(Fxy(xc, yc));
end
