[p,e,t] = initmesh(Geometry);

for i = 1:loops
[p,e,t] = refinemesh(Geometry,p,e,t); % gives gridrefinement
end

pdemesh(p,e,t); % plots the geometry and mesh

x = p(1,:); y = p(2,:);

n = length(p(1,:));

elmat = t(1:3,:);
elmat = elmat';
elmatbnd = e(1:2,:);
elmatbnd = elmatbnd';
