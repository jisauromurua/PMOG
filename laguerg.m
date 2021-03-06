function glp = laguerg(a, n, x)
    % Returns the generalized Laguerre Polynomials valued at x,
    %   given constants a and n: 
    %   LAGUERG(a,n,x) = sum_{i=0}^n((-1)^i nCr(n+a, n-i) x^i/i!)
    
    [taman1,taman2] = size(x);
    
%     if isvector(x)
%         x = reshape(x,[1,taman1*taman2]); % Forzarlo a ser renglon
%         X = repmat(x,n+1,1); % Repeat one time for each sum term
%         index = repmat((0:n)',1,taman1*taman2); % Summation index
%         combinations = nCk(n + a, n - index); % Binomial coefficient for each term
%         glp = sum((-1).^index.*combinations.*X.^index ./factorial(index),1);
%     elseif not(isvector(x)) && ismatrix(x)
%         X = repmat(x,1,1,n+1);  % Repeat one time for each sum term
%         index = permute(repmat((0:n)',1,taman1,taman2),[3 2 1]); % Summation index
%         combinations = nCk(n + a, n - index); % Binomial coefficient for each term
%         glp = sum((-1) .^ index .* combinations .* X .^ index ./ (...
%             factorial(n+index).* factorial(index)),3);
%     elseif ndims(x) == 3
% %         X = repmat(x,1,1,1,n+1);
%         % Aqui van mas cosas
%     end
    
    % Version recursiva
    if n>=2
        glp = ((2*n - 1 + a - x).*laguerg(a,n-1,x) - (n - 1 + a)*laguerg(a,n-2,x))/n;
    elseif n == 1
        glp = 1 + a - x;
    elseif n == 0
        glp = ones(size(x));
    else
        error("Numero no compatible");
    end
end