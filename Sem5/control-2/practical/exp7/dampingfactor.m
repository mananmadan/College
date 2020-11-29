s = tf('s');
w = 5; 
hold on
for i = 0.00:0.08:1.30
 zeta = i;  
 sys = w^2 / (s^2 + 2*zeta*w*s + w^2); 
 [y,t]=impulse(sys); % impulse response
 plot_t = t(1:100)
 plot_y = y(1:100)
 plot(plot_t,plot_y)
end
