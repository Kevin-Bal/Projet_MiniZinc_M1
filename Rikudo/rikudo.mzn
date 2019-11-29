include "alldifferent.mzn";

int: taille = 36;

%La case du milieu
int: c18 = 0;

%Les variables à trouvés
var 1..taille : c0;
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
[
  c0, c1, c2, c3, 
  c4, c5, c6, c7, c8,
  c9, c10, c11, c12, c13, c14,
  c15, c16, c17, c18, c19, c20, c21,
  c22, c23, c24, c25, c26, c27,
  c28, c29, c30, c31, c32,
  c33, c34, c35, c36
];

%Le tableau qui contient le nombre de chaque case à chaque ligne
array[1..8] of int: indicesLignesRikudo = [1,4,9,15,21,27,32,36];
array[1..9] of int: indicesCasesDefinies = [0, 3, 4, 5, 17, 18, 20, 25, 29];

predicate noExists(int:c) = forall(i in indicesCasesDefinies)(indicesCasesDefinies[i] != c);

constraint c2 = 4;
constraint c3 = 29;
constraint c4 = 7;

%Toutes les cases sont différentes
constraint alldifferent(rikudo);

%Pour chaque case de la ligne
constraint forall(i in 1..7) (
      forall(c in indicesLignesRikudo[i]..indicesLignesRikudo[i+1])      
      (
           
           %la case à droite peut être égale à la case courante +1 
           if c+1<indicesLignesRikudo[i+1] then
           rikudo[c+1] = rikudo[c]+1
           endif
           %la case à gauche peut être égale à la case courante +1 
           \/if c-1>indicesLignesRikudo[i] then 
           rikudo[c-1] = rikudo[c]+1
           endif
           %les 2 cases du dessous peuvent être égale à la case courante +1 
           \/if i != 7 then
           rikudo[indicesLignesRikudo[i+1]-indicesLignesRikudo[i]+c] = rikudo[c]+1
           \/rikudo[indicesLignesRikudo[i+1]-indicesLignesRikudo[i]+1+c] = rikudo[c]+1
           endif
           %les 2 cases du dessus peuvent être égale à la case courante +1 
           \/if i != 1 then
           rikudo[indicesLignesRikudo[i]-indicesLignesRikudo[i-1]+c]+1 = rikudo[c]+1
           \/rikudo[indicesLignesRikudo[i]-indicesLignesRikudo[i-1]+1+c]+1 = rikudo[c]+1
           endif
           
      )
);

%Tableau qui contient les couples des cases dont il y a un lien
%indice case 1, indice case 2
int: nombreDeLiens = 2;
array[1..nombreDeLiens, 1..2] of int : liens = [|6,7
                                                |7,8|];
constraint forall(i in 1..nombreDeLiens) 
(
  rikudo[liens[i, 1]] = rikudo[liens[i, 2]] + 1
);    

solve satisfy;
output [if (j==1 \/ j==34) then "   " ++ show(rikudo[j])
        else if (j==5 \/ j==29) then "  " ++ show(rikudo[j])
             else if (j==10 \/ j==23) then " " ++ show(rikudo[j])
                  else show(rikudo[j])
                  endif
             endif
        endif
          ++
        if j==4 \/ j==9 \/ j==15 \/ j==22 \/ j==28 \/j==33 \/ j==37   then "\n" 
         else " " 
        endif|j in 1..taille+1 ]