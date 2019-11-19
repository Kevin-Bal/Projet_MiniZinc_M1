include "alldifferent.mzn";

int: n;
array [1..n] of var 1..n: q; % Position d'une reine sur une ligne

constraint alldifferent(q);                       % Une et une seule reine par ligne
constraint alldifferent([q[i] + i | i in 1..n]);  % 0 ou 1 reine par diagonale 
constraint alldifferent([q[i] - i | i in 1..n]);  %  "    "    "    "      

% Contraintes pour casser les symétries

constraint forall(i in 1..n)( 
             forall(j in 1..n)(
                 if q[i] == j then q[i] != n+1-j /\ q[n+1-j] != n+1-i /\ q[n+1-i] != j /\ q[j] != i  % Symetries cassées : haut gauche / bas droite
                 endif
              )
            );

solve satisfy;
output [if fix(q[j]) == i then "Q"  % Une et une seule reine par colonne
         else "." 
        endif 
          ++
        if j == n then "\n" 
         else " " 
        endif |i,j in 1..n ]