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

figure('Name','Three dimensional space', ...
       'Position',[400 500 860 640], ...
       'MenuBar','figure')

axes(   'NextPlot', 'add',...
        'XColor', [231, 76,  60]/255, ...
        'YColor', [52, 152, 219]/255, ...
        'ZColor', [46, 204, 113]/255, ...
        'Box', 'on', ...
        'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
    
xlabel('X Axis','FontSize',12,'FontWeight','bold','Color','k')
ylabel('Y Axis','FontSize',12,'FontWeight','bold','Color','k')
zlabel('Z Axis','FontSize',12,'FontWeight','bold','Color','k')

view(3)

%% The second stage 

XrndVec = [0 rand(1)*10];
YrndVec = [0 rand(1)*10];
ZrndVec = [0 rand(1)*10];

plot3(XrndVec, YrndVec, ZrndVec,'--'), hold on;
plot3(0, 0, 0, 'Color', 'k', 'Marker', '*');

v = [XrndVec(end); YrndVec(end); ZrndVec(end)];

% u = [rand(1) rand(1) rand(1)];
% u = u/norm(u);
u = [0 0 1];

theta0 = rand(1)*2*pi;

h = animatedline;

R = R_matrix(u, theta0);
    
new_v = R*v;

XnewVec = [0 new_v(1)];
YnewVec = [0 new_v(2)];
ZnewVec = [0 new_v(3)];

plot3(XnewVec, YnewVec, ZnewVec,':'), hold on;

for theta = linspace(0,theta0, 300);
    R = R_matrix(u, theta);
    
    new_v = R*v;
    
    addpoints(h, new_v(1),new_v(2),new_v(3));
    drawnow
end 

line = addText(XrndVec, ZrndVec, ZrndVec);
text(XrndVec(end),YrndVec(end),ZrndVec(end), line);

line = addText(XnewVec, YnewVec, ZnewVec);
text(XnewVec(end),YnewVec(end),ZnewVec(end), line);


