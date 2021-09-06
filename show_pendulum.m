function show_pendulum(t,x,l)

x_pos = l*sin(x(:,1));
y_pos = -l*cos(x(:,1));

tspan = [t(1) t(end)];
idx = @(t_) floor(interp1(t, (1:length(t))', t_));

figure('color','white');
axis(1.1*[min(x_pos) max(x_pos) min(y_pos) max(y_pos)]);
grid on;
hold on;
fanimator(@(t_) plot(x_pos(idx(t_)),y_pos(idx(t_)),'ko','MarkerFaceColor','k'),'AnimationRange',tspan);
fanimator(@(t_) plot([0 x_pos(idx(t_))],[0 y_pos(idx(t_))],'k-'),'AnimationRange',tspan);
fanimator(@(t_) text(min(x_pos),min(y_pos),"Time: "+num2str(t_,2)+" s"),'AnimationRange',tspan);
axis equal;
hold off;
playAnimation;
