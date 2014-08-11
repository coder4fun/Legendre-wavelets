function [ y] = integral_Legendre_wavelet_basis( n,m,t )
 % INTEGRAL_LEGENDRE_WAVELET_BASIS: Evaluates the integral of legendre wavelet.
 % Usage: INTEGRAL_LEGENDRE_WAVELET_BASIS( n , m , t )
 %
 % Arguments( input ) :
 % n : Dilation parameter of the wavelet( integer positive ).
 %
 % m : Translation parmeter of the wavelet and the order of the legendre
 % polynomial( integer non-negative ).
 %
 % t : normalized time( real positive)(symbol).
 %
 % Arguments( Output ):
 % y : integral of legendre wavelet.
y=int(Legendre_wavelets(n, m,t) ,0,sym('t'));
    % Defining the integral
end