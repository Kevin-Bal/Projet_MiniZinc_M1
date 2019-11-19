include "globals.mzn";

% 4 tableaux de 10 cases représentant les 4 ensembles de calculs
% Case 0 pour la case en haut à gauche puis numérotation dans le sens des aiguilles d'une montre
% Tableau A pour l'ensemble en haut à gauche, B en haut à droite, C en bas à droite et D en bas à gauche
array[0..9] of var 0..9: A;
array[0..9] of var 0..9: B;
array[0..9] of var 0..9: C;
array[0..9] of var 0..9: D;

% Cases qui sont entre les ensembles
var 0..9: AB;
var 0..9: BC;
var 0..9: CD;
var 0..9: DA;

% Contraintes pour que les cases correspondant à une case de dizaine ne soient pas égales à 0;
constraint A[4]!=0;
constraint A[8]!=0;
constraint B[4]!=0;
constraint B[8]!=0;
constraint C[4]!=0;
constraint C[8]!=0;
constraint D[4]!=0;
constraint D[8]!=0;

% Contraintes liant les différentes cases du garam. Les cases seront toujours liées tel quelles, seules les opérateurs vont changer (+,-,*)
constraint A[0]+A[1]=A[2];
constraint A[2]+A[3]=10*A[4]+A[5];
constraint A[7]*A[6]=A[5];
constraint A[0]+A[9]=10*A[8]+A[7];

constraint B[0]+B[1]=B[2];
constraint B[2]*B[3]=10*B[4]+B[5];
constraint B[7]-B[6]=B[5];
constraint B[0]+B[9]=10*B[8]+B[7];

constraint C[0]-C[1]=C[2];
constraint C[2]*C[3]=10*C[4]+C[5];
constraint C[7]+C[6]=C[5];
constraint C[0]+C[9]=10*C[8]+C[7];

constraint D[0]+D[1]=D[2];
constraint D[2]*D[3]=10*D[4]+D[5];
constraint D[7]*D[6]=D[5];
constraint D[0]*D[9]=10*D[8]+D[7];

constraint A[3]-AB=B[9];
constraint B[6]+BC=C[1];
constraint D[3]+CD=C[9]; 
constraint A[6]+DA=D[1];

% Définition des cases préremplies
constraint A[1]=1;
constraint A[9]=7;

constraint B[1]=3;

constraint C[3]=9;
constraint C[6]=6;

constraint D[6]=8;

constraint AB=2;
constraint BC=2;
constraint CD=4;
constraint DA=3;

% Calcul
solve satisfy;
