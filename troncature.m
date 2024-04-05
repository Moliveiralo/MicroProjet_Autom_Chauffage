clear all

load('echelon_10.mat')

consignelampe = zeros(length(out.reponse.Time),1); % Contiendra consignelampe tronqué
reponse = zeros(length(out.reponse.Time),1); % Contiendra reponse tronqué
j=1; 

for i = 1:length(out.consignelampe.Time) % On parcourt toutes les lignes de la liste des timecodes de consignelampe
    if out.reponse.Time(j)==out.consignelampe.Time(i) % Si le timecode associé à la ligne i de la matrice de consignelampe est dans la matrice de reponse, alors
                
        consignelampe(j)=out.consignelampe.Data(i); % Ajout de la valeur dans data1
        reponse(j)=out.reponse.Data(j); % Ajout de la valeur dans data2
        
        j=j+1;
    end
end

clear i
clear j
clear out

save('echelon_10_tronque.mat')