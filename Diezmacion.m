function [Resultado,ni] = diezmacion(x,valorDiezmacion,nix)
    y= [];
    y = [x(nix+1)];
    N = length(x);
    contador=0;
    for i=(nix+1)-valorDiezmacion:-valorDiezmacion:1
        y=[y,x(i)];
        contador=contador+1;
    end
    y=fliplr(y);
    for i=(nix+1)+valorDiezmacion:valorDiezmacion:N
        y=[y,x(i)];
    end
    Resultado=y;
    ni=contador;
end