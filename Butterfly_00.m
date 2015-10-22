%% To animate the Flight of Butterfly -------------------------------------
%-------------------------------------------------------------------------%
% Code written by : Martin Josemaria Vuelta Rojas                         %
%                   Universidad Nacional Mayor de San Masrcos             %
%                   Facultad de Ciencias fisicas                          %
%                   Seminario Permanente de astronomia y                  %
%                   ciencias espaciales                                   %
%                   Peru                                                  %
% E-mail : physics.mvr@hotmail.com                                        %
%-------------------------------------------------------------------------%

%% Clean al spaces --------------------------------------------------------
clear all
clc

%% Basic data -------------------------------------------------------------
N = 5000;
n = 500;
t = linspace(0,20*pi,N);
x = sin(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);
y = cos(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);

x = x./max(abs(x)) ;
y = y./max(abs(y)) ;

tim = linspace(0,30,n);
fre = 20;

rtx = zeros(1,N);
rty = zeros(1,N);
rtz = zeros(1,N);

%% Preparing the images ---------------------------------------------------
Fly = figure ('Name','Butterfly',...
              'NumberTitle','off',...
              'Color', 'k',...
              'Menubar','none',...
              'Position',[20 200 1300 400]);

axes1 = axes('Parent',Fly,...
             'DataAspectRatio',[1 1 1],...
             'Xlim',[-3 3],...
             'Ylim',[-1.5 31],...
             'Zlim',[-1.5 1.5],...
             'View',[108 8]);

axis off;

hold(axes1,'all');

B_Fly1 = plot3(rtx,rty,rtz,'Color','m');
B_Fly2 = plot3(rtx,rty,rtz,'Color','m');

stop = uicontrol('style','toggle',...
                 'string','Detener',...
                 'background','white');

ph = pi/3;
a  = 1;
x1 = x;
y1 = y;
c1 = a*0.5*rand(size(tim)).*sin(tim) + ...
     a*0.5*rand(size(tim)).*cos(tim).*sin(tim);

x2 = x;
y2 = max(tim)*ones(1,N)-y;
c2 = a*0.5*rand(size(tim)).*cos(tim) - ...
     a*0.5*rand(size(tim)).*sin(tim).*cos(tim);

%% Drawinq the fly --------------------------------------------------------
while ~get(stop,'value')
    for j = 1:n
        rtx = x1*cos(fre*tim(j))+2*a*sin((fre/3)*tim(j))+c2(j);
        rty = y1+a*tim(j);
        rtz = abs(x1)*sin(fre*tim(j)) + c1(j);
        
        set(B_Fly1,'XData',rtx,'YData',rty,'ZData',rtz);
        
        rtx = x2*cos(fre*tim(j))-2*a*sin((fre/5)*tim(j))+ c1(j);
        rty = y2-a*tim(j);
        rtz = abs(x2)*sin(fre*tim(j)) + c2(j);
        
        set(B_Fly2,'XData',rtx,'YData',rty,'ZData',rtz);
        
        drawnow
        
        if get(stop,'value')==1
            break
        end
    end
    
    y2 = y;
    y1 = max(tim)*ones(1,N)-y;
    a = -a;
end

set(stop,...
    'Style','pushbutton',...
    'String','Cerrar',...
    'Callback','close(gcf)');