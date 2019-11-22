
% 4 tableaux de 10 cases représentant les 4 ensembles de calculs
% Case 0 pour la case en haut à gauche puis numérotation dans le sens des aiguilles d'une montre
% Tableau A pour l'ensemble en haut à gauche, B en haut à droite, C en bas à droite et D en bas à gauche

int: n;
enum OBJECTS = { case0, case1, case2, case3, case4, case5, case6, case7, case8, case9 };

array[OBJECTS] of var 0..n: A;
array[OBJECTS] of var 0..n: B;
array[OBJECTS] of var 0..n: C;
array[OBJECTS] of var 0..n: D;

% Cases qui sont entre les ensembles
var 0..n: AB;
var 0..n: BC;
var 0..n: CD;
var 0..n: DA;

% Contraintes pour que les cases correspondant à une case de dizaine ne soient pas égales à 0;
constraint A[case4]!=0;
constraint A[case8]!=0;
constraint B[case4]!=0;
constraint B[case8]!=0;
constraint C[case4]!=0;
constraint C[case8]!=0;
constraint D[case4]!=0;
constraint D[case8]!=0;

% Contraintes liant les différentes cases du garam. Les cases seront toujours liées tel quelles, seules les opérateurs vont changer (+,-,*)
constraint A[case0]+A[case1]=A[case2];
constraint A[case2]+A[case3]=10*A[case4]+A[case5];
constraint A[case7]*A[case6]=A[case5];
constraint A[case0]+A[case9]=10*A[case8]+A[case7];

constraint B[case0]+B[case1]=B[case2];
constraint B[case2]*B[case3]=10*B[case4]+B[case5];
constraint B[case7]-B[case6]=B[case5];
constraint B[case0]+B[case9]=10*B[case8]+B[case7];

constraint C[case0]-C[case1]=C[case2];
constraint C[case2]*C[case3]=10*C[case4]+C[case5];
constraint C[case7]+C[case6]=C[case5];
constraint C[case0]+C[case9]=10*C[case8]+C[case7];

constraint D[case0]+D[case1]=D[case2];
constraint D[case2]*D[case3]=10*D[case4]+D[case5];
constraint D[case7]*D[case6]=D[case5];
constraint D[case0]*D[case9]=10*D[case8]+D[case7];

constraint A[case3]-AB=B[case9];
constraint B[case6]+BC=C[case1];
constraint D[case3]+CD=C[case9]; 
constraint A[case6]+DA=D[case1];


% Calcul
solve satisfy;
