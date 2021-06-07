function [resultadoS,niS] = Convolucion(x,y, nix, niy)
    % Calculamos el tamaño de la matriz
    N = length(x) + length(y) - 1;
    diferencia = N - length(x);

    xVolteado = fliplr(x);

    % Llenamos la primer fila de la matriz
    fila = [];
    Cx = [];

    % Colocamos el primer valor
    fila = [x(1)];
    % Colocamos los 0's correspondientes para el llenado de la matriz
    for i=1:diferencia
        fila = [fila, 0]; 
    end
    % Colocamos los valores restantes de nuestra primera función
    for i=1:(length(x)-1)
        fila = [fila, xVolteado(i)];
    end
    Cx = [fila];
    columnaCopia = fila;
    fila = [];

    % Llenamos el resto de filas de la matriz con base a la primer fila
    for i=1:(N-1)
        fila = [columnaCopia(N)];
        for j=1:(N-1)
            fila = [fila, columnaCopia(j)];
        end
        Cx = [Cx; fila];
        columnaCopia = fila;
        fila = [];
    end

    % Rellenamos de 0's nuestra segunda función para que tenga el tamaño de
    % la matriz
    yc = y;
    for i=1:(N-length(yc))
        yc = [yc, 0];
    end

    % Realizamos la multiplicación de matrices
    suma = [];
    valor = 0;
    resultado = [];
    for i=1:N
        fila = Cx(i,:);
        for j=1:N
            valor = valor + (fila(j)*yc(j));
        end
        resultado = [resultado, valor];
        valor = 0;
    end

    ni = -nix-niy;
    ni = -ni;
    
    resultadoS = resultado;
    niS = ni;
end

