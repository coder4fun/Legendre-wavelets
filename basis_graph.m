% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% %  for a given value of n, the integral_Legendre_wavelet_basis(n,m,t) can
% %  be plotted here
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
n=input('let the value of n is ');
m=input('let the value of m is ');

t=-0.5:0.01:1.5;
%yfun = @(t1)(Legendre_wavelets(n, m, t1));
%y=integral(yfun,0,t);
g=integral_Legendre_wavelet_basis( n,m, t );
%y=integral(@(t1)Legendre_wavelets(n, m,t1) ,0,t);
plot(t, g, '--rs', 'LineWidth',2)
grid on