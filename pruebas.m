%% SCRIPT PARA PRUEBAS Y VISUALIZACIONES


x = linspace(-2,2,200);
y = x;

[X, Y] = meshgrid(x,y);
Z = ones(size(X));

beamer = beam(X,Y,Z,1,2);
modulo = beamer.*conj(beamer);
el_bueno = sqrt(modulo);

surf(X,Y,el_bueno,'EdgeColor','None');
view(2); colormap(gray); rotate3d on; colorbar;

