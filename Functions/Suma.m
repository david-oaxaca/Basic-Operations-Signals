function [resultadoS, niS] = Suma(x,y,nix, niy)
    x=[1,2,3,4,5,6,7,8,9,10];
    y=[1,2,3,4,5,6];
    nix=6;
    niy=4;
            %tamaño del vector X y del vector Y
            tam_x = length(x);
            tam_y = length(y);
            vec = [];
            
            if(nix == niy) %cuando ambas posiciones iniciales son iguales
                diferencia = abs(tam_x-tam_y);
                if(tam_x > tam_y)
                    for i=1:diferencia
                        y = [y 0];
                    end
                elseif(tam_y > tam_x) 
                    for i=1:diferencia
                        x = [x 0];
                    end
                end
                vec = x + y;
                ni_vec = nix;
            else    %cuando las posiciones iniciales de los vectores son diferetentes
                dif_ladox = tam_x - nix + 1;
                dif_ladoy = tam_y - niy + 1;
                ceros_derecha = abs(dif_ladox - dif_ladoy);
                ceros_izquierda = abs(nix - niy);
                if(nix < niy)   %si la posición inicial del vector x es menor que la de y
                    if(dif_ladox < dif_ladoy)
                        for i=1:ceros_derecha
                            x = [x 0];  %agrega los ceros correspondientes a la derecha de x
                        end
                    elseif(dif_ladoy < dif_ladox)
                        for i=1:ceros_derecha
                            y = [y 0];  %agrega los ceros correspondientes a la derecha de y
                        end
                    end
                    for i=1:ceros_izquierda
                        x = [0 x];  %agrega los ceros correspondientes a la izquierda de x
                    end
                    vec = x + y;     %ahora que los vectores son iguales, se suman
                    ni_vec = niy;
                elseif(niy < nix)
                    if(dif_ladox < dif_ladoy)
                        for i=1:ceros_derecha
                            x = [x 0];  %agrega los ceros correspondientes a la derecha de x
                        end
                    elseif(dif_ladoy < dif_ladox)
                        for i=1:ceros_derecha
                            y = [y 0];  %agrega los ceros correspondientes a la derecha de y
                        end
                    end
                    for i=1:ceros_izquierda
                        y = [0 y];  %agrega los ceros correspondientes a la izquierda de y
                    end
                    vec = x + y;     %ahora que los vectores son iguales, se suman
                    ni_vec = nix;
                end
            end
                
            
            ni = ni_vec;
            ni = -ni;
            ni = ni:length(vec)-ni_vec-1;
            
            resultadoS = vec;
            niS = ni;
            x
            y
            vec
            ni
        end
