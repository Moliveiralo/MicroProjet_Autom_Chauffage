clear all

load('toutes_les_reponses_tronque.mat')

y0=reponse_echelon1(1);
for i=1:length(reponse_echelon1)
   reponse_echelon1(i)=reponse_echelon1(i)-y0; 
end

y0=reponse_echelon5(1);
for i=1:length(reponse_echelon5)
   reponse_echelon5(i)=reponse_echelon5(i)-y0; 
end

y0=reponse_echelon8(1);
for i=1:length(reponse_echelon8)
   reponse_echelon8(i)=reponse_echelon8(i)-y0; 
end

y0=reponse_echelon10(1);
for i=1:length(reponse_echelon10)
   reponse_echelon10(i)=reponse_echelon10(i)-y0; 
end

y0=reponse_rampe120(1);
for i=1:length(reponse_rampe120)
   reponse_rampe120(i)=reponse_rampe120(i)-y0; 
end

y0=reponse_rampe140(1);
for i=1:length(reponse_rampe140)
   reponse_rampe140(i)=reponse_rampe140(i)-y0; 
end

clear y0
clear i

save('toutes_les_reponses_tronque_sans_offset.mat')