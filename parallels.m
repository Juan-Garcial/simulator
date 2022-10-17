function [coordenadas,Y] = parallels(coordenadas,Y)
       
    tamano = size(Y);
    tamano = tamano(1,1);
    entry = false;
    for i=1:tamano-1
        
        if(entry)

            i = i-1;
            entry = false;
                
        end

        for j=i+1:tamano

            if((coordenadas(j,1)== coordenadas(i,1) & coordenadas(j,2)== coordenadas(i,2)) | (coordenadas(j,2)== coordenadas(i,1) & coordenadas(j,1)== coordenadas(i,2)) )

                Y(i,1) = Y(i,1)+Y(j,1);
                Y(j, :) =[];
                coordenadas(j, :) = [];
                entry = true;
                tamano = size(Y);
                tamano = tamano(1,1);

            
            end
        end
    end
end


      