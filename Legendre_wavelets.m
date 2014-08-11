function [y] =Legendre_wavelets(n,m,t)
 % LEGENDRE_WAVELETS: Evaluates the legendre wavelets.
 % Usage: LEGENDRE_WAVELETS( n , m , t )
 %
 % Arguments( input ) :
 % n : Dilation parameter of the wavelet( integer positive ).
 %
 % m : Translation parmeter of the wavelet and the order of the legendre
 % polynomial( integer non-negative ).
 %
 % t : 2normalized time( real positive).
 %
 % Arguments( Output ):
 % y : Legendre wavelet.
 
 if (n>0) && (m>=0)
    %Checking the range of n and m.
    for i=0:log2 (n)
        if  ((2^i) <= n) && (n <= (2^(i+1)))
            k=i+2;
           break
        end
        k=i+2;
          % Finding k based on n(n = 1,2,... 2^k).
    end
    nhat=(2*n)-1;
        % Defining nhat based on 'n'.
    j0=((nhat - 1)/ (2^k));
    j1=((nhat + 1)/(2^k));
        % Function defined limits j0 and j1.
   
   y= ((sqrt(m+(1/2)))*(2^(k/2))*Legendre_recursive_formula( m , (((2^k).*t)- nhat))).*( heaviside(t - j0)).* (heaviside(j1 - t));
        % Defining the wavelet
else
   disp('Error as the value of n can not be less than or equal to zero or value of m can not be less than zero' );
    % Returning error for invalid values of 'n' and 'm'
end
end