function [resultado,ni] = InterpolacionLineal(x,valorInterpolacion,nix)
    y = [];
    
    N = length(x);
    xi = [x,0];
    for i=1:N
        valorIngremental = (xi(i+1)-xi(i))/valorInterpolacion;
        y = [y, xi(i)];
        guardado = xi(i)
        for j=1:(valorInterpolacion-1)
            guardado = guardado + valorIngremental;
            y = [y, guardado];
        end
    end
    resultado = y;
    ni = nix*valorInterpolacion;
end

