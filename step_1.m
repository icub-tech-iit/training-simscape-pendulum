function step_2

params = load('pendulum');
g = params.g;
l = params.l;
T = params.T;
x0 = params.x0;

f = @(t,x) [x(2); -g/l*sin(x(1))];
[t,x] = ode45(f,[0 T],x0);

show_pendulum(t,x,l);
