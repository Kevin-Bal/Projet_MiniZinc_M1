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

% Contraintes rikudo
constraint alldifferent(rikudo);

constraint (rikudo[1]=rikudo[2]+1 \/ rikudo[1]=rikudo[5]+1 \/ rikudo[1]=rikudo[6]+1) /\ (rikudo[1]=rikudo[2]-1 \/ rikudo[1]=rikudo[5]-1 \/ rikudo[1]=rikudo[6]-1);
constraint (rikudo[2]=rikudo[1]+1 \/ rikudo[2]=rikudo[3]+1 \/ rikudo[2]=rikudo[6]+1 \/ rikudo[2]=rikudo[7]+1) /\ (rikudo[2]=rikudo[1]-1 \/ rikudo[2]=rikudo[3]-1 \/ rikudo[2]=rikudo[6]-1 \/ rikudo[2]=rikudo[7]-1);
constraint (rikudo[3]=rikudo[2]+1 \/ rikudo[3]=rikudo[4]+1 \/ rikudo[3]=rikudo[7]+1 \/ rikudo[3]=rikudo[8]+1) /\ (rikudo[3]=rikudo[2]-1 \/ rikudo[3]=rikudo[4]-1 \/ rikudo[3]=rikudo[7]-1 \/ rikudo[3]=rikudo[8]-1);
constraint (rikudo[4]=rikudo[3]+1 \/ rikudo[4]=rikudo[8]+1 \/ rikudo[4]=rikudo[9]+1) /\ (rikudo[4]=rikudo[3]-1 \/ rikudo[4]=rikudo[8]-1 \/ rikudo[4]=rikudo[9]-1);

constraint (rikudo[5]=rikudo[1]+1 \/ rikudo[5]=rikudo[6]+1 \/ rikudo[5]=rikudo[10]+1 \/ rikudo[5]=rikudo[11]+1) /\ (rikudo[5]=rikudo[1]-1 \/ rikudo[5]=rikudo[6]-1 \/ rikudo[5]=rikudo[10]-1 \/ rikudo[5]=rikudo[11]-1);
constraint (rikudo[6]=rikudo[1]+1 \/ rikudo[6]=rikudo[2]+1 \/ rikudo[6]=rikudo[5]+1 \/ rikudo[6]=rikudo[7]+1 \/ rikudo[6]=rikudo[11]+1 \/ rikudo[6]=rikudo[12]+1) /\ (rikudo[6]=rikudo[1]-1 \/ rikudo[6]=rikudo[2]-1 \/ rikudo[6]=rikudo[5]-1 \/ rikudo[6]=rikudo[7]-1 \/ rikudo[6]=rikudo[11]-1 \/ rikudo[6]=rikudo[12]-1);
constraint (rikudo[7]=rikudo[2]+1 \/ rikudo[7]=rikudo[3]+1 \/ rikudo[7]=rikudo[6]+1 \/ rikudo[7]=rikudo[8]+1 \/ rikudo[7]=rikudo[12]+1 \/ rikudo[7]=rikudo[13]+1) /\ (rikudo[7]=rikudo[2]-1 \/ rikudo[7]=rikudo[3]-1 \/ rikudo[7]=rikudo[6]-1 \/ rikudo[7]=rikudo[8]-1 \/ rikudo[7]=rikudo[12]-1 \/ rikudo[7]=rikudo[13]-1);
constraint (rikudo[8]=rikudo[3]+1 \/ rikudo[8]=rikudo[4]+1 \/ rikudo[8]=rikudo[7]+1 \/ rikudo[8]=rikudo[9]+1 \/ rikudo[8]=rikudo[13]+1 \/ rikudo[8]=rikudo[14]+1) /\ (rikudo[8]=rikudo[3]-1 \/ rikudo[8]=rikudo[4]-1 \/ rikudo[8]=rikudo[7]-1 \/ rikudo[8]=rikudo[9]-1 \/ rikudo[8]=rikudo[13]-1 \/ rikudo[8]=rikudo[14]-1);
constraint (rikudo[9]=rikudo[4]+1 \/ rikudo[9]=rikudo[8]+1 \/ rikudo[9]=rikudo[14]+1 \/ rikudo[9]=rikudo[15]+1) /\ (rikudo[9]=rikudo[4]-1 \/ rikudo[9]=rikudo[8]-1 \/ rikudo[9]=rikudo[14]-1 \/ rikudo[9]=rikudo[15]-1);

constraint (rikudo[10]=rikudo[5]+1 \/ rikudo[10]=rikudo[11]+1 \/ rikudo[10]=rikudo[16]+1 \/ rikudo[10]=rikudo[17]+1) /\ (rikudo[10]=rikudo[5]-1 \/ rikudo[10]=rikudo[11]-1 \/ rikudo[10]=rikudo[16]-1 \/ rikudo[10]=rikudo[17]-1);
constraint (rikudo[11]=rikudo[5]+1 \/ rikudo[11]=rikudo[6]+1 \/ rikudo[11]=rikudo[10]+1 \/ rikudo[11]=rikudo[12]+1 \/ rikudo[11]=rikudo[17]+1 \/ rikudo[11]=rikudo[18]+1) /\ (rikudo[11]=rikudo[5]-1 \/ rikudo[11]=rikudo[6]-1 \/ rikudo[11]=rikudo[10]-1 \/ rikudo[11]=rikudo[12]-1 \/ rikudo[11]=rikudo[17]-1 \/ rikudo[11]=rikudo[18]-1);
constraint (rikudo[12]=rikudo[6]+1 \/ rikudo[12]=rikudo[7]+1 \/ rikudo[12]=rikudo[11]+1 \/ rikudo[12]=rikudo[13]+1 \/ rikudo[12]=rikudo[18]+1) /\ (rikudo[12]=rikudo[6]-1 \/ rikudo[12]=rikudo[7]-1 \/ rikudo[12]=rikudo[11]-1 \/ rikudo[12]=rikudo[13]-1 \/ rikudo[12]=rikudo[18]-1);
constraint (rikudo[13]=rikudo[7]+1 \/ rikudo[13]=rikudo[8]+1 \/ rikudo[13]=rikudo[12]+1 \/ rikudo[13]=rikudo[14]+1 \/ rikudo[13]=rikudo[20]+1) /\ (rikudo[13]=rikudo[7]-1 \/ rikudo[13]=rikudo[8]-1 \/ rikudo[13]=rikudo[12]-1 \/ rikudo[13]=rikudo[14]-1 \/ rikudo[13]=rikudo[20]-1);
constraint (rikudo[14]=rikudo[8]+1 \/ rikudo[14]=rikudo[9]+1 \/ rikudo[14]=rikudo[13]+1 \/ rikudo[14]=rikudo[15]+1 \/ rikudo[14]=rikudo[20]+1 \/ rikudo[14]=rikudo[21]+1) /\ (rikudo[14]=rikudo[8]-1 \/ rikudo[14]=rikudo[9]-1 \/ rikudo[14]=rikudo[13]-1 \/ rikudo[14]=rikudo[15]-1 \/ rikudo[14]=rikudo[20]-1 \/ rikudo[14]=rikudo[21]-1);
constraint (rikudo[15]=rikudo[9]+1 \/ rikudo[15]=rikudo[14]+1 \/ rikudo[15]=rikudo[21]+1 \/ rikudo[15]=rikudo[22]+1) /\ (rikudo[15]=rikudo[9]-1 \/ rikudo[15]=rikudo[14]-1 \/ rikudo[15]=rikudo[21]-1 \/ rikudo[15]=rikudo[22]-1);

constraint (rikudo[16]=rikudo[10]+1 \/ rikudo[16]=rikudo[17]+1 \/ rikudo[16]=rikudo[23]+1) /\ (rikudo[16]=rikudo[10]-1 \/ rikudo[16]=rikudo[17]-1 \/ rikudo[16]=rikudo[23]-1);
constraint (rikudo[17]=rikudo[10]+1 \/ rikudo[17]=rikudo[11]+1 \/ rikudo[17]=rikudo[16]+1 \/ rikudo[17]=rikudo[18]+1 \/ rikudo[17]=rikudo[23]+1 \/ rikudo[17]=rikudo[24]+1) /\ (rikudo[17]=rikudo[10]-1 \/ rikudo[17]=rikudo[11]-1 \/ rikudo[17]=rikudo[16]-1 \/ rikudo[17]=rikudo[18]-1 \/ rikudo[17]=rikudo[23]-1 \/ rikudo[17]=rikudo[24]-1);
constraint (rikudo[18]=rikudo[11]+1 \/ rikudo[18]=rikudo[12]+1 \/ rikudo[18]=rikudo[17]+1 \/ rikudo[18]=rikudo[24]+1 \/ rikudo[18]=rikudo[25]+1) /\ (rikudo[18]=rikudo[11]-1 \/ rikudo[18]=rikudo[12]-1 \/ rikudo[18]=rikudo[17]-1 \/ rikudo[18]=rikudo[24]-1 \/ rikudo[18]=rikudo[25]-1);
constraint (rikudo[20]=rikudo[13]+1 \/ rikudo[20]=rikudo[14]+1 \/ rikudo[20]=rikudo[21]+1 \/ rikudo[20]=rikudo[26]+1 \/ rikudo[20]=rikudo[27]+1) /\ (rikudo[20]=rikudo[13]-1 \/ rikudo[20]=rikudo[14]-1 \/ rikudo[20]=rikudo[21]-1 \/ rikudo[20]=rikudo[26]-1 \/ rikudo[20]=rikudo[27]-1);
constraint (rikudo[21]=rikudo[14]+1 \/ rikudo[21]=rikudo[15]+1 \/ rikudo[21]=rikudo[20]+1 \/ rikudo[21]=rikudo[22]+1 \/ rikudo[21]=rikudo[27]+1 \/ rikudo[21]=rikudo[28]+1) /\ (rikudo[21]=rikudo[14]-1 \/ rikudo[21]=rikudo[15]-1 \/ rikudo[21]=rikudo[20]-1 \/ rikudo[21]=rikudo[22]-1 \/ rikudo[21]=rikudo[27]-1 \/ rikudo[21]=rikudo[28]-1);
constraint (rikudo[22]=rikudo[15]+1 \/ rikudo[22]=rikudo[21]+1 \/ rikudo[22]=rikudo[28]+1) /\ (rikudo[22]=rikudo[15]-1 \/ rikudo[22]=rikudo[21]-1 \/ rikudo[22]=rikudo[28]-1);

constraint (rikudo[23]=rikudo[16]+1 \/ rikudo[23]=rikudo[17]+1 \/ rikudo[23]=rikudo[24]+1 \/ rikudo[23]=rikudo[29]+1) /\ (rikudo[23]=rikudo[16]-1 \/ rikudo[23]=rikudo[17]-1 \/ rikudo[23]=rikudo[24]-1 \/ rikudo[23]=rikudo[29]-1);
constraint (rikudo[24]=rikudo[17]+1 \/ rikudo[24]=rikudo[18]+1 \/ rikudo[24]=rikudo[23]+1 \/ rikudo[24]=rikudo[25]+1 \/ rikudo[24]=rikudo[29]+1 \/ rikudo[24]=rikudo[30]+1) /\ (rikudo[24]=rikudo[17]-1 \/ rikudo[24]=rikudo[18]-1 \/ rikudo[24]=rikudo[23]-1 \/ rikudo[24]=rikudo[25]-1 \/ rikudo[24]=rikudo[29]-1 \/ rikudo[24]=rikudo[30]-1);
constraint (rikudo[25]=rikudo[18]+1 \/ rikudo[25]=rikudo[24]+1 \/ rikudo[25]=rikudo[26]+1 \/ rikudo[25]=rikudo[30]+1 \/ rikudo[25]=rikudo[31]+1) /\ (rikudo[25]=rikudo[18]-1 \/ rikudo[25]=rikudo[24]-1 \/ rikudo[25]=rikudo[26]-1 \/ rikudo[25]=rikudo[30]-1 \/ rikudo[25]=rikudo[31]-1);
constraint (rikudo[26]=rikudo[20]+1 \/ rikudo[26]=rikudo[25]+1 \/ rikudo[26]=rikudo[27]+1 \/ rikudo[26]=rikudo[31]+1 \/ rikudo[26]=rikudo[32]+1) /\ (rikudo[26]=rikudo[20]-1 \/ rikudo[26]=rikudo[25]-1 \/ rikudo[26]=rikudo[27]-1 \/ rikudo[26]=rikudo[31]-1 \/ rikudo[26]=rikudo[32]-1);
constraint (rikudo[27]=rikudo[20]+1 \/ rikudo[27]=rikudo[21]+1 \/ rikudo[27]=rikudo[26]+1 \/ rikudo[27]=rikudo[28]+1 \/ rikudo[27]=rikudo[32]+1 \/ rikudo[27]=rikudo[33]+1) /\ (rikudo[27]=rikudo[20]-1 \/ rikudo[27]=rikudo[21]-1 \/ rikudo[27]=rikudo[26]-1 \/ rikudo[27]=rikudo[28]-1 \/ rikudo[27]=rikudo[32]-1 \/ rikudo[27]=rikudo[33]-1);
constraint (rikudo[28]=rikudo[21]+1 \/ rikudo[28]=rikudo[22]+1 \/ rikudo[28]=rikudo[27]+1 \/ rikudo[28]=rikudo[33]+1) /\ (rikudo[28]=rikudo[21]-1 \/ rikudo[28]=rikudo[22]-1 \/ rikudo[28]=rikudo[27]-1 \/ rikudo[28]=rikudo[33]-1);

constraint (rikudo[29]=rikudo[23]+1 \/ rikudo[29]=rikudo[24]+1 \/ rikudo[29]=rikudo[30]+1 \/ rikudo[29]=rikudo[34]+1) /\ (rikudo[29]=rikudo[23]-1 \/ rikudo[29]=rikudo[24]-1 \/ rikudo[29]=rikudo[30]-1 \/ rikudo[29]=rikudo[34]-1);
constraint (rikudo[30]=rikudo[24]+1 \/ rikudo[30]=rikudo[25]+1 \/ rikudo[30]=rikudo[29]+1 \/ rikudo[30]=rikudo[31]+1 \/ rikudo[30]=rikudo[34]+1 \/ rikudo[30]=rikudo[35]+1) /\ (rikudo[30]=rikudo[24]-1 \/ rikudo[30]=rikudo[25]-1 \/ rikudo[30]=rikudo[29]-1 \/ rikudo[30]=rikudo[31]-1 \/ rikudo[30]=rikudo[34]-1 \/ rikudo[30]=rikudo[35]-1);
constraint (rikudo[31]=rikudo[25]+1 \/ rikudo[31]=rikudo[26]+1 \/ rikudo[31]=rikudo[30]+1 \/ rikudo[31]=rikudo[32]+1 \/ rikudo[31]=rikudo[35]+1 \/ rikudo[31]=rikudo[36]+1) /\ (rikudo[31]=rikudo[25]-1 \/ rikudo[31]=rikudo[26]-1 \/ rikudo[31]=rikudo[30]-1 \/ rikudo[31]=rikudo[32]-1 \/ rikudo[31]=rikudo[35]-1 \/ rikudo[31]=rikudo[36]-1);
constraint (rikudo[32]=rikudo[26]+1 \/ rikudo[32]=rikudo[27]+1 \/ rikudo[32]=rikudo[31]+1 \/ rikudo[32]=rikudo[33]+1 \/ rikudo[32]=rikudo[36]+1 \/ rikudo[32]=rikudo[37]+1) /\ (rikudo[32]=rikudo[26]-1 \/ rikudo[32]=rikudo[27]-1 \/ rikudo[32]=rikudo[31]-1 \/ rikudo[32]=rikudo[33]-1 \/ rikudo[32]=rikudo[36]-1 \/ rikudo[32]=rikudo[37]-1);
constraint (rikudo[33]=rikudo[27]+1 \/ rikudo[33]=rikudo[28]+1 \/ rikudo[33]=rikudo[32]+1 \/ rikudo[33]=rikudo[37]+1) /\ (rikudo[33]=rikudo[27]-1 \/ rikudo[33]=rikudo[28]-1 \/ rikudo[33]=rikudo[32]-1 \/ rikudo[33]=rikudo[37]-1);

constraint (rikudo[34]=rikudo[29]+1 \/ rikudo[34]=rikudo[30]+1 \/ rikudo[34]=rikudo[35]+1) /\ (rikudo[34]=rikudo[29]-1 \/ rikudo[34]=rikudo[30]-1 \/ rikudo[34]=rikudo[35]-1);
constraint (rikudo[35]=rikudo[30]+1 \/ rikudo[35]=rikudo[31]+1 \/ rikudo[35]=rikudo[34]+1 \/ rikudo[35]=rikudo[36]+1) /\ (rikudo[35]=rikudo[30]-1 \/ rikudo[35]=rikudo[31]-1 \/ rikudo[35]=rikudo[34]-1 \/ rikudo[35]=rikudo[36]-1);
constraint (rikudo[36]=rikudo[31]+1 \/ rikudo[36]=rikudo[32]+1 \/ rikudo[36]=rikudo[35]+1 \/ rikudo[36]=rikudo[37]+1) /\ (rikudo[36]=rikudo[31]-1 \/ rikudo[36]=rikudo[32]-1 \/ rikudo[36]=rikudo[35]-1 \/ rikudo[36]=rikudo[37]-1);
constraint (rikudo[37]=rikudo[32]+1 \/ rikudo[37]=rikudo[33]+1 \/ rikudo[37]=rikudo[36]+1) /\ (rikudo[37]=rikudo[32]-1 \/ rikudo[37]=rikudo[33]-1 \/ rikudo[37]=rikudo[36]-1);

constraint c3 = 19;
constraint c7 = 33;
constraint c8 = 18;
constraint c12 = 31;
constraint c14 = 36;
constraint c17 = 25;
constraint c20 = 14;
constraint c24 = 28;
constraint c28 = 6;
constraint c31 = 1;
constraint c32 = 11;
constraint c33 = 7;
