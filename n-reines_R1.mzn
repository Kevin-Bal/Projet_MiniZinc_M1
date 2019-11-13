% Sans contrainte globale


int: n;
array [1..n] of var 1..n: q; % Position d'une reine sur une ligne

% Une et une seule reine par colonne
constraint forall(i in 1..n)(
             forall(j in 1..n)(
               if i != j then q[i] != q[j]
               endif
             )
           );

% 0 ou 1 reine par diagonale   
constraint forall(i in 1..n)(
             forall(j in 1..n)(
               if i != j then q[i] - q[j] != i - j /\ q[i] - q[j] != j - i
               endif
             ) 
           );

solve satisfy;
output [if fix(q[j]) == i then "Q"
         else "." 
        endif 
          ++
        if j == n then "\n" 
         else " " 
        endif |i,j in 1..n ]