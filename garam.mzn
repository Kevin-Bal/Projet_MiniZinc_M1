
% 4 tableaux de 10 cases représentant les 4 ensembles de calculs
% Case 0 pour la case en haut à gauche puis numérotation dans le sens des aiguilles d'une montre
% Tableau A pour l'ensemble en haut à gauche, B en haut à droite, C en bas à droite et D en bas à gauche

enum OBJECTS = { case0, case1, case2, case3, case4, case5, case6, case7, case8, case9 };
array[OBJECTS] of var 0..9: A;
array[OBJECTS] of var 0..9: B;
array[OBJECTS] of var 0..9: C;
array[OBJECTS] of var 0..9: D;

int: valeurCaseA0;
int: valeurCaseA1;
int: valeurCaseA2;
int: valeurCaseA3;
int: valeurCaseA4;
int: valeurCaseA5;
int: valeurCaseA6;
int: valeurCaseA7;
int: valeurCaseA8;
int: valeurCaseA9;

int: valeurCaseB0;
int: valeurCaseB1;
int: valeurCaseB2;
int: valeurCaseB3;
int: valeurCaseB4;
int: valeurCaseB5;
int: valeurCaseB6;
int: valeurCaseB7;
int: valeurCaseB8;
int: valeurCaseB9;

int: valeurCaseC0;
int: valeurCaseC1;
int: valeurCaseC2;
int: valeurCaseC3;
int: valeurCaseC4;
int: valeurCaseC5;
int: valeurCaseC6;
int: valeurCaseC7;
int: valeurCaseC8;
int: valeurCaseC9;

int: valeurCaseD0;
int: valeurCaseD1;
int: valeurCaseD2;
int: valeurCaseD3;
int: valeurCaseD4;
int: valeurCaseD5;
int: valeurCaseD6;
int: valeurCaseD7;
int: valeurCaseD8;
int: valeurCaseD9;

int: valeurCaseAB;
int: valeurCaseBC;
int: valeurCaseCD;
int: valeurCaseDA;


% Cases qui sont entre les ensembles
var 0..9: AB;
var 0..9: BC;
var 0..9: CD;
var 0..9: DA;

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



constraint if(valeurCaseA0 != -1) then A[case0] = valeurCaseA0 endif;
constraint if(valeurCaseA1 != -1) then A[case1] = valeurCaseA1 endif;
constraint if(valeurCaseA2 != -1) then A[case2] = valeurCaseA2 endif;
constraint if(valeurCaseA3 != -1) then A[case3] = valeurCaseA3 endif;
constraint if(valeurCaseA4 != -1) then A[case4] = valeurCaseA4 endif;
constraint if(valeurCaseA5 != -1) then A[case5] = valeurCaseA5 endif;
constraint if(valeurCaseA6 != -1) then A[case6] = valeurCaseA6 endif;
constraint if(valeurCaseA7 != -1) then A[case7] = valeurCaseA7 endif;
constraint if(valeurCaseA8 != -1) then A[case8] = valeurCaseA8 endif;
constraint if(valeurCaseA9 != -1) then A[case9] = valeurCaseA9 endif;

constraint if(valeurCaseB0 != -1) then B[case0] = valeurCaseB0 endif;
constraint if(valeurCaseB1 != -1) then B[case1] = valeurCaseB1 endif;
constraint if(valeurCaseB2 != -1) then B[case2] = valeurCaseB2 endif;
constraint if(valeurCaseB3 != -1) then B[case3] = valeurCaseB3 endif;
constraint if(valeurCaseB4 != -1) then B[case4] = valeurCaseB4 endif;
constraint if(valeurCaseB5 != -1) then B[case5] = valeurCaseB5 endif;
constraint if(valeurCaseB6 != -1) then B[case6] = valeurCaseB6 endif;
constraint if(valeurCaseB7 != -1) then B[case7] = valeurCaseB7 endif;
constraint if(valeurCaseB8 != -1) then B[case8] = valeurCaseB8 endif;
constraint if(valeurCaseB9 != -1) then B[case9] = valeurCaseB9 endif;

constraint if(valeurCaseC0 != -1) then C[case0] = valeurCaseC0 endif;
constraint if(valeurCaseC1 != -1) then C[case1] = valeurCaseC1 endif;
constraint if(valeurCaseC2 != -1) then C[case2] = valeurCaseC2 endif;
constraint if(valeurCaseC3 != -1) then C[case3] = valeurCaseC3 endif;
constraint if(valeurCaseC4 != -1) then C[case4] = valeurCaseC4 endif;
constraint if(valeurCaseC5 != -1) then C[case5] = valeurCaseC5 endif;
constraint if(valeurCaseC6 != -1) then C[case6] = valeurCaseC6 endif;
constraint if(valeurCaseC7 != -1) then C[case7] = valeurCaseC7 endif;
constraint if(valeurCaseC8 != -1) then C[case8] = valeurCaseC8 endif;
constraint if(valeurCaseC9 != -1) then C[case9] = valeurCaseC9 endif;

constraint if(valeurCaseD0 != -1) then D[case0] = valeurCaseD0 endif;
constraint if(valeurCaseD1 != -1) then D[case1] = valeurCaseD1 endif;
constraint if(valeurCaseD2 != -1) then D[case2] = valeurCaseD2 endif;
constraint if(valeurCaseD3 != -1) then D[case3] = valeurCaseD3 endif;
constraint if(valeurCaseD4 != -1) then D[case4] = valeurCaseD4 endif;
constraint if(valeurCaseD5 != -1) then D[case5] = valeurCaseD5 endif;
constraint if(valeurCaseD6 != -1) then D[case6] = valeurCaseD6 endif;
constraint if(valeurCaseD7 != -1) then D[case7] = valeurCaseD7 endif;
constraint if(valeurCaseD8 != -1) then D[case8] = valeurCaseD8 endif;
constraint if(valeurCaseD9 != -1) then D[case9] = valeurCaseD9 endif;


constraint if(valeurCaseAB != -1) then AB = valeurCaseAB endif;
constraint if(valeurCaseBC != -1) then BC = valeurCaseBC endif;
constraint if(valeurCaseCD != -1) then CD = valeurCaseCD endif;
constraint if(valeurCaseDA != -1) then DA = valeurCaseDA endif;

% Calcul
solve satisfy;
