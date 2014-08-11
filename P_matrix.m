function y = P_matrix(M ,k)
 % P_MATRIX: P-matrix i.e., Operational Matrix of integration for
 % calculating the integral of legendre wavelet using the Legendre wavelet.
 % Usage: P_MATRIX( M , k )
 %
 % Arguments( input ) :
 % M : Order of the Legendre Polynomial.
 %
 % k : Constant.
 %
 % Arguments( Output ):
 % y :  Operational Matrix of integration.
 %
 % Note: The function L_matrix(defined internally is used for calculation.
 
order = (2^(k-1)) * M;
    % Order of the operational matrix.
Lmatrix = L_matrix(M);
    % Importing the L-matrix.
y = zeros(order);
    % Setting all values of y-matrix to zero.
for i = 1:M
    for j = 1:M
       for l = 0:((2^(k-1))-1)
           y((l*M+i),(l*M+j)) = Lmatrix(i,j);
                % Defining the diagonal matrices of the y-matrix.
       end    
    end
end    
for i = 1:(2^(k-1))-1
    for j = i:(2^(k-1))-1
        if i == 1
            y(i,(j*M+1)) = 2;
        else
            y(i*M,(j*M+1)) = 2;
                % Defining the F-matrix elements i.e. '2' at respective places 
        end    
    end
end  
for i = 1:order
    for j = 1:order
        y(i,j) = y(i,j)/(2^k);
        % Dividing every element of y-matrix by 2^k
    end
end
end

function y = L_matrix(M)
    % Used for defining the diagonal matrix elements of the P_matrix
    % Uses input as M and gives output as L_matrix
y = zeros(M);
    % Setting all elements to zeros
y(1,1) = 1;
    % Defining the (1,1) element
for i = 1:M
   for j = 1:M
       if((i - j) == 1)
            y(i,j) = -(1/(sqrt((2*i)-1) * sqrt((2*i)-3)));
            y(j,i) = (1/(sqrt((2*i)-1) * sqrt((2*i)-3)));
            % Defining the remaining elements using the property of Legendre polynomials 
       end
    end
end    
end