function [ y_t ] = solution_first_problem( t)
%syms('t');
P=P_matrix(3,2);
% P=(1/4)*[1  (1/sqrt(3))  0   2   0   0; (-1/sqrt(3))   0   (1/sqrt(15))   0   0   0; 0  (-1/sqrt(15))  0   0   0   0;  0   0   0   1  (1/sqrt(3))  0;  0   0   0  (-1/sqrt(3))   0   (1/sqrt(15)) ;  0  0  0   0  (-1/sqrt(15))  0 ];
I=eye(6);
d=(1/(2*(sqrt(2))))*[1  0   0  1  0   0];
Q=(0.25*I)+(transpose(P));
D=(transpose(P))*(transpose(d));
 C=Q\D;
 si=[Legendre_wavelets(1,0,t)   Legendre_wavelets(1,1,t)   Legendre_wavelets(1,2,t)   Legendre_wavelets(2,0,t)   Legendre_wavelets(2,1,t)  Legendre_wavelets(2,2,t)];
 y_t=si*C;
end