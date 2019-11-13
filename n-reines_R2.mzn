include "alldifferent.mzn";

int: n;
array [1..n] of var 1..n: q; % Position d'une reine sur une ligne

constraint alldifferent(q);                       % Une et une seule reine par ligne
constraint alldifferent([q[i] + i | i in 1..n]);  % 0 ou 1 reine par diagonale 
constraint alldifferent([q[i] - i | i in 1..n]);  %  "    "    "    "      

solve satisfy;
output [if fix(q[j]) == i then "Q"  % Une et une seule reine par colonne
         else "." 
        endif 
          ++
        if j == n then "\n" 
         else " " 
        endif |i,j in 1..n ]