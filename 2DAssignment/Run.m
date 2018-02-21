clear;
close all;
Geo = {'circleg', 'squareg', 'lshapeg'};


%% Assignment 1
%% Generate mesh
Geometry = Geo{3};
loops = 2;

WI4243Mesh;

%% Compute S, f and u
DiffCoeff = 0.23;
plots = [2,5];
spacing = plots(1)*plots(2);

lambdaV = logspace(-5,5,spacing);
for I = 1:plots(1)
   for J = 1:plots(2)
        loop = (I-1)*plots(2)+J;
        lambda = lambdaV(loop);
        topology = 3; topologybnd = 2;
        WI4243Comp;
        
        %% Generate solution
        WI4243Post;
    end
end

