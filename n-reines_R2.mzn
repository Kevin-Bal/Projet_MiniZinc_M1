include "alldifferent.mzn";

int: n;
array [1..n] of var 1..n: q; % Position d'une reine sur une ligne

constraint alldifferent(q);                       % Une et une seule reine par ligne
constraint alldifferent([q[i] + i | i in 1..n]);  % 0 ou 1 reine par diagonale 
constraint alldifferent([q[i] - i | i in 1..n]);  %  "    "    "    "      

% Contraintes pour casser les symétries

constraint forall(i in 1..n)( 
             forall(j in 1..n)(
               forall(ip in 1..n)(
                 forall(jp in 1..n)(
                   if ip == (n+1)-j /\ jp == (n+1)-i then q[ip] != (n+1)-j /\ jp != q[(n+1)-i] % Symetries cassées : haut gauche / bas droite
                   endif
                   /\
                   if ip == j /\ jp == i then q[ip] != j /\ jp != q[i] % Symetries cassées : haut / bas
                   endif
                   /\
                   if ip == i /\ jp == (n+1)-j then q[ip] != i /\ jp != q[(n+1)-j] % Symetries cassées : haut droite / bas droite
                   endif
                   /\
                   if ip == (n+1)-i /\ jp == j then q[ip] != (n+1)-i /\ jp != q[j]
                   endif
                 )
               )
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