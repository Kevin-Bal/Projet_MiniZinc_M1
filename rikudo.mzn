include "alldifferent.mzn";

int: taille = 36;

%La case du milieu
int: c0 = 0;

%Les variables à trouvés
var 1..taille : c1;
var 1..taille : c2;
var 1..taille : c3;
var 1..taille : c4;
var 1..taille : c5;
var 1..taille : c6;
var 1..taille : c7;
var 1..taille : c8;
var 1..taille : c9;
var 1..taille : c10;
var 1..taille : c11;
var 1..taille : c12;
var 1..taille : c13;
var 1..taille : c14;
var 1..taille : c15;
var 1..taille : c16;
var 1..taille : c17;
var 1..taille : c18;
var 1..taille : c19;
var 1..taille : c20;
var 1..taille : c21;
var 1..taille : c22;
var 1..taille : c23;
var 1..taille : c24;
var 1..taille : c25;
var 1..taille : c26;
var 1..taille : c27;
var 1..taille : c28;
var 1..taille : c29;
var 1..taille : c30;
var 1..taille : c31;
var 1..taille : c32;
var 1..taille : c33;
var 1..taille : c34;
var 1..taille : c35;
var 1..taille : c36;

%Le plateau rikudo
array[1..taille+1] of var 0..taille : rikudo = 
[c1, c2, c3, c4,
c5, c6, c7, c8, c9,
c10, c11, c12, c13, c14, c15, 
c16, c17, c18, c0, c19, c20, c21,
c22, c23, c24, c25, c26, c27,
c28, c29, c30, c31, c32,
c33, c34, c35, c36
];

%Le tableau qui contient le nombre de chaque case à chaque ligne
array[1..7] of int: indicesLignesRikudo = [4, 5, 6, 7, 6, 5, 4];

array[1..8] of int: indicesCasesDefinies = [3, 4, 5, 17, 18, 20, 25, 29];

%constraint c3 = 4;
constraint c4 = 29;
% constraint c5 = 7;
% constraint c17 = 10;
% constraint c18 = 1;
% constraint c20 = 24;
% constraint c25 = 36;
% constraint c29 = 16;

%Toutes les cases sont différentes
%constraint alldifferent(rikudo);

%Pour chaque ligne du plateau
constraint forall(l in indicesLignesRikudo) (
  %Pour chaque case de la ligne
  forall(c in 1..indicesLignesRikudo[l]) (
    rikudo[c] = 1
  )
);

%constraint forall(i in indices) (
%rikudo[i] = 1
%   forall(j in 2..indices[i]-1) (
%      %Contrainte horizontal
%     rikudo[j] = rikudo[j+1] + 1 %\/ rikudo[j] = rikudo[j-1]
%   )
%);

% %Toutes les cases doivent se suivre de tel sorte à avoir des nombres consécutifs
% constraint c1 = c2 + 1 \/ c1 = c2 - 1;