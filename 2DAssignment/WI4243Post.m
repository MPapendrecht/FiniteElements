figure();
trisurf(elmat,x,y,u)
figure(3);
subplot(plots(1),plots(2),loop)
trisurf(elmat,x,y,u);
title(lambda)
view(2); shading interp; colormap jet; colorbar; set(gcf,'renderer','zbuffer')