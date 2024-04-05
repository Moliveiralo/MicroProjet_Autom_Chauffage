clear all

load('rampe_1_40.mat')

consignelampe = zeros(length(out.reponse.Time),1); % Contiendra consignelampe tronqué
reponse = zeros(length(out.reponse.Time),1); % Contiendra reponse tronqué


for i = 1:length(out.consignelampe.Time) % On parcourt toutes les lignes de la liste des timecodes de consignelampe
    if ismember(out.reponse.Time,out.consignelampe.Time(i)) % Si le timecode associé à la ligne i de la matrice de consignelampe est dans la matrice de reponse, alors
        
        [ligne] = find(out.reponse.Time,out.consignelampe.Time(i)); % On localise la réponse associée à ce timecode
        
        consignelampe(ligne)=out.consignelampe.Data(ligne); % Ajout de la valeur dans data1
        reponse(ligne)=out.reponse.Data(ligne); % Ajout de la valeur dans data2
    end
end

clear i
clear out

save('rampe_1_40_tronque.mat')