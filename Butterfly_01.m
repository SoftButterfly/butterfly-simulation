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
%% Graficando la curva de la mariposa--------------------------------------
%  Lipiando los espacios
clear all
close all
clc

%  Curva de la mariposa
N = 50000;
t = linspace(0,20*pi,N);
x = sin(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);
y = cos(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);
x = x./max(abs(x)) ;
y = y./max(abs(y)) ;

Buterfly = figure ('Name','Butterfly',...
                   'NumberTitle','off',...
                   'Color', 'k',...
                   'Menubar','none');

Axesfly = axes('Parent',Buterfly,...
               'DataAspectRatio',[2 1.7 2],...
               'Color',[0 0 0],...
               'View',[0 90],...
               'Xlim',[-1 1],...
               'Ylim',[-0.7 1],...
               'Zlim',[-1 1]);
           
title('Butterfly''s curve',...
      'Color','w',...
      'FontSize',16);
  
hold(Axesfly,'all');

plot(x,y,'m');


