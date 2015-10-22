%% To animate the Flight of Butterfly -------------------------------------
%-------------------------------------------------------------------------%
% Code written by : Martin Josemaria vuelta rojas                         %
%                   Universidad Nacional Mayor de San Masrcos             %
%                   Facultad de Ciencias fisicas                          %
%                   Seminario Permanente de astronomia y                  %
%                   ciencias espaciales                                   %
%                   Peru                                                  %
% E-mail : physics.mvr@hotmail.com                                        %
%-------------------------------------------------------------------------%
%% Rotando las alas de la mariposa-----------------------------------------
%  Lipiando los espacios
clear all
close all
clc

% Curva de la mariposa
N = 50000;
t = linspace(0,20*pi,N);
x = sin(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);
y = cos(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);
x = x./max(abs(x)) ;
y = y./max(abs(y)) ;

%  Rotaci�n 1
the  = 0;
z_al1 = abs(x)*sin(the);
x_al1 = x*cos(the);
y_al1 = y;

Buterfly1 = figure ('Name','Butterfly - Rotaci�n 0',...
                    'NumberTitle','off',...
                    'Color', 'w',...
                    'Menubar','none');

Axesfly1 = axes('Parent',Buterfly1,...
                'DataAspectRatio',[1 1 1],...
                'View',[160 15],...
                'Xlim',[-1 1],...
                'Ylim',[-1 1],...
                'Zlim',[-1 1]);
            
hold(Axesfly1,'all');

plot3(x_al1,y_al1,z_al1,'r');

grid on;

title({'$\bf Butterfly:\ Rotacion\ 1\ (\theta=0\ rad)$'},...
      'Interpreter', 'Latex',...
      'Color','k',...
      'HorizontalAlignment','center',...
      'FontSize',14);

%  Rotaci�n 2
the  = pi/4;
z_al2 = abs(x)*sin(the);
x_al2 = x*cos(the);
y_al2 = y;

Buterfly2 = figure ('Name','Butterfly - Rotaci�n 2',...
                    'NumberTitle','off',...
                    'Color', 'w',...
                    'Menubar','none');

Axesfly2 = axes('Parent',Buterfly2,...
                'DataAspectRatio',[1 1 1],...
                'View',[160 15],...
                'Xlim',[-1 1],...
                'Ylim',[-1 1],...
                'Zlim',[-1 1]);
            
hold(Axesfly2,'all');

plot3(x_al2,y_al2,z_al2,'g');

grid on;

title('$\bf Butterfly:\ Rotacion\ 2\ (\theta=\frac{\pi}{4}\ rad)$',...
      'Interpreter', 'Latex',...
      'Color','k',...
      'HorizontalAlignment','center',...
      'FontSize',14);

%  Rotaci�n 3
the  = -pi/3;
z_al3 = abs(x)*sin(the);
x_al3 = x*cos(the);
y_al3 = y;

Buterfly3 = figure ('Name','Butterfly - Rotaci�n 3',...
                    'NumberTitle','off',...
                    'Color', 'w',...
                    'Menubar','none');

Axesfly3 = axes('Parent',Buterfly3,...
                'DataAspectRatio',[1 1 1],...
                'View',[160 15],...
                'Xlim',[-1 1],...
                'Ylim',[-1 1],...
                'Zlim',[-1 1]);
            
hold(Axesfly3,'all');

plot3(x_al3,y_al3,z_al3,'b');

grid on;

title('$\bf Butterfly:\ Rotacion\ 3\ (\theta=-\frac{\pi}{3}\ rad)$',...
      'Interpreter', 'Latex',...
      'Color','k',...
      'HorizontalAlignment','center',...
      'FontSize',14);

%  Vista conjunta
Buterfly4 = figure ('Name','Butterfly - Vista Conjunta',...
                    'NumberTitle','off',...
                    'Color', 'w',...
                    'Menubar','none');

Axesfly4 = axes('Parent',Buterfly4,...
                'DataAspectRatio',[1 1 1],...
                'View',[160 15],...
                'Xlim',[-1 1],...
                'Ylim',[-1 1],...
                'Zlim',[-1 1]);

hold(Axesfly4,'all');

plot3(x_al2,y_al2,z_al2,'g',...
      x_al1,y_al1,z_al1,'r',...
      x_al3,y_al3,z_al3,'b');

grid on;

title('$\bf Butterfly:\ Vista\ conjunta$',...
      'Interpreter', 'Latex',...
      'Color','k',...
      'HorizontalAlignment','center',...
      'FontSize',14);