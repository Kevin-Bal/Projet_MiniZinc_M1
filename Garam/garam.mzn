
% 4 tableaux de 10 cases représentant les 4 ensembles de calculs
% Case 0 pour la case en haut à gauche puis numérotation dans le sens des aiguilles d'une montre
% Tableau A pour l'ensemble en haut à gauche, B en haut à droite, C en bas à droite et D en bas à gauche

int: nb_case;
int: nb_op;
enum OBJECTS = { case0, case1, case2, case3, case4, case5, case6, case7, case8, case9 };

array[OBJECTS] of var 0..nb_case: A;
array[OBJECTS] of var 0..nb_case: B;
array[OBJECTS] of var 0..nb_case: C;
array[OBJECTS] of var 0..nb_case: D;


array[1..nb_op] of string: opA;
array[1..nb_op] of string: opB;
array[1..nb_op] of string: opC;
array[1..nb_op] of string: opD;

string: opAB;
string: opBC;
string: opCD;
string: opDA;

% Cases qui sont entre les ensembles
var 0..nb_case: AB;
var 0..nb_case: BC;
var 0..nb_case: CD;
var 0..nb_case: DA;

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
%Premier groupe

constraint if opA[1] == "+" then A[case0]+A[case1]=A[case2] 
           else if opA[1] == "-" then A[case0]-A[case1]=A[case2]
                else if opA[1] == "*" then A[case0]*A[case1]=A[case2] endif
                endif
           endif;  
           
constraint if opA[2] == "+" then A[case2]+A[case3]=10*A[case4]+A[case5] 
           else if opA[2] == "-" then A[case2]-A[case3]=10*A[case4]+A[case5] endif
                else if opA[2] == "-" then A[case2]*A[case3]=10*A[case4]+A[case5] endif
           endif; 
                       
constraint if opA[3] == "+" then A[case7]+A[case6]=A[case5] 
           else if opA[3] == "-" then A[case7]-A[case6]=A[case5]
                else if opA[3] == "*" then A[case7]*A[case6]=A[case5] endif
                endif
           endif;             
           
constraint if opA[4] == "+" then A[case0]+A[case9]=10*A[case8]+A[case7]
           else if opA[4] == "*" then A[case0]+A[case9]=10*A[case8]+A[case7] endif
           endif; 
           
%Deuxieme groupe          

constraint if opB[1] == "+" then B[case0]+B[case1]=B[case2] 
           else if opB[1] == "-" then B[case0]-B[case1]=B[case2]
                else if opB[1] == "*" then B[case0]*B[case1]=B[case2] endif
                endif
           endif;  
           
constraint if opB[2] == "+" then B[case2]*B[case3]=10*B[case4]+B[case5] 
           else if opB[2] == "*" then B[case2]*B[case3]=10*B[case4]+B[case5] endif
           endif; 
                       
constraint if opB[3] == "+" then B[case7]+B[case6]=B[case5] 
           else if opB[3] == "-" then B[case7]-B[case6]=B[case5]
                else if opB[3] == "*" then B[case7]*B[case6]=B[case5] endif
                endif
           endif;             
           
constraint if opB[4] == "+" then B[case0]+B[case9]=10*B[case8]+B[case7]
           else if opB[4] == "*" then B[case0]*B[case9]=10*B[case8]+B[case7] endif
           endif;
              
%Troisieme groupe

constraint if opC[1] == "+" then C[case0]+C[case1]=C[case2] 
           else if opC[1] == "-" then C[case0]-C[case1]=C[case2]
                else if opC[1] == "*" then C[case0]*C[case1]=C[case2] endif
                endif
           endif;  
           
constraint if opC[2] == "+" then C[case2]+C[case3]=10*C[case4]+C[case5] 
           else if opC[2] == "*" then C[case2]*C[case3]=10*C[case4]+C[case5] endif
           endif; 
                       
constraint if opC[3] == "+" then C[case7]+C[case6]=C[case5] 
           else if opC[3] == "-" then C[case7]-C[case6]=C[case5]
                else if opC[3] == "*" then C[case7]*C[case6]=C[case5] endif
                endif
           endif;             
           
constraint if opC[4] == "+" then C[case0]+C[case9]=10*C[case8]+C[case7]
           else if opC[4] == "*" then C[case0]*C[case9]=10*C[case8]+C[case7] endif
           endif; 

%Quatrieme groupe

constraint if opD[1] == "+" then D[case0]+D[case1]=D[case2] 
           else if opD[1] == "-" then D[case0]-D[case1]=D[case2]
                else if opD[1] == "*" then D[case0]*D[case1]=D[case2] endif
                endif
           endif;  
           
constraint if opD[2] == "+" then D[case2]+D[case3]=10*D[case4]+D[case5] 
           else if opD[2] == "*" then D[case2]*D[case3]=10*D[case4]+D[case5] endif
           endif; 
                       
constraint if opD[3] == "+" then D[case7]+D[case6]=D[case5] 
           else if opD[3] == "-" then D[case7]-D[case6]=D[case5]
                else if opD[3] == "*" then D[case7]*D[case6]=D[case5] endif
                endif
           endif;             
           
constraint if opD[4] == "+" then D[case0]+D[case9]=10*D[case8]+D[case7]
           else if opD[4] == "*" then D[case0]*D[case9]=10*D[case8]+D[case7] endif
           endif;
           
%operation entre les groupe

constraint if opAB == "+" then A[case3]+AB=B[case9]
           else if opAB == "-" then A[case3]-AB=B[case9]
                else if opAB == "*" then A[case3]*AB=B[case9] endif
                endif
           endif;

constraint if opCD == "+" then D[case3]+CD=C[case9]
           else if opCD == "-" then D[case3]-CD=C[case9]
                else if opCD == "*" then D[case3]*CD=C[case9] endif
                endif
           endif;

constraint if opBC == "+" then B[case6]+BC=C[case1]
           else if opBC == "-" then B[case6]-BC=C[case1]
                else if opBC == "*" then B[case6]*BC=C[case1] endif
                endif
           endif;

constraint if opDA == "+" then A[case6]+DA=D[case1]
           else if opDA == "-" then A[case6]-DA=D[case1]
                else if opDA == "*" then A[case6]*DA=D[case1] endif
                endif
           endif;

% Calcul
solve satisfy;
