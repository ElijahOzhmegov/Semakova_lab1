% ======================================================================
%                          randomRotateMatrix
% 
% Made by ElijahOzmegov@gmail.com as a part of the first laboratory work
% 
% The fist stage: 
%           * create three dimensional coordinate system
%           * X axis should be red
%           * Y axis should be blue
%           * Z axis should be green
%           * the origin point should be black
%           * the axes should be signed
%
% The seconnd stage: 
%           * create a random vector 
%           * create a random rotation matrix 
%           * apply the matrix to the vector
% ======================================================================

%% The first stage 

figure('Name','Three dimensional space',...
       'Position',[400 500 860 640],...
       'MenuBar','figure')

axes(   'NextPlot', 'add',...
        'XColor', [231, 76,  60]/255,...
        'YColor', [52, 152, 219]/255, ...
        'ZColor', [46, 204, 113]/255, ...
        'Box', 'on', ...
        'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
    
XrndVec = [0 rand(1)*10];
YrndVec = [0 rand(1)*10];
ZrndVec = [0 rand(1)*10];    


xlabel('X Axis','FontSize',12,'FontWeight','bold','Color','k')
ylabel('Y Axis','FontSize',12,'FontWeight','bold','Color','k')
zlabel('Z Axis','FontSize',12,'FontWeight','bold','Color','k')

view(3)

%% The second stage 

plot3(XrndVec, YrndVec, ZrndVec), hold on;
plot3(0, 0, 0, 'Color', 'k', 'Marker', '*');






