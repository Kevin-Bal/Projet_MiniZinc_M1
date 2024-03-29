include "lex_lesseq.mzn";

int: n;
array [1..n, 1..n] of var bool: grille;


% Une et une seule reine par ligne 
constraint forall(i in 1..n)(
             sum(j in 1..n)(grille[i,j]) = 1
           );

% Une et une seule reine par colonne
constraint forall(j in 1..n)(
             sum(i in 1..n)(grille[i,j]) = 1
           );
                    
% 0 ou 1 reine par diagonale
% Les deux conditions servent à éviter de parcourir 2 fois la même diagonale (les diagonales centrales)
constraint forall(j in 0..n-1)(         
             (sum(i in 1..n-j)(grille[i+j,i]) <= 1) /\
             (sum(i in 1..n-j)(if i != i+j then grille[i,i+j] else 0 endif) <= 1) /\
             (sum(i in 1..n-j)(grille[n+1-i-j,i]) <= 1) /\
             (sum(i in j+1..n)(if n+1-i+j != i then grille[n+1-i+j,i] else 0 endif) <= 1)
           );    
          
% Contrainte de symétrie
constraint
    lex_lesseq(array1d(grille), [ grille[j,i] | i,j in 1..n ])
/\  lex_lesseq(array1d(grille), [ grille[i,j] | i in reverse(1..n), j in 1..n ])
/\  lex_lesseq(array1d(grille), [ grille[j,i] | i in 1..n, j in reverse(1..n) ])
/\  lex_lesseq(array1d(grille), [ grille[i,j] | i in 1..n, j in reverse(1..n) ])
/\  lex_lesseq(array1d(grille), [ grille[j,i] | i in reverse(1..n), j in 1..n ])
/\  lex_lesseq(array1d(grille), [ grille[i,j] | i,j in reverse(1..n) ])
/\  lex_lesseq(array1d(grille), [ grille[j,i] | i,j in reverse(1..n) ])
; 

solve satisfy;
output [if fix(grille[i,j]) == 1 then "Q"
          else "."
        endif
          ++
        if j == n then "\n"
          else " " 
        endif | i,j in 1..n]
