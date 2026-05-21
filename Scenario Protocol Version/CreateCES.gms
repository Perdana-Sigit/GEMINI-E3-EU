$sysinclude gams-f
$exit

Parameter


sig    elasticity of substitution

X        factor of agregation
X1       factor 1 in volume
X2       factor 2 in volume
X3       factor 3 in volume
X4       factor 4 in volume
X5       factor 5 in volume

P        price of fator  X
P1       price of factor X1
P2       price of factor X2
P3       price of factor X3
P4       price of factor X4
P5       price of factor X5

;


* CES two factors

alpha1CES2(X1,X2,P1,P2,sig) == X1*P1**sig/(X1*P1**sig+X2*P2**sig);
alpha2CES2(X1,X2,P1,P2,sig) == X2*P2**sig/(X1*P1**sig+X2*P2**sig);
lambdaCES2(X1,X2,P1,P2,sig,X,P) == P*( (X1*P1**sig+X2*P2**sig)/(P*X) )
                                            **(1/(1-sig));


* CES  five factors

alpha1CES5(X1,X2,X3,X4,X5,P1,P2,P3,P4,P5,sig) == X1*P1**sig/(X1*P1**sig+
                                                 X2*P2**sig+X3*P3**sig+
                                                 X4*P4**sig+X5*P5**sig);


alpha2CES5(X1,X2,X3,X4,X5,P1,P2,P3,P4,P5,sig) == X2*P2**sig/(X1*P1**sig+
                                                 X2*P2**sig+X3*P3**sig+
                                                 X4*P4**sig+X5*P5**sig);

alpha3CES5(X1,X2,X3,X4,X5,P1,P2,P3,P4,P5,sig) == X3*P3**sig/(X1*P1**sig+
                                                   X2*P2**sig+X3*P3**sig+
                                                   X4*P4**sig+X5*P5**sig);

alpha4CES5(X1,X2,X3,X4,X5,P1,P2,P3,P4,P5,sig) == X4*P4**sig/(X1*P1**sig+
                                                   X2*P2**sig+X3*P3**sig+
                                                   X4*P4**sig+X5*P5**sig);

alpha5CES5(X1,X2,X3,X4,X5,P1,P2,P3,P4,P5,sig) == X5*P5**sig/(X1*P1**sig+
                                                   X2*P2**sig+X3*P3**sig+
                                                   X4*P4**sig+X5*P5**sig);

lambdaCES5(X1,X2,X3,X4,X5,P1,P2,P3,P4,P5,sig,X,P) ==   P*( (X1*P1**sig+X2*P2**sig+
                                                            X3*P3**sig+X4*P4**sig+
                                                            X5*P5**sig
                                                      )/(P*X) )**(1/(1-sig));
