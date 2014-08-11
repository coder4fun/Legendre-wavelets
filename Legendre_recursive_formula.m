function [ L ] = Legendre_recursive_formula(n, t)
 % LEGENDRE_RECURSIVE_FORMULA: Recursive formula for calculating the
 % Legendre polynimial
 % Usage: LEGENDRE_RECURSIVE_FORMULA( n , t )
 %
 % Arguments( input ) :
 % n : Translation parmeter of the wavelet and the order of the legendre
 % polynomial( integer non-negative )
 %
 % t : (2^k)*t1)- nhat) where nhat = 2p-1, p is dilation parameter of the wavelet( integer positive )
 % and t1 is normalized time( real positive)
 %
 % Arguments( Output ):
 % L : Legendre polynomial of order 'n'
 
m=n-1;
if n==0
    L=1;
elseif n==1
    L=t;
elseif n>1
    L=  (  (  ((2*m)+1) /  (m+1)  ).* t .* (Legendre_recursive_formula(m, t) )) -( (m/(m+1))*(Legendre_recursive_formula(m-1, t)) );
        % Formula for calculating Legendre polynomial
else
    disp('Error as the value of n is greater than or equal to zero')
    % Returning error for negative values of 'n'
end
end
% % %   Legendre_recursive_formula(3,sym('t'))
% % %   simplify(   (5*sym('t')*((3*sym('t')^2)/2 - 1/2))/3 - (2*sym('t'))/3    )