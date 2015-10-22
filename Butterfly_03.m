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
%% Butterfly: Animación 1 -> Aleteo ---------------------------------------
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

%  Aleteo de la maiposa
n    = 5000;
frec = 40*pi;
time = linspace(0,5,n);
the  = (pi/3)*sin(frec*time);
x_al = x;
y_al = y;
z_al = zeros(size(x));

%  Propiedades de la animacion
Buterfly = figure ('Name','Butterfly - Animación 1',...
                   'NumberTitle','off',...
                   'Color', 'k',...
                   'Menubar','none');

Axesfly = axes('Parent',Buterfly,...
               'DataAspectRatio',[1 1 1],...
               'View',[55 310],...
               'Xlim',[-1 1],...
               'Ylim',[-1 1],...
               'Zlim',[-1 1]);
axis off;

hold(Axesfly,'all');

stop = uicontrol('style','toggle',...
                 'string','Detener',...
                 'background','white',...
                 'Position', [20 20 100 20]);

Frame = plot3(x_al,y_al,z_al,'Color','m');

title({'Butterfly: Animación 1 (Aleteo)'},...
       'Color','w',...
       'HorizontalAlignment','center',...
       'FontSize',14);

%  Animación
for i=1:n
    x_al = x.*cos(the(i));
    y_al = y;
    z_al = abs(x)*sin(the(i));
    
    set(Frame,...
        'XData',x_al,...
        'YData',y_al,...
        'ZData',z_al);
    
    if get(stop,'value')==0
        if(~mod(i,10))
            drawnow;
        end
    elseif get(stop,'value')==1
        break
    end
end

set(stop,...
    'style','pushbutton',...
    'string','Cerrar',...
    'callback','close(Buterfly)');