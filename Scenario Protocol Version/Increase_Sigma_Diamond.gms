
sigmaeT(T,sec,reg)=sigmae0(sec,reg);

APET(T,sec,reg)$(EN0(sec,reg) ne 0)=lambdaCES2((((EN.L(sec,reg)*APE(sec,reg)*DEPR("05",sec,reg)*(PE.L(sec,reg)/((PIO.L("05",sec,reg)*APE(sec,reg))/(GEPR("05",sec,reg))))**SIGMAE(sec,reg))/GEPR("05",sec,reg))),
                                    ENF.L(sec,reg),PIO.L("05",sec,reg),PEF.L(sec,reg),sigmaeT(T,sec,reg),EN.L(sec,reg),PE.L(sec,reg));

DEPRT(T,"05",sec,reg)$(EN0(sec,reg) ne 0)=alpha1CES2((((EN.L(sec,reg)*APE(sec,reg)*DEPR("05",sec,reg)*(PE.L(sec,reg)/((PIO.L("05",sec,reg)*APE(sec,reg))/(GEPR("05",sec,reg))))**SIGMAE(sec,reg))/GEPR("05",sec,reg))),
                                                     ENF.L(sec,reg),PIO.L("05",sec,reg),PEF.L(sec,reg),sigmaeT(T,sec,reg));

sigmae(sec,reg)=sigmae0(sec,reg);

sigmae0(sec,reg)=sigmae0(sec,reg)*1.019440644;

display sigmae;





