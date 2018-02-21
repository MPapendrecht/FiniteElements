clear
close all

N = [10, 20, 40, 80, 160];
nN = numel(N);
snN = ceil(sqrt(nN));
for q=1:nN
    
    n = N(q);
    lambda = 1;
    D = 1;
    GenerateMesh;
    GenerateTopology;
    AssembleMatrix;
    AssembleVector;
    u = S\f;
    
    figure(q)
    plot(x,u,'-o');
    set(gca,'FontSize',24)
    title(['n = ', num2str(n)])
end