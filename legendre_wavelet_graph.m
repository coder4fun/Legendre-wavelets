% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% %  for  given value of n and m,  the Legendre_wavelets(n,m,t) can
% %  be plotted here
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
n=input('Enter the value of n:  ');
m=input('Enter the value of m:  ');
t=-0.5:0.0001:1.5;
g=Legendre_wavelets(n,m,t);
plot(t, g, '--rs', 'LineWidth',2)
grid on