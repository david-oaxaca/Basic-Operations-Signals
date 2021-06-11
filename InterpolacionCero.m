function [resultado,ni] = InterpolacionCero(x,valorInterpolacion,nix)
    y = [];
    
    N = length(x);
    xi = [x,0];
    for i=1:N
        y = [y, xi(i)];
        for j=1:(valorInterpolacion-1)
            y = [y, 0];
        end
    end
    resultado = y;
    ni = nix*valorInterpolacion;
end

