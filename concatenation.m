clear all

load('echelon_1_tronque.mat');
consignelampe_echelon1=consignelampe;
reponse_echelon1=reponse;

load('echelon_5_tronque.mat');
consignelampe_echelon5=consignelampe;
reponse_echelon5=reponse;

load('echelon_8_tronque.mat');
consignelampe_echelon8=consignelampe;
reponse_echelon8=reponse;

load('echelon_10_tronque.mat');
consignelampe_echelon10=consignelampe;
reponse_echelon10=reponse;

load('rampe_1_20_tronque.mat');
consignelampe_rampe120=consignelampe;
reponse_rampe120=reponse;

load('rampe_1_40_tronque.mat');
consignelampe_rampe140=consignelampe;
reponse_rampe140=reponse;

clear consignelampe
clear reponse

save('toutes_les_reponses_tronque.mat');