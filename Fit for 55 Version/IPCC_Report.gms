Set
Tipcc(T) Timeoutput ipcc  /2017,2020,2025,2030,2035,2040,2045,2050/
reg_sortie region/DEU,FRA,ITA,SPN,NLD,SWE,POL,BEL,EU1,EU2,EU3,EU4,EU5,EU6,GBR,USA,CHI,IND,RUS,CSA,MID,AFR,ASI,ROW,WORLD/

;


PEX_CC(T,sec,reg)=1;
CONZ_CC(T,reg)=0;
PGDP_CC(T,reg)=1;
GDPZ_CC(T,reg)=0;

$include ipcc_set_idx

parameter
idist
Correction_04_Coal(Tipcc)
SORTIEIPCC(ipcc_idx,reg,Tipcc)
SORTIEIPCC2(ipcc_idx,reg_sortie,Tipcc)
GDP2017US2010MER(reg)
/
DEU        3883.87
FRA        2875.308
ITA        2120.566
SPN        1509.746
NLD        923.72
SWE        569.373
POL        601.004
BEL        525.66
EU1        588.526
EU2        496.275
EU3        502.848
EU4        328.229
EU5        103.201
EU6        979.886
GBR        2818.704
USA        17348.626
CHI        10441.359
IND        2630.947
RUS        1680.007
CSA        5885.997
MID        2368.292
AFR        2430.068
ASI        13229.632
ROW        5237.017
/
GDP2017US2010PPP(reg)
/
DEU        3642.379
FRA        2540.057
ITA        2070.8
SPN        1568.024
NLD        816.577
SWE        454.694
POL        1004.016
BEL        474.395
EU1        683.005
EU2        439.754
EU3        752.042
EU4        638.377
EU5        164.007
EU6        804.516
GBR        2597.478
USA        17348.626
CHI        21200.551
IND        8436.882
RUS        3225.921
CSA        9009.975
MID        5343.736
AFR        5707.825
ASI        18294.385
ROW        6337.313
/






TABLE OIL_US2022_GJ(reg,T)
            2004         2005          2006          2007          2008          2009          2010          2011          2012          2013          2014          2015          2016         2017          2018          2019          2020         2021          2022          2023          2024          2025          2026          2027          2028          2029          2030          2031          2032          2033          2034          2035          2036          2037          2038          2039          2040          2041          2042          2043          2044          2045          2046          2047          2048          2049          2050
USA        8.830        12.055        14.605        16.210        22.262        13.581        17.259        23.341        23.411        22.540        20.242        10.393        8.208        10.276        12.860        11.134        7.160        11.502        16.013        15.678        15.343        15.008        14.673        14.339        14.004        13.669        13.669        13.777        13.885        13.994        14.102        14.211        14.319        14.427        14.536        14.644        14.752        14.861        14.969        15.077        15.186        15.294        15.402        15.511        15.619        15.727        15.836

;


TABLE PRICE_TOE_IMPORTS(sece,reg)
            DEU             FRA             ITA             SPN             NLD             SWE             POL             BEL             EU1             EU2             EU3             EU4             EU5             EU6             GBR             USA             CHI             IND             RUS             CSA             MID             AFR             ASI            ROW
01        0184.934        0184.478        0165.375        0154.011        0180.307        0220.279        0190.546        0206.164        0129.282        0202.138        0203.048        0186.202        0186.705        0172.956        0186.960        0115.256        0187.297        0175.502        0165.247        0144.309        0164.054        0176.476        0189.103        0155.126
02        0390.885        0387.477        0388.364        0372.858        0392.244        0381.971        0404.279        0399.246        0391.973        0382.807        0398.896        0392.475        0396.958        0396.325        0382.198        0358.962        0376.434        0368.865        0376.604        0365.989        0388.608        0388.011        0390.433        0396.087
03        0227.008        0326.659        0393.320        0453.790        0235.132        0207.338        0297.774        0263.367        0425.422        0228.340        0231.964        0233.005        0276.227        0243.625        0278.426        0266.876        0236.945        0433.999        0113.307        0388.870        0438.951        0442.325        0423.998        0241.190
04        0430.701        0413.315        0407.099        0419.218        0410.490        0418.592        0414.384        0420.316        0413.052        0420.951        0418.874        0420.165        0434.780        0420.655        0419.892        0414.593        0410.313        0408.105        0443.681        0439.637        0401.831        0418.308        0417.577        0425.132
05        0589.867        0715.315        0727.985        0668.449        0386.796        0370.589        0486.216        0584.545        0816.430        0477.739        0634.591        0700.196        0596.881        0489.553        0630.824        0622.630        0668.028        0646.848        0624.585        0409.104        0672.816        0977.959        0696.582        0657.445
;

TABLE PRICE_TOE_EXPORTS(sece,reg)
            DEU             FRA             ITA             SPN             NLD             SWE             POL             BEL             EU1             EU2             EU3             EU4             EU5             EU6             GBR             USA             CHI             IND             RUS             CSA             MID             AFR             ASI            ROW
01        0193.682        0141.877        0163.786        0170.877        0141.555        0130.135        0193.674        0135.268        0149.519        0169.047        0206.462        0178.520        0137.853        0134.215        0133.531        0211.215        0139.872        0141.977        0187.374        0097.552        0171.588        0146.482        0187.650        0247.731
02        0377.570        0376.988        0378.342        0376.808        0380.695        0379.006        0380.623        0380.608        0377.159        0388.148        0377.952        0377.495        0376.525        0380.034        0415.692        0388.749        0376.611        0376.608        0407.048        0295.014        0395.250        0376.567        0390.715        0378.887
03        0239.335        0268.346        0255.719        0321.966        0231.909        0485.437        0156.980        0281.717        0291.034        0269.908        0282.636        0243.244        0270.124        0189.845        0239.200        0429.833        0362.874        0457.453        0236.320        0279.768        0407.596        0485.289        0460.130        0200.739
04        3198.616        4951.649        2820.058        2882.272        1358.713        5493.052        9479.929        3330.188        3223.451       41818.123       10500.637       10430.903       10557.858        6229.623        3884.560        0345.238        1052.391        1153.900        0556.048        1518.368        0321.731        2246.871        0416.927        1114.645
05        0428.860        0635.556        0972.434        1021.041        0560.839        0457.976        0592.409        0746.588        0696.334        0501.374        0661.589        0913.158        0592.288        0528.808        0953.659        0652.416        0570.909        1064.519        0692.214        0411.887        0627.750        1024.934        0714.659        0633.794


scalar
colip1
;

Correction_04_Coal(Tipcc)=1;
*****Correction_04_Coal("2014")=0.5;Correction_04_Coal("2015")=0.625;
* US GDP deflator 2022 -> 2010  1.322962378



SORTIEIPCC(ipcc_idx,reg,Tipcc)=NA;

* economic variables

SORTIEIPCC("174",reg,Tipcc)  =(OIL_US2022_GJ("USA",Tipcc)/1.322962378)*SORTIESEC("PEX",Tipcc,"02","USA")/PEX_CC(Tipcc,"02","USA");

* Question how to derive energy prices in line with spot price

*SORTIEIPCC("173","USA",Tipcc)=(GAS_US2018_GJ("USA",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","USA")/PEX_CC(Tipcc,"03","USA");

*SORTIEIPCC("173","EUR",Tipcc)=(GAS_US2018_GJ("EUR",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","EUR")/PEX_CC(Tipcc,"03","EUR")*EX("EUR")/(EX("USA");

*SORTIEIPCC("173","CHI",Tipcc)=(GAS_US2018_GJ("CHI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","CHI")/PEX_CC(Tipcc,"03","CHI");
*SORTIEIPCC("173","ROW",Tipcc)=(GAS_US2018_GJ("ASI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","ROW")/PEX_CC(Tipcc,"03","ROW");
*SORTIEIPCC("173","IND",Tipcc)=(GAS_US2018_GJ("CHI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","IND")/PEX_CC(Tipcc,"03","IND");
*SORTIEIPCC("173","BRA",Tipcc)=(GAS_US2018_GJ("ASI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","BRA")/PEX_CC(Tipcc,"03","BRA");
*SORTIEIPCC("173","ASI",Tipcc)=(GAS_US2018_GJ("CHI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","ASI")/PEX_CC(Tipcc,"03","ASI");
*SORTIEIPCC("173","RUS",Tipcc)=(GAS_US2018_GJ("EUR",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","RUS")/PEX_CC(Tipcc,"03","RUS");
*SORTIEIPCC("173","CSA",Tipcc)=(GAS_US2018_GJ("ASI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","CSA")/PEX_CC(Tipcc,"03","CSA");
*SORTIEIPCC("173","MID",Tipcc)=(GAS_US2018_GJ("ASI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","MID")/PEX_CC(Tipcc,"03","MID");
*SORTIEIPCC("173","AFR",Tipcc)=(GAS_US2018_GJ("ASI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"03","AFR")/PEX_CC(Tipcc,"03","AFR");

*SORTIEIPCC("172","USA",Tipcc)=(COAL_US2018_GJ("USA",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","USA")/PEX_CC(Tipcc,"01","USA");
*SORTIEIPCC("172","EUR",Tipcc)=(COAL_US2018_GJ("EUR",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","EUR")/PEX_CC(Tipcc,"01","EUR");
*SORTIEIPCC("172","CHI",Tipcc)=(COAL_US2018_GJ("CHI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","CHI")/PEX_CC(Tipcc,"01","CHI");
*SORTIEIPCC("172","ROW",Tipcc)=(COAL_US2018_GJ("ROW",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","ROW")/PEX_CC(Tipcc,"01","ROW");
*SORTIEIPCC("172","IND",Tipcc)=(COAL_US2018_GJ("CHI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","IND")/PEX_CC(Tipcc,"01","IND");
*SORTIEIPCC("172","BRA",Tipcc)=(COAL_US2018_GJ("ROW",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","BRA")/PEX_CC(Tipcc,"01","BRA");
*SORTIEIPCC("172","ASI",Tipcc)=(COAL_US2018_GJ("CHI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","ASI")/PEX_CC(Tipcc,"01","ASI");
*SORTIEIPCC("172","RUS",Tipcc)=(COAL_US2018_GJ("EUR",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","RUS")/PEX_CC(Tipcc,"01","RUS");
*SORTIEIPCC("172","CSA",Tipcc)=(COAL_US2018_GJ("ROW",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","CSA")/PEX_CC(Tipcc,"01","CSA");
*SORTIEIPCC("172","MID",Tipcc)=(COAL_US2018_GJ("ASI",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","MID")/PEX_CC(Tipcc,"01","MID");
*SORTIEIPCC("172","AFR",Tipcc)=(COAL_US2018_GJ("ROW",Tipcc)/1.148484565)*SORTIESEC("PEX",Tipcc,"01","AFR")/PEX_CC(Tipcc,"01","AFR");

SORTIEIPCC("135",reg,Tipcc)=SORTIEMAC("GDPZ",Tipcc,reg)*(GDP2017US2010PPP(reg)/SORTIEMAC("GDPZ","2017",reg));
SORTIEIPCC("134",reg,Tipcc)=SORTIEMAC("GDPZ",Tipcc,reg)*(GDP2017US2010MER(reg)/SORTIEMAC("GDPZ","2017",reg));

SORTIEIPCC("137",reg,Tipcc)=SORTIEIPCC("134",reg,Tipcc)*SORTIEMAC("IMPZ",Tipcc,reg)/SORTIEMAC("GDPZ",Tipcc,reg);
SORTIEIPCC("133",reg,Tipcc)=SORTIEIPCC("134",reg,Tipcc)*SORTIEMAC("EXPZ",Tipcc,reg)/SORTIEMAC("GDPZ",Tipcc,reg);
SORTIEIPCC("129",reg,Tipcc)=SORTIEIPCC("134",reg,Tipcc)*SORTIEMAC("GCVZ",Tipcc,reg)/SORTIEMAC("GDPZ",Tipcc,reg);
SORTIEIPCC("130",reg,Tipcc)=SORTIEIPCC("134",reg,Tipcc)*SORTIEMAC("CONZ",Tipcc,reg)/SORTIEMAC("GDPZ",Tipcc,reg);
SORTIEIPCC("120",reg,Tipcc)=SORTIEIPCC("129",reg,Tipcc)+SORTIEIPCC("130",reg,Tipcc);

SORTIEIPCC("119",reg,Tipcc)=sum(sec,SORTIESEC("KAV",Tipcc,sec,reg))*(GDP2017US2010MER(reg)/SORTIEMAC("GDPZ","2017",reg));



SORTIEIPCC("183",reg,Tipcc)=GDP2017US2010PPP(reg)*(PL0("07",reg)*SORTIESEC("LAV",Tipcc,"07",reg)+PK0("07",reg)*SORTIESEC("KAV",Tipcc,"07",reg)+
                             (TXIT("07",reg)/(1-TXIT("07",reg)))*SORTIESEC("YD",Tipcc,"07",reg)*PY0("07",reg))/SORTIEMAC("GDPZ",Tipcc,reg);


*$$$$$$ Consider Hydrogen  $$$$$$

SORTIEIPCC("186",reg,Tipcc)=GDP2017US2010PPP(reg)*
                             (
                              PL0("01",reg)*SORTIESEC("LAV",Tipcc,"01",reg)+PK0("01",reg)*SORTIESEC("KAV",Tipcc,"01",reg)+(TXIT("01",reg)/(1-TXIT("01",reg)))*SORTIESEC("YD",Tipcc,"01",reg)*PY0("01",reg)+
                              PL0("02",reg)*SORTIESEC("LAV",Tipcc,"02",reg)+PK0("02",reg)*SORTIESEC("KAV",Tipcc,"02",reg)+(TXIT("02",reg)/(1-TXIT("02",reg)))*SORTIESEC("YD",Tipcc,"02",reg)*PY0("02",reg)+
                              PL0("03",reg)*SORTIESEC("LAV",Tipcc,"03",reg)+PK0("03",reg)*SORTIESEC("KAV",Tipcc,"03",reg)+(TXIT("03",reg)/(1-TXIT("03",reg)))*SORTIESEC("YD",Tipcc,"03",reg)*PY0("03",reg)+
                              PL0("04",reg)*SORTIESEC("LAV",Tipcc,"04",reg)+PK0("04",reg)*SORTIESEC("KAV",Tipcc,"04",reg)+(TXIT("04",reg)/(1-TXIT("04",reg)))*SORTIESEC("YD",Tipcc,"04",reg)*PY0("04",reg)+
                              PL0("05",reg)*SORTIESEC("LAV",Tipcc,"05",reg)+PK0("05",reg)*SORTIESEC("KAV",Tipcc,"05",reg)+(TXIT("05",reg)/(1-TXIT("05",reg)))*SORTIESEC("YD",Tipcc,"05",reg)*PY0("05",reg)+
                              PL0("06",reg)*SORTIESEC("LAV",Tipcc,"06",reg)+PK0("05",reg)*SORTIESEC("KAV",Tipcc,"06",reg)+(TXIT("06",reg)/(1-TXIT("06",reg)))*SORTIESEC("YD",Tipcc,"06",reg)*PY0("06",reg)$(SORTIESEC("YD",Tipcc,"06",reg) ne 0)
                               )
                              /SORTIEMAC("GDPZ",Tipcc,reg);

SORTIEIPCC("187",reg,Tipcc)=GDP2017US2010PPP(reg)*(PL0("08",reg)*SORTIESEC("LAV",Tipcc,"08",reg)+PK0("08",reg)*SORTIESEC("KAV",Tipcc,"08",reg)+
                             (TXIT("08",reg)/(1-TXIT("08",reg)))*SORTIESEC("YD",Tipcc,"08",reg)*PY0("08",reg))/SORTIEMAC("GDPZ",Tipcc,reg);

SORTIEIPCC("188",reg,Tipcc)=GDP2017US2010PPP(reg)*(PL0("09",reg)*SORTIESEC("LAV",Tipcc,"09",reg)+PK0("09",reg)*SORTIESEC("KAV",Tipcc,"09",reg)+
                             (TXIT("09",reg)/(1-TXIT("09",reg)))*SORTIESEC("YD",Tipcc,"09",reg)*PY0("09",reg))/SORTIEMAC("GDPZ",Tipcc,reg);

SORTIEIPCC("184",reg,Tipcc)=GDP2017US2010PPP(reg)*(PL0("13",reg)*SORTIESEC("LAV",Tipcc,"13",reg)+PK0("13",reg)*SORTIESEC("KAV",Tipcc,"13",reg)+
                             (TXIT("13",reg)/(1-TXIT("13",reg)))*SORTIESEC("YD",Tipcc,"13",reg)*PY0("13",reg))/SORTIEMAC("GDPZ",Tipcc,reg);

SORTIEIPCC("185",reg,Tipcc)=SORTIEIPCC("186",reg,Tipcc)+SORTIEIPCC("187",reg,Tipcc)+SORTIEIPCC("188",reg,Tipcc);

* Household
* $$$$$$ Substract 07 on consider only biofuel $$$$$$
SORTIEIPCC("1231",reg,Tipcc)=(SORTIESEC("HCV",Tipcc,"07",reg)*SORTIESEC("PHC","2017","07",reg))*(GDP2017US2010MER(reg)/SORTIEMAC("GDPZ","2017",reg));
SORTIEIPCC("1232",reg,Tipcc)=sum(Secem7,SORTIESEC("HCV",Tipcc,Secem7,reg)*SORTIESEC("PHC","2017",Secem7,reg))*(GDP2017US2010MER(reg)/SORTIEMAC("GDPZ","2017",reg));
SORTIEIPCC("1233",reg,Tipcc)=(SORTIESEC("HCV",Tipcc,"08",reg)*SORTIESEC("PHC","2017","08",reg)+SORTIESEC("HCV",Tipcc,"09",reg)*SORTIESEC("PHC","2017","09",reg))*(GDP2017US2010MER(reg)/SORTIEMAC("GDPZ","2017",reg));
SORTIEIPCC("1234",reg,Tipcc)=(sum(sectra,SORTIESEC("HCV",Tipcc,sectra,reg)*SORTIESEC("PHC","2017",sectra,reg))+SORTIESEC("HCV",Tipcc,"13",reg)*SORTIESEC("PHC","2017","13",reg))*(GDP2017US2010MER(reg)/SORTIEMAC("GDPZ","2017",reg));

* Investment
SORTIEIPCC("1303",reg,Tipcc)=SORTIEIPCC("134",reg,Tipcc)*SORTIEMAC("INVZ",Tipcc,reg)/SORTIEMAC("GDPZ",Tipcc,reg);
SORTIEIPCC("1315",reg,Tipcc)=sum(secem7,SORTIESEC("INVV",Tipcc,secem7,reg)*SORTIESEC("PINV","2017",secem7,reg))*(GDP2017US2010MER(reg)/SORTIEMAC("GDPZ","2017",reg));
SORTIEIPCC("1317",reg,Tipcc)=SORTIESEC("INVV",Tipcc,"05",reg)*SORTIESEC("PINV","2017","05",reg)*(GDP2017US2010MER(reg)/SORTIEMAC("GDPZ","2017",reg));

* Population
SORTIEIPCC("1449",reg,Tipcc)=POP(Tipcc,reg);

* Employment

SORTIEIPCC("496",reg,Tipcc)=SORTIESEC("EMP",Tipcc,"01",reg)+SORTIESEC("EMP",Tipcc,"02",reg)+SORTIESEC("EMP",Tipcc,"03",reg)+SORTIESEC("EMP",Tipcc,"04",reg)+SORTIESEC("EMP",Tipcc,"05",reg)+SORTIESEC("EMP",Tipcc,"06",reg);
SORTIEIPCC("497",reg,Tipcc)=SORTIESEC("EMP",Tipcc,"08",reg);
SORTIEIPCC("498",reg,Tipcc)=SORTIESEC("EMP",Tipcc,"08",reg)+SORTIESEC("EMP",Tipcc,"09",reg);
SORTIEIPCC("1436",reg,Tipcc)=Sum(sec,SORTIESEC("EMP",Tipcc,sec,reg));
SORTIEIPCC("1437",reg,Tipcc)=SORTIESEC("EMP",Tipcc,"07",reg);
SORTIEIPCC("1438",reg,Tipcc)=SORTIEIPCC("496",reg,Tipcc)+SORTIEIPCC("498",reg,Tipcc);
SORTIEIPCC("1439",reg,Tipcc)=SORTIESEC("EMP",Tipcc,"10",reg)+SORTIESEC("EMP",Tipcc,"11",reg)+SORTIESEC("EMP",Tipcc,"12",reg)+SORTIESEC("EMP",Tipcc,"13",reg);

* Residential

SORTIEIPCC("761",reg,Tipcc)=(SORTIEMAC("HR05",Tipcc,reg)+SORTIEMAC("HP05",Tipcc,reg)-SORTIEMAC("HT05",Tipcc,reg))*CTEPH("05",reg)*41.868/1000;
SORTIEIPCC("762",reg,Tipcc)=SORTIEMAC("HR03",Tipcc,reg)*CTEPH("03",reg)*41.868/1000;
SORTIEIPCC("768",reg,Tipcc)=SORTIEMAC("HR06",Tipcc,reg)*CTEPH("06",reg)*41.868/1000;
SORTIEIPCC("770",reg,Tipcc)=(SORTIEMAC("HR02",Tipcc,reg)*CTEPH("02",reg)+SORTIEMAC("HR04",Tipcc,reg)*CTEPH("04",reg))*41.868/1000;
SORTIEIPCC("776",reg,Tipcc)=SORTIEMAC("HR01",Tipcc,reg)*CTEPH("01",reg)*41.868/1000;
SORTIEIPCC("774",reg,Tipcc)=SORTIEMAC("HR07",Tipcc,reg)*CTEPH07(reg)*41.868/1000;
SORTIEIPCC("773",reg,Tipcc)=SORTIEIPCC("774",reg,Tipcc)+SORTIEIPCC("776",reg,Tipcc);
SORTIEIPCC("750",reg,Tipcc)=SORTIEIPCC("761",reg,Tipcc)+SORTIEIPCC("762",reg,Tipcc)+SORTIEIPCC("768",reg,Tipcc)+
                            SORTIEIPCC("770",reg,Tipcc)+SORTIEIPCC("773",reg,Tipcc);

* $$$$$$ Where is CARB in the new model $$$$$$$$$$$$$$$$$

* pour l'electricité prendre en compte GHW... et non toe
SORTIEIPCC("782",reg,Tipcc)=(sum(secm,SORTIESEC("ENEE",Tipcc,Secm,reg))+SORTIEMAC("HENE",Tipcc,reg))*41.868/1000;
SORTIEIPCC("783",reg,Tipcc)=(sum(secm,SORTIESEC("ENEG",Tipcc,Secm,reg))+SORTIEMAC("HENG",Tipcc,reg))*41.868/1000;
SORTIEIPCC("971",reg,Tipcc)=(sum(secm,SORTIESEC("ENEO",Tipcc,Secm,reg))+SORTIEMAC("HENO",Tipcc,reg)+
                              sum(secm,SORTIESEC("ENEP",Tipcc,Secm,reg))+SORTIEMAC("HENP",Tipcc,reg)+
                              SORTIEMAC("CARB",Tipcc,reg))*41.868/1000;
SORTIEIPCC("990",reg,Tipcc)=(sum(secm,SORTIESEC("ENEC",Tipcc,Secm,reg))+SORTIEMAC("HENC",Tipcc,reg))*41.868/1000;
SORTIEIPCC("993",reg,Tipcc)=SORTIEIPCC("990",reg,Tipcc);
SORTIEIPCC("708",reg,Tipcc)=SORTIEIPCC("782",reg,Tipcc)+SORTIEIPCC("783",reg,Tipcc)+SORTIEIPCC("971",reg,Tipcc)+SORTIEIPCC("990",reg,Tipcc);

** Industry

SORTIEIPCC("878",reg,Tipcc)=(SORTIESEC("ENEE",Tipcc,"08",reg)-SORTIESEC("ENTE",Tipcc,"08",reg)+
                             SORTIESEC("ENEE",Tipcc,"09",reg)-SORTIESEC("ENTE",Tipcc,"09",reg))*41.868/1000;
SORTIEIPCC("879",reg,Tipcc)=(SORTIESEC("ENEG",Tipcc,"08",reg)+SORTIESEC("ENEG",Tipcc,"09",reg))*41.868/1000;
SORTIEIPCC("885",reg,Tipcc)=(SORTIESEC("ENEH",Tipcc,"08",reg)+SORTIESEC("ENEH",Tipcc,"09",reg))*41.868/1000;
SORTIEIPCC("888",reg,Tipcc)=(SORTIESEC("ENTB",Tipcc,"08",reg)+SORTIESEC("ENTB",Tipcc,"09",reg))*41.868/1000;
SORTIEIPCC("889",reg,Tipcc)=(SORTIESEC("ENEO",Tipcc,"08",reg)+SORTIESEC("ENEO",Tipcc,"09",reg)+
                             SORTIESEC("ENEP",Tipcc,"08",reg)-SORTIESEC("ENTP",Tipcc,"08",reg)+
                             SORTIESEC("ENEP",Tipcc,"09",reg)-SORTIESEC("ENTP",Tipcc,"09",reg))*41.868/1000;
SORTIEIPCC("886",reg,Tipcc)=SORTIEIPCC("888",reg,Tipcc)+SORTIEIPCC("889",reg,Tipcc);
SORTIEIPCC("954",reg,Tipcc)=(SORTIESEC("ENEB",Tipcc,"08",reg)-SORTIESEC("ENTB",Tipcc,"08",reg)+
                             SORTIESEC("ENEB",Tipcc,"09",reg)-SORTIESEC("ENTB",Tipcc,"09",reg))*41.868/1000;
SORTIEIPCC("955",reg,Tipcc)=(SORTIESEC("ENEC",Tipcc,"08",reg)+SORTIESEC("ENEC",Tipcc,"09",reg))*41.868/1000;
SORTIEIPCC("953",reg,Tipcc)=SORTIEIPCC("954",reg,Tipcc)+SORTIEIPCC("955",reg,Tipcc);
SORTIEIPCC("787",reg,Tipcc)=SORTIEIPCC("878",reg,Tipcc)+SORTIEIPCC("879",reg,Tipcc)+SORTIEIPCC("885",reg,Tipcc)+SORTIEIPCC("886",reg,Tipcc)+SORTIEIPCC("953",reg,Tipcc);

** Commercial

SORTIEIPCC("728",reg,Tipcc)=(SORTIESEC("ENEE",Tipcc,"13",reg)-SORTIESEC("ENTE",Tipcc,"13",reg))*41.868/1000;
SORTIEIPCC("729",reg,Tipcc)=SORTIESEC("ENEG",Tipcc,"13",reg)*41.868/1000;
SORTIEIPCC("735",reg,Tipcc)=SORTIESEC("ENEH",Tipcc,"13",reg)*41.868/1000;
SORTIEIPCC("737",reg,Tipcc)=(SORTIESEC("ENEO",Tipcc,"13",reg)+SORTIESEC("ENEP",Tipcc,"13",reg)-SORTIESEC("ENTE",Tipcc,"13",reg))*41.868/1000;
SORTIEIPCC("743",reg,Tipcc)=SORTIESEC("ENEC",Tipcc,"13",reg)*41.868/1000;
SORTIEIPCC("741",reg,Tipcc)=(SORTIESEC("ENEB",Tipcc,"13",reg)-SORTIESEC("ENTB",Tipcc,"13",reg))*41.868/1000;
SORTIEIPCC("740",reg,Tipcc)=SORTIEIPCC("741",reg,Tipcc)+SORTIEIPCC("743",reg,Tipcc);
SORTIEIPCC("725",reg,Tipcc)=SORTIEIPCC("728",reg,Tipcc)+SORTIEIPCC("729",reg,Tipcc)+SORTIEIPCC("735",reg,Tipcc)+
                            SORTIEIPCC("737",reg,Tipcc)+SORTIEIPCC("740",reg,Tipcc);


** Residential and commercial

SORTIEIPCC("744",reg,Tipcc)=SORTIEIPCC("761",reg,Tipcc)+SORTIEIPCC("728",reg,Tipcc);
SORTIEIPCC("745",reg,Tipcc)=SORTIEIPCC("762",reg,Tipcc)+SORTIEIPCC("729",reg,Tipcc);
SORTIEIPCC("748",reg,Tipcc)=SORTIEIPCC("770",reg,Tipcc)+SORTIEIPCC("737",reg,Tipcc);
SORTIEIPCC("778",reg,Tipcc)=SORTIEIPCC("774",reg,Tipcc)+SORTIEIPCC("741",reg,Tipcc);
SORTIEIPCC("780",reg,Tipcc)=SORTIEIPCC("776",reg,Tipcc)+SORTIEIPCC("743",reg,Tipcc);
SORTIEIPCC("777",reg,Tipcc)=SORTIEIPCC("740",reg,Tipcc)+SORTIEIPCC("773",reg,Tipcc);
SORTIEIPCC("747",reg,Tipcc)=SORTIEIPCC("768",reg,Tipcc)+SORTIEIPCC("735",reg,Tipcc);
SORTIEIPCC("724",reg,Tipcc)=SORTIEIPCC("744",reg,Tipcc)+SORTIEIPCC("745",reg,Tipcc)+SORTIEIPCC("748",reg,Tipcc)+
                            SORTIEIPCC("777",reg,Tipcc)+SORTIEIPCC("747",reg,Tipcc);

** Transport

SORTIEIPCC("998",reg,Tipcc)=(SORTIESEC("ENEE",Tipcc,"10",reg)+SORTIEMAC("HT05",Tipcc,reg)*CTEPH("05",reg)+
                             SORTIESEC("ENTE",Tipcc,"08",reg)+SORTIESEC("ENTE",Tipcc,"09",reg)+
                             SORTIESEC("ENTE",Tipcc,"13",reg))*41.868/1000;
SORTIEIPCC("1011",reg,Tipcc)=SORTIESEC("ENEG",Tipcc,"10",reg)*41.868/1000;
SORTIEIPCC("1014",reg,Tipcc)=(SORTIESEC("ENEH",Tipcc,"10",reg)+SORTIESEC("ENEH",Tipcc,"11",reg)+SORTIESEC("ENEH",Tipcc,"12",reg))*41.868/1000;
SORTIEIPCC("1021",reg,Tipcc)=(SORTIESEC("ENEP",Tipcc,"10",reg)+
                              SORTIESEC("ENEO",Tipcc,"10",reg)+
                              SORTIEMAC("HT04",Tipcc,reg)*CTEPH("04",reg)+
                              SORTIESEC("ENTP",Tipcc,"08",reg)+SORTIESEC("ENTP",Tipcc,"09",reg)+
                              SORTIESEC("ENTB",Tipcc,"13",reg))*41.868/1000;
SORTIEIPCC("1016",reg,Tipcc)=(SORTIESEC("ENTB",Tipcc,"10",reg)+
                              CTEPH("07",reg)*SORTIEMAC("HT07",Tipcc,reg)+
                              SORTIESEC("ENTB",Tipcc,"08",reg)+SORTIESEC("ENTB",Tipcc,"09",reg)+
                              SORTIESEC("ENTB",Tipcc,"13",reg))*41.868/1000;
SORTIEIPCC("1015",reg,Tipcc)=SORTIEIPCC("1021",reg,Tipcc)+SORTIEIPCC("1016",reg,Tipcc);
SORTIEIPCC("1023",reg,Tipcc)=(SORTIESEC("ENEC",Tipcc,"10",reg)+
                              SORTIESEC("ENEB",Tipcc,"10",reg)-SORTIESEC("ENTB",Tipcc,"10",reg))*41.868/1000;

SORTIEIPCC("995",reg,Tipcc)=(SORTIESEC("ENEC",Tipcc,"12",reg)+SORTIESEC("ENEO",Tipcc,"12",reg)+SORTIESEC("ENEP",Tipcc,"12",reg)+
                             SORTIESEC("ENEE",Tipcc,"12",reg)+SORTIESEC("ENEG",Tipcc,"12",reg)+SORTIESEC("ENEH",Tipcc,"12",reg)+
                             SORTIESEC("ENEB",Tipcc,"12",reg))*41.868/1000;
SORTIEIPCC("1022",reg,Tipcc)=(SORTIESEC("ENEC",Tipcc,"11",reg)+SORTIESEC("ENEO",Tipcc,"11",reg)+SORTIESEC("ENEP",Tipcc,"11",reg)+
                              SORTIESEC("ENEE",Tipcc,"11",reg)+SORTIESEC("ENEG",Tipcc,"11",reg)+SORTIESEC("ENEH",Tipcc,"11",reg)+
                              SORTIESEC("ENEB",Tipcc,"11",reg))*41.868/1000;

SORTIEIPCC("994",reg,Tipcc)=SORTIEIPCC("998",reg,Tipcc)+SORTIEIPCC("1011",reg,Tipcc)+SORTIEIPCC("1015",reg,Tipcc)+
                            SORTIEIPCC("1023",reg,Tipcc)+SORTIEIPCC("995",reg,Tipcc)+SORTIEIPCC("1022",reg,Tipcc);


** Other Sectors

SORTIEIPCC("979",reg,Tipcc)=(SORTIESEC("ENEE",Tipcc,"07",reg))*41.868/1000;
SORTIEIPCC("980",reg,Tipcc)=(SORTIESEC("ENEG",Tipcc,"07",reg))*41.868/1000;
SORTIEIPCC("983",reg,Tipcc)=(SORTIESEC("ENEO",Tipcc,"07",reg)+SORTIESEC("ENEP",Tipcc,"07",reg)+SORTIESEC("ENTB",Tipcc,"07",reg))*41.868/1000;
SORTIEIPCC("988",reg,Tipcc)=(SORTIESEC("ENEC",Tipcc,"07",reg))*41.868/1000;
SORTIEIPCC("986",reg,Tipcc)=(SORTIESEC("ENEB",Tipcc,"07",reg)-SORTIESEC("ENTB",Tipcc,"07",reg))*41.868/1000;
SORTIEIPCC("985",reg,Tipcc)=SORTIEIPCC("986",reg,Tipcc)+SORTIEIPCC("988",reg,Tipcc);
SORTIEIPCC("978",reg,Tipcc)=SORTIEIPCC("979",reg,Tipcc)+SORTIEIPCC("980",reg,Tipcc)+SORTIEIPCC("983",reg,Tipcc)+SORTIEIPCC("985",reg,Tipcc);

** Total Final Energy


SORTIEIPCC("1141",reg,Tipcc)=SORTIEELEC("GENE","OTH",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1120",reg,Tipcc)=SORTIEELEC("GENE","BIO",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1121",reg,Tipcc)=SORTIEELEC("GENE","BIO",Tipcc,reg)*(3.6/1000000)*SORTIEELEC("SCCS","BIO",Tipcc,reg);
SORTIEIPCC("1122",reg,Tipcc)=SORTIEELEC("GENE","BIO",Tipcc,reg)*(3.6/1000000)*(1-SORTIEELEC("SCCS","BIO",Tipcc,reg));
SORTIEIPCC("1123",reg,Tipcc)=SORTIEELEC("GENE","COA",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1124",reg,Tipcc)=SORTIEELEC("GENE","COA",Tipcc,reg)*(3.6/1000000)*SORTIEELEC("SCCS","COA",Tipcc,reg);
SORTIEIPCC("1125",reg,Tipcc)=SORTIEELEC("GENE","COA",Tipcc,reg)*(3.6/1000000)*(1-SORTIEELEC("SCCS","COA",Tipcc,reg));
SORTIEIPCC("1130",reg,Tipcc)=SORTIEELEC("GENE","GAP",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1131",reg,Tipcc)=SORTIEELEC("GENE","GAP",Tipcc,reg)*(3.6/1000000)*SORTIEELEC("SCCS","GAP",Tipcc,reg);
SORTIEIPCC("1132",reg,Tipcc)=SORTIEELEC("GENE","GAP",Tipcc,reg)*(3.6/1000000)*(1-SORTIEELEC("SCCS","GAP",Tipcc,reg));
SORTIEIPCC("1134",reg,Tipcc)=SORTIEELEC("GENE","HYD",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1136",reg,Tipcc)=SORTIEELEC("GENE","NUC",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1138",reg,Tipcc)=SORTIEELEC("GENE","OIP",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1139",reg,Tipcc)=SORTIEELEC("GENE","OIP",Tipcc,reg)*(3.6/1000000)*SORTIEELEC("SCCS","OIP",Tipcc,reg);
SORTIEIPCC("1140",reg,Tipcc)=SORTIEELEC("GENE","OIP",Tipcc,reg)*(3.6/1000000)*(1-SORTIEELEC("SCCS","OIP",Tipcc,reg));


SORTIEIPCC("1142",reg,Tipcc)=SORTIEELEC("GENE","SOL",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1147",reg,Tipcc)=SORTIEELEC("GENE","WIN",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1119",reg,Tipcc)=SORTIEIPCC("1141",reg,Tipcc)+SORTIEIPCC("1120",reg,Tipcc)+SORTIEIPCC("1123",reg,Tipcc)+
                             SORTIEIPCC("1130",reg,Tipcc)+SORTIEIPCC("1134",reg,Tipcc)+SORTIEIPCC("1136",reg,Tipcc)+
                             SORTIEIPCC("1138",reg,Tipcc)+SORTIEIPCC("1142",reg,Tipcc)+SORTIEIPCC("1147",reg,Tipcc);

* Secondary energy corrected from CO2CONTENTIO that shows if energy is burn or transformed
SORTIEIPCC("1118",reg,Tipcc)=SORTIEIPCC("1119",reg,Tipcc)+
                             (sum(secm,SORTIESEC("ENEP",Tipcc,Secm,reg))+sum(Secef,SORTIESEC("ENEP",Tipcc,Secef,reg))+SORTIEMAC("HENP",Tipcc,reg))*41.868/1000+
                             (sum(secm,SORTIESEC("ENEG",Tipcc,Secm,reg))+sum(Secef,SORTIESEC("ENEG",Tipcc,Secef,reg))+SORTIEMAC("HENG",Tipcc,reg)-SORTIESEC("ENEG",Tipcc,"04",reg))*41.868/1000+
                             (sum(secm,SORTIESEC("ENEC",Tipcc,Secm,reg))+sum(Secef,SORTIESEC("ENEC",Tipcc,Secef,reg))+SORTIEMAC("HENC",Tipcc,reg)-SORTIESEC("ENEC",Tipcc,"03",reg)-SORTIESEC("ENEC",Tipcc,"04",reg))*41.868/1000+
                             (sum(secm,SORTIESEC("ENEO",Tipcc,Secm,reg))+sum(Secef,SORTIESEC("ENEO",Tipcc,Secef,reg))+SORTIEMAC("HENO",Tipcc,reg)-SORTIESEC("ENEO",Tipcc,"04",reg))*41.868/1000;


SORTIEIPCC("1094",reg,Tipcc)=SORTIEELEC("GENE","HYD",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1101",reg,Tipcc)=SORTIEELEC("GENE","NUC",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1115",reg,Tipcc)=SORTIEELEC("GENE","SOL",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1116",reg,Tipcc)=SORTIEELEC("GENE","WIN",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1113",reg,Tipcc)=SORTIEELEC("GENE","OTH",Tipcc,reg)*(3.6/1000000);

SORTIEIPCC("1058",reg,Tipcc)=SORTIEELEC("SCCS","BIO",Tipcc,reg)*SORTIEELEC("GENE","BIO",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1059",reg,Tipcc)=(1-SORTIEELEC("SCCS","BIO",Tipcc,reg))*SORTIEELEC("GENE","BIO",Tipcc,reg)*(3.6/1000000);
SORTIEIPCC("1057",reg,Tipcc)=SORTIEELEC("GENE","BIO",Tipcc,reg)*(3.6/1000000);

SORTIEIPCC("1070",reg,Tipcc)=(sum(sec,SORTIESEC("ENEC",Tipcc,sec,reg))+SORTIEMAC("HENC",Tipcc,reg)-SORTIESEC("ENEC",Tipcc,"04",reg)*Correction_04_Coal(Tipcc))*41.868/1000;
SORTIEIPCC("1071",reg,Tipcc)=SORTIESEC("ENEC",Tipcc,"05",reg)*41.868/1000;
SORTIEIPCC("1072",reg,Tipcc)=SORTIEELEC("SCCS","COA",Tipcc,reg)*SORTIESEC("ENEC",Tipcc,"05",reg)*41.868/1000;
SORTIEIPCC("1073",reg,Tipcc)=(1-SORTIEELEC("SCCS","COA",Tipcc,reg))*SORTIESEC("ENEC",Tipcc,"05",reg)*41.868/1000;

SORTIEIPCC("1083",reg,Tipcc)=(sum(sec,SORTIESEC("ENEG",Tipcc,sec,reg))+SORTIEMAC("HENG",Tipcc,reg)-SORTIESEC("ENEG",Tipcc,"04",reg))*41.868/1000;
SORTIEIPCC("1084",reg,Tipcc)=SORTIESEC("ENEG",Tipcc,"05",reg)*41.868/1000;
SORTIEIPCC("1085",reg,Tipcc)=SORTIEELEC("SCCS","GAP",Tipcc,reg)*SORTIESEC("ENEG",Tipcc,"05",reg)*41.868/1000;
SORTIEIPCC("1086",reg,Tipcc)=(1-SORTIEELEC("SCCS","GAP",Tipcc,reg))*SORTIESEC("ENEG",Tipcc,"05",reg)*41.868/1000;
SORTIEIPCC("1103",reg,Tipcc)=(sum(sec,SORTIESEC("ENEP",Tipcc,sec,reg))+SORTIEMAC("HENP",Tipcc,reg)+sum(sec,SORTIESEC("ENEO",Tipcc,sec,reg))-SORTIESEC("ENEO",Tipcc,"04",reg)+SORTIEMAC("HENO",Tipcc,reg))*41.868/1000;


SORTIEIPCC("1054",reg,Tipcc)=SORTIEIPCC("1094",reg,Tipcc)+SORTIEIPCC("1101",reg,Tipcc)+SORTIEIPCC("1113",reg,Tipcc)+SORTIEIPCC("1115",reg,Tipcc)+SORTIEIPCC("1116",reg,Tipcc)+
                             SORTIEIPCC("1070",reg,Tipcc)+SORTIEIPCC("1083",reg,Tipcc)+SORTIEIPCC("1103",reg,Tipcc);
SORTIEIPCC("1104",reg,Tipcc)=(SORTIESEC("ENEO",Tipcc,"05",reg)+SORTIESEC("ENEP",Tipcc,"05",reg))*41.868/1000;
SORTIEIPCC("1105",reg,Tipcc)=SORTIEELEC("SCCS","OIP",Tipcc,reg)*(SORTIESEC("ENEO",Tipcc,"05",reg)+SORTIESEC("ENEP",Tipcc,"05",reg))*41.868/1000;
SORTIEIPCC("1106",reg,Tipcc)=(1-SORTIEELEC("SCCS","OIP",Tipcc,reg))*(SORTIESEC("ENEO",Tipcc,"05",reg)+SORTIESEC("ENEP",Tipcc,"05",reg))*41.868/1000;


SORTIEIPCC("1080",reg,Tipcc)=SORTIEIPCC("1070",reg,Tipcc)+SORTIEIPCC("1083",reg,Tipcc)+SORTIEIPCC("1103",reg,Tipcc);
SORTIEIPCC("1081",reg,Tipcc)=SORTIEIPCC("1072",reg,Tipcc)+SORTIEIPCC("1085",reg,Tipcc)+SORTIEIPCC("1105",reg,Tipcc);
SORTIEIPCC("1082",reg,Tipcc)=SORTIEIPCC("1080",reg,Tipcc)-SORTIEIPCC("1081",reg,Tipcc);

SORTIEIPCC("1095",reg,Tipcc)=SORTIEIPCC("1094",reg,Tipcc)+SORTIEIPCC("1115",reg,Tipcc)+SORTIEIPCC("1116",reg,Tipcc);

* Trade

SORTIEIPCC("1206",reg,Tipcc)=(SORTIESEC("EXP",Tipcc,"01",reg)/PRICE_TOE_EXPORTS("01",reg)-SORTIESEC("IMP",Tipcc,"01",reg)/PRICE_TOE_EXPORTS("01",reg))*41.868/1000;
SORTIEIPCC("1207",reg,Tipcc)=(SORTIESEC("EXP",Tipcc,"03",reg)/PRICE_TOE_EXPORTS("03",reg)-SORTIESEC("IMP",Tipcc,"03",reg)/PRICE_TOE_EXPORTS("03",reg))*41.868/1000;
SORTIEIPCC("1208",reg,Tipcc)=(SORTIESEC("EXP",Tipcc,"02",reg)/PRICE_TOE_EXPORTS("02",reg)-SORTIESEC("IMP",Tipcc,"02",reg)/PRICE_TOE_EXPORTS("02",reg))*41.868/1000;
SORTIEIPCC("1209",reg,Tipcc)=(SORTIESEC("EXP",Tipcc,"05",reg)/PRICE_TOE_EXPORTS("05",reg)-SORTIESEC("IMP",Tipcc,"05",reg)/PRICE_TOE_EXPORTS("05",reg))*41.868/1000;
SORTIEIPCC("1214",reg,Tipcc)=(SORTIESEC("EXP",Tipcc,"04",reg)/PRICE_TOE_EXPORTS("04",reg)-SORTIESEC("IMP",Tipcc,"04",reg)/PRICE_TOE_EXPORTS("04",reg))*41.868/1000;

SORTIEIPCC("1571",reg,Tipcc)=SORTIEIPCC("133",reg,Tipcc)*SORTIESEC("EXP",Tipcc,"07",reg)/sum(sec,SORTIESEC("EXP",Tipcc,sec,reg));
SORTIEIPCC("1572",reg,Tipcc)=SORTIEIPCC("133",reg,Tipcc)*sum(secem7,SORTIESEC("EXP",Tipcc,secem7,reg))/sum(sec,SORTIESEC("EXP",Tipcc,sec,reg));
SORTIEIPCC("1575",reg,Tipcc)=SORTIEIPCC("133",reg,Tipcc)*SORTIESEC("EXP",Tipcc,"08",reg)/sum(sec,SORTIESEC("EXP",Tipcc,sec,reg));
SORTIEIPCC("1576",reg,Tipcc)=SORTIEIPCC("133",reg,Tipcc)*SORTIESEC("EXP",Tipcc,"09",reg)/sum(sec,SORTIESEC("EXP",Tipcc,sec,reg));
SORTIEIPCC("1577",reg,Tipcc)=SORTIEIPCC("133",reg,Tipcc)*(sum(sectra,SORTIESEC("EXP",Tipcc,sectra,reg))+SORTIESEC("EXP",Tipcc,"13",reg))/sum(sec,SORTIESEC("EXP",Tipcc,sec,reg));

SORTIEIPCC("1578",reg,Tipcc)=SORTIEIPCC("137",reg,Tipcc)*SORTIESEC("IMP",Tipcc,"07",reg)/sum(sec,SORTIESEC("IMP",Tipcc,sec,reg));
SORTIEIPCC("1579",reg,Tipcc)=SORTIEIPCC("137",reg,Tipcc)*sum(secem7,SORTIESEC("IMP",Tipcc,secem7,reg))/sum(sec,SORTIESEC("IMP",Tipcc,sec,reg));
SORTIEIPCC("1582",reg,Tipcc)=SORTIEIPCC("137",reg,Tipcc)*SORTIESEC("IMP",Tipcc,"08",reg)/sum(sec,SORTIESEC("IMP",Tipcc,sec,reg));
SORTIEIPCC("1583",reg,Tipcc)=SORTIEIPCC("137",reg,Tipcc)*SORTIESEC("IMP",Tipcc,"09",reg)/sum(sec,SORTIESEC("IMP",Tipcc,sec,reg));
SORTIEIPCC("1584",reg,Tipcc)=SORTIEIPCC("137",reg,Tipcc)*(sum(sectra,SORTIESEC("IMP",Tipcc,sectra,reg))+SORTIESEC("IMP",Tipcc,"13",reg))/sum(sec,SORTIESEC("IMP",Tipcc,sec,reg));


* Emissions

SORTIEIPCC("13",reg,Tipcc)=SORTIEMAC("NBIO",Tipcc,reg)+SORTIEMAC("CCSF",Tipcc,reg)+SORTIEMAC("CCSC",Tipcc,reg);
SORTIEIPCC("14",reg,Tipcc)=SORTIEMAC("NBIO",Tipcc,reg);
SORTIEIPCC("15",reg,Tipcc)=SORTIEMAC("NBIO",Tipcc,reg);
SORTIEIPCC("17",reg,Tipcc)=SORTIEMAC("NBIO",Tipcc,reg);
SORTIEIPCC("18",reg,Tipcc)=SORTIEMAC("NBIO",Tipcc,reg);
SORTIEIPCC("24",reg,Tipcc)=SORTIEMAC("CCSF",Tipcc,reg);
SORTIEIPCC("25",reg,Tipcc)=SORTIEMAC("CCSF",Tipcc,reg);
SORTIEIPCC("27",reg,Tipcc)=SORTIEMAC("CCSF",Tipcc,reg);
SORTIEIPCC("28",reg,Tipcc)=SORTIEMAC("CCSF",Tipcc,reg);
SORTIEIPCC("34",reg,Tipcc)=SORTIEMAC("CCSC",Tipcc,reg);


SORTIEIPCC("228",reg,Tipcc)=(SORTIEMAC("HAGR",Tipcc,reg)+SORTIEMAC("HRIC",Tipcc,reg))/GWP_CH4;
SORTIEIPCC("230",reg,Tipcc)=(SORTIEMAC("HFFF",Tipcc,reg)+SORTIEMAC("HEHP",Tipcc,reg)+SORTIEMAC("HFPT",Tipcc,reg)+SORTIEMAC("HOGF",Tipcc,reg)
                           +SORTIEMAC("HIND",Tipcc,reg)+SORTIEMAC("HNRT",Tipcc,reg)+SORTIEMAC("HROT",Tipcc,reg)+SORTIEMAC("HRCO",Tipcc,reg)
                           +SORTIEMAC("HRET",Tipcc,reg))/GWP_CH4;
SORTIEIPCC("240",reg,Tipcc)=SORTIEMAC("HIPP",Tipcc,reg)/GWP_CH4;
SORTIEIPCC("252",reg,Tipcc)=SORTIEMAC("HWAS",Tipcc,reg)/GWP_CH4;
SORTIEIPCC("226",reg,Tipcc)=SORTIEIPCC("228",reg,Tipcc)+SORTIEIPCC("230",reg,Tipcc)+SORTIEIPCC("240",reg,Tipcc)+SORTIEIPCC("252",reg,Tipcc);


SORTIEIPCC("258",reg,Tipcc)=sum(sec,SORTIESEC("CO2",Tipcc,sec,reg))+SORTIEMAC("CO2H",Tipcc,reg)+SORTIEMAC("COGF",Tipcc,reg)+SORTIEMAC("CFFF",Tipcc,reg)-SORTIEMAC("NBIO",Tipcc,reg);
SORTIEIPCC("325",reg,Tipcc)=SORTIEMAC("CIPP",Tipcc,reg)+SORTIEMAC("CSPA",Tipcc,reg);

SORTIEIPCC("259",reg,Tipcc)=SORTIEIPCC("258",reg,Tipcc)+SORTIEIPCC("325",reg,Tipcc);

SORTIEIPCC("338",reg,Tipcc)=+SORTIEMAC("COWA",Tipcc,reg);

SORTIEIPCC("254",reg,Tipcc)=SORTIEIPCC("259",reg,Tipcc)+SORTIEIPCC("338",reg,Tipcc);


SORTIEIPCC("319",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"05",reg)-SORTIEMAC("NBIO",Tipcc,reg);

SORTIEIPCC("355",reg,Tipcc)=SORTIEMAC("S6MG",Tipcc,reg)+SORTIEMAC("SEPS",Tipcc,reg)+SORTIEMAC("SFPD",Tipcc,reg)+SORTIEMAC("SSEM",Tipcc,reg)+SORTIEMAC("HODS",Tipcc,reg)+
                             SORTIEMAC("HFPD",Tipcc,reg)+SORTIEMAC("HSEM",Tipcc,reg)+SORTIEMAC("PELE",Tipcc,reg)+SORTIEMAC("PFAL",Tipcc,reg)+SORTIEMAC("NELE",Tipcc,reg);
SORTIEIPCC("369",reg,Tipcc)=SORTIEMAC("HODS",Tipcc,reg)+SORTIEMAC("HFPD",Tipcc,reg)+SORTIEMAC("HSEM",Tipcc,reg);

SORTIEIPCC("374",reg,Tipcc)=((SORTIEMAC("NLIV",Tipcc,reg)+SORTIEMAC("NCRO",Tipcc,reg)+SORTIEMAC("NFCA",Tipcc,reg)+SORTIEMAC("NFUG",Tipcc,reg)+SORTIEMAC("NIPP",Tipcc,reg)+
                              SORTIEMAC("NWAS",Tipcc,reg)+SORTIEMAC("NOTH",Tipcc,reg))/GWP_N2O)*1000;

SORTIEIPCC("376",reg,Tipcc)=((SORTIEMAC("NLIV",Tipcc,reg)+SORTIEMAC("NCRO",Tipcc,reg))/GWP_N2O)*1000;
SORTIEIPCC("378",reg,Tipcc)=((SORTIEMAC("NFCA",Tipcc,reg)+SORTIEMAC("NFUG",Tipcc,reg))/GWP_N2O)*1000;
SORTIEIPCC("385",reg,Tipcc)=(SORTIEMAC("NIPP",Tipcc,reg)/GWP_N2O)*1000;
SORTIEIPCC("391",reg,Tipcc)=(SORTIEMAC("NOTH",Tipcc,reg)/GWP_N2O)*1000;
SORTIEIPCC("392",reg,Tipcc)=(SORTIEMAC("NWAS",Tipcc,reg)/GWP_N2O)*1000;
SORTIEIPCC("374",reg,Tipcc)=SORTIEIPCC("376",reg,Tipcc)+SORTIEIPCC("378",reg,Tipcc)+SORTIEIPCC("385",reg,Tipcc)+SORTIEIPCC("391",reg,Tipcc)+SORTIEIPCC("392",reg,Tipcc);


*SORTIEIPCC("447",reg,Tipcc)=(SORTIEMAC("PELE",Tipcc,reg)+SORTIEMAC("PFAL",Tipcc,reg))*(1000/GWP_PFC);
*SORTIEIPCC("444",reg,Tipcc)=SORTIEIPCC("447",reg,Tipcc);
SORTIEIPCC("451",reg,Tipcc)=((SORTIEMAC("S6MG",Tipcc,reg)+SORTIEMAC("SEPS",Tipcc,reg)+SORTIEMAC("SFPD",Tipcc,reg)+SORTIEMAC("SSEM",Tipcc,reg))/GWP_SF6)*1000;


SORTIEIPCC("261",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"07",reg);
SORTIEIPCC("262",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"13",reg)+
                            SORTIEMAC("HENC",Tipcc,reg)*CO2CONTENTH("01",reg)+
                            SORTIEMAC("HENO",Tipcc,reg)*CO2CONTENTH("02",reg)+
                            SORTIEMAC("HENG",Tipcc,reg)*CO2CONTENTH("03",reg)+
                            SORTIEMAC("HENP",Tipcc,reg)*CO2CONTENTH("04",reg)*SORTIEMAC("HR04",Tipcc,reg)/(SORTIEMAC("HT04",Tipcc,reg)+SORTIEMAC("HR04",Tipcc,reg));
SORTIEIPCC("287",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"08",reg)+SORTIESEC("CO2",Tipcc,"09",reg);
SORTIEIPCC("300",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"10",reg)+SORTIESEC("CO2",Tipcc,"11",reg)+SORTIESEC("CO2",Tipcc,"12",reg)+
                            SORTIEMAC("HENP",Tipcc,reg)*CO2CONTENTH("04",reg)*SORTIEMAC("HT04",Tipcc,reg)/(SORTIEMAC("HT04",Tipcc,reg)+SORTIEMAC("HR04",Tipcc,reg));

SORTIEIPCC("260",reg,Tipcc)=SORTIEIPCC("261",reg,Tipcc)+SORTIEIPCC("262",reg,Tipcc)+SORTIEIPCC("287",reg,Tipcc)+SORTIEIPCC("300",reg,Tipcc);

SORTIEIPCC("318",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"01",reg)+SORTIESEC("CO2",Tipcc,"02",reg)+SORTIESEC("CO2",Tipcc,"03",reg)+
                            SORTIESEC("CO2",Tipcc,"04",reg)+SORTIEIPCC("319",reg,Tipcc)+SORTIESEC("CO2",Tipcc,"06",reg)+SORTIEMAC("COGF",Tipcc,reg)+SORTIEMAC("CFFF",Tipcc,reg);


SORTIEIPCC("324",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"01",reg);
SORTIEIPCC("322",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"02",reg)+SORTIESEC("CO2",Tipcc,"04",reg);
SORTIEIPCC("320",reg,Tipcc)=SORTIESEC("CO2",Tipcc,"03",reg);
SORTIEIPCC("323",reg,Tipcc)=SORTIEMAC("COGF",Tipcc,reg)+SORTIEMAC("CFFF",Tipcc,reg);

** Air pollutants



*** BC

SORTIEIPCC("192",reg,Tipcc)=APXD("BC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,"07",reg)+
                            sum(Secem7,APIO("BC",Secem7,"07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO(Secem7,"07",Tipcc,reg))+APKAV("BC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("KAV",Tipcc,"07",reg);
SORTIEIPCC("193",reg,Tipcc)=APLU("BC",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,"07",reg)+sum(sec,APIO("BC","07",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO("07",sec,Tipcc,reg));
SORTIEIPCC("191",reg,Tipcc)=SORTIEIPCC("192",reg,Tipcc)+SORTIEIPCC("193",reg,Tipcc);
SORTIEIPCC("199",reg,Tipcc)=sum(Secem7,APIO("BC",Secem7,"08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO(Secem7,"08",Tipcc,reg))+sum(Secem7,APIO("BC",Secem7,"09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO(Secem7,"09",Tipcc,reg));
SORTIEIPCC("196",reg,Tipcc)=sum(Secem7,APIO("BC",Secem7,"13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO(Secem7,"13",Tipcc,reg));
SORTIEIPCC("197",reg,Tipcc)=sum(Secem7,APHH("BC",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("HCV",Tipcc,Secem7,reg))+APHH("BC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("HCV",Tipcc,"07",reg);
SORTIEIPCC("195",reg,Tipcc)=SORTIEIPCC("196",reg,Tipcc)+SORTIEIPCC("197",reg,Tipcc);
SORTIEIPCC("200",reg,Tipcc)=sum(Secem7,APIO("BC",Secem7,"10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO(Secem7,"10",Tipcc,reg))+sum(Secem7,APIO("BC",Secem7,"11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO(Secem7,"11",Tipcc,reg))+
                            sum(Secem7,APIO("BC",Secem7,"12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO(Secem7,"12",Tipcc,reg));
SORTIEIPCC("203",reg,Tipcc)=sum(Secem7b,sum(Secem7,APIO("BC",Secem7,secem7b,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO(Secem7,secem7b,Tipcc,reg)))+
                            sum(elec,APELECXD("BC",elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEELEC("GENE",elec,Tipcc,reg)+sum(pro,APELECIO("BC",pro,elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIOELEC(pro,elec,Tipcc,reg)))+
                            sum(Secem7,APXD("BC",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,Secem7,reg));
SORTIEIPCC("194",reg,Tipcc)=SORTIEIPCC("199",reg,Tipcc)+SORTIEIPCC("195",reg,Tipcc)+SORTIEIPCC("200",reg,Tipcc)+SORTIEIPCC("203",reg,Tipcc);
SORTIEIPCC("204",reg,Tipcc)=APXD("BC","08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,"08",reg)+APXD("BC","09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,"09",reg)+
                            sum(sec,APIO("BC","08",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO("08",sec,Tipcc,reg))+
                            sum(sec,APIO("BC","09",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIEIO("09",sec,Tipcc,reg));
SORTIEIPCC("205",reg,Tipcc)=APXD("BC","10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,"10",reg)+APXD("BC","11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,"11",reg)+
                            APXD("BC","12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,"12",reg);
SORTIEIPCC("206",reg,Tipcc)=APXD("BC","13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"BC"))*SORTIESEC("XD",Tipcc,"13",reg);
SORTIEIPCC("190",reg,Tipcc)=SORTIEIPCC("191",reg,Tipcc)+SORTIEIPCC("194",reg,Tipcc)+SORTIEIPCC("204",reg,Tipcc)+SORTIEIPCC("205",reg,Tipcc)+SORTIEIPCC("206",reg,Tipcc);



*** NOX

SORTIEIPCC("412",reg,Tipcc)=APXD("NOX","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,"07",reg)+
                            sum(Secem7,APIO("NOX",Secem7,"07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO(Secem7,"07",Tipcc,reg))+APKAV("NOX","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("KAV",Tipcc,"07",reg);
SORTIEIPCC("413",reg,Tipcc)=APLU("NOX",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,"07",reg)+sum(sec,APIO("NOX","07",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO("07",sec,Tipcc,reg));
SORTIEIPCC("411",reg,Tipcc)=SORTIEIPCC("412",reg,Tipcc)+SORTIEIPCC("413",reg,Tipcc);
SORTIEIPCC("419",reg,Tipcc)=sum(Secem7,APIO("NOX",Secem7,"08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO(Secem7,"08",Tipcc,reg))+sum(Secem7,APIO("NOX",Secem7,"09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO(Secem7,"09",Tipcc,reg));
SORTIEIPCC("416",reg,Tipcc)=sum(Secem7,APIO("NOX",Secem7,"13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO(Secem7,"13",Tipcc,reg));
SORTIEIPCC("417",reg,Tipcc)=sum(Secem7,APHH("NOX",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("HCV",Tipcc,Secem7,reg))+APHH("NOX","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("HCV",Tipcc,"07",reg);
SORTIEIPCC("415",reg,Tipcc)=SORTIEIPCC("416",reg,Tipcc)+SORTIEIPCC("417",reg,Tipcc);
SORTIEIPCC("420",reg,Tipcc)=sum(Secem7,APIO("NOX",Secem7,"10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO(Secem7,"10",Tipcc,reg))+sum(Secem7,APIO("NOX",Secem7,"11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO(Secem7,"11",Tipcc,reg))+
                            sum(Secem7,APIO("NOX",Secem7,"12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO(Secem7,"12",Tipcc,reg));
SORTIEIPCC("423",reg,Tipcc)=sum(Secem7b,sum(Secem7,APIO("NOX",Secem7,secem7b,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO(Secem7,secem7b,Tipcc,reg)))+
                            sum(elec,APELECXD("NOX",elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEELEC("GENE",elec,Tipcc,reg)+sum(pro,APELECIO("NOX",pro,elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIOELEC(pro,elec,Tipcc,reg)))+
                            sum(Secem7,APXD("NOX",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,Secem7,reg));
SORTIEIPCC("414",reg,Tipcc)=SORTIEIPCC("419",reg,Tipcc)+SORTIEIPCC("415",reg,Tipcc)+SORTIEIPCC("420",reg,Tipcc)+SORTIEIPCC("423",reg,Tipcc);
SORTIEIPCC("424",reg,Tipcc)=APXD("NOX","08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,"08",reg)+APXD("NOX","09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,"09",reg)+
                            sum(sec,APIO("NOX","08",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO("08",sec,Tipcc,reg))+
                            sum(sec,APIO("NOX","09",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIEIO("09",sec,Tipcc,reg));
SORTIEIPCC("425",reg,Tipcc)=APXD("NOX","10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,"10",reg)+APXD("NOX","11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,"11",reg)+
                            APXD("NOX","12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,"12",reg);
SORTIEIPCC("426",reg,Tipcc)=APXD("NOX","13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NOX"))*SORTIESEC("XD",Tipcc,"13",reg);
SORTIEIPCC("410",reg,Tipcc)=SORTIEIPCC("411",reg,Tipcc)+SORTIEIPCC("414",reg,Tipcc)+SORTIEIPCC("424",reg,Tipcc)+SORTIEIPCC("425",reg,Tipcc)+SORTIEIPCC("426",reg,Tipcc);

*** CO

SORTIEIPCC("340",reg,Tipcc)=APXD("CO","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,"07",reg)+
                            sum(Secem7,APIO("CO",Secem7,"07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO(Secem7,"07",Tipcc,reg))+APKAV("CO","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("KAV",Tipcc,"07",reg);
SORTIEIPCC("341",reg,Tipcc)=APLU("CO",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,"07",reg)+sum(sec,APIO("CO","07",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO("07",sec,Tipcc,reg));
SORTIEIPCC("339",reg,Tipcc)=SORTIEIPCC("340",reg,Tipcc)+SORTIEIPCC("341",reg,Tipcc);
SORTIEIPCC("347",reg,Tipcc)=sum(Secem7,APIO("CO",Secem7,"08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO(Secem7,"08",Tipcc,reg))+sum(Secem7,APIO("CO",Secem7,"09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO(Secem7,"09",Tipcc,reg));
SORTIEIPCC("344",reg,Tipcc)=sum(Secem7,APIO("CO",Secem7,"13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO(Secem7,"13",Tipcc,reg));
SORTIEIPCC("345",reg,Tipcc)=sum(Secem7,APHH("CO",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("HCV",Tipcc,Secem7,reg))+APHH("CO","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("HCV",Tipcc,"07",reg);
SORTIEIPCC("343",reg,Tipcc)=SORTIEIPCC("344",reg,Tipcc)+SORTIEIPCC("345",reg,Tipcc);
SORTIEIPCC("348",reg,Tipcc)=sum(Secem7,APIO("CO",Secem7,"10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO(Secem7,"10",Tipcc,reg))+sum(Secem7,APIO("CO",Secem7,"11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO(Secem7,"11",Tipcc,reg))+
                            sum(Secem7,APIO("CO",Secem7,"12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO(Secem7,"12",Tipcc,reg));
SORTIEIPCC("351",reg,Tipcc)=sum(Secem7b,sum(Secem7,APIO("CO",Secem7,secem7b,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO(Secem7,secem7b,Tipcc,reg)))+
                            sum(elec,APELECXD("CO",elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEELEC("GENE",elec,Tipcc,reg)+sum(pro,APELECIO("CO",pro,elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIOELEC(pro,elec,Tipcc,reg)))+
                            sum(Secem7,APXD("CO",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,Secem7,reg));
SORTIEIPCC("342",reg,Tipcc)=SORTIEIPCC("347",reg,Tipcc)+SORTIEIPCC("343",reg,Tipcc)+SORTIEIPCC("348",reg,Tipcc)+SORTIEIPCC("351",reg,Tipcc);
SORTIEIPCC("352",reg,Tipcc)=APXD("CO","08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,"08",reg)+APXD("CO","09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,"09",reg)+
                            sum(sec,APIO("CO","08",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO("08",sec,Tipcc,reg))+
                            sum(sec,APIO("CO","09",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIEIO("09",sec,Tipcc,reg));
SORTIEIPCC("353",reg,Tipcc)=APXD("CO","10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,"10",reg)+APXD("CO","11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,"11",reg)+
                            APXD("CO","12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,"12",reg);
SORTIEIPCC("354",reg,Tipcc)=APXD("CO","13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"CO"))*SORTIESEC("XD",Tipcc,"13",reg);
SORTIEIPCC("253",reg,Tipcc)=SORTIEIPCC("339",reg,Tipcc)+SORTIEIPCC("342",reg,Tipcc)+SORTIEIPCC("352",reg,Tipcc)+SORTIEIPCC("353",reg,Tipcc)+SORTIEIPCC("354",reg,Tipcc);



*** OC

SORTIEIPCC("429",reg,Tipcc)=APXD("OC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,"07",reg)+
                            sum(Secem7,APIO("OC",Secem7,"07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO(Secem7,"07",Tipcc,reg))+APKAV("OC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("KAV",Tipcc,"07",reg);
SORTIEIPCC("430",reg,Tipcc)=APLU("OC",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,"07",reg)+sum(sec,APIO("OC","07",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO("07",sec,Tipcc,reg));
SORTIEIPCC("428",reg,Tipcc)=SORTIEIPCC("429",reg,Tipcc)+SORTIEIPCC("430",reg,Tipcc);
SORTIEIPCC("436",reg,Tipcc)=sum(Secem7,APIO("OC",Secem7,"08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO(Secem7,"08",Tipcc,reg))+sum(Secem7,APIO("OC",Secem7,"09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO(Secem7,"09",Tipcc,reg));
SORTIEIPCC("433",reg,Tipcc)=sum(Secem7,APIO("OC",Secem7,"13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO(Secem7,"13",Tipcc,reg));
SORTIEIPCC("434",reg,Tipcc)=sum(Secem7,APHH("OC",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("HCV",Tipcc,Secem7,reg))+APHH("OC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("HCV",Tipcc,"07",reg);
SORTIEIPCC("432",reg,Tipcc)=SORTIEIPCC("433",reg,Tipcc)+SORTIEIPCC("434",reg,Tipcc);
SORTIEIPCC("437",reg,Tipcc)=sum(Secem7,APIO("OC",Secem7,"10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO(Secem7,"10",Tipcc,reg))+sum(Secem7,APIO("OC",Secem7,"11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO(Secem7,"11",Tipcc,reg))+
                            sum(Secem7,APIO("OC",Secem7,"12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO(Secem7,"12",Tipcc,reg));
SORTIEIPCC("440",reg,Tipcc)=sum(Secem7b,sum(Secem7,APIO("OC",Secem7,secem7b,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO(Secem7,secem7b,Tipcc,reg)))+
                            sum(elec,APELECXD("OC",elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEELEC("GENE",elec,Tipcc,reg)+sum(pro,APELECIO("OC",pro,elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIOELEC(pro,elec,Tipcc,reg)))+
                            sum(Secem7,APXD("OC",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,Secem7,reg));
SORTIEIPCC("431",reg,Tipcc)=SORTIEIPCC("436",reg,Tipcc)+SORTIEIPCC("432",reg,Tipcc)+SORTIEIPCC("437",reg,Tipcc)+SORTIEIPCC("440",reg,Tipcc);
SORTIEIPCC("441",reg,Tipcc)=APXD("OC","08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,"08",reg)+APXD("OC","09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,"09",reg)+
                            sum(sec,APIO("OC","08",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO("08",sec,Tipcc,reg))+
                            sum(sec,APIO("OC","09",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIEIO("09",sec,Tipcc,reg));
SORTIEIPCC("442",reg,Tipcc)=APXD("OC","10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,"10",reg)+APXD("OC","11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,"11",reg)+
                            APXD("OC","12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,"12",reg);
SORTIEIPCC("443",reg,Tipcc)=APXD("OC","13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"OC"))*SORTIESEC("XD",Tipcc,"13",reg);
SORTIEIPCC("427",reg,Tipcc)=SORTIEIPCC("428",reg,Tipcc)+SORTIEIPCC("431",reg,Tipcc)+SORTIEIPCC("441",reg,Tipcc)+SORTIEIPCC("442",reg,Tipcc)+SORTIEIPCC("443",reg,Tipcc);



*** NH3

SORTIEIPCC("395",reg,Tipcc)=APXD("NH3","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,"07",reg)+
                            sum(Secem7,APIO("NH3",Secem7,"07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO(Secem7,"07",Tipcc,reg))+APKAV("NH3","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("KAV",Tipcc,"07",reg);
SORTIEIPCC("396",reg,Tipcc)=APLU("NH3",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,"07",reg)+sum(sec,APIO("NH3","07",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO("07",sec,Tipcc,reg));
SORTIEIPCC("394",reg,Tipcc)=SORTIEIPCC("395",reg,Tipcc)+SORTIEIPCC("396",reg,Tipcc);
SORTIEIPCC("402",reg,Tipcc)=sum(Secem7,APIO("NH3",Secem7,"08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO(Secem7,"08",Tipcc,reg))+sum(Secem7,APIO("NH3",Secem7,"09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO(Secem7,"09",Tipcc,reg));
SORTIEIPCC("399",reg,Tipcc)=sum(Secem7,APIO("NH3",Secem7,"13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO(Secem7,"13",Tipcc,reg));
SORTIEIPCC("400",reg,Tipcc)=sum(Secem7,APHH("NH3",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("HCV",Tipcc,Secem7,reg))+APHH("NH3","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("HCV",Tipcc,"07",reg);
SORTIEIPCC("398",reg,Tipcc)=SORTIEIPCC("399",reg,Tipcc)+SORTIEIPCC("400",reg,Tipcc);
SORTIEIPCC("403",reg,Tipcc)=sum(Secem7,APIO("NH3",Secem7,"10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO(Secem7,"10",Tipcc,reg))+sum(Secem7,APIO("NH3",Secem7,"11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO(Secem7,"11",Tipcc,reg))+
                            sum(Secem7,APIO("NH3",Secem7,"12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO(Secem7,"12",Tipcc,reg));
SORTIEIPCC("406",reg,Tipcc)=sum(Secem7b,sum(Secem7,APIO("NH3",Secem7,secem7b,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO(Secem7,secem7b,Tipcc,reg)))+
                            sum(elec,APELECXD("NH3",elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEELEC("GENE",elec,Tipcc,reg)+sum(pro,APELECIO("NH3",pro,elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIOELEC(pro,elec,Tipcc,reg)))+
                            sum(Secem7,APXD("NH3",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,Secem7,reg));
SORTIEIPCC("397",reg,Tipcc)=SORTIEIPCC("402",reg,Tipcc)+SORTIEIPCC("398",reg,Tipcc)+SORTIEIPCC("403",reg,Tipcc)+SORTIEIPCC("406",reg,Tipcc);
SORTIEIPCC("407",reg,Tipcc)=APXD("NH3","08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,"08",reg)+APXD("NH3","09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,"09",reg)+
                            sum(sec,APIO("NH3","08",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO("08",sec,Tipcc,reg))+
                            sum(sec,APIO("NH3","09",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIEIO("09",sec,Tipcc,reg));
SORTIEIPCC("408",reg,Tipcc)=APXD("NH3","10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,"10",reg)+APXD("NH3","11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,"11",reg)+
                            APXD("NH3","12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,"12",reg);
SORTIEIPCC("409",reg,Tipcc)=APXD("NH3","13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NH3"))*SORTIESEC("XD",Tipcc,"13",reg);
SORTIEIPCC("393",reg,Tipcc)=SORTIEIPCC("394",reg,Tipcc)+SORTIEIPCC("397",reg,Tipcc)+SORTIEIPCC("407",reg,Tipcc)+SORTIEIPCC("408",reg,Tipcc)+SORTIEIPCC("409",reg,Tipcc);


*** SO2

SORTIEIPCC("464",reg,Tipcc)=APXD("SO2","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,"07",reg)+
                            sum(Secem7,APIO("SO2",Secem7,"07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO(Secem7,"07",Tipcc,reg))+APKAV("SO2","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("KAV",Tipcc,"07",reg);
SORTIEIPCC("465",reg,Tipcc)=APLU("SO2",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,"07",reg)+sum(sec,APIO("SO2","07",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO("07",sec,Tipcc,reg));
SORTIEIPCC("463",reg,Tipcc)=SORTIEIPCC("464",reg,Tipcc)+SORTIEIPCC("465",reg,Tipcc);
SORTIEIPCC("471",reg,Tipcc)=sum(Secem7,APIO("SO2",Secem7,"08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO(Secem7,"08",Tipcc,reg))+sum(Secem7,APIO("SO2",Secem7,"09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO(Secem7,"09",Tipcc,reg));
SORTIEIPCC("468",reg,Tipcc)=sum(Secem7,APIO("SO2",Secem7,"13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO(Secem7,"13",Tipcc,reg));
SORTIEIPCC("469",reg,Tipcc)=sum(Secem7,APHH("SO2",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("HCV",Tipcc,Secem7,reg))+APHH("SO2","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("HCV",Tipcc,"07",reg);
SORTIEIPCC("467",reg,Tipcc)=SORTIEIPCC("468",reg,Tipcc)+SORTIEIPCC("469",reg,Tipcc);
SORTIEIPCC("472",reg,Tipcc)=sum(Secem7,APIO("SO2",Secem7,"10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO(Secem7,"10",Tipcc,reg))+sum(Secem7,APIO("SO2",Secem7,"11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO(Secem7,"11",Tipcc,reg))+
                            sum(Secem7,APIO("SO2",Secem7,"12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO(Secem7,"12",Tipcc,reg));
SORTIEIPCC("475",reg,Tipcc)=sum(Secem7b,sum(Secem7,APIO("SO2",Secem7,secem7b,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO(Secem7,secem7b,Tipcc,reg)))+
                            sum(elec,APELECXD("SO2",elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEELEC("GENE",elec,Tipcc,reg)+sum(pro,APELECIO("SO2",pro,elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIOELEC(pro,elec,Tipcc,reg)))+
                            sum(Secem7,APXD("SO2",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,Secem7,reg));
SORTIEIPCC("466",reg,Tipcc)=SORTIEIPCC("471",reg,Tipcc)+SORTIEIPCC("467",reg,Tipcc)+SORTIEIPCC("472",reg,Tipcc)+SORTIEIPCC("475",reg,Tipcc);
SORTIEIPCC("476",reg,Tipcc)=APXD("SO2","08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,"08",reg)+APXD("SO2","09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,"09",reg)+
                            sum(sec,APIO("SO2","08",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO("08",sec,Tipcc,reg))+
                            sum(sec,APIO("SO2","09",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIEIO("09",sec,Tipcc,reg));
SORTIEIPCC("477",reg,Tipcc)=APXD("SO2","10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,"10",reg)+APXD("SO2","11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,"11",reg)+
                            APXD("SO2","12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,"12",reg);
SORTIEIPCC("478",reg,Tipcc)=APXD("SO2","13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"SO2"))*SORTIESEC("XD",Tipcc,"13",reg);
SORTIEIPCC("462",reg,Tipcc)=SORTIEIPCC("463",reg,Tipcc)+SORTIEIPCC("466",reg,Tipcc)+SORTIEIPCC("476",reg,Tipcc)+SORTIEIPCC("477",reg,Tipcc)+SORTIEIPCC("478",reg,Tipcc);


*** VOC


SORTIEIPCC("481",reg,Tipcc)=APXD("NMVOC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,"07",reg)+
                            sum(Secem7,APIO("NMVOC",Secem7,"07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO(Secem7,"07",Tipcc,reg))+APKAV("NMVOC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("KAV",Tipcc,"07",reg);
SORTIEIPCC("482",reg,Tipcc)=APLU("NMVOC",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,"07",reg)+sum(sec,APIO("NMVOC","07",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO("07",sec,Tipcc,reg));
SORTIEIPCC("480",reg,Tipcc)=SORTIEIPCC("481",reg,Tipcc)+SORTIEIPCC("482",reg,Tipcc);
SORTIEIPCC("488",reg,Tipcc)=sum(Secem7,APIO("NMVOC",Secem7,"08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO(Secem7,"08",Tipcc,reg))+sum(Secem7,APIO("NMVOC",Secem7,"09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO(Secem7,"09",Tipcc,reg));
SORTIEIPCC("485",reg,Tipcc)=sum(Secem7,APIO("NMVOC",Secem7,"13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO(Secem7,"13",Tipcc,reg));
SORTIEIPCC("486",reg,Tipcc)=sum(Secem7,APHH("NMVOC",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("HCV",Tipcc,Secem7,reg))+APHH("NMVOC","07",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("HCV",Tipcc,"07",reg);
SORTIEIPCC("484",reg,Tipcc)=SORTIEIPCC("485",reg,Tipcc)+SORTIEIPCC("486",reg,Tipcc);
SORTIEIPCC("489",reg,Tipcc)=sum(Secem7,APIO("NMVOC",Secem7,"10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO(Secem7,"10",Tipcc,reg))+sum(Secem7,APIO("NMVOC",Secem7,"11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO(Secem7,"11",Tipcc,reg))+
                            sum(Secem7,APIO("NMVOC",Secem7,"12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO(Secem7,"12",Tipcc,reg));
SORTIEIPCC("492",reg,Tipcc)=sum(Secem7b,sum(Secem7,APIO("NMVOC",Secem7,secem7b,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO(Secem7,secem7b,Tipcc,reg)))+
                            sum(elec,APELECXD("NMVOC",elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEELEC("GENE",elec,Tipcc,reg)+sum(pro,APELECIO("NMVOC",pro,elec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIOELEC(pro,elec,Tipcc,reg)))+
                            sum(Secem7,APXD("NMVOC",Secem7,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,Secem7,reg));
SORTIEIPCC("483",reg,Tipcc)=SORTIEIPCC("488",reg,Tipcc)+SORTIEIPCC("484",reg,Tipcc)+SORTIEIPCC("489",reg,Tipcc)+SORTIEIPCC("492",reg,Tipcc);
SORTIEIPCC("493",reg,Tipcc)=APXD("NMVOC","08",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,"08",reg)+APXD("NMVOC","09",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,"09",reg)+
                            sum(sec,APIO("NMVOC","08",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO("08",sec,Tipcc,reg))+
                            sum(sec,APIO("NMVOC","09",sec,reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIEIO("09",sec,Tipcc,reg));
SORTIEIPCC("494",reg,Tipcc)=APXD("NMVOC","10",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,"10",reg)+APXD("NMVOC","11",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,"11",reg)+
                            APXD("NMVOC","12",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,"12",reg);
SORTIEIPCC("495",reg,Tipcc)=APXD("NMVOC","13",reg)*(1-EMISSION_CONTROL(Tipcc,reg,"NMVOC"))*SORTIESEC("XD",Tipcc,"13",reg);
SORTIEIPCC("479",reg,Tipcc)=SORTIEIPCC("480",reg,Tipcc)+SORTIEIPCC("483",reg,Tipcc)+SORTIEIPCC("493",reg,Tipcc)+SORTIEIPCC("494",reg,Tipcc)+SORTIEIPCC("495",reg,Tipcc);


* Policy cost

* GDP deflator from 2017 -> 2010: 1.120447975 based World Economic Outlook database IMF

*(1/1.120447975)*


SORTIEIPCC("153",reg,Tipcc)=(1/1.120447975)*SORTIEMAC("TAXE",Tipcc,reg)*1000*((SORTIEMAC("EXCH",Tipcc,reg)/SORTIEMAC("EXCH",Tipcc,"USA"))*(SORTIEMAC("PGDP",Tipcc,reg)/SORTIEMAC("PGDP",Tipcc,"USA")));

SORTIEIPCC("141",reg,Tipcc)=-1*SORTIEIPCC("130",reg,Tipcc)*(SORTIEMAC("CONZ",Tipcc,reg)-CONZ_CC(Tipcc,reg))/CONZ_CC(Tipcc,reg);
SORTIEIPCC("142",reg,Tipcc)=SORTIEIPCC("130",reg,Tipcc)*(SORTIEMAC("SUR1",Tipcc,reg)/PGDP_CC(Tipcc,reg))/CONZ_CC(Tipcc,reg);
SORTIEIPCC("143",reg,Tipcc)=-1*SORTIEIPCC("134",reg,Tipcc)*(SORTIEMAC("GDPZ",Tipcc,reg)-GDPZ_CC(Tipcc,reg))/GDPZ_CC(Tipcc,reg);
idist=14;




loop(reg,loop(reg_sortie,
if (ord(reg) eq ord(reg_sortie),
   SORTIEIPCC2(ipcc_idx,reg_sortie,Tipcc)=SORTIEIPCC(ipcc_idx,reg,Tipcc);
   );
));


SORTIEIPCC2(ipcc_idx,"WORLD",Tipcc)=sum(reg,SORTIEIPCC(ipcc_idx,reg,Tipcc));


SORTIEIPCC2("153","WORLD",Tipcc)=sum(reg,SORTIEIPCC("153",reg,Tipcc)*SORTIEIPCC("258",reg,Tipcc))/sum(reg,SORTIEIPCC("258",reg,Tipcc));

SORTIEIPCC2("174","WORLD",Tipcc)=sum(reg,SORTIEIPCC("174",reg,Tipcc)*SORTIEIPCC("1103",reg,Tipcc))/sum(reg,SORTIEIPCC("1103",reg,Tipcc));







fILE Ipcc ipcc /ipcc.txt/;
ipcc.nd=100

put ipcc;


put 'Region,Idx,2017,2020,2025,2030,2035,2040,2045,2050'; put/;
loop(ipcc_idx,
  if ( SORTIEIPCC2(ipcc_idx,"USA","2020") <> NA,
  loop(reg_sortie,
      colip1=0;
      if (ord(reg_sortie) eq 25, put reg_sortie.tl,@6,',',@7,ipcc_idx.tl;
         else  put reg_sortie.tl,@4,',',@7,ipcc_idx.tl);
      colip1=7+4;
      put @colip1,',';
      colip1=colip1+1;
      loop(Tipcc,
         put @colip1,SORTIEIPCC2(ipcc_idx,reg_sortie,Tipcc);
         colip1=colip1+idist;
         put @colip1,',';
         colip1=colip1+1;
      );
      put /;
      );
   );
    );

putclose ipcc;
