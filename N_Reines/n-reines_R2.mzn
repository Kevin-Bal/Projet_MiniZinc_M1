include "alldifferent.mzn";
include "lex_lesseq.mzn";
include "lex_greatereq.mzn";

int: n;
array [1..n] of var 1..n: q; % Position d'une reine sur une ligne

constraint alldifferent(q);                       % Une et une seule reine par ligne
constraint alldifferent([q[i] + i | i in 1..n]);  % 0 ou 1 reine par diagonale 
constraint alldifferent([q[i] - i | i in 1..n]);  %  "    "    "    "      


%Retire les symétries Nord / Sud
constraint lex_lesseq(q,[q[i] | i in reverse(1..n)]);

%Retire les symétries Est/Ouest
array [1..n] of var 1..n: qreverseGD; 
constraint forall(i in (1..n))(qreverseGD[i]=n+1-i);
constraint lex_lesseq(q,qreverseGD);

%Retire les symétries Diagonales Nord-Ouest / Sud-Est
array [1..n] of var 1..n: qdiagonales1;
constraint forall(i in (1..n))(qdiagonales1[q[i]]=i);
constraint lex_lesseq(q,qdiagonales1);

%Retire les symétries Diagonales Sud-Ouest/ Nord-Est
array [1..n] of var 1..n: qdiagonales2;
constraint forall(i in (1..n))(qdiagonales2[n+1-q[i]]=n+1-i);
constraint lex_lesseq(q,qdiagonales2);

%Retire les rotations
% 90°
array [1..n] of var 1..n: qrotation90; 
constraint forall(i in (1..n))(qrotation90[q[i]]=n+1-i);
constraint lex_lesseq(q,qrotation90);

% 180°
array [1..n] of var 1..n: qrotation180; 
constraint forall(i in (1..n))(qrotation180[qrotation90[i]]=n+1-i);
constraint lex_lesseq(q,qrotation180);

% 270
array [1..n] of var 1..n: qrotation270; 
constraint forall(i in (1..n))(qrotation270[qrotation180[i]]=n+1-i);
constraint lex_lesseq(q,qrotation270);



solve satisfy;
output [if fix(q[j]) == i then "Q"  % Une et une seule reine par colonne
         else "." 
        endif 
          ++
        if j == n then "\n" 
         else " " 
        endif |i,j in 1..n ]
