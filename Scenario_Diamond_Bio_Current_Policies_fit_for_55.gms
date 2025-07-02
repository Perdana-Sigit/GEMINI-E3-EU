* GEMINI-E3 MODEL VERSION 8 2023 DIAMOND

$ONTEXT

*Sector and product classification


01 Coal
02 Oil
03 Natural gas
04 Petroleum Products
05 Electricity
06 Hydrogen
07 Agriculture
08 Energy intensive industries
09 Other Manufacturing Industries
10 Land transport
11 Sea transport
12 Air transport
13 Services

* Regional Classification
*** EU Countries
DEU Germany
FRA France
ITA Italy
SPN Spain
NLD Netherlands
SWE Sweden
POL Poland
BEL Belgium
EU1 Croatia, Cyprus, Greece, Portugal, Malta
EU2 Austria, Luxembourg
EU3 Czech Rep., Hungary, Slovak Rep.
EU4 Bulgaria, Romania, Slovenia
EU5 Estonia, Latvia, Lithuania
EU6 Denmark, Finland, Ireland

GBR United Kingdom
USA United States of America
CHI China
IND India
RUS Russian Federation

CSA Central South America
MID Middle East
AFR Africa
ASI Rest of Asia
ROW Rest of the World

$OFFTEXT

$sysinclude gams-f
$exit

SET
Ghg Non CO2 GHG  /CH4_RIC,CH4_AGR,CH4_AWB,CH4_FOB,CH4_GRB,CH4_PEB,CH4_EHP_COA,CH4_EHP_CRU,CH4_EHP_OIL,CH4_EHP_GAS,CH4_EHP_BIO,CH4_FPT_COA,CH4_FPT_CRU,CH4_FPT_OIL,CH4_FPT_GAS,CH4_OGF,CH4_IND_COA,CH4_IND_CRU,CH4_IND_OIL,CH4_IND_GAS
                  CH4_NRT_COA,CH4_NRT_CRU,CH4_NRT_OIL,CH4_NRT_GAS,CH4_RCO,CH4_REC,CH4_ROT_COA,CH4_ROT_CRU,CH4_ROT_OIL,CH4_ROT_GAS,CH4_IPP,CH4_WAS,CH4_OTH_COA,CH4_OTH_CRU,CH4_OTH_OIL,CH4_OTH_GAS,CH4_OTH_BIO,CH4_COM_COA,CH4_COM_CRU
                  CH4_COM_OIL,CH4_COM_BIO,
                  CH4_COM_GAS,CH4_TBA,CH4_RES_COA,CH4_RES_CRU,CH4_RES_OIL,CH4_RES_GAS,CH4_RES_BIO
                  N2O_CRO,N2O_LIV,N2O_FCA,N2O_FCA_COA,N2O_FCA_CRU,N2O_FCA_OIL,N2O_FCA_GAS,N2O_FCA_BIO,N2O_IPP,N2O_WAS,N2O_LAN,N2O_FUG,N2O_FCH_COA,N2O_FCH_CRU,N2O_FCH_OIL,N2O_FCH_GAS,N2O_FCH_BIO
                  SF6_MAG,SF6_EPS,SF6_FPD,SF6_SEM,SF6_TBA
                  HFC_ODS,HFC_FPD,HFC_SEM,
                  PFC_FPD,PFC_PHV,PFC_SEM,PFC_ALU,PFC_ELE,PFC_TBA
                  NF3_ELE,
                  CO2_AWB,CO2_FOB,CO2_FFF,CO2_GRB,CO2_IPP,CO2_OGF,CO2_PEB,CO2_SPA,CO2_WAS
                  CO2_TBA,N2O_TBA
/

ELEC/COA,OIP,GAP,WIN,SOL,HYD,NUC,OTH,BIO/
ITG annee /0*5/
iin intervalle/100*110/
regT region/DEU,FRA,ITA,SPN,NLD,SWE,POL,BEL,EU1,EU2,EU3,EU4,EU5,EU6,GBR,USA,CHI,IND,RUS,CSA,MID,AFR,ASI,ROW/
pri primary factor /K,L,F/
Ag  agent /H,G,W/
tt  type of taxe /DT,IT,DUT,VATIO,VATINV,VATST,VATHC,VATGC/
T /1990*2100/
itw indirect taxes on labor /SS/

*GHGepa(Ghg) non CO2 GHG based on EPA /SF6_MAG,SF6_EPS,SF6_FPD,SF6_SEM,HFC_ODS,HFC_FPD,HFC_SOL,HFC_SEM,PFC_FPD,PFC_PHV,PFC_SEM,PFC_ALU,NF3_SEM,NF3_PHV,NF3_FPD/
*GHGceds(Ghg) non CO2 GHG based on CEDS /CH4_AGR,CH4_AWB,CH4_FOB,CH4_GRB,CH4_PEB,CH4_EHP,CH4_FFF,CH4_FPT,CH4_OGF,CH4_IND,CH4_NRT,CH4_RCO,CH4_REC,CH4_ROT,CH4_SPA,CH4_IPP,CH4_WAS
*                  N2O_CRO,N2O_LIV,N2O_FCA,N2O_FUG,N2O_IPP,N2O_WAS,N2O_OTH,CO2_AWB,CO2_FOB,CO2_FFF,CO2_GRB,CO2_IPP,CO2_OGF,CO2_PEB,CO2_SPA,CO2_WAS/


ghgch4(Ghg) CH4 emissions /CH4_RIC,CH4_AGR,CH4_AWB,CH4_FOB,CH4_GRB,CH4_PEB,CH4_EHP_COA,CH4_EHP_CRU,CH4_EHP_OIL,CH4_EHP_GAS,CH4_EHP_BIO,CH4_FPT_COA,CH4_FPT_CRU,CH4_FPT_OIL,CH4_FPT_GAS,CH4_OGF,CH4_IND_COA,CH4_IND_CRU,CH4_IND_OIL,CH4_IND_GAS
                  CH4_NRT_COA,CH4_NRT_CRU,CH4_NRT_OIL,CH4_NRT_GAS,CH4_RCO,CH4_REC,CH4_ROT_COA,CH4_ROT_CRU,CH4_ROT_OIL,CH4_ROT_GAS,CH4_IPP,CH4_WAS,CH4_OTH_COA,CH4_OTH_CRU,CH4_OTH_OIL,CH4_OTH_GAS,CH4_OTH_BIO,CH4_COM_COA,CH4_COM_CRU
                  CH4_COM_OIL,CH4_COM_BIO,CH4_COM_GAS,CH4_TBA,CH4_RES_COA,CH4_RES_CRU,CH4_RES_OIL,CH4_RES_GAS,CH4_RES_BIO/
ghgN2O(Ghg) N2O emissions /N2O_CRO,N2O_LIV,N2O_FCA,N2O_FCA_COA,N2O_FCA_CRU,N2O_FCA_OIL,N2O_FCA_GAS,N2O_FCA_BIO,N2O_IPP,N2O_WAS,N2O_LAN,N2O_FUG,N2O_FCH_COA,N2O_FCH_CRU,N2O_FCH_OIL,N2O_FCH_GAS,N2O_FCH_BIO/
ghgfluo(Ghg) Fluorinated emissions /SF6_MAG,SF6_EPS,SF6_FPD,SF6_SEM,SF6_TBA,HFC_ODS,HFC_FPD,HFC_SEM,PFC_FPD,PFC_PHV,PFC_SEM,PFC_ALU,PFC_ELE,PFC_TBA,NF3_ELE/
ghgco2(ghg)  CO2 emissions /CO2_AWB,CO2_FOB,CO2_FFF,CO2_GRB,CO2_IPP,CO2_OGF,CO2_PEB,CO2_SPA,CO2_WAS,CO2_TBA,N2O_TBA/

reg(regT) region/DEU,FRA,ITA,SPN,NLD,SWE,POL,BEL,EU1,EU2,EU3,EU4,EU5,EU6,GBR,USA,CHI,IND,RUS,CSA,MID,AFR,ASI,ROW/
regmrow(reg) reg minus row /DEU,FRA,ITA,SPN,NLD,SWE,POL,BEL,EU1,EU2,EU3,EU4,EU5,EU6,GBR,USA,CHI,IND,RUS,CSA,MID,AFR,ASI/
regeu(reg) EU regions /DEU,FRA,ITA,SPN,NLD,SWE,POL,BEL,EU1,EU2,EU3,EU4,EU5,EU6/
regmeu(reg) regions minus EU /GBR,USA,CHI,IND,RUS,CSA,MID,AFR,ASI,ROW/
regmeoil(reg) reg where elec from oil is constraint to decrease /DEU,FRA,ITA,SPN,NLD,SWE,POL,BEL,EU1,EU2,EU3,EU4,EU5,EU6,GBR,USA,CHI,IND,RUS,CSA,ASI,ROW/


ELECMHYDNUC(ELEC)/COA,OIP,GAP,WIN,SOL,OTH,BIO/

Sec sector /01,02,03,04,05,06,07,08,09,10,11,12,13/
Sece(sec)    energy sector /01,02,03,04,05,06,07/
Secem7(sec)  energy sector minus biofuel/01,02,03,04,05,06/
Secef(sece)    Fossil Fuel sector /01,02,03,04,06,07/
Secefm7(sece)  Fossil Fuel sector /01,02,03,04,06/
Secff(sec)   Sector including fix factor /01,02,03,07/
Secnf(sec)   Sector excluding fossil fuel sector /05,07,08,09,10,11,12,13/
Secrp(sec)   Refined petroleum sector/04/
Secm(sec)    material sector /07,08,09,10,11,12,13/
sectra(sec)  transport sector /10,11,12/
secotra(sec) material sector minus transport sector /07,08,09,13/
secoth(sec)  Secteur Other consumption/07,08,09,13/
secets(sec)  Secteur included in ETS /04,05,06,08/
secnets(sec) Sector not included in ETS /01,02,03,07,09,10,11,13/

alias(pro,sec,sp)
alias(secnf,secnf2)
alias(reg,rege,regf,regh,regi)
alias(ag,ag2)
alias(elec,elec2)
alias(Secem7,Secem7b)

scalar
iter
iterfin
crit
crit2
GWP_CH4
GWP_N2O
GWP_SF6
GWP_PFC
;

SET

 VARMAC/GDPZ,IMPZ,CONZ,GCVZ,INVZ,STVZ,EXPZ,GDPV,IMPV,CONV,GCVV,INVV,STVV,EXPV,
         PGDP,PIMP,PCON,PGCV,PINV,PSTV,PEXP,EXCH,RLTL,TSAV,CO2H,BALC,SAVG,SAVH,SAVW,SUR1,ENER,
         HENC,HENG,HENO,HENP,HENE,HENY,HENB,PHCT,HCTO,EETS,EESD,SPRI,TAXE,QUOT,ETSP,ESDP,TXGH
         HTRA,HRES,HOTH,PHTR,PRES,POTH,HTAP,HTAO,PTAP,PTAO,HTEV,HTIC,PHEV,PHIC,
         HREE,HREF,PESE,PESF,HR01,HR02,HR03,HR04,HP05,HR05,HR06,HR07,HT04,HT05,HT06,HT07,
         ST04,ST05,ST06,ST07,
         CARO,CARB,CARE,KMCO,KMCB,KMCE
         PERM
         APGE,DFOS,AFOS
         HRIC,HAGR,HAWB,HFOB,HGRB,HPEB,HFFF,HEHP,HFPT,HOGF,HIND,HNRT,HROT,HRCO,HRET,HCOM,HIPP,HWAS,
         NLIV,NCRO,NFCA,NFUG,NIPP,NWAS,NOTH,
         S6MG,SEPS,SFPD,SSEM,HODS,HFPD,HSEM,PELE,PFAL,NELE
         CAWD,CFOB,CFFF,CGRB,CIPP,COGF,CPEB,CSPA,COWA,NBIO,GHGT,CCSF,SCCS,CCSC,RSHA,HPUM,IPUM/




 VARSEC/YD,PY,PB,XD,PD,LAV,EMP,KAV,FF,PK,PF,INVV,PINV,EXP,PEX,IMP,PIMP,EN,ENF,PE,HCV,PHC,CO2,
       ENEC,ENEG,ENEO,ENEP,ENEE,ENEH,ENEB,ENTB,ENTE,ENTP
       QUOT/

 VARELEC /GENE,PRIC,CAPA,ENER,CO2P,PKEL,PEEL,KAVE,SCCS,DELE,TGKE,TGKA/
 ;
parameter ncol(Varsec)
/ YD 2,PY 2, PB 2,XD 2,PD 2,LAV 3,EMP 3,KAV 3,FF 2,PK 2,INVV 4,EXP 3,IMP 3,PIMP 4,EN 2,PE 2,HCV 3,PHC 3,CO2 2
  PF 2,PINV 4,PEX 3/



parameter
Sumelec(reg)
sumDRESEF(reg)
sumDRESEFI(sec,reg)

PEX_CC(T,sec,reg)
CONZ_CC(T,reg)
PGDP_CC(T,reg)
GDPZ_CC(T,reg)


SORTIEMAC(varmac,T,regT)
SORTIEELEC(varelec,elec,T,regT)
SORTIESEC(varsec,T,sec,regT)
SORTIEIO(pro,sec,T,regT)
SORTIEIOELEC(pro,elec,T,regT)

CCSSHARE(elec,reg)     share of CCS

TINV(pro,sec,reg)  Coefficient de passage investissement produit x secteur

APIMP(sec,reg)     Lambda parameter of CES import
CIMP(sec,rege,reg) Alpha  parameter of CES import
SIGMAI(sec,reg)    elasticity of CES  import


APY(sec,reg)       Lambda parameter of CES domestic prod and import
CX(sec,reg)        Alpha  parameter of CES domestic prod and import
SIGMAX(sec,reg)    elasticity of CES domestic prod and import

APPF(sec,reg)    Lambda parameter of CES domestic prod and fix factor
CPF(sec,reg)     Alpha parameter of CES domestic prod and fix factor
SIGMAPF(sec,reg) elasticity of CES domestic prod and fix factor

APPP(Sec,reg)    Lambda parameter of CES domestic prod and crude oil
CPP(Sec,reg)     Alpha parameter of CES domestic prod and crude oil
SIGMAPP(Sec,reg) elasticity of CES domestic prod and crude oil

APD(sec,reg)       Lambda parameter of CES domestic prod
DK(sec,reg)        Alpha parameter of CES domestic prod
DE(sec,reg)        Alpha parameter of CES domestic prod
DL(sec,reg)        Alpha parameter of CES domestic prod
DM(sec,reg)        Alpha parameter of CES domestic prod
SIGMA(sec,reg)     Elasticity parameter of CES domestic prod

TGXD(sec,reg)
TGFF(secff,reg)


TGK(sec,reg)       Technical progress on capital
TGKA(sec,reg)      anticipated Technical progress on capital
TGE(sec,reg)       Technical progress on energy
TGL(sec,reg)       Technical progress on labor
TGM(sec,reg)       Technical progress on material
TGTRA(sec,reg)     Technical progress of transport
TGOTRA(sec,reg)    Technical progress of material minus transport
TGGROWTH(reg,ITG)  GDP growth rate
TGLGROWTH(reg,ITG) Labor productivity
TGPF(reg,sec,ITG)  Technical progress on fix factor
TGKELEC(elec,ITG)  Technical progress on electricity power plant
TGGE(reg,ITG)      Technical pogress on energy
TGGE0508(reg,ITG)  Technical pogress on energy  sextor 05 to 08
TGGEHCTRAOEEV(ITG) Technical progress on EV cars fuel
TGGEHCTRAOQEV(ITG) Technical progress on EV cars cars
TGGEHCTRAOEIC(ITG) Technical progress on Internat Combustion cars fuel
TGGEHCTRAOEBI(ITG) Technical progress on Internat Combustion cars biofuel
TG_HEATPUMP(reg)   Technical progress on heat pump
TGGEHCRESE(reg,ITG) Technical progress on residential energy

GETRAOQEV(sec,reg) Technical progress capital electric vehicles
GETRAOQHY(sec,reg) Technical progress capital electric vehicles
GETRAOQIC(sec,reg) Technical progress capital standard vehicles
GETRAOEHY(sec,reg)  Technical progress energy hydrogen vehicles
GETRAOEEV(sec,reg)  Technical progress energy electric vehicles
GEFUELIC07(sec,reg) Technical progress energy biofuel vehicles
GEFUELIC04(sec,reg) Technical progress energy oil vehicles
GEFUELIC(sec,reg)   Technical progress energy IC vehicles

APE(sec,reg)       Lambda parameter of CES energy
DEPR(pro,sec,reg) Alpha parameter of CES energy
DEPR_HEATPUMP(sec,reg) Heatpump Alpha parameter of CES energy
DEPR0(pro,sec,reg) Alpha parameter of CES energy
SIGMAE(sec,reg)    Elasticity parameter of CES energy

APIOHEATPUMP(sec,reg) Lambda parameter of CES heat pump IO
SIGMAIOHEATPUMP(sec,reg) Elasticity parameter of CES heat pump IO
DIOHEATPUMP_05(sec,reg) Alpha parameter of CES heat pump IO

GEPR(pro,sec,reg) Technical progress on individual energy
TGENF(sec,reg)     Technical progress on fossil fuel energy
GEPR_HEATPUMP(sec,reg) Technical progress on heat pump

APEF(sec,reg)      Lambda parameter of CES fossil fuel energy
SIGMAEF(sec,reg)   Elasticity of CES fossil fuel energy

APMM(sec,reg)      Lambda parameter of  material
CMM(sec,reg)       Alpha parameter of CES  material
SIGMAMM(sec,reg)   Elasticity parameter of CES  material

APTRA(sec,reg)      Lambda parameter of  transport
DTRA(sec,reg)       Alpha parameter of  transport
SIGMATRA(sec,reg)   Elasticity parameter of CES  transport

APTRANAE(sec,reg)  Lambda parameter of  transport excluding air transport
DTRANAE(sec,reg)   Alpha parameter of  transport excluding air transport
SIGMATRANAE(sec,reg) Elasticity parameter of CES  transport excluding air transport

APTRAP(sec,reg)     Lambda parameter of  purchased transport
SIGMATRAP(sec,reg)  Elasticity parameter of CES purchased transport

APTRAO(sec,reg)     Lambda parameter of  own transport
SIGMATRAO(sec,reg)  Elasticity parameter of CES own transport
DTRAOEV(sec,reg)    Alpha parameter of CES own transport
DTRAOHY(sec,reg)    Alpha parameter of CES own transport

*DTRAO(sec,reg)      Alpha parameter of own transport

APTRAEV(sec,reg)    Lambda parameter of biofuel electric vehicles
DTRAEV(sec,reg)     alpha parameter of electric vehicles
SIGMATRAOEV(sec,reg) Elasticity parameter of CES electric vehicle

APTRAHY(sec,reg)    Lambda parameter of hydrogen vehicles
DTRAHY(sec,reg)     alpha parameter of hydrogen vehicles
SIGMATRAOHY(sec,reg) Elasticity parameter of CES hydrogen vehicle

APTRAIC(sec,reg)    Lambda parameter of biofuel standard vehicles
DTRAIC(sec,reg)     alpha parameter of standard vehicles
SIGMATRAOIC(sec,reg) Elasticity parameter of CES standard vehicles

APFUELIC(sec,reg)  Lambda parameter CES fuel IC car
DFUELIC(sec,reg)   Alpha parameter of fuel IC car
SIGMAFUELIC(sec,reg)  Elasticity of CES fuel IC car

GMPR(pro,sec,reg) Technical progress on individual material
DMPR(pro,sec,reg) Alpha parameter of CES individual material

APM(sec,reg)       Lambda parameter of CES material minus transport
SIGMAM(sec,reg)    Elasticity of CES material minus transport

CIMPMTRA(sectra,sec,rege,reg) Coefficient share of Transport margin of Import
TIMPMTRA(sectra,sec,reg,rege,regf) transfert matrix between transport margin of import and transport margin export

TXTVAIOPOWER(elec,sec,reg)  tax on intermediaite consumption by power plant
TXTVAIO(pro,sec,reg) tax on intermediaite consumption
TXTVAGC(sec,reg)     Tax on government consumption
TXTVAIN(pro,sec,reg) tax on investment
TXTVAHC(sec,reg)     tax on household consumption
TXTVAST(sec,reg)     tax on stock variation
TXTVAEX(sec,reg)     Tax on export
TXIT(sec,reg)        indirect taxes rate
TXW(itw,sec,reg)     employers social contribution
TXWPOWER(itw,elec,reg)   employers social contribution on power plant

TXDUT(sec,reg,rege)  rate of duties
DTXTVAHC(sec,reg)    link between carbon tax and incremental value of price
DTXTVAIO(pro,sec,reg) link between carbon tax and incremental value of price
DTXTVAIOPOWER(elec,pro,reg) link between carbon tax and incremental value of price

TXFSESE_H_G(reg)   rate of transfert between agent
TXFSESE_H_W(reg)   rate of transfert between agent

APHCDTOT(reg)      Lambda parameter CES Household
DRES(reg)          Alpha parameter CES Household
DTRN(reg)          Alpha parameter CES Household
DOTH(reg)          Alpha parameter CES Household
SIGMAHC(reg)       Elasticity of CES Household

APHCOTH(reg)       Lambda parameter CES Household
DOTHV(sec,reg)     Alpha parameter CES Household
SIGMAHOTH(reg)     Elasticity of CES Household

APHCTRA(reg)       Lambda parameter CES Household
DHTRA(reg)         Alpha parameter CES Household
SIGMAHTRA(reg)     Elasticity of CES Household

APHCRES(reg)       Lambda parameter CES Household
DRESE(reg)         Alpha parameter CES Household
SIGMAHRES(reg)     Elasticity of CES Household

APHCRESEF(reg)     Lambda parameter CES Household
DRESEF(sec,reg)    Alpha parameter CES Household
SIGMAHRESEF(reg)   Elasticity of CES Household

APHCHEATPUMP(reg)  Lambda parameter CES Household Heat Pump
DHEATPUMP_05(reg)  Alpha parameter CES Household Heat Pump
SIGMAHEATPUMP(reg) Elasticity of Household Heat Pump

APHCRESE(reg)      Lambda parameter CES Household
DRESEE(reg)        Alpha parameter CES Household
SIGMAHRESE(reg)    Elasticity of CES Household

APHCTRNAE(reg)      lambda parameter of transport excluding air transport
DHTRNAE(reg)        Alpha parameter of  transport excluding air transport
SIGMAHTRNAE(reg)    Elasticity parameter of CES  transport excluding air transport

APHCTRAO(reg)      Lambda parameter CES Household
DHTRAOEV(reg)      Alpha parameter of electric vehicle
SIGMAHTRAO(reg)    Elasticity of CES Household

APHCFUELIC(reg)    Lambda parameter CES biofuel Oil
DHFUELIC(reg)      Alpha parameter CES biofuel Oil
SIGMAHFUELIC(reg)  Elasticity of CES biofuel Oil

APHCTRAEV(reg)     Lambda parameter CES Household electric car
DHTRAEV(reg)       Alpha parameter of Household electric car
SIGMAHTRAOEV(reg)  Elasticity of CES Household electric car

APHCTRAIC(reg)     Lambda parameter CES Household Biofuel car
DHTRAIC(reg)       Alpha parameter of Household Biofuel car
SIGMAHTRAOIC(reg)  Elasticity of CES Household Biofuel car

APHCTRAP(reg)      Lambda parameter CES Household
DTRAP(sec,reg)     Alpha parameter CES Household
SIGMAHTRAP(reg)    Elasticity of CES Household

DEPRPOWER(elec,pro,reg) Alpha parameter of CES intermediaite consumption by power plant

SIGMAGEN(reg)      Elasticity of CES electricity generation

TGCV(sec,reg)      parameter of government consumption
ALPD(sec,reg)      paramater
ALKAVA(sec,reg)    paramater
ERRCK(sec,reg)     dynamic adjustment factor
DECL(sec,reg)      rate of decay
ERRINVV(sec,reg)   dynamic adjustment factor

CTEP(sec,sec,reg)  Link between intermediaite consumption and energy consumption in toe
CTEPH(sec,reg)     Link between Household consumption and energy consumption in toe
CTEPH07(reg)       Link between Household consumption and energy consumption in toe for Biomass residential
CTEPG(sec,reg)     Link between Government consumption and energy consumption in toe
CTEPTRA(sec,sec,reg) Link between intermediaite consumption and energy consumption in toe
CO2CONTENT(secef)   Carbon content

CO2CONTENTIO(sece,sec,reg)         CO2 content of intermediate consumption
CO2CONTENTH(sece,reg)              CO2 content of household consumption
CO2CONTENTG(sece,reg)              CO2 content of government consumption

PEXB(sec,reg)          Price of exports for base year
PHCB(sec,reg)          Price of consumption for base year
PINVB(sec,reg)         price of investment for base year
PBB(sec,reg)           Base price for base year
PIMPB(sec,reg)         Price of import for base year
PGCB(sec,reg)          Price of government consumption for base year
EC(reg)                deficit of trade balance
EC0(reg)               deficit of trade balance

XDA(sec,reg)            anticipated Domestic production
XDM1(sec,reg)           Domestic production t-1
XDM2(sec,reg)           Domestic production t-2
KAVC(sec,reg)           fix capital
KAVCM1(sec,reg)         fix capital t-1
INVVM1(sec,reg)         investment by sector
GCV(sec,reg)            government consumption
GCVTOT(reg)             Total government consumption
STV(sec,reg)            Stock variation
HC(reg)
POP(T,reg)          population

TGHCRES(reg)        Technical progress
TGHCTRA(reg)        Technical progress
TGHCOTH(reg)        Technical progress
GEHCOTHV(sec,reg)   Technical progress
GEHCTRAP(reg)       Technical progress
GEHCTRAO(reg)       Technical progress
GEHCRESEE(sec,reg)  Technical progress
GEHCRESE(reg)       Technical progress
GEHCRESQ(reg)       Technical progress
GEHCRESEF(reg)      Technical progress
GEHCTRAPP(sec,reg)  Technical progress
GEHCTRAOQ(reg)      Technical progress
*GEHCTRAOE(reg)      Technical progress
GEHCTRAOEE(sec,reg) Technical progress
GEHCTRNAE(reg)      Technical progress
GEHCTRAOEEV(reg)    Technical progress
GEHCTRAOEIC(reg)    Technical progress
GEHCTRAOQEV(reg)    Technical progress
GEHCTRAOQIC(reg)    Technical progress
GEHFUELIC(reg)      Technical progress
GEHFUELIC04(reg)    Technical progress
GEHFUELIC07(reg)    Technical progress
GETRAOFUELIC(sec,reg) Technical progress
GEHCRESEE_HEATPUMP(reg) Technical progress

DECLELECT(ELEC,reg) Decay rate of generation of power plant used in optimal capital
CO2CONTENTIOPOWER(elec,sece,reg)    CO2 content per toe by power plant
APELEINV(ELEC,reg)   Parameter of price of power plant investment
APELEINV0(ELEC,reg)  Parameter of price of power plant investment
ALELECPD(ELEC,reg)  Parameter

SIGMAELE(elec,reg)  elasticity parameter
APELEC(elec,reg)    Lambda parameter CES Power Plant
DKAV(elec,reg)      alpha parameter capital CES power plant
DLAV(elec,reg)      alpha parameter labor CES power plant
DENMA(elec,reg)     alpha parameter capital CES power plant
TGKE(elec,reg)      Technical progress associated to power plant capital
TGKEA(elec,reg)     anticipated Technical progress on capital

APGEN(reg)          Lambda parameter electricity generation
DELECFOSS(reg)      Alpha parameter electricity generation
DELEC(elec,reg)     Alpha parameter electricity generation
SIGMAGEN(reg)       Sigma electricty generation

APELECFOSS(reg)     Lambda parameter electricity generation
SIGMAFOSS(reg)      Sigma fossil electricty generation

SIGMAXDPGEN(reg)    elasticity parameter XD vs GEN
APXDPGEN(reg)       Lambda parameter XD vs GEN
DGEN(reg)           Alpha parameter XD vs GEN

ELECKAVC(elec,reg)  Fix capital of power plant
ELECKAVCM1(elec,reg) Capital of power plant in t-1
ALELECKAVA(elec,reg) paramater
ELECGENA(elec,reg)  Anticipated generation of power plant
PELECRM1(elec,reg)  Price PELECR year-1
PELECRM2(elec,reg)  Price PELECR year-2
PELECA(elec,reg)    Price of electricity power plant
PELECM1(elec,reg)   Price PELEC year-1
PELECM2(elec,reg)   Price PELEC year-2
GENMHYDNUCM2(reg)   GEN year-1
GENMHYDNUCM1(reg)   GEN year-2
GENMHYDNUCA(reg)    Anticipated GENMHYDNUC
PGENMHYDNUCA(reg)   anticipated price
GENFOSSA(reg)       Anticipated GENFOSS
PELECN(ELEC,reg)    Anticipated PELEC price
PGENFOSSA(reg)      Anticipated PGENFOSS price
PGENA(reg)          Anticipated
CTEPOWER(elec,sec,reg) Link between intermediaite consumption and Carbon emission
AVAILABITY(elec,reg,T)  Availability rate power plant
ALCAPACITY(elec,reg)    Coefficient linking capacity in GWe to ELECKAVC
ELECKAVMAX(elec,reg)    Maximum capacity


APDT(T,sec,reg)
DLT(T,sec,reg)
DKT(T,sec,reg)
DET(T,sec,reg)
DMT(T,sec,reg)
APET(T,sec,reg)
APEFT(T,sec,reg)
DEPRT(T,sece,sec,reg)

SIGMAT(T,sec,reg)
SIGMAET(T,sec,reg)
SIGMAEFT(T,sec,reg)

SIGMAHCT(T,reg)
APHCDTOTT(T,reg)
DREST(T,reg)
DTRNT(T,reg)
DOTHT(T,reg)

SIGMAHOTHT(T,reg)

SIGMAHREST(T,reg)
APHCREST(T,reg)
DRESET(T,reg)

SIGMAHRESET(T,reg)
APHCRESET(T,reg)
DRESEET(T,reg)

SIGMAHTRAT(T,reg)
APHCTRAT(T,reg)
DHTRAT(T,reg)

ELECGENDELTANUC(reg)
ELECKAVCDELTANUC(reg)

MAXPOTENTIAL(REG,T,ELEC)   Maximun Potential of electricity power plant

PFMIN(secff,reg)    Minimum  price of fix factor
EUETSPRICE_EXO      Exogenous ETS price
CO2QEUETS           Constraint on EU ETS market
CO2QEUESR(reg)      Constraint on EU ESR market
CO2QCHIETS          Constraint on Chinese ETS market
CO2Q(reg)           CO2 limit
CCSSHARE(elec,reg)  share of CCS
CARBONCREDIT(elec,reg)  carbon credit for biofuel
TSUB(elec,reg)      subsidy on electricity generation
CHIETSPRICE2030     ETS price in China Year 2030
TAXECO2CCS(reg)     TAXECO2 used for CCS computation
CURRENTPOLICIES(REG,T,ELEC)  Assumptions on the developement of power plants
FABAT(t,reg,ghg,iin) Mac of non-CO2 GHG emissions EPA source

INVCC(reg)          Investment by sector
SAVECC_G(reg)       Constraint of government saving

TAXECO2M(reg)
TAXECO2M4(reg)
FA(ghg,reg)             function of abatement  value A
FB(ghg,reg)             function of abatement  value B
COUTUABAT(ghg,sec,reg)  unit cost of abatement
IORD(iin)
IA(reg)
IB(reg)
GWP(ghg)

GHGQ(reg)           Constraint on total GHG emissions
CARBONCREDIT(elec,reg)    carbon credit for biofuel
ABAT(ghg,reg)      level of abatement for ghg emission

SAVE_G_CC(T,reg)
FF_CC(T,secff,reg)
INVV_CC(T,reg)
TAXECO2_CC(T,reg)

ACXDT(T,ghg,sec,reg)      Coefficient for ghg emissions
AELECGENT(T,ghg,elec,reg) Coefficient for ghg emissions
ACIOT(T,ghg,pro,sec,reg)  Coefficient for ghg emissions
AHCVT(T,ghg,sec,reg)      Coefficient for ghg emissions

AELECGEN(ghg,elec,reg) Coefficient for non carbon ghg emission
ACXD(ghg,sec,reg)      Coefficient for non carbon ghg emission
ACIO(Ghg,pro,sec,reg)  Coefficient for non carbon ghg emission
ACHCV(ghg,sec,reg)     Coefficient for non carbon ghg emission

HCDTOT_CC(T,reg)       Households consumption in the baseline scenario
PHCDTOT_CC(T,reg)      Price of Households consumption in the baseline scenario

TAXECO2INIT_CC(reg)    Initial CO2 tax before fit for 55

SHARECAREV(reg,T)       Share of electric cars
SHARECARBIO(reg,T)      Share of biofuel in essence and gazoline
SHARE_ETS_AVIATION(reg) Share of emission from aviation included in ETS
KMPERTOE(sec,reg)       Kilometer per 1 toe
CCSGROWTH(reg,elec)     CCS technological paramater
testghg
ADD_CCS_COST0(elec,reg)   Additional cost of CCS (capital+o&m+transport&storage)
CHECKE(sec,reg)          Total uses
CHECKR(sec,reg)          Total resources
CK0(sec,reg)             cost of capital
CO20(reg)                CO2 emission
DRESEF_HEATPUMP(reg)     Alpha paremeter of heat pump in nesting households
DEPR0(pro,sec,reg)       Alpha parameter of CES energy
DRESEE0(reg)             Alpha parameter CES Household
DE0(sec,reg)             Alpha parameter of CES domestic prod
DL0(sec,reg)             Alpha parameter of CES domestic prod
DM0(sec,reg)             Alpha parameter of CES domestic prod
DK0(sec,reg)             Alpha parameter of CES domestic prod
SIGMA0(sec,reg)          Elasticity parameter of CES domestic prod
SIGMAE0(sec,reg)         Elasticity parameter of CES energy
SIGMAEF0(sec,reg)        Elasticity of CES fossil fuel energy
SIGMAHC0(reg)            Elasticity of CES Household
DUT0B(sec,reg)           New Duties
DELEC0(elec,reg)         Alpha parameter electricity generation
DUTI(reg)
DELECFOSS0(reg)          Alpha parameter electricity generation
ELECGEN0(elec,reg)       Generation of power plant ELE in TWh
ELECGENA0(elec,reg)      Anticipated generation of power plant
ELECKAV0(elec,reg)       Capital of power plant ELE in GWe
ELECKAV0(elec,reg)       Capital of power plant ELE in GWe
ELECKAVA0(elec,reg)      Anticipation of capital of power plant
ELECKAVC0(elec,reg)      Fix capital of power plant
ELECKAVCM10(elec,reg)    Capital of power plant in t-1
ELECKAVO0(elec,reg)      Optimal capital in power plant
EN0(sec,reg)             Energy
ENMAPOWER0(elec,reg)     Energy and material intermediate consumption by power plant
ENF0(sec,reg)            Fossil fuel energy
ERR(sec,reg)             diff between uses and resources
EX0(reg)                 exchange rate
EXPO0(sec,reg)           Export
EXPOP0(sec,reg)          Export
FF0(sec,REG)             Land and Natural Resouces
FGRS0(tt,ag,reg)         Taxes
FSEFA0(ag,pri,reg)       income coming from primary factor
FSESE0_H_G(reg)          Transfert between households and government
FSESE0_H_W(reg)          Transfert between households and rest of the world
FUELIC0(sec,reg)         Fuel IC vehicles
GAPRICEHEATPUMP(reg)     Price gap of heat pump with respect to gas boilers households
GAPRICEHEATPUMPIO(sec,reg) Price gap of heat pump with respect to gas boilers IO
GCV0(sec,reg)            government consumption
GCVTOT0(reg)             Total government consumption
GEN0(reg)                Total electricity generation
GENFOSS0(reg)            Electricity generation from fossil fuel power plant
GENMHYDNUC0(reg)         Total electricity generation - hydro and nuclear electricity generation
GENMHYDNUCM10(reg)       GEN year-2
GENMHYDNUCM20(reg)       GEN year-1
HCDTOT0(reg)             Total government consumption
HCOTH0(reg)              Other consumption
HCOTRAO0(reg)            Own transport consumption car with biofuel and standard car
HCRES0(reg)              Residential consumption
HCRESE0(reg)             Energy consumption for residential purpose
HCRESEF0(reg)            Fossil Energy consumption for residential purpose
HCTRA0(reg)              Transport consumption
HCTRAEV0(reg)            Own transport consumption electric car
HCTRAIC0(reg)            Own transport consumption standard car
HCTRAO0(reg)             Own transport consumption
HCTRAOE0(reg)            Energy consumption for own transport consumption
HCTRAP0(reg)             Purchased transport consumption
HCTRNAE0(reg)            Transport without air transport
HCV0(sec,REG)            Household consumption
HCVHEATPUMP0(reg)        Energy delivered by heat pumps in US $ households
HCVHEATPUMP0_05(reg)     Electricity used heat pumps in US $ households
HCVHEATPUMP0_13(reg)     Capital component of heat pumps in US $ households
IMPMTRA0(sectra,sec,regh,reg)  Transport linked to import
IMPO0(sec,reg)           Import including transport margin
IMPOR0(sec,rege,reg)     Import including transport margin
IMPTRA0(sectra)          World transport
INVPVP0(pro,reg)         Investment in product
INVV0(sec,reg)           investment by sector
INVVM10(sec,reg)         investment by sector
IOV0(sec,pro,reg)        Intermediate consumption
IOVHEATPUMP0(sec,reg)    Energy delivered by heat pumps in US $ IO
IOVHEATPUMP0_05(sec,reg) Electricity used heat pumps in US $ IO
IOVHEATPUMP0_13(sec,reg) Capital component of heat pumps in US $ IO
KAV0(sec,reg)            Capital
KAVA0(sec,reg)           anticipated capital
KAVC0(sec,reg)           fix capital
KAVCM10(sec,reg)         fix capital t-1
KAVO0(sec,reg)           optimal capital
KTOT0(reg)               Total capital
LAV0(sec,REG)            Labor
LAVPOWER0(elec,reg)      Labor in  power plant
MA0(sec,reg)             Material
NSUP0(reg)               supply of labor
OTRA0(sec,reg)           Intermediaite minus transport
PB0(sec,reg)             Base price
PD0(sec,reg)             Price of domestic production
PDPF0(sec,reg)           Price of domestic production for fossil fuel
PDPGEN0(reg)             Price of electricity
PDPP0(sec,reg)           Price of domestic production for petroleum product
PDR0(sec,reg)            price of ratio PD on PINV
PDRA0(sec,reg)           anticipated price of PDR
PDRM10(sec,reg)          anticipated price of PDR t-1
PDRM20(sec,reg)          anticipated price of PDR t-2
PE0(sec,reg)             Price of energy
PEF0(sec,reg)            Price of fossil fuel energy
PELEC0(elec,reg)         Price of electricity power plant elec
PELECENMA0(elec,reg)     Price of material and energy of power plant elec
PELECKAV0(elec,reg)      Price of capital of power plant elec
PELECR0(elec,reg)        Price PELEC divided by
PELECRA0(elec,reg)       Anticipated price of electricity
PELECRM10(elec,reg)      Price PELECR year-1
PELECRM20(elec,reg)      Price PELECR year-2
PEX0(sec,reg)            Price of exports
PF0(secff,reg)           price of fix factor
PFUELIC0(sec,reg)        Price fule IC cars
PGC0(sec,reg)            Price of government consumption
PGEN0(reg)               Price of electricity generation
PGENFOSS0(reg)           Price of fossil electricity generation
PGENMHYDNUC0(reg)        price of total electricity generation - hydro and nuclear electricity generation
PHC0(sec,reg)            Price of consumption
PHCDTOT0(reg)            Price of consumption
PHCFUELIC0(reg)          Price of fuel for standard car
PHCHEATPUMP0(reg)        Price Heat pump households
PHCOTH0(reg)             Price other consumption
PHCOTRAO0(reg)           Own transport consumption car with biofuel and standard car
PHCRES0(reg)             Price residential consumption
PHCRESE0(reg)            Price of energy consumption for residential purpose
PHCRESEF0(reg)           Price of fossil energy consumption for residential purpose
PHCTRA0(reg)             Price transport consumption
PHCTRAEV0(reg)           Price Own transport consumption electric car
PHCTRAIC0(reg)           Price Own transport consumption standard car
PHCTRAO0(reg)            Price of own transport consumption
PHCTRAO0(reg)            Price of own transport consumption
PHCTRAOE0(reg)           Price of energy consumption for own transport consumption
PHCTRAP0(reg)            Price of purchased transport consumption
PHCTRAP0(reg)            Price of purchased transport consumption
PHCTRNAE0(reg)           Price of Transport without air transport
PIBVA0(reg)              PIB en valeur
PIBVO0(reg)              PIB en volume
PIMP0(sec,reg)           Price of import
PIMPR0(sec,rege,reg)     Price of import for country reg coming from contry rege
PINV0(sec,reg)           price of investment
PIO0(pro,sec,reg)        Price of intermediaite consumption
PIOHEATPUMP0(sec,reg)    Price Heat pump IO
PK0(sec,reg)             Rental price of capital
PL0(sec,reg)             Price of labor
PM0(sec,reg)             Price of material
POTRA0(sec,reg)          Price of intermediaite  minus transport
PTRA0(sec,reg)           Price of transport
PTRAEV0(sec,reg)         Own transport consumption electric car
PTRAHY0(sec,reg)         Own transport consumption hydrogen car
PTRAIC0(sec,reg)         Own transport consumption standard car
PTRANAE0(sec,reg)        Price of Transport excluding air transport
PTRAO0(sec,reg)          Price of own transport
PTRAP0(sec,reg)          Price of purchased transport
PY0(sec,reg)             Price of production
QUOTANET0(reg)           net supply of permits
RLTL0(reg)               interest rate
SAVE0(ag,reg)            saving
STV0(sec,reg)            Stock variation
TAXECO20(reg)            Carbon tax
TIMPMTRA0(sec,regf)      variable
TRA0(sec,reg)            Transport
TRAEV0(sec,reg)          Own transport consumption electric car
TRAHY0(sec,reg)          Own transport consumption hydrogen car
TRAIC0(sec,reg)          Own transport consumption standard car
TRANAE0(sec,reg)         Transport excluding air transport
TRAO0(sec,reg)           Own Transport
TRAP0(sec,reg)           Purchased Transport
TSAVE0(reg)              rate of saving
TXDUT1(sec,reg,rege)     Initial rate of duty
TXFGRS0_H(reg)           Rate of direct tax
VATSTV0(sec,reg)         Tax on stock variation
W0(reg)                  wage
XD0(sec,reg)             Domestic production
XDA0(sec,reg)            anticipated Domestic production
XDM10(sec,reg)           Domestic production t-1
XDM20(sec,reg)           Domestic production t-2
XDPF0(sec,reg)           Domestic production including fix factor
XDPGEN0(reg)             Production of electricity
XDPP0(sec,reg)           Domestic production including crude oil
YD0(sec,reg)             Production
growth0(reg)             growth rate
;

Variable

CHIETSPRICE             Chinese ETS price
CO2(reg)                CO2 Emissions
EGHG(ghg,reg)           Non Carbon GHG emissions
ELECGEN(elec,reg)       Generation of power plant ELE in TWh
ELECKAV(elec,reg)       Capital of power plant ELE in GWe
ELECKAVA(elec,reg)      Anticipation of capital of power plant
ELECKAVO(elec,reg)      Optimal capital in power plant
EN(sec,reg)             Energy
ENF(sec,reg)            Fossil fuel energy
ENMAPOWER(elec,reg)     Energy and material intermediate consumption by power plant
EUETSPRICE              EU ETS price
EUETSPRICE2             EU ETS price
EX(reg)                 exchange rate
EXPOP(sec,reg)          Export
FF(secff,reg)           Fix factor
FFS(secff,reg)          Supply of fix factor
FGRS_DT_H(reg)          taxes
FGRS_DUT_G(reg)         taxes
FGRS_IT_G(reg)          taxes
FGRS_VATGC_G(reg)       taxes
FGRS_VATHC_G(reg)       taxes
FGRS_VATINV_G(reg)      taxes
FGRS_VATIO_G(reg)       taxes
FGRS_VATST_G(reg)       taxes
FSEFA_G_L(reg)          income coming from primary factor
FSEFA_H_F(reg)          income coming from primary factor
FSEFA_H_K(reg)          income coming from primary factor
FSEFA_H_L(reg)          income coming from primary factor
FSESE_H_G(reg)          transfert between agent
FSESE_H_W(reg)          transfert between agent from Household to ROW
FUELIC(sec,reg)         Fuel IC vehicles
GEN(reg)                Total electricity generation
GENFOSS(reg)            Electricity generation from fossil fuel power plant
GENMHYDNUC(reg)         Total electricity generation - hydro and nuclear electricity generation
GHGT(reg)               total GHG emissions
HCDTOT(reg)             Total household consumption
HCOTH(reg)              Other consumption
HCRES(reg)              Residential consumption
HCRESE(reg)             Energy consumption for residential purpose
HCRESEF(reg)            Fossil Energy consumption for residential purpose
HCTRA(reg)              Transport consumption
HCTRAEV(reg)            Own transport consumption electric car
HCTRAIC(reg)            Own transport consumption standard car
HCTRAO(reg)             Own transport consumption
HCTRAOE(reg)            Energy consumption for own transport consumption
HCTRAP(reg)             Purchased transport consumption
HCTRNAE(reg)            Transport without air transport
HCV(sec,reg)            Household consumption
HCVHEATPUMP(reg)        Energy delivered by heat pumps in US $
HFUELIC(reg)            blended oil and biofuel
IMPO(sec,reg)           Import including transport margin
IMPOR(sec,rege,reg)     import from country rege to country reg
IMPTRA(sec)             World Transport
INVPVP(pro,reg)         investment in product
INVV(sec,reg)           investment by sector
INVVELEC(elec,reg)      Investment in power plant
IOV(sec,pro,reg)        Intermediate consumption
IOVHEATPUMP(sec,reg)    Energy delivered by heat pumps in US $ IO
KAV(sec,reg)            fix capital
KAVA(sec,reg)           anticipated capital
KAVO(sec,reg)           optimal capital
LAV(sec,reg)            Labor
LAVPOWER(elec,reg)      Labor in  power plant
MA(sec,reg)             Material
NSUP(reg)               supply of labor
OTRA(sec,reg)           Intermediaite minus transport
PB(sec,reg)             Base price
PD(sec,reg)             Price of domestic production
PDPF(sec,reg)           Price of domestic production for fossil fuel
PDPGEN(reg)             Price of electricity
PDPP(sec,reg)           Price of domestic production for petroleum product
PDR(sec,reg)            price of ratio PD on PINV
PDRA(sec,reg)           anticipated price of PDR
PDRM1(sec,reg)          anticipated price of PDR t-1
PDRM2(sec,reg)          anticipated price of PDR t-2
PE(sec,reg)             Price of energy
PEF(sec,reg)            Price of fossil fuel energy
PELEC(elec,reg)         Price of electricity power plant elec
PELECENMA(elec,reg)     Price of material and energy of power plant elec
PELECKAV(elec,reg)      Price of capital of power plant elec
PELECR(elec,reg)        Price PELEC divided by
PELECRA(elec,reg)       Anticipated price of electricity
PEX(sec,reg)            Price of exports
PF(secff,reg)           price of fix factor
PFUELIC(sec,reg)        Price fule IC cars
PGC(sec,reg)            Price of government consumption
PGEN(reg)               Price of electricity generation
PGEN(reg)               Price of electricity generation
PGENFOSS(reg)           Price of fossil electricity generation
PGENMHYDNUC(reg)        price of total electricity generation - hydro and nuclear electricity generation
PHC(sec,reg)            Price of consumption
PHCDTOT(reg)            Price of household consumption
PHCFUELIC(reg)          Price of fuel for standard car
PHCHEATPUMP(reg)        Price of Energy delivered by heat pumps in US $
PHCOTH(reg)             Price other consumption
PHCRES(reg)             Price residential consumption
PHCRESE(reg)            Price of energy consumption for residential purpose
PHCRESEF(reg)           Price of fossil energy consumption for residential purpose
PHCTRA(reg)             Price transport consumption
PHCTRAEV(reg)           Own transport consumption electric car
PHCTRAIC(reg)           Own transport consumption standard car
PHCTRAO(reg)            Price of own transport consumption
PHCTRAP(reg)            Price of purchased transport consumption
PHCTRNAE(reg)           Price of Transport without air transport
PIBVA(reg)              PIB en valeur
PIBVO(reg)              PIB en volume
PIMP(sec,reg)           Price of import
PIMPR(sec,rege,reg)     Price of import for country reg coming from contry rege
PINV(sec,reg)           price of investment
PIO(pro,sec,reg)        Price of intermediaite consumption
PIOHEATPUMP(sec,reg)    Price Heat pump IO
PK(sec,reg)             Rental price of capital
PL(sec,reg)             Price of labor
PM(sec,reg)             Price of material
PM(sec,reg)             Price of material
POTRA(sec,reg)          Price of intermediaite  minus transport
PPIBM1(reg)             GDP price t-1
PTRA(sec,reg)           Price of transport
PTRAEV(sec,reg)         Own transport consumption electric car
PTRAHY(sec,reg)         Own transport consumption hydrogen car
PTRAIC(sec,reg)         Own transport consumption standard car
PTRANAE(sec,reg)        Price of Transport excluding air transport
PTRAO(sec,reg)          Price of own transport
PTRAP(sec,reg)          Price of purchased transport
PY(sec,reg)             Price of production
QUOTANET(reg)           net supply of permits
RLTL(reg)               interest rate
SAVE_G(reg)             saving
SAVE_H(reg)             saving
TAXECO2(reg)            Carbon tax
TRA(sec,reg)            Transport
TRAEV(sec,reg)          Own transport consumption electric car
TRAHY(sec,reg)          Own transport consumption hydrogen car
TRAIC(sec,reg)          Own transport consumption standard car
TRANAE(sec,reg)         Transport excluding air transport
TRAO(sec,reg)           Own Transport
TRAP(sec,reg)           Purchased Transport
TSAVE(reg)              rate of saving
TXFGRS_H(reg)           rate of direct tax
W(reg)                  wage
XD(sec,reg)             Domestic production
XDPF(sec,reg)           Domestif production for fossil fuel
XDPGEN(reg)             Production of electricity
XDPP(sec,reg)               Domestif production for petroleum product
YD(sec,reg)             Production


Positive Variable
PY,PD,PIMP,PDPF,PDPP,PK,PL,PM,PE,PB,PEF,PIO,PM,PHC,PDR,PDRA,PDRM1,PDRM2,
PINV,RLTL,PGC,PEX,W,PF,
HCDTOT,INVPVP,INVV,YD,IOV,HCV,EXPOP,EXPO,IMPO,
XD,XDPP,XDPF,KAVO,KAVA,LAV,EN,MA,ENF,
FF,NSUP,CO2,PIMP,PIMPR,EX,PF,PELECKAV
EUETSPRICE,EUETSPRICE2,CHIETSPRICE,TAXECO2NEU
;



Equation
EEX(reg)
EPK(sec,reg)             PK
EPIBVA(reg)              PIB en valeur
EPIBVO(reg)              PIB en volume
EPIMP(sec,reg)           Price of import
EPIMPR(sec,rege,reg)     Price of import for region reg coming from region rege
EINVPVP(pro,reg)         Investment in product
EEXPOP(sec,reg)          Export
EYD(sec,reg)             Production
EPY(sec,reg)             Price of production
EXD(sec,reg)             Domestic production
EFF(secff,reg)           Demand of fix factor
EIMPO(sec,reg)           Import
EXDPF(secff,reg)         Domestif production for fossil fuel
EPDPF(secff,reg)         Price of domestic production for fossil fuel
EXDPP(secrp,reg)         Domestif production for petroleum product
EPDPP(secrp,reg)         Price of petroleum product
EPD(sec,reg)             Price of domestic production
EKAV(sec,reg)            Capital
ELAV(sec,reg)            Labor
EEN(sec,reg)             Energy
EMA(sec,reg)             Material
EPE(sec,reg)             Price of energy
EPEF(sec,reg)            Price of fossil energy
EENF(sec,reg)            Fossil fuel energy
EIOVHEATPUMP(sec,reg)    Energy delivered by heat pumps in US $ IO
EPIOHEATPUMP(sec,reg)    Price Heat pump IO
EIOV(pro,sec,reg)        Intermediaite conusmption
ETRA(sec,reg)            Transport
ETRANAE(sec,reg)         Transport excluding air transport
ETRAP(sec,reg)           Purchased Transport
ETRAO(sec,reg)           Own Transport
EOTRA(sec,reg)           Material minus transport
ETRAIC(sec,reg)          Own transport consumption standard car
EFUELIC(sec,reg)         Fuel used in IC cars
EPTRA(sec,reg)           Price of transport
EPTRAO(sec,reg)          Price of own transport
EPOTRA(sec,reg)          Price of material minus transport
EPTRAP(sec,reg)          Price of purchased transport
EPTRANAE(sec,reg)        Price of Transport excluding air transport
ETRAEV(sec,reg)          Own transport consumption electric car
ETRAHY(sec,reg)          Own transport consumption hydrogen car
ETRAIC(sec,reg)          Own transport consumption standard car
EPTRAEV(sec,reg)         Own transport consumption electric car
EPTRAHY(sec,reg)         Own transport consumption hydrogen car
EPTRAIC(sec,reg)         Own transport consumption standard car
EPFUELIC(sec,reg)        Price fule IC cars
EPM(sec,reg)             Price of material
EPDR(sec,reg)            price of ratio PD on PINV
EPDRA(sec,reg)           anticipated price of PDR
EKAVO(sec,reg)           optimal capital
EKAVA(sec,reg)           anticipated capital
EINVV(sec,reg)           investment by sector
EHCV(sec,reg)            Household consumption
EHCDTOT(reg)             Total household consumption
EPHCDTOT(reg)            Price of household consumption
EHCRES(reg)              Residential consumption
EHCTRA(reg)              Transport consumption
EHCOTH(reg)              Other consumption
EPHCOTH(reg)             Price other consumption
EPHCTRA(reg)             Price transport consumption
EPHCRES(reg)             Price residential consumption
EPHCRESE(reg)            Price of energy consumption for residential purpose
EPHCRESEF(reg)           Price of fossil energy consumption for residential purpose
EPHCHEATPUMP(reg)        Price of Energy delivered by heat pumps in US $
EHCVHEATPUMP(reg)        Energy delivered by heat pumps in US $
EHCRESEF(reg)            Fossil Energy consumption for residential purpose
EHCRESE(reg)             Energy consumption for residential purpose
EHCTRAP(reg)             Purchased transport consumption
EHCTRAO(reg)             Own transport consumption
EPHCTRAP(reg)            Price of purchased transport consumption
EPHCTRAO(reg)            Price of own transport consumption
EPHCTRNAE(reg)           Price of Transport without air transport
EHCTRNAE(reg)            Transport without air transport
EPHCTRNAE(reg)           Price of Transport without air transport
EPHCTRABI(reg)           Own transport consumption car with biofuel
EPHCTRAEV(reg)           Own transport consumption electric car
EHCTRAEV(reg)            Own transport consumption electric car
EPHCTRAIC(reg)           Own transport consumption standard car
EHCTRAIC(reg)            Own transport consumption standard car
EPHCFUELIC(reg)          Price of fuel for standard car
EHFUELIC(reg)            blended oil and biofuel

EPB(sec,reg)             Base price
EPHC(sec,reg)            Price of consumption
EPGC(sec,reg)            Price of government consumption
EPINV(sec,reg)           price of investment
EPEX(sec,reg)            price of exports
EPL(sec,reg)             price of labor
EFSEFA1(reg)             remuneration of labor
EFSEFA2(reg)             remuneration of capital
EFSEFA3(reg)             remuneration of fix factor
EFSEFA4(reg)             remuneration of labor to G
EFGRS1(reg)              Direct tax on household
EFSEFE1(reg)             transfert between government and households
EFSEFE2(reg)             transfert between households and ROW
EFGRS2(reg)              Tax
EFGRS3(reg)              duties
EFGRS4(reg)              VAT on households
EFGRS5(reg)              VAT on intermediate consumption
EFGRS52031(reg)          VAT on intermediate consumption
EFGRS6(reg)              VAT on stock variation
EFGRS7(reg)              VAT on investment
EFGRS8(reg)              VAT on Government
ESAVEG(reg)              Government saving
ESAVEH(reg)              Household saving
EIMPOR(sec,rege,reg)     import from country rege to country reg including transport margins
*EIMPMTRA(sectra,sec,reg,reg)  Transport margin og import
MRKL(reg)                market clearing of labor
MRKK(sec,reg)            market clearing of capital
MRKF(secff,reg)          market clearing of fix factor
MRCOM(reg)               market clearing exchange rate
EPIO(pro,sec,reg)        Price of intermediaite consumption
ECO2(reg)                CO2 emission
EEGHG(ghg,reg)           GHG emissions
EEEGHG(reg)              GHG emissions
EPF(secff,reg)           Price of fix factor in reference simulation
EPF2(secff,reg)          Price of fix factor in reference simulation
EIMPTRA(sectra)          World demand in transport for international trade
EGEN(reg)                Total electricity generation
EPGEN(reg)               Price of electricity generation
EGENMHYDNUC(reg)         Total electricity generation - hydro and nuclear electricity generation
EPGENMHYDNUC(reg)        price of total electricity generation - hydro and nuclear electricity generation
EPDPGEN(reg)             Price of electricity
EXDPGEN(reg)             Production of electricity
EELECGEN(elec,reg)       Electricity generation per power plant
EGENFOSS(reg)            Electricity generation from fossil fuel power plant
EPGENFOSS(reg)           Price of fossil electricity generation
EPELEC(elec,reg)         Price of electricity power plant elec
EPELEC2031(elec,reg)     Price of electricity power plant elec
ELAVPOWER(elec,reg)      Labor in  power plant
EELECKAV(elec,reg)       Capital in power plant
EENMAPOWER(elec,reg)     Energy and material intermediate consumption by power plant
EPELECENMA(elec,reg)     Price of material and energy of power plant elec
EPELECENMA2031(elec,reg) Price of material and energy of power plant elec
MRELECKAV(elec,reg)      Market clearing Capital of power plant
EELECKAVA(elec,reg)      Anticipation of capital of power plant
EELECKAVO(elec,reg)      Optimal capital in power plant
EPELECR(elec,reg)        Price PELECR
EPELECRA(elec,reg)       Anticipated price of PELECR
EPELECKAV(elec,reg)      Price of capital
EINVVELEC(elec,reg)      investment in power plant
EEUETSPRICE              EU ETS price
EEUETSPRICE2             EU ETS price
ECHIETSPRICE             Chinese ETS price
MREUETS                  Market clearing EU ETS market
MREUESR                  Market clearing EU ESR market
MRCHIETS                 Market clearing EU ETS market
ETAXECO2B(reg)           CO2 tax
ETAXECO2(reg)            CO2 tax
ETAXECO22030(reg)        CO2 tax
MRCO2(reg)               Constraint on emissions
MRGHG(reg)               Constraint on emissions
MRINV(reg)               market clearing total investment
MRSAVEG(reg)             market clearing govenment budget
ETSAVE(reg)              TSAVE(reg)
ETXFGRSPRED_H(reg)       TXFGRS_H.L
EQUOTANET(reg)           GHG Quota exchange
EQUOTANETB(reg)          GHG Quota exchange
;
$include energyprice

*$include datarefcclt_Diamond

$GDXIN Datarefcclt_Diamond.gdx
$LOAD SAVE_G_CC FF_CC INVV_CC HCDTOT_CC PHCDTOT_CC ACXDT AELECGENT ACIOT AHCVT GWP TAXECO2_CC
$GDXIN

$GDXIN GEMINI_PARAMETERS.gdx
$LOAD TINV APY CX SIGMAX APPF CPF SIGMAPF APPP CPP SIGMAPP APXDPGEN DGEN SIGMAXDPGEN APD DK DL DE DM SIGMA APE DEPR SIGMAE APEF APIOHEATPUMP DEPR_HEATPUMP SIGMAEF SIGMAIOHEATPUMP APM SIGMAM DMPR
$LOAD APTRAP SIGMATRAP APTRA DTRA SIGMATRA APTRAEV DTRAEV SIGMATRAOEV APTRAIC DTRAIC SIGMATRAOIC APTRAHY DTRAHY SIGMATRAOHY APFUELIC DFUELIC SIGMAFUELIC DIOHEATPUMP_05 ADD_CCS_COST0
$LOAD APMM CMM SIGMAMM APTRANAE DTRANAE SIGMATRANAE APTRAO DTRAOEV DTRAOHY SIGMATRAO ALPD ALKAVA APGEN DELECFOSS DELEC SIGMAGEN APELECFOSS SIGMAFOSS APELEC DLAV DKAV DENMA SIGMAELE
$LOAD APELEINV DEPRPOWER APHCDTOT DRES DTRN DOTH SIGMAHC APHCOTH DOTHV SIGMAHOTH APHCTRA DHTRA SIGMAHTRA APHCTRNAE DHTRNAE SIGMAHTRNAE APHCRES DRESE SIGMAHRES APHCRESE DRESEE SIGMAHRESE APHCRESEF
$LOAD DRESEF_HEATPUMP SIGMAHRESEF APHCHEATPUMP DHEATPUMP_05 SIGMAHEATPUMP APHCTRAEV DHTRAEV SIGMAHTRAOEV APHCTRAIC DHTRAIC SIGMAHTRAOIC APHCFUELIC DHFUELIC SIGMAHFUELIC TXFGRS_H TXFSESE_H_G TXFSESE_H_W
$LOAD CTEP CTEPH CTEPH07 CTEPG CTEPTRA CTEPOWER CO2CONTENTIO CO2CONTENTH CO2CONTENTG CO2CONTENTIOPOWER APIMP CIMP SIGMAI CIMPMTRA TIMPMTRA TIMPMTRA0 DTXTVAHC DTXTVAIO SHARE_ETS_AVIATION
$LOAD DELECFOSS0 DELEC0 DEPR0 DRESEE0  DE0 DK0 DL0 DM0 SIGMA0 SIGMAE0 SIGMAEF0 SIGMAHC0 AVAILABITY DECL ERRCK ERRINVV DRESEF APHCTRAP DTRAP SIGMAHTRAP APHCTRAO DHTRAOEV SIGMAHTRAO ALELECKAVA DTXTVAIOPOWER
$LOAD DECLELECT ALELECPD growth0 MAXPOTENTIAL KMPERTOE ALCAPACITY SHARECAREV SHARECARBIO TGCV POP CCSGROWTH CURRENTPOLICIES FABAT
$GDXIN

$GDXIN GEMINI_TG.gdx
$LOAD TGXD TGFF TGL TGE TGM TGK TGKA TGENF GEPR GMPR GEPR_HEATPUMP GETRAOQEV GETRAOQHY GETRAOQIC GETRAOEHY GEFUELIC04 GETRAOEEV GEFUELIC07 TGKE TGKEA TGHCRES TGHCTRA TGHCOTH GEHCOTHV GEHCTRNAE GEHCRESQ GEHCRESEE_HEATPUMP
$LOAD GEHCTRAOQEV GEHCTRAOQIC GEHFUELIC GEHFUELIC04 GEHFUELIC07 TGTRA TGOTRA TGKELEC TGLGROWTH TGGROWTH TGGE TGPF TGGE0508 TGGEHCTRAOEEV TGGEHCTRAOQEV TGGEHCTRAOEIC TGGEHCTRAOEBI TG_HEATPUMP TGGEHCRESE
$GDXIN

$GDXIN GEMINI_TAXATION.gdx
$LOAD TXTVAST TXTVAIO TXTVAIOPOWER TXTVAHC TXTVAGC TXTVAIN TXTVAEX TXW TXIT TXWPOWER TXDUT
$GDXIN





$GDXIN GEMINI_VARIABLES_2017.gdx
$LOAD PHCDTOT0 HCTRA0 HCOTH0 PHCOTH0 PHCTRA0 PHCRES0 PHCRESE0 PHCRESEF0 HCRESEF0 HCRESE0 HCTRAO0 HCTRAP0 PHCTRAP0 PHCTRAO0 HCRES0 PHCTRNAE0 HCTRNAE0 HCTRAEV0 HCTRAIC0 PHCTRAEV0 PHCTRAIC0 PHCFUELIC0
$LOAD HCDTOT0 INVV0 IMPTRA0 XD0 XDPP0 XDPF0 KAV0 KAVO0 KAVA0 LAV0 EN0 MA0 ENF0 TRA0 OTRA0 FF0 PD0 PDPF0 PDPP0 PL0 PM0 PE0 PB0 PEF0 PTRA0 PTRAP0 POTRA0 PTRAO0 PTRANAE0 PTRAHY0 PHC0 PDR0 PDRA0 PINV0
$LOAD RLTL0 PEX0 FSEFA0 FSESE0_H_G FSESE0_H_W FGRS0 SAVE0 CO20 PK0 PIMP0 EX0 HCVHEATPUMP0 PHCHEATPUMP0 PY0 YD0 HCV0 PF0 PTRAEV0 TRAEV0 PTRAIC0 TRAIC0 TRAHY0 PFUELIC0 FUELIC0 IOVHEATPUMP0 PIOHEATPUMP0
$LOAD IOV0 PIO0 IMPOR0 PIMPR0 INVPVP0 GCV0 PGC0 EXPOP IMPO0 ELECKAV0 PELECKAV0 ELECGEN0 W0 NSUP0 PDRM10 PDRM20 TSAVE0 TXFGRS0_H PIBVA0 PIBVO0 XDA0 XDM10 XDM20 KAVC0 KAVCM10 GCVTOT0 STV0 EXPOP0
$LOAD ELECKAVC0 GENFOSS0 PGENFOSS0 PDPGEN0 XDPGEN0 PGEN0 GEN0 GENMHYDNUC0 PGENMHYDNUC0 ELECKAVA0 ELECKAVO0 PELECRA0 PELECR0 PELECENMA0 ELECKAVCM10 PELECRM10 PELECRM20 ELECGENA0 PELEC0 LAVPOWER0
$LOAD GENMHYDNUCM20 GENMHYDNUCM10 PEXB PHCB PGCB PINVB PBB PIMPB TRANAE0 TRAP0 TRAO0 ENMAPOWER0
$GDXIN




EPIBVA(reg)..       PIBVA(reg) =E=   sum(sec,EXPOP(sec,reg)*PEX(sec,reg)+PHC(sec,reg)*HCV(sec,reg)+PGC(sec,reg)*GCV(sec,reg)
                             +INVV(sec,reg)*PINV(sec,reg)+STV(sec,reg)*PB(sec,reg)*(1+TXTVAST(sec,reg))-
                             IMPO(sec,reg)*PIMP(sec,reg))+sum(elec,INVVELEC(elec,reg))*PINV("05",reg);


EPIBVO(reg)..       PIBVO(reg) =E=  sum(sec,EXPOP(sec,reg)*PEXB(sec,reg)+PHCB(sec,reg)*HCV(sec,reg)+PGCB(sec,reg)*GCV(sec,reg)
                                     +INVV(sec,reg)*PINVB(sec,reg)+STV(sec,reg)*PBB(sec,reg)*(1+TXTVAST(sec,reg))-
                                     IMPO(sec,reg)*PIMPB(sec,reg))+sum(elec,INVVELEC(elec,reg))*PINVB("05",reg);


EINVPVP(pro,reg)$(INVPVP0(pro,reg) ne 0)..  INVPVP(pro,reg) =E= sum(sec,TINV(pro,sec,reg)*INVV(sec,reg))+sum(elec,TINV(pro,"05",reg)*INVVELEC(elec,reg));


EYD(sec,reg)..      YD(sec,reg) =E= sum(pro,IOV(sec,pro,reg))+HCV(sec,reg)+GCV(sec,reg)+EXPOP(sec,reg)+INVPVP(sec,reg)+STV(sec,reg)+
                    sum(elec,DEPRPOWER(elec,sec,reg)*ENMAPOWER(elec,reg));


EPY(sec,reg)$(YD0(sec,reg) ne 0)..       PY(sec,reg)=E= (APY(sec,reg)*(CX(sec,reg)*(PD(sec,reg)/TGXD(sec,reg))**(1-SIGMAX(sec,reg))
                    +(1-CX(sec,reg))*PIMP(sec,reg)**(1-SIGMAX(sec,reg)))**(1/(1-SIGMAX(sec,reg))))
                     $((ord(sec) gt 5) and (ord(sec) ne 7))+
                     (APY(sec,reg)*(CX(sec,reg)*PDPF(sec,reg)**(1-SIGMAX(sec,reg))
                    +(1-CX(sec,reg))*PIMP(sec,reg)**(1-SIGMAX(sec,reg)))**(1/(1-SIGMAX(sec,reg))))
                     $((ord(sec) le 3) or (ord(sec) eq 7))+
                     (APY(sec,reg)*(CX(sec,reg)*PDPP(sec,reg)**(1-SIGMAX(sec,reg))
                    +(1-CX(sec,reg))*PIMP(sec,reg)**(1-SIGMAX(sec,reg)))**(1/(1-SIGMAX(sec,reg))))
                     $(ord(sec) eq 4)+
                     (APY(sec,reg)*(CX(sec,reg)*PDPGEN(reg)**(1-SIGMAX(sec,reg))
                     +(1-CX(sec,reg))*PIMP(sec,reg)**(1-SIGMAX(sec,reg)))**(1/(1-SIGMAX(sec,reg))))
                     $(ord(sec) eq 5);


EXD(sec,reg)..      XD(sec,reg)*TGXD(sec,reg) =E= ((YD(sec,reg)*APY(sec,reg)*CX(sec,reg)*
                                    (PY(sec,reg)/(APY(sec,reg)*PD(sec,reg)/TGXD(sec,reg)))**SIGMAX(sec,reg))
                                     $((ord(sec) gt 5) and (ord(sec) ne 7))+
                                    (XDPF(sec,reg)*APPF(sec,reg)*CPF(sec,reg)*
                                    (PDPF(sec,reg)/(APPF(sec,reg)*PD(sec,reg)/TGXD(sec,reg)))**SIGMAPF(sec,reg))
                                    $((ord(sec) le 3) or (ord(sec) eq 7))+
                                    (XDPP(sec,reg)*APPP(sec,reg)*CPP(sec,reg)*
                                    (PDPP(sec,reg)/(APPP(sec,reg)*PD(sec,reg)/TGXD(sec,reg)))**SIGMAPP(sec,reg))
                                    $(ord(sec) eq 4)+
                                    (XDPGEN(reg)*APXDPGEN(reg)*(1-DGEN(reg))*(PDPGEN(reg)/(APXDPGEN(reg)*PD("05",reg)/TGXD(sec,reg)))**SIGMAXDPGEN(reg))$(ord(sec) eq 5)
                                    )$(XD0(sec,reg) ne 0)+0;

EPDPGEN(reg)..         PDPGEN(reg) =E= APXDPGEN(reg)*((1-DGEN(reg))*(PD("05",reg)/TGXD("05",reg))**(1-SIGMAXDPGEN(reg))+DGEN(reg)*PGEN(reg)**(1-SIGMAXDPGEN(reg)))**(1/(1-SIGMAXDPGEN(reg)));

EXDPGEN(reg)..         XDPGEN(reg) =E= (YD("05",reg)*APY("05",reg)*CX("05",reg)*(PY("05",reg)/(APY("05",reg)*PDPGEN(reg)))**SIGMAX("05",reg));

EXDPP(secrp,reg)..         XDPP(secrp,reg) =E= (YD(secrp,reg)*APY(secrp,reg)*CX(secrp,reg)*(PY(secrp,reg)/(APY(secrp,reg)*PDPP(secrp,reg)))**SIGMAX(secrp,reg));



EPDPP(secrp,reg)..         PDPP(secrp,reg) =E= (APPP(secrp,reg)*(CPP(secrp,reg)*(PD(secrp,reg)/TGXD(secrp,reg))**(1-SIGMAPP(secrp,reg))
                       +(1-CPP(secrp,reg))*PIO("02",secrp,reg)**(1-SIGMAPP(secrp,reg)))**(1/(1-SIGMAPP(secrp,reg))));


EXDPF(secff,reg)..   XDPF(secff,reg) =E= YD(secff,reg)*APY(secff,reg)*CX(secff,reg)*
                    (PY(secff,reg)/(APY(secff,reg)*PDPF(secff,reg)))**SIGMAX(secff,reg);


EPDPF(secff,reg)..   PDPF(secff,reg) =E= (APPF(secff,reg)*(CPF(secff,reg)*(PD(secff,reg)/TGXD(secff,reg))**(1-SIGMAPF(secff,reg))+
                     (1-CPF(secff,reg))*((PF(secff,reg)+PFMIN(secff,reg))/TGFF(secff,reg))**(1-SIGMAPF(secff,reg)))**(1/(1-SIGMAPF(secff,reg))))$(XDPF0(secff,reg) ne 0)
                     +1$(XDPF0(secff,reg) eq 0);


EFF(secff,reg)..    FF(secff,reg)*TGFF(secff,reg)  =E= (XDPF(secff,reg)*APPF(secff,reg)*(1-CPF(secff,reg))*
                                       (PDPF(secff,reg)/(APPF(secff,reg)*((PF(secff,reg)+PFMIN(secff,reg))/TGFF(secff,reg))))**SIGMAPF(secff,reg))
                                       $(FF0(secff,reg) ne 0);


EPF(secff,reg)..      PF(secff,reg) =E= PF0(secff,reg);

EPF2(secff,reg)..      PF(secff,reg) =E= PIBVA(reg)/PIBVO(reg);



EIMPO(sec,reg)$(IMPO0(sec,reg) ne 0)..     IMPO(sec,reg) =E= YD(sec,reg)*APY(sec,reg)*(1-CX(sec,reg))*
                                          (PY(sec,reg)/(APY(sec,reg)*PIMP(sec,reg)))**SIGMAX(sec,reg);


EPD(sec,reg)..       PD(sec,reg) =E= (APD(sec,reg)*(
                                     DK(sec,reg)*(PK(sec,reg)/TGK(sec,reg))**(1-SIGMA(sec,reg))+
                                     DL(sec,reg)*(PL(sec,reg)/TGL(sec,reg))**(1-SIGMA(sec,reg))+
                                     DE(sec,reg)*(PE(sec,reg)/TGE(sec,reg))**(1-SIGMA(sec,reg))+
                                     DM(sec,reg)*(PM(sec,reg)/TGM(sec,reg))**(1-SIGMA(sec,reg)))
                                     **(1/(1-SIGMA(sec,reg))))$(XD0(sec,reg) ne 0)+1$(XD0(sec,reg) eq 0) ;


EKAV(sec,reg)..     KAV(sec,reg)*TGK(sec,reg) =E=  (XD(sec,reg)*APD(sec,reg)*DK(sec,reg)*
                                      (PD(sec,reg)/((PK(sec,reg)*APD(sec,reg))/(TGK(sec,reg))))
                                      **SIGMA(sec,reg))$(KAV0(sec,reg) ne 0)+0;


ELAV(sec,reg)..     LAV(sec,reg)*TGL(sec,reg) =E=  (XD(sec,reg)*APD(sec,reg)*DL(sec,reg)*
                                      (PD(sec,reg)/((PL(sec,reg)*APD(sec,reg))/(TGL(sec,reg))))
                                      **SIGMA(sec,reg))$(LAV0(sec,reg) ne 0)+0;

EEN(sec,reg)..     EN(sec,reg)*TGE(sec,reg) =E=  (XD(sec,reg)*APD(sec,reg)*DE(sec,reg)*
                                      (PD(sec,reg)/((PE(sec,reg)*APD(sec,reg))/(TGE(sec,reg))))
                                      **SIGMA(sec,reg))$(EN0(sec,reg) ne 0)+0;

EMA(sec,reg)..     MA(sec,reg)*TGM(sec,reg) =E=  (XD(sec,reg)*APD(sec,reg)*DM(sec,reg)*
                                      (PD(sec,reg)/((PM(sec,reg)*APD(sec,reg))/(TGM(sec,reg))))
                                      **SIGMA(sec,reg))$(MA0(sec,reg) ne 0)+0;


EPE(sec,reg)..     PE(sec,reg) =E= (APE(sec,reg)*(DEPR("05",sec,reg)*(PIO("05",sec,reg)/
                                   GEPR("05",sec,reg))**(1-SIGMAE(sec,reg))+
                                   (1-DEPR("05",sec,reg))*(PEF(sec,reg)/TGENF(sec,reg))**(1-SIGMAE(sec,reg))
                                   )**(1/(1-SIGMAE(sec,reg))))$(EN0(sec,reg) ne 0) +
                                   1$(EN0(sec,reg) eq 0);

EPEF(sec,reg)..    PEF(sec,reg) =E= (APEF(sec,reg)*(
                                    sum(Secef,DEPR(secef,sec,reg)*(PIO(secef,sec,reg)/GEPR(secef,sec,reg))
                                    **(1-SIGMAEF(sec,reg)))+DEPR_HEATPUMP(sec,reg)*PIOHEATPUMP(sec,reg)**(1-SIGMAEF(sec,reg)))**(1/(1-SIGMAEF(sec,reg))))$(ENF0(sec,reg) ne 0) +
                                    1$(ENF0(sec,reg) eq 0) ;


EENF(sec,reg)..    ENF(sec,reg)*TGENF(sec,reg) =E= EN(sec,reg)*APE(sec,reg)*(1-DEPR("05",sec,reg))*(PE(sec,reg)/
                                    ((PEF(sec,reg)*APE(sec,reg))/TGENF(sec,reg)))**SIGMAE(sec,reg)$(EN0(sec,reg) ne 0) +
                                                   0$(EN0(sec,reg) eq 0) ;

EIOVHEATPUMP(sec,reg)..   IOVHEATPUMP(sec,reg) =E= ((ENF(sec,reg)*APEF(sec,reg)*DEPR_HEATPUMP(sec,reg)*
                                          (PEF(sec,reg) /((PIOHEATPUMP(sec,reg)*APEF(sec,reg))/(GEPR_HEATPUMP(sec,reg))))**SIGMAEF(sec,reg))/GEPR_HEATPUMP(sec,reg));


EPIOHEATPUMP(sec,reg)..   PIOHEATPUMP(sec,reg) =E= APIOHEATPUMP(sec,reg)*(DIOHEATPUMP_05(sec,reg)*PIO("05",sec,reg)**(1-SIGMAIOHEATPUMP(sec,reg))+(1-DIOHEATPUMP_05(sec,reg))*PIO("13",sec,reg)**(1-SIGMAIOHEATPUMP(sec,reg)))**(1/(1-SIGMAIOHEATPUMP(sec,reg)));

EPIO(pro,sec,reg)..  PIO(pro,sec,reg) =E=  PB(pro,reg)*(1+TXTVAIO(pro,sec,reg))
                                           +(DTXTVAIO(pro,sec,reg)*TAXECO2(reg))$(ord(reg) gt 14)
                                           +(DTXTVAIO(pro,sec,reg)*TAXECO2(reg))$((ord(reg) le 14) and ((ord(sec) ne 4) and (ord(sec) ne 5) and (ord(sec) ne 6) and (ord(sec) ne 8) and (ord(sec) ne 12)))
                                           +(DTXTVAIO(pro,sec,reg)*EUETSPRICE*(EX("USA")/EX(reg))   )$((ord(reg) le 14) and ((ord(sec) eq 4) or (ord(sec) eq 5) or (ord(sec) eq 6) or (ord(sec) eq 8)))
                                           +(DTXTVAIO(pro,sec,reg)*(SHARE_ETS_AVIATION(reg)*EUETSPRICE*(EX("USA")/EX(reg))+(1-SHARE_ETS_AVIATION(reg))*TAXECO2(reg)))$((ord(reg) le 14) and (ord(sec) eq 12))
                                           +1$(IOV0(pro,sec,reg) eq 0);


EIOV(pro,sec,reg)$(IOV0(pro,sec,reg) ne 0)..   IOV(pro,sec,reg) =E=
                       (((ENF(sec,reg)*APEF(sec,reg)*DEPR(pro,sec,reg)*
                       (PEF(sec,reg)/((PIO(pro,sec,reg)*APEF(sec,reg))/(GEPR(pro,sec,reg))))**SIGMAEF(sec,reg))/
                        GEPR(pro,sec,reg)))
                        $ ((ord(pro) eq 1) or (ord(pro) eq 3) or (ord(pro) eq 4)  or (ord(pro) eq 6) or (ord(pro) eq 7))+
                        (((EN(sec,reg)*APE(sec,reg)*DEPR(pro,sec,reg)*
                       (PE(sec,reg)/((PIO(pro,sec,reg)*APE(sec,reg))/(GEPR(pro,sec,reg))))**SIGMAE(sec,reg))/
                        GEPR(pro,sec,reg)))
                       $ (ord(pro) eq 5) +
                        ((OTRA(sec,reg)*APM(sec,reg)*DMPR(pro,sec,reg)*
                       (POTRA(sec,reg)/((PIO(pro,sec,reg)*APM(sec,reg))/(GMPR(pro,sec,reg))))**SIGMAM(sec,reg))/
                        GMPR(pro,sec,reg))
                        $ ((ord(pro) eq 7) or (ord(pro) eq 8) or (ord(pro) eq 9) or (ord(pro) eq 13)) +
                        (XDPP(sec,reg)*APPP(sec,reg)*(1-CPP(sec,reg))*
                       (PDPP(sec,reg)/(APPP(sec,reg)*PIO(pro,sec,reg)))**SIGMAPP(sec,reg))
                        $ ((ord(pro) eq 2) and (ord(sec) eq 4)) +
                        (((ENF(sec,reg)*APEF(sec,reg)*DEPR(pro,sec,reg)*
                       (PEF(sec,reg)/((PIO(pro,sec,reg)*APEF(sec,reg))/(GEPR(pro,sec,reg))))**SIGMAEF(sec,reg))/
                        GEPR(pro,sec,reg)))
                        $ ((ord(pro) eq 2) and (ord(sec) ne 4)) +
                       ((TRAP(sec,reg)*APTRAP(sec,reg)*DMPR(pro,sec,reg)*
                       (PTRAP(sec,reg)/((PIO(pro,sec,reg)*APTRAP(sec,reg))/(GMPR(pro,sec,reg))))**SIGMATRAP(sec,reg))/
                        GMPR(pro,sec,reg))
                        $ ((ord(pro) eq 10) or (ord(pro) eq 11))+
                       ((TRA(sec,reg)*APTRA(sec,reg)*DTRA(sec,reg)*
                       (PTRA(sec,reg)/((PIO(pro,sec,reg)*APTRA(sec,reg))/(GMPR(pro,sec,reg))))**SIGMATRA(sec,reg))/
                        GMPR(pro,sec,reg))
                        $(ord(pro) eq 12)+
                        ((TRAEV(sec,reg)*APTRAEV(sec,reg)*DTRAEV(sec,reg)*(PTRAEV(sec,reg)/((PIO("09",sec,reg)*APTRAEV(sec,reg))/GETRAOQEV(sec,reg)))**SIGMATRAOEV(sec,reg))/GETRAOQEV(sec,reg)+
*                         (TRAHY(sec,reg)*APTRAHY(sec,reg)*DTRAHY(sec,reg)*(PTRAHY(sec,reg)/((PIO("09",sec,reg)*APTRAHY(sec,reg))/GETRAOQHY(sec,reg)))**SIGMATRAOHY(sec,reg))/GETRAOQHY(sec,reg)+
                         (TRAIC(sec,reg)*APTRAIC(sec,reg)*DTRAIC(sec,reg)*(PTRAIC(sec,reg)/((PIO("09",sec,reg)*APTRAIC(sec,reg))/GETRAOQIC(sec,reg)))**SIGMATRAOIC(sec,reg))/GETRAOQIC(sec,reg))
                        $(ord(pro) eq 9)+
                        ((TRAEV(sec,reg)*APTRAEV(sec,reg)*(1-DTRAEV(sec,reg))*(PTRAEV(sec,reg)/((PIO("05",sec,reg)*APTRAEV(sec,reg))/GETRAOEEV(sec,reg)))**SIGMATRAOEV(sec,reg))/GETRAOEEV(sec,reg))
                        $(ord(pro) eq 5)+
*                        ((TRAHY(sec,reg)*APTRAHY(sec,reg)*(1-DTRAHY(sec,reg))*(PTRAHY(sec,reg)/((PIO("06",sec,reg)*APTRAHY(sec,reg))/GETRAOEHY(sec,reg)))**SIGMATRAOHY(sec,reg))/GETRAOEHY(sec,reg))
*                        $(ord(pro) eq 6)+
                        ((FUELIC(sec,reg)*APFUELIC(sec,reg)*(1-DFUELIC(sec,reg))*(PFUELIC(sec,reg)/((PIO("07",sec,reg)*APFUELIC(sec,reg))/GEFUELIC07(sec,reg)))**SIGMAFUELIC(sec,reg))/GEFUELIC07(sec,reg))
                        $((ord(pro) eq 7) and (FUELIC0(sec,reg) ne 0))+
                        ((FUELIC(sec,reg)*APFUELIC(sec,reg)*DFUELIC(sec,reg)*(PFUELIC(sec,reg)/((PIO("04",sec,reg)*APFUELIC(sec,reg))/GEFUELIC04(sec,reg)))**SIGMAFUELIC(sec,reg))/GEFUELIC04(sec,reg))
                        $((ord(pro) eq 4) and (FUELIC0(sec,reg) ne 0))+
                        (IOVHEATPUMP(sec,reg)*APIOHEATPUMP(sec,reg)*DIOHEATPUMP_05(sec,reg)*(PIOHEATPUMP(sec,reg)/(PIO("05",sec,reg)*APIOHEATPUMP(sec,reg)))**SIGMAIOHEATPUMP(sec,reg))
                        $(ord(pro) eq 5)+
                        (IOVHEATPUMP(sec,reg)*APIOHEATPUMP(sec,reg)*(1-DIOHEATPUMP_05(sec,reg))*(PIOHEATPUMP(sec,reg)/(PIO("13",sec,reg)*APIOHEATPUMP(sec,reg)))**SIGMAIOHEATPUMP(sec,reg))
                        $(ord(pro) eq 13)+
                        (sum(elec,ADD_CCS_COST0(elec,reg)*CCSSHARE(elec,reg)*PIO("09","05",reg)*ELECGEN(elec,reg)))$((ord(sec) eq 5) and (ord(pro) eq 9));

EPM(sec,reg)..         PM(sec,reg) =E=(APMM(sec,reg)*(
                                   CMM(sec,reg)*(PTRA(sec,reg)/TGTRA(sec,reg))**(1-SIGMAMM(sec,reg))+
                                   (1-CMM(sec,reg))*(POTRA(sec,reg)/TGOTRA(sec,reg))**(1-SIGMAMM(sec,reg))
                                   )**(1/(1-SIGMAMM(sec,reg))))$(MA0(sec,reg) ne 0) +
                                    1$(MA0(sec,reg) eq 0) ;


ETRA(sec,reg)..         TRA(sec,reg)*TGTRA(sec,reg) =E= (MA(sec,reg)*APMM(sec,reg)*CMM(sec,reg)*
                                                        (PM(sec,reg)/((PTRA(sec,reg)*APMM(sec,reg))/TGTRA(sec,reg)))
                                                        **SIGMAMM(sec,reg))$(TRA0(sec,reg) ne 0)+0;

EOTRA(sec,reg)..        OTRA(sec,reg)*TGOTRA(sec,reg) =E=(MA(sec,reg)*APMM(sec,reg)*(1-CMM(sec,reg))*
                                                        (PM(sec,reg)/((POTRA(sec,reg)*APMM(sec,reg))/TGOTRA(sec,reg)))
                                                        **SIGMAMM(sec,reg))$(OTRA0(sec,reg) ne 0)+0;

ETRANAE(sec,reg)$(TRANAE0(sec,reg) ne 0)..    TRANAE(sec,reg) =E= (TRA(sec,reg)*APTRA(sec,reg)*(1-DTRA(sec,reg))*(PTRA(sec,reg)/(PTRANAE(sec,reg)*APTRA(sec,reg)))**SIGMATRA(sec,reg));

ETRAP(sec,reg)$(TRAP0(sec,reg) ne 0)..        TRAP(sec,reg) =E= (TRANAE(sec,reg)*APTRANAE(sec,reg)*DTRANAE(sec,reg)*(PTRANAE(sec,reg)/(PTRAP(sec,reg)*APTRANAE(sec,reg)))**SIGMATRANAE(sec,reg));

ETRAO(sec,reg)$(TRAO0(sec,reg) ne 0)..        TRAO(sec,reg) =E= (TRANAE(sec,reg)*APTRANAE(sec,reg)*(1-DTRANAE(sec,reg))*(PTRANAE(sec,reg)/(PTRAO(sec,reg)*APTRANAE(sec,reg)))**SIGMATRANAE(sec,reg));


EPTRA(sec,reg)$(TRA0(sec,reg) ne 0)..         PTRA(sec,reg) =E=  (APTRA(sec,reg)*(DTRA(sec,reg)*(PIO("12",sec,reg)/GMPR("12",sec,reg))**(1-SIGMATRA(sec,reg))+(1-DTRA(sec,reg))*PTRANAE(sec,reg)**(1-SIGMATRA(sec,reg)))**(1/(1-SIGMATRA(sec,reg))));

EPTRAO(sec,reg)$(TRAO0(sec,reg) ne 0)..       PTRAO(sec,reg) =E= APTRAO(sec,reg)*((1-DTRAOEV(sec,reg)-DTRAOHY(sec,reg))*PTRAIC(sec,reg)**(1-SIGMATRAO(sec,reg))+DTRAOEV(sec,reg)*PTRAEV(sec,reg)**(1-SIGMATRAO(sec,reg))
                                                                                   +DTRAOHY(sec,reg)*PTRAHY(sec,reg)**(1-SIGMATRAO(sec,reg)))**(1/(1-SIGMATRAO(sec,reg)));


EPTRANAE(sec,reg)$(TRANAE0(sec,reg) ne 0)..   PTRANAE(sec,reg) =E=  (APTRANAE(sec,reg)*(DTRANAE(sec,reg)*PTRAP(sec,reg)**(1-SIGMATRANAE(sec,reg))+(1-DTRANAE(sec,reg))*PTRAO(sec,reg)**(1-SIGMATRANAE(sec,reg)))**(1/(1-SIGMATRANAE(sec,reg))));

EPTRAP(sec,reg)$(TRAP0(sec,reg) ne 0)..       PTRAP(sec,reg) =E=    (APTRAP(sec,reg)*(DMPR("10",sec,reg)*(PIO("10",sec,reg)/GMPR("10",sec,reg))**(1-SIGMATRAP(sec,reg))+
                                                                                      DMPR("11",sec,reg)*(PIO("11",sec,reg)/GMPR("11",sec,reg))**(1-SIGMATRAP(sec,reg))
                                                                                       )**(1/(1-SIGMATRAP(sec,reg))));

EPTRAEV(sec,reg)..     PTRAEV(sec,reg)$(TRAEV0(sec,reg) ne 0)=E= APTRAEV(sec,reg)*(DTRAEV(sec,reg)*(PIO("09",sec,reg)/GETRAOQEV(sec,reg))**(1-SIGMATRAOEV(sec,reg))
                                                    +(1-DTRAEV(sec,reg))*(PIO("05",sec,reg)/GETRAOEEV(sec,reg))**(1-SIGMATRAOEV(sec,reg)))**(1/(1-SIGMATRAOEV(sec,reg)));

EPTRAHY(sec,reg)..     PTRAHY(sec,reg)$(TRAHY0(sec,reg) ne 0)=E= APTRAHY(sec,reg)*(DTRAHY(sec,reg)*(PIO("09",sec,reg)/GETRAOQHY(sec,reg))**(1-SIGMATRAOHY(sec,reg))
                                                    +(1-DTRAHY(sec,reg))*(PIO("06",sec,reg)/GETRAOEHY(sec,reg))**(1-SIGMATRAOHY(sec,reg)))**(1/(1-SIGMATRAOHY(sec,reg)));

EPTRAIC(sec,reg)..     PTRAIC(sec,reg)$(TRAIC0(sec,reg) ne 0)=E= APTRAIC(sec,reg)*(DTRAIC(sec,reg)*(PIO("09",sec,reg)/GETRAOQIC(sec,reg))**(1-SIGMATRAOIC(sec,reg))
                                                            +(1-DTRAIC(sec,reg))*(PFUELIC(sec,reg)/GETRAOFUELIC(sec,reg))**(1-SIGMATRAOIC(sec,reg)))**(1/(1-SIGMATRAOIC(sec,reg)));

EPFUELIC(sec,reg)..    PFUELIC(sec,reg)$(FUELIC0(sec,reg) ne 0)=E=APFUELIC(sec,reg)*(DFUELIC(sec,reg)*(PIO("04",sec,reg)/GEFUELIC04(sec,reg))**(1-SIGMAFUELIC(sec,reg))
                                                                +(1-DFUELIC(sec,reg))*(PIO("07",sec,reg)/GEFUELIC07(sec,reg))**(1-SIGMAFUELIC(sec,reg)))**(1/(1-SIGMAFUELIC(sec,reg)));


ETRAEV(sec,reg)$(TRAEV0(sec,reg) ne 0).. TRAEV(sec,reg)=E=TRAO(sec,reg)*APTRAO(sec,reg)*DTRAOEV(sec,reg)*(PTRAO(sec,reg)/((PTRAEV(sec,reg)*APTRAO(sec,reg))))**SIGMATRAO(sec,reg);

ETRAHY(sec,reg)$(TRAHY0(sec,reg) ne 0).. TRAHY(sec,reg)=E=TRAO(sec,reg)*APTRAO(sec,reg)*DTRAOHY(sec,reg)*(PTRAO(sec,reg)/((PTRAHY(sec,reg)*APTRAO(sec,reg))))**SIGMATRAO(sec,reg);

ETRAIC(sec,reg)$(TRAIC0(sec,reg) ne 0).. TRAIC(sec,reg)=E=TRAO(sec,reg)*APTRAO(sec,reg)*(1-DTRAOEV(sec,reg)-DTRAOHY(sec,reg))*(PTRAO(sec,reg)/PTRAIC(sec,reg))**SIGMATRAO(sec,reg);


EFUELIC(sec,reg)$(FUELIC0(sec,reg) ne 0).. FUELIC(sec,reg)=E=(TRAIC(sec,reg)*APTRAIC(sec,reg)*(1-DTRAIC(sec,reg))*
                                               (PTRAIC(sec,reg)/((PFUELIC(sec,reg)*APTRAIC(sec,reg))/GEFUELIC(sec,reg)))**SIGMATRAOIC(sec,reg))/GEFUELIC(sec,reg);


EPOTRA(sec,reg)..        POTRA(sec,reg) =E= (APM(sec,reg)*(
                                    sum(Secotra,DMPR(secotra,sec,reg)*(PIO(secotra,sec,reg)/GMPR(secotra,sec,reg))
                                    **(1-SIGMAM(sec,reg))))**(1/(1-SIGMAM(sec,reg))))$(OTRA0(sec,reg) ne 0)+
                                    1$(OTRA0(sec,reg) eq 0);

EPDR(sec,reg)..         PDR(sec,reg) =E= PD(sec,reg)/PINV(sec,reg);

EPDRA(sec,reg)..        PDRA(sec,reg) =E= PDR(sec,reg)*(1+ALPD(sec,reg)*
                        ((PDR(sec,reg)-PDRM1(sec,reg))/PDRM1(sec,reg))+
                        (1-ALPD(sec,reg))*((PDRM1(sec,reg)-PDRM2(sec,reg))/PDRM2(sec,reg)));


EKAVO(sec,reg)..        KAVO(sec,reg)*TGKA(sec,reg) =E=  (XDA(sec,reg)*APD(sec,reg)*DK(sec,reg)*
                                      (PDRA(sec,reg)/(((RLTL(reg)+DECL(sec,reg)+ERRCK(sec,reg))*APD(sec,reg))/(TGKA(sec,reg))))
                                      **SIGMA(sec,reg))$(KAVO0(sec,reg) ne 0)+0;



EKAVA(sec,reg)..        KAVA(sec,reg) =E= (((1-ALKAVA(sec,reg))*KAVO(sec,reg)+ALKAVA(sec,reg)*(KAVC(sec,reg)
                                           *KAVC(sec,reg))/KAVCM1(sec,reg)))$(KAVCM10(sec,reg) ne 0)+0;


EGEN(reg)..             GEN(reg) =E= XDPGEN(reg)*APXDPGEN(reg)*DGEN(reg)*(PDPGEN(reg)/(PGEN(reg)*APXDPGEN(reg)))**SIGMAXDPGEN(reg);

EPGEN(reg)..            PGEN(reg) =E= ((GEN(reg)-ELECGEN("HYD",reg)-ELECGEN("NUC",reg))/GEN(reg))*PGENMHYDNUC(reg)+(ELECGEN("HYD",reg)/GEN(reg))*PELEC("HYD",reg)+(ELECGEN("NUC",reg)/GEN(reg))*PELEC("NUC",reg);


EGENMHYDNUC(reg)..      GENMHYDNUC(reg) =E= GEN(reg)-ELECGEN("HYD",reg)-ELECGEN("NUC",reg);

EPGENMHYDNUC(reg)..            PGENMHYDNUC(reg) =E= APGEN(reg)*(DELECFOSS(reg)*PGENFOSS(reg)**(1-SIGMAGEN(reg))+DELEC("WIN",reg)*PELEC("WIN",reg)**(1-SIGMAGEN(reg))+
                                                         DELEC("SOL",reg)*PELEC("SOL",reg)**(1-SIGMAGEN(reg))+DELEC("OTH",reg)*PELEC("OTH",reg)**(1-SIGMAGEN(reg))+
                                                         DELEC("BIO",reg)*PELEC("BIO",reg)**(1-SIGMAGEN(reg)))**(1/(1-SIGMAGEN(reg)));

EELECGEN(elecmhydnuc,reg)$(ELECGEN0(elecmhydnuc,reg) ne 0)..    ELECGEN(elecmhydnuc,reg)  =E= ((GENMHYDNUC(reg)*APGEN(reg)*DELEC(elecmhydnuc,reg)*(PGENMHYDNUC(reg)/(APGEN(reg)*PELEC(elecmhydnuc,reg)))**SIGMAGEN(reg)))$(ord(elecmhydnuc) gt 3)+
                                                                         ((GENFOSS(reg)*APELECFOSS(reg)*DELEC(elecmhydnuc,reg)*(PGENFOSS(reg)/(APELECFOSS(reg)*PELEC(elecmhydnuc,reg)))**SIGMAFOSS(reg)))$(ord(elecmhydnuc) le 3);

EGENFOSS(reg)..                                   GENFOSS(reg)   =E=  GENMHYDNUC(reg)*APGEN(reg)*DELECFOSS(reg)*(PGENMHYDNUC(reg)/(APGEN(reg)*PGENFOSS(reg)))**SIGMAGEN(reg);


EPGENFOSS(reg)..                                  PGENFOSS(reg)  =E=  APELECFOSS(reg)*(DELEC("COA",reg)*PELEC("COA",reg)**(1-SIGMAFOSS(reg))+
                                                                                       DELEC("OIP",reg)*PELEC("OIP",reg)**(1-SIGMAFOSS(reg))+
                                                                                       DELEC("GAP",reg)*PELEC("GAP",reg)**(1-SIGMAFOSS(reg)))**(1/(1-SIGMAFOSS(reg)));


EPELEC(elec,reg)..                     PELEC(elec,reg) =E= ((1-TSUB(elec,reg))*APELEC(elec,reg)*(
                                                     DLAV(elec,reg)*((W(reg)*(1+TXWPOWER("SS",elec,reg)))/TGL("05",reg))**(1-SIGMAELE(elec,reg))+
                                                     DKAV(elec,reg)*(PELECKAV(elec,reg)/TGKE(elec,reg))**(1-SIGMAELE(elec,reg))+
                                                     DENMA(elec,reg)*PELECENMA(elec,reg)**(1-SIGMAELE(elec,reg)))
                                                      **(1/(1-SIGMAELE(elec,reg)))
                                                     -(CARBONCREDIT(elec,reg)*CCSSHARE(elec,reg)*EUETSPRICE*(EX("USA")/EX(reg)))$(ord(reg) le 14)
                                                     -(CARBONCREDIT(elec,reg)*CCSSHARE(elec,reg)*TAXECO2(reg))$((ord(reg) gt 14) and (ord(reg) ne 17))
                                                     -(CARBONCREDIT(elec,reg)*CCSSHARE(elec,reg)*CHIETSPRICE)$(ord(reg) eq 17)
                                                     +ADD_CCS_COST0(elec,reg)*CCSSHARE(elec,reg)*PIO("09","05",reg))$(ELECGEN0(elec,reg) ne 0)+1$(ELECGEN0(elec,reg) eq 0) ;

EPELEC2031(elec,reg)..                 PELEC(elec,reg) =E= ((1-TSUB(elec,reg))*APELEC(elec,reg)*(
                                                     DLAV(elec,reg)*((W(reg)*(1+TXWPOWER("SS",elec,reg)))/TGL("05",reg))**(1-SIGMAELE(elec,reg))+
                                                     DKAV(elec,reg)*(PELECKAV(elec,reg)/TGKE(elec,reg))**(1-SIGMAELE(elec,reg))+
                                                     DENMA(elec,reg)*PELECENMA(elec,reg)**(1-SIGMAELE(elec,reg)))
                                                      **(1/(1-SIGMAELE(elec,reg)))
                                                     -(CARBONCREDIT(elec,reg)*CCSSHARE(elec,reg)*EUETSPRICE*(EX("USA")/EX(reg)))$(ord(reg) le 14)
                                                     -(CARBONCREDIT(elec,reg)*CCSSHARE(elec,reg)*TAXECO2(reg))$((ord(reg) gt 14) and (ord(reg) ne 17))
                                                     -(CARBONCREDIT(elec,reg)*CCSSHARE(elec,reg)*(CHIETSPRICE2030+TAXECO2(reg)))$(ord(reg) eq 17)
                                                     +ADD_CCS_COST0(elec,reg)*CCSSHARE(elec,reg)*PIO("09","05",reg))$(ELECGEN0(elec,reg) ne 0)+1$(ELECGEN0(elec,reg) eq 0) ;


ELAVPOWER(elec,reg)..   LAVPOWER(elec,reg)*TGL("05",reg) =E=  (ELECGEN(elec,reg)*APELEC(elec,reg)*DLAV(elec,reg)*(PELEC(elec,reg)/(((W(reg)*(1+TXWPOWER("SS",elec,reg)))*APELEC(elec,reg))/(TGL("05",reg))))**SIGMAELE(elec,reg))$(LAVPOWER0(elec,reg) ne 0)+0;

EELECKAV(elec,reg)..    ELECKAV(elec,reg)*TGKE(elec,reg) =E=  (ELECGEN(elec,reg)*APELEC(elec,reg)*DKAV(elec,reg)*(PELEC(elec,reg)/((PELECKAV(elec,reg)*APELEC(elec,reg))/(TGKE(elec,reg))))**SIGMAELE(elec,reg))$(ELECKAV0(elec,reg) ne 0)+0;


EELECKAVA(elec,reg)..   ELECKAVA(elec,reg) =E=MIN(ELECKAVMAX(elec,reg),((1-ALELECKAVA(elec,reg))*ELECKAVO(elec,reg)+ALELECKAVA(elec,reg)*(ELECKAVC(elec,reg)*
                                                 ELECKAVC(elec,reg)/ELECKAVCM1(elec,reg))))$((ELECKAV0(elec,reg) ne 0) and (ELECKAVCM1(elec,reg) ne 0));


EELECKAVO(elec,reg)..   ELECKAVO(elec,reg)*TGKEA(elec,reg) =E=  (((ELECGENA(elec,reg)*APELEC(elec,reg)*DKAV(elec,reg)*
                                                                (PELECRA(elec,reg)/((APELEC(elec,reg)*(RLTL(reg)+DECLELECT(elec,reg))/TGKEA(elec,reg))))**SIGMAELE(elec,reg))))$(ELECKAV0(elec,reg) ne 0);


EPELECRA(elec,reg)..    PELECRA(elec,reg)  =E=  (PELECR(elec,reg)*(1+ALELECPD(elec,reg)*((PELECR(elec,reg)-PELECRM1(elec,reg))/PELECRM1(elec,reg))+
                                                (1-ALELECPD(elec,reg))*((PELECRM1(elec,reg)-PELECRM2(elec,reg))/PELECRM2(elec,reg))))$(ELECGEN0(elec,reg) ne 0);

EPELECR(elec,reg)$(ELECGEN0(elec,reg) ne 0)..     PELECR(elec,reg)=E=(PELECA(elec,reg)/(PINV("05",reg)*APELEINV(elec,reg)));


EENMAPOWER(elec,reg)..  ENMAPOWER(elec,reg) =E=  (ELECGEN(elec,reg)*APELEC(elec,reg)*DENMA(elec,reg)*(PELEC(elec,reg)/((PELECENMA(elec,reg)*APELEC(elec,reg))))**SIGMAELE(elec,reg))$(ENMAPOWER0(elec,reg) ne 0)+0;

EPELECENMA(elec,reg)..  PELECENMA(elec,reg) =E= sum(pro,DEPRPOWER(elec,pro,reg)*(PB(pro,reg)*(1+TXTVAIOPOWER(elec,pro,reg))+((1-CCSSHARE(elec,reg))*DTXTVAIOPOWER(elec,pro,reg)*TAXECO2(reg))$((ord(reg) gt 14) and (ord(reg) ne 17))
                                                +((1-CCSSHARE(elec,reg))*DTXTVAIOPOWER(elec,pro,reg)*EUETSPRICE*(EX("USA")/EX(reg)))$(ord(reg) le 14)+((1-CCSSHARE(elec,reg))*DTXTVAIOPOWER(elec,pro,reg)*CHIETSPRICE)$(ord(reg) eq 17)));

EPELECENMA2031(elec,reg)..  PELECENMA(elec,reg) =E= sum(pro,DEPRPOWER(elec,pro,reg)*(PB(pro,reg)*(1+TXTVAIOPOWER(elec,pro,reg))+((1-CCSSHARE(elec,reg))*DTXTVAIOPOWER(elec,pro,reg)*TAXECO2(reg))$((ord(reg) gt 14) and (ord(reg) ne 17))
                                                +((1-CCSSHARE(elec,reg))*DTXTVAIOPOWER(elec,pro,reg)*EUETSPRICE*(EX("USA")/EX(reg)))$(ord(reg) le 14)+((1-CCSSHARE(elec,reg))*DTXTVAIOPOWER(elec,pro,reg)*(CHIETSPRICE2030+TAXECO2(reg)))$(ord(reg) eq 17)));



EINVV(sec,reg)..        INVV(sec,reg) =E=  KAVA(sec,reg)-(1-DECL(sec,reg))*KAVC(sec,reg)+ERRINVV(sec,reg);

EINVVELEC(elec,reg)..  INVVELEC(elec,reg)=E= MAX(0,ELECKAVA(elec,reg)-((1-DECLELECT(elec,reg))*ELECKAVC(elec,reg)));

EPB(sec,reg)..          PB(sec,reg)   =E=  PY(sec,reg)/(1-TXIT(sec,reg));

EPHC(sec,reg)..         PHC(sec,reg)  =E=  PB(sec,reg)*(1+TXTVAHC(sec,reg))+DTXTVAHC(sec,reg)*TAXECO2(reg);

EPGC(sec,reg)$(GCV0(sec,reg) ne 0)..   PGC(sec,reg)  =E=  PB(sec,reg)*(1+TXTVAGC(sec,reg));

EPINV(sec,reg)..        PINV(sec,reg) =E=  sum(pro,PB(pro,reg)*TINV(pro,sec,reg)*(1+TXTVAIN(pro,sec,reg)));


EPEX(sec,reg)..         PEX(sec,reg)  =E=  PB(sec,reg)*(1+TXTVAEX(sec,reg));

EPL(sec,reg)..          PL(sec,reg)   =E=   W(reg)*(1+sum(itw,TXW(itw,sec,reg)));


EHCDTOT(reg)..          HCDTOT(reg) =E= (1-TSAVE(reg))*(FSEFA_H_K(reg)+FSEFA_H_L(reg)+FSEFA_H_F(reg)+
                                        FSESE_H_G(reg)-FGRS_DT_H(reg)-FSESE_H_W(reg));


EPHCDTOT(reg)..       PHCDTOT(reg) =E= APHCDTOT(reg)*(
                                     DRES(reg)*(PHCRES(reg)/TGHCRES(reg))**(1-SIGMAHC(reg))+
                                     DTRN(reg)*(PHCTRA(reg)/TGHCTRA(reg))**(1-SIGMAHC(reg))+
                                     DOTH(reg)*(PHCOTH(reg)/TGHCOTH(reg))**(1-SIGMAHC(reg))
                                     )**(1/(1-SIGMAHC(reg)));


EHCRES(reg)..     HCRES(reg)*TGHCRES(reg) =E=   (HCDTOT(reg)/PHCDTOT(reg))*APHCDTOT(reg)*DRES(reg)*
                                      (PHCDTOT(reg)/((PHCRES(reg)*APHCDTOT(reg))/(TGHCRES(reg))))**SIGMAHC(reg);

EHCTRA(reg)..     HCTRA(reg)*TGHCTRA(reg) =E=   (HCDTOT(reg)/PHCDTOT(reg))*APHCDTOT(reg)*DTRN(reg)*
                                      (PHCDTOT(reg)/((PHCTRA(reg)*APHCDTOT(reg))/(TGHCTRA(reg))))**SIGMAHC(reg);

EHCOTH(reg)..     HCOTH(reg)*TGHCOTH(reg) =E=   (HCDTOT(reg)/PHCDTOT(reg))*APHCDTOT(reg)*DOTH(reg)*
                                      (PHCDTOT(reg)/((PHCOTH(reg)*APHCDTOT(reg))/(TGHCOTH(reg))))**SIGMAHC(reg);

EPHCOTH(reg)..       PHCOTH(reg) =E= APHCOTH(reg)*(
                                    sum(secoth,DOTHV(secoth,reg)*(PHC(secoth,reg)/GEHCOTHV(secoth,reg))
                                    **(1-SIGMAHOTH(reg))))**(1/(1-SIGMAHOTH(reg)));

EPHCTRA(reg)..       PHCTRA(reg) =E= APHCTRA(reg)*(DHTRA(reg)*(PHC("12",reg)/GEHCTRAPP("12",reg))**(1-SIGMAHTRA(reg))+
                                     (1-DHTRA(reg))*(PHCTRNAE(reg)/GEHCTRNAE(reg))**(1-SIGMAHTRA(reg)))
                                     **(1/(1-SIGMAHTRA(reg)));

EPHCTRNAE(reg)..     PHCTRNAE(reg) =E= APHCTRNAE(reg)*(DHTRNAE(reg)*(PHCTRAP(reg)/GEHCTRAP(reg))**(1-SIGMAHTRNAE(reg))+
                                     (1-DHTRNAE(reg))*(PHCTRAO(reg)/GEHCTRAO(reg))**(1-SIGMAHTRNAE(reg)))
                                     **(1/(1-SIGMAHTRNAE(reg)));

EPHCRES(reg)..       PHCRES(reg) =E= APHCRES(reg)*(DRESE(reg)*(PHCRESE(reg)/GEHCRESE(reg))**(1-SIGMAHRES(reg))+
                                     (1-DRESE(reg))*(PHC("13",reg)/GEHCRESQ(reg))**(1-SIGMAHRES(reg)))
                                     **(1/(1-SIGMAHRES(reg)));

EPHCRESE(reg)..      PHCRESE(reg)  =E=APHCRESE(reg)*(DRESEE(reg)*(PHCRESEF(reg)/ GEHCRESEF(reg))**(1-SIGMAHRESE(reg))+
                                                     (1-DRESEE(reg))*(PHC("05",reg)/GEHCRESEE("05",reg))**(1-SIGMAHRESE(reg)))**(1/(1-SIGMAHRESE(reg)));

EPHCRESEF(reg)..     PHCRESEF(reg)  =E=APHCRESEF(reg)*(sum(sece,DRESEF(sece,reg)*(PHC(sece,reg)/GEHCRESEE(sece,reg))**(1-SIGMAHRESEF(reg)))
                                                       +DRESEF_HEATPUMP(reg)*(PHCHEATPUMP(reg)/GEHCRESEE_HEATPUMP(reg))**(1-SIGMAHRESEF(reg)))**(1/(1-SIGMAHRESEF(reg)));


EHCVHEATPUMP(reg)..   HCVHEATPUMP(reg)=E=  ((HCRESEF(reg)*APHCRESEF(reg)*DRESEF_HEATPUMP(reg)*
                                          (PHCRESEF(reg)/((PHCHEATPUMP(reg)*APHCRESEF(reg))/(GEHCRESEE_HEATPUMP(reg))))**SIGMAHRESEF(reg))/GEHCRESEE_HEATPUMP(reg));

EPHCHEATPUMP(reg)..   PHCHEATPUMP(reg)=E= APHCHEATPUMP(reg)*(DHEATPUMP_05(reg)*PHC("05",reg)**(1-SIGMAHEATPUMP(reg))+(1-DHEATPUMP_05(reg))*PHC("13",reg)**(1-SIGMAHEATPUMP(reg)))**(1/(1-SIGMAHEATPUMP(reg)));


EHCRESEF(reg)..      HCRESEF(reg)*GEHCRESEF(reg) =E=  HCRESE(reg)*APHCRESE(reg)*DRESEE(reg)*
                                                    (PHCRESE(reg)/((PHCRESEF(reg)*APHCRESE(reg))/(GEHCRESEF(reg))))**SIGMAHRESE(reg);

EHCRESE(reg)..       HCRESE(reg)*GEHCRESE(reg) =E=  HCRES(reg)*APHCRES(reg)*DRESE(reg)*
                                                    (PHCRES(reg)/((PHCRESE(reg)*APHCRES(reg))/(GEHCRESE(reg))))**SIGMAHRES(reg);

EHCTRNAE(reg)..      HCTRNAE(reg)*GEHCTRNAE(reg) =E=   HCTRA(reg)*APHCTRA(reg)*(1-DHTRA(reg))*
                                                   (PHCTRA(reg)/((PHCTRNAE(reg)*APHCTRA(reg))/(GEHCTRNAE(reg))))**SIGMAHTRA(reg);

EHCTRAP(reg)..       HCTRAP(reg)*GEHCTRAP(reg) =E=  HCTRNAE(reg)*APHCTRNAE(reg)*DHTRNAE(reg)*
                                                    (PHCTRNAE(reg)/((PHCTRAP(reg)*APHCTRNAE(reg))/(GEHCTRAP(reg))))**SIGMAHTRNAE(reg);

EHCTRAO(reg)..       HCTRAO(reg)*GEHCTRAO(reg) =E=  HCTRNAE(reg)*APHCTRNAE(reg)*(1-DHTRNAE(reg))*
                                                   (PHCTRNAE(reg)/((PHCTRAO(reg)*APHCTRNAE(reg))/(GEHCTRAO(reg))))**SIGMAHTRNAE(reg);

EPHCTRAP(reg)..      PHCTRAP(reg) =E= APHCTRAP(reg)*(DTRAP("10",reg)*(PHC("10",reg)/GEHCTRAPP("10",reg))**(1-SIGMAHTRAP(reg))+
                                                     DTRAP("11",reg)*(PHC("11",reg)/GEHCTRAPP("11",reg))**(1-SIGMAHTRAP(reg)))**(1/(1-SIGMAHTRAP(reg)));

EPHCTRAO(reg)..      PHCTRAO(reg) =E=  APHCTRAO(reg)*((1-DHTRAOEV(reg))*PHCTRAIC(reg)**(1-SIGMAHTRAO(reg))+DHTRAOEV(reg)*PHCTRAEV(reg)**(1-SIGMAHTRAO(reg)))**(1/(1-SIGMAHTRAO(reg)));

EHCTRAEV(reg)..      HCTRAEV(reg)=E=   HCTRAO(reg)*APHCTRAO(reg)*DHTRAOEV(reg)*(PHCTRAO(reg)/(PHCTRAEV(reg)*APHCTRAO(reg)))**SIGMAHTRAO(reg);

EHCTRAIC(reg)..      HCTRAIC(reg)=E=   HCTRAO(reg)*APHCTRAO(reg)*(1-DHTRAOEV(reg))*(PHCTRAO(reg)/(PHCTRAIC(reg)*APHCTRAO(reg)))**SIGMAHTRAO(reg);

EPHCTRAEV(reg)..     PHCTRAEV(reg)=E= APHCTRAEV(reg)*(DHTRAEV(reg)*(PHC("09",reg)/GEHCTRAOQEV(reg))**(1-SIGMAHTRAOEV(reg))
                                                    +(1-DHTRAEV(reg))*(PHC("05",reg)/GEHCTRAOEEV(reg))**(1-SIGMAHTRAOEV(reg)))**(1/(1-SIGMAHTRAOEV(reg)));


EPHCTRAIC(reg)..     PHCTRAIC(reg)=E= APHCTRAIC(reg)*(DHTRAIC(reg)*(PHC("09",reg)/GEHCTRAOQIC(reg))**(1-SIGMAHTRAOIC(reg))
                                                    +(1-DHTRAIC(reg))*(PHCFUELIC(reg)/GEHFUELIC(reg))**(1-SIGMAHTRAOIC(reg)))**(1/(1-SIGMAHTRAOIC(reg)));

EPHCFUELIC(reg)..    PHCFUELIC(reg)=E= APHCFUELIC(reg)*(DHFUELIC(reg)*(PHC("04",reg)/GEHFUELIC04(reg))**(1-SIGMAHFUELIC(reg))
                                                    +(1-DHFUELIC(reg))*(PHC("07",reg)/GEHFUELIC07(reg))**(1-SIGMAHFUELIC(reg)))**(1/(1-SIGMAHFUELIC(reg)));

EHFUELIC(reg)..       HFUELIC(reg)=E=(HCTRAIC(reg)*APHCTRAIC(reg)*(1-DHTRAIC(reg))*
                                        (PHCTRAIC(reg)/((PHCFUELIC(reg)*APHCTRAIC(reg))/GEHFUELIC(reg)))**SIGMAHTRAOIC(reg))/GEHFUELIC(reg);

EHCV(sec,reg)$(HCV0(sec,reg) ne 0)..   HCV(sec,reg) =E=
                                          ((HCOTH(reg)*APHCOTH(reg)*DOTHV(sec,reg)
                                          *(PHCOTH(reg)/((PHC(sec,reg)*APHCOTH(reg))/(GEHCOTHV(sec,reg))))**SIGMAHOTH(reg))/GEHCOTHV(sec,reg))
                                          $((ord(sec) eq 7) or (ord(sec) eq 8) or (ord(sec) eq 9) or (ord(sec) eq 13))+
                                         ((HCRES(reg)*APHCRES(reg)*(1-DRESE(reg))*
                                         (PHCRES(reg)/((PHC(sec,reg)*APHCRES(reg))/(GEHCRESQ(reg))))**SIGMAHRES(reg))/GEHCRESQ(reg))
                                         $(ord(sec) eq 13)+
                                         ((HCRESEF(reg)*APHCRESEF(reg)*DRESEF(sec,reg)*
                                         (PHCRESEF(reg)/((PHC(sec,reg)*APHCRESEF(reg))/(GEHCRESEE(sec,reg))))**SIGMAHRESEF(reg))/GEHCRESEE(sec,reg))
                                         $((ord(sec) le 4) or (ord(sec) eq 7))+
                                         ((HCRESE(reg)*APHCRESE(reg)*(1-DRESEE(reg))*
                                         (PHCRESE(reg)/((PHC(sec,reg)*APHCRESE(reg))/(GEHCRESEE(sec,reg))))**SIGMAHRESE(reg))/GEHCRESEE(sec,reg))
                                         $(ord(sec) eq 5)+
                                         ((HFUELIC(reg)*APHCFUELIC(reg)*DHFUELIC(reg)*
                                         (PHCFUELIC(reg)/((PHC("04",reg)*APHCFUELIC(reg))/GEHFUELIC04(reg)))**SIGMAHFUELIC(reg))/GEHFUELIC04(reg))
                                         $(ord(sec) eq 4)+
                                         ((HCTRAEV(reg)*APHCTRAEV(reg)*(1-DHTRAEV(reg))*
                                         (PHCTRAEV(reg)/((PHC("05",reg)*APHCTRAEV(reg))/GEHCTRAOEEV(reg)))**SIGMAHTRAOEV(reg))/GEHCTRAOEEV(reg))
                                         $(ord(sec) eq 5)+
                                         ((HFUELIC(reg)*APHCFUELIC(reg)*(1-DHFUELIC(reg))*
                                         (PHCFUELIC(reg)/((PHC("07",reg)*APHCFUELIC(reg))/GEHFUELIC07(reg)))**SIGMAHFUELIC(reg))/GEHFUELIC07(reg))
                                         $(ord(sec) eq 7)+
                                         ((HCTRAP(reg)*APHCTRAP(reg)*DTRAP(sec,reg)*
                                         (PHCTRAP(reg)/((PHC(sec,reg)*APHCTRAP(reg))/(GEHCTRAPP(sec,reg))))**SIGMAHTRAP(reg))/GEHCTRAPP(sec,reg))
                                         $((ord(sec) eq 10) or (ord(sec) eq 11))+
                                         ((HCTRA(reg)*APHCTRA(reg)*DHTRA(reg)*
                                         (PHCTRA(reg)/((PHC("12",reg)*APHCTRA(reg))/(GEHCTRAPP("12",reg))))**SIGMAHTRA(reg))/GEHCTRAPP("12",reg))
                                         $(ord(sec) eq 12)+
                                         ((HCTRAEV(reg)*APHCTRAEV(reg)*DHTRAEV(reg)*
                                         (PHCTRAEV(reg)/((PHC("09",reg)*APHCTRAEV(reg))/GEHCTRAOQEV(reg)))**SIGMAHTRAOEV(reg))/GEHCTRAOQEV(reg)+
                                         (HCTRAIC(reg)*APHCTRAIC(reg)*DHTRAIC(reg)*
                                         (PHCTRAIC(reg)/((PHC("09",reg)*APHCTRAIC(reg))/GEHCTRAOQIC(reg)))**SIGMAHTRAOIC(reg))/GEHCTRAOQIC(reg))
                                         $(ord(sec) eq 9)+
                                          (HCVHEATPUMP(reg)*APHCHEATPUMP(reg)*DHEATPUMP_05(reg)*
                                          (PHCHEATPUMP(reg)/(PHC("05",reg)*APHCHEATPUMP(reg)))**SIGMAHEATPUMP(reg))
                                         $(ord(sec) eq 5)+
                                          (HCVHEATPUMP(reg)*APHCHEATPUMP(reg)*(1-DHEATPUMP_05(reg))*
                                          (PHCHEATPUMP(reg)/(PHC("13",reg)*APHCHEATPUMP(reg)))**SIGMAHEATPUMP(reg))
                                         $(ord(sec) eq 13)
                                          ;

EFSEFA1(reg)..          FSEFA_H_L(reg) =E= (sum(sec,LAV(sec,reg))+sum(elec,LAVPOWER(elec,reg)))*W(reg);

EFSEFA2(reg)..          FSEFA_H_K(reg) =E= sum(sec,KAVC(sec,reg)*PK(sec,reg))+sum(elec,PELECKAV(elec,reg)*ELECKAVC(elec,reg));


EFSEFA3(reg)..          FSEFA_H_F(reg) =E= sum(secff,FF(secff,reg)*(PF(secff,reg)+PFMIN(secff,reg)));

EFSEFA4(reg)..          FSEFA_G_L(reg) =E= sum(sec,LAV(sec,reg)*TXW("SS",sec,reg))+sum(elec,LAVPOWER(elec,reg)*TXWPOWER("SS",elec,reg))*W(reg);


EFGRS1(reg)..           FGRS_DT_H(reg) =E= TXFGRS_H(reg)*(FSEFA_H_K(reg)+FSEFA_H_L(reg)+FSEFA_H_F(reg)+FSESE_H_G(reg));

EFGRS3(reg)..           FGRS_DUT_G(reg) =E= sum(sec,sum(rege,IMPOR(sec,rege,reg)
                                               *TXDUT(sec,rege,reg)*PIMPR(sec,rege,reg)));


EFSEFE1(reg)..          FSESE_H_G(reg) =E=  TXFSESE_H_G(reg)*(FSEFA_H_K(reg)+FSEFA_H_L(reg)+FSEFA_H_F(reg));

EFSEFE2(reg)..          FSESE_H_W(reg) =E=  (TXFSESE_H_W(reg)*sum(sec,PD(sec,reg)*XD(sec,reg)))$(ord(reg) ne 24)
                                            -sum(regmrow,FSESE_H_W(regmrow)*(EX(regmrow)/EX(reg)))$(ord(reg) eq 24);


EFGRS2(reg)..           FGRS_IT_G(reg) =E= sum(sec,YD(sec,reg)*PY(sec,reg)*TXIT(sec,reg)/(1-TXIT(sec,reg)));


EFGRS4(reg)..           FGRS_VATHC_G(reg)  =E= sum(sec,HCV(sec,reg)*(PB(sec,reg)*TXTVAHC(sec,reg)))+sum(sec,HCV(sec,reg)*DTXTVAHC(sec,reg))*TAXECO2(reg);


EFGRS5(reg)..           FGRS_VATIO_G(reg)  =E= sum(pro,sum(sec,IOV(pro,sec,reg)*TXTVAIO(pro,sec,reg)*PB(pro,reg)))+
                                               sum(pro,sum(elec,DEPRPOWER(elec,pro,reg)*ENMAPOWER0(elec,reg)*TXTVAIOPOWER(elec,pro,reg)))+
                                               (sum(secem7,sum(secnets,IOV(secem7,secnets,reg)*DTXTVAIO(secem7,secnets,reg)))*TAXECO2(reg))+
                                               (sum(secem7,sum(secets,IOV(secem7,secets,reg)*DTXTVAIO(secem7,secets,reg)))*EUETSPRICE*(EX("USA")/EX(reg)))$(ord(reg) le 14)+
                                               (sum(secem7,IOV(secem7,"12",reg)*DTXTVAIO(secem7,"12",reg))*(SHARE_ETS_AVIATION(reg)*EUETSPRICE*(EX("USA")/EX(reg))+(1-SHARE_ETS_AVIATION(reg))*TAXECO2(reg)))$(ord(reg) le 14)+
                                               (sum(secem7,sum(secets,IOV(secem7,secets,reg)*DTXTVAIO(secem7,secets,reg)))*TAXECO2(reg))$(ord(reg) gt 14)+
                                               (sum(secem7,sum(elec,DEPRPOWER(elec,secem7,reg)*ENMAPOWER0(elec,reg)*DTXTVAIOPOWER(elec,secem7,reg)*(1-CCSSHARE(elec,reg))))*TAXECO2(reg))$((ord(reg) gt 14) and (ord(reg) ne 17))+
                                               (sum(secem7,sum(elec,DEPRPOWER(elec,secem7,reg)*ENMAPOWER0(elec,reg)*DTXTVAIOPOWER(elec,secem7,reg)*(1-CCSSHARE(elec,reg))))*EUETSPRICE*(EX("USA")/EX(reg)))$(ord(reg) le 14)+
                                               (sum(secem7,sum(elec,DEPRPOWER(elec,secem7,reg)*ENMAPOWER0(elec,reg)*DTXTVAIOPOWER(elec,secem7,reg)*(1-CCSSHARE(elec,reg))))*CHIETSPRICE)$(ord(reg) eq 17)
                                               -sum(elec,(PELEC(elec,reg)/(1-TSUB(elec,reg)))*TSUB(elec,reg)*ELECGEN(elec,reg))
                                               -(CARBONCREDIT("BIO",reg)*CCSSHARE("BIO",reg)*EUETSPRICE*(EX("USA")/EX(reg))*ELECGEN("BIO",reg))$(ord(reg) le 14)
                                               -(CARBONCREDIT("BIO",reg)*CCSSHARE("BIO",reg)*TAXECO2(reg)*ELECGEN("BIO",reg))$((ord(reg) gt 14) and (ord(reg) ne 17))
                                               -(CARBONCREDIT("BIO",reg)*CCSSHARE("BIO",reg)*CHIETSPRICE*ELECGEN("BIO",reg))$(ord(reg) eq 17);


EFGRS52031(reg)..           FGRS_VATIO_G(reg)  =E= sum(pro,sum(sec,IOV(pro,sec,reg)*TXTVAIO(pro,sec,reg)*PB(pro,reg)))+
                                               sum(pro,sum(elec,DEPRPOWER(elec,pro,reg)*ENMAPOWER0(elec,reg)*TXTVAIOPOWER(elec,pro,reg)))+
                                               (sum(secem7,sum(secnets,IOV(secem7,secnets,reg)*DTXTVAIO(secem7,secnets,reg)))*TAXECO2(reg))+
                                               (sum(secem7,sum(secets,IOV(secem7,secets,reg)*DTXTVAIO(secem7,secets,reg)))*EUETSPRICE*(EX("USA")/EX(reg)))$(ord(reg) le 14)+
                                               (sum(secem7,IOV(secem7,"12",reg)*DTXTVAIO(secem7,"12",reg))*(SHARE_ETS_AVIATION(reg)*EUETSPRICE*(EX("USA")/EX(reg))+(1-SHARE_ETS_AVIATION(reg))*TAXECO2(reg)))$(ord(reg) le 14)+
                                               (sum(secem7,sum(secets,IOV(secem7,secets,reg)*DTXTVAIO(secem7,secets,reg)))*TAXECO2(reg))$(ord(reg) gt 14)+
                                               (sum(secem7,sum(elec,DEPRPOWER(elec,secem7,reg)*ENMAPOWER0(elec,reg)*DTXTVAIOPOWER(elec,secem7,reg)*(1-CCSSHARE(elec,reg))))*TAXECO2(reg))$((ord(reg) gt 14) and (ord(reg) ne 17))+
                                               (sum(secem7,sum(elec,DEPRPOWER(elec,secem7,reg)*ENMAPOWER0(elec,reg)*DTXTVAIOPOWER(elec,secem7,reg)*(1-CCSSHARE(elec,reg))))*EUETSPRICE*(EX("USA")/EX(reg)))$(ord(reg) le 14)+
                                               (sum(secem7,sum(elec,DEPRPOWER(elec,secem7,reg)*ENMAPOWER0(elec,reg)*DTXTVAIOPOWER(elec,secem7,reg)*(1-CCSSHARE(elec,reg))))*(CHIETSPRICE+TAXECO2(reg)))$(ord(reg) eq 17)
                                               -sum(elec,(PELEC(elec,reg)/(1-TSUB(elec,reg)))*TSUB(elec,reg)*ELECGEN(elec,reg))
                                               -(CARBONCREDIT("BIO",reg)*CCSSHARE("BIO",reg)*EUETSPRICE*(EX("USA")/EX(reg))*ELECGEN("BIO",reg))$(ord(reg) le 14)
                                               -(CARBONCREDIT("BIO",reg)*CCSSHARE("BIO",reg)*TAXECO2(reg)*ELECGEN("BIO",reg))$((ord(reg) gt 14) and (ord(reg) ne 17))
                                               -(CARBONCREDIT("BIO",reg)*CCSSHARE("BIO",reg)*(CHIETSPRICE+TAXECO2(reg))*ELECGEN("BIO",reg))$(ord(reg) eq 17);


EFGRS6(reg)..           FGRS_VATST_G(reg)  =E= sum(sec,STV(sec,reg)*PB(sec,reg)*TXTVAST(sec,reg));

EFGRS7(reg)..           FGRS_VATINV_G(reg)  =E= sum(pro,PB(pro,reg)*sum(sec,TINV(pro,sec,reg)*INVV(sec,reg)*TXTVAIN(pro,sec,reg)))+
                                                sum(pro,PB(pro,reg)*TINV(pro,"05",reg)*TXTVAIN(pro,"05",reg)*sum(elec,INVVELEC(elec,reg)));

EFGRS8(reg)..           FGRS_VATGC_G(reg)  =E= sum(sec,GCV(sec,reg)*PB(sec,reg)*TXTVAGC(sec,reg));

ESAVEG(reg)..           SAVE_G(reg) =E= FGRS_IT_G(reg)+FGRS_VATIO_G(reg)+FGRS_VATHC_G(reg)
                                          +FGRS_VATST_G(reg)+FGRS_VATINV_G(reg)
                                          +FGRS_DT_H(reg)+FGRS_DUT_G(reg)+FSEFA_G_L(reg)+FGRS_VATGC_G(reg)
                                          -sum(sec,GCV(sec,reg)*PGC(sec,reg))-FSESE_H_G(reg)
                                          +QUOTANET(reg)*TAXECO2(reg)*1000;


ESAVEH(reg)..           SAVE_H(reg) =E= FSEFA_H_K(reg)+FSEFA_H_L(reg)+FSEFA_H_F(reg)+FSESE_H_G(reg)-FSESE_H_W(reg)
                                          -sum(sec,PHC(sec,reg)*HCV(sec,reg))-FGRS_DT_H(reg);



ECO2(reg)..              CO2(reg)     =E= (sum(sec,sum(secefm7,CTEP(secefm7,sec,reg)*IOV(secefm7,sec,reg)*CO2CONTENTIO(secefm7,sec,reg)))+
                                          sum(secefm7,CTEPH(secefm7,reg)*HCV(secefm7,reg)*CO2CONTENTH(secefm7,reg))+
                                          sum(secefm7,CTEPG(secefm7,reg)*GCV(secefm7,reg)*CO2CONTENTG(secefm7,reg)))+
                                          sum(secefm7,sum(elec,(1-CCSSHARE(elec,reg))*CTEPOWER(elec,secefm7,reg)*DEPRPOWER(elec,secefm7,reg)*ENMAPOWER(elec,reg)*CO2CONTENTIOPOWER(elec,secefm7,reg)));

* Prendre en compte le prix des transports dans le prix des imports


EPIMP(sec,reg)..        PIMP(sec,reg) =E= ((APIMP(sec,reg)*sum(rege,CIMP(sec,rege,reg)*
                                         ( PIMPR(sec,rege,reg)*(1+TXDUT(sec,rege,reg)))**(1-SIGMAI(sec,reg)))
                                         **(1/(1-SIGMAI(sec,reg))))$(IMPO0(sec,reg) ne 0) + 1$(IMPO0(sec,reg) eq 0));


EIMPOR(sec,rege,reg)$(IMPOR0(sec,rege,reg) ne 0).. IMPOR(sec,rege,reg)  =E= (IMPO(sec,reg)*APIMP(sec,reg)*CIMP(sec,rege,reg)*(PIMP(sec,reg)/(APIMP(sec,reg)*
                                             PIMPR(sec,rege,reg)*(1+TXDUT(sec,rege,reg))))**SIGMAI(sec,reg));

EPIMPR(sec,rege,reg)$(IMPOR0(sec,rege,reg) ne 0).. PIMPR(sec,rege,reg)  =E= sum(sectra,CIMPMTRA(sectra,sec,rege,reg)*sum(regf,TIMPMTRA(sectra,sec,regf,rege,reg)
                                                *PEX(sectra,regf)*(EX(regf)/EX(reg))))+
                                               (1-sum(sectra,CIMPMTRA(sectra,sec,rege,reg)))*PEX(sec,rege)*(EX(rege)/EX(reg));

EIMPTRA(sectra)..        IMPTRA(sectra) =E= sum(sec,sum(rege,sum(reg,CIMPMTRA(sectra,sec,rege,reg)*IMPOR(sec,rege,reg))));

EEXPOP(sec,reg)$(EXPOP0(sec,reg) ne 0)..   EXPOP(sec,reg) =E= sum(rege,IMPOR(sec,reg,rege))
                                           -sum(sectra,sum(rege, CIMPMTRA(sectra,sec,reg,rege)*IMPOR(sec,reg,rege)))
                                            +TIMPMTRA0(sec,reg)*IMPTRA(sec)$((ord(sec) eq 10) or (ord(sec) eq 11) or (ord(sec) eq 12));


EPK(sec,reg)..          PK(sec,reg)     =E= PK0(sec,reg);

EPELECKAV(elec,reg)..   PELECKAV(elec,reg) =E= PELECKAV0(elec,reg);

EEX(reg)..              EX(reg)     =E= EX0(reg);


MRKL(reg)..             NSUP(reg)     =E= sum(sec,LAV(sec,reg))+sum(elec,LAVPOWER(elec,reg));

MRKK(sec,reg)$(KAVC0(sec,reg) ne 0)..          KAV(sec,reg)     =E= KAVC(sec,reg);

MRELECKAV(elec,reg)..   ELECKAV(elec,reg) =E= ELECKAVC(elec,reg);

MRKF(secff,reg)..       FFS(secff,reg) =G= FF(secff,reg);


MRCOM(reg)$(ord(reg) ne 16)..   (sum(sec,IMPO(sec,reg)*PIMP(sec,reg))+FSESE_H_W(reg)-FGRS_DUT_G(reg)) =E=
                                (sum(sec,EXPOP(sec,reg)*PEX(sec,reg))+EC(reg))+QUOTANET(reg)*TAXECO2(reg)*1000;

EEUETSPRICE..     EUETSPRICE =E= EUETSPRICE_EXO;

EEUETSPRICE2..    EUETSPRICE2 =E= 0;

ECHIETSPRICE..    CHIETSPRICE =E= 0;

ETAXECO2B(reg)..       TAXECO2(reg) =E= 0;

MRCO2(reg)..       CO2Q(reg) =G=  CO2(reg);

MREUETS..         CO2QEUETS =G=     sum(regeu,sum(secets,sum(secef,CTEP(secef,secets,regeu)*IOV(secef,secets,regeu)*CO2CONTENTIO(secef,secets,regeu)))+
                                    sum(secef,sum(elec,(1-CCSSHARE(elec,regeu))*CTEPOWER(elec,secef,regeu)*DEPRPOWER(elec,secef,regeu)*ENMAPOWER(elec,regeu)*CO2CONTENTIOPOWER(elec,secef,regeu)))+
                                    SHARE_ETS_AVIATION(regeu)*sum(secef,CTEP(secef,"12",regeu)*IOV(secef,"12",regeu)*CO2CONTENTIO(secef,"12",regeu))
                                    -CCSSHARE("BIO",regeu)*ELECGEN("BIO",regeu)*CARBONCREDIT("BIO",regeu)/1000);


MRCHIETS..         CO2QCHIETS =G=  sum(secef,sum(elec,(1-CCSSHARE(elec,"CHI"))*CTEPOWER(elec,secef,"CHI")*DEPRPOWER(elec,secef,"CHI")*ENMAPOWER(elec,"CHI")*CO2CONTENTIOPOWER(elec,secef,"CHI")))
                                   -CCSSHARE("BIO","CHI")*ELECGEN("BIO","CHI")*CARBONCREDIT("BIO","CHI")/1000;


MREUESR..   sum(regeu,CO2QEUESR(regeu)) =G=  sum(regeu,(1-SHARE_ETS_AVIATION(regeu))*sum(secef,CTEP(secef,"12",regeu)*IOV(secef,"12",regeu)*CO2CONTENTIO(secef,"12",regeu))+
                                         sum(secnets,sum(secef,CTEP(secef,secnets,regeu)*IOV(secef,secnets,regeu)*CO2CONTENTIO(secef,secnets,regeu)))+
                                         sum(secef,CTEPH(secef,regeu)*HCV(secef,regeu)*CO2CONTENTH(secef,regeu))+
                                         sum(secef,CTEPG(secef,regeu)*GCV(secef,regeu)*CO2CONTENTG(secef,regeu))+
                                         sum(ghg,EGHG(ghg,regeu)*GWP(ghg)));



MRGHG(regmeu)..   CO2Q(regmeu) =G=       sum(secef,sum(elec,(1-CCSSHARE(elec,regmeu))*CTEPOWER(elec,secef,regmeu)*DEPRPOWER(elec,secef,regmeu)*ENMAPOWER(elec,regmeu)*CO2CONTENTIOPOWER(elec,secef,regmeu)))+
                                         sum(sec,sum(secef,CTEP(secef,sec,regmeu)*IOV(secef,sec,regmeu)*CO2CONTENTIO(secef,sec,regmeu)))+
                                         sum(secef,CTEPH(secef,regmeu)*HCV(secef,regmeu)*CO2CONTENTH(secef,regmeu))+
                                         sum(secef,CTEPG(secef,regmeu)*GCV(secef,regmeu)*CO2CONTENTG(secef,regmeu))+
                                         sum(ghg,EGHG(ghg,regmeu)*GWP(ghg))
                                         -CCSSHARE("BIO",regmeu)*ELECGEN("BIO",regmeu)*CARBONCREDIT("BIO",regmeu)/1000;


EEGHG(ghg,reg)..    EGHG(ghg,reg)=E=(
                                    (sum(secm,(1-ABAT(ghg,reg))*ACXD(ghg,secm,reg)*XD(secm,reg)))+
                                    sum(secff,(1-ABAT(ghg,reg))*ACXD(ghg,secff,reg)*XDPF(secff,reg))-
                                    (1-ABAT(ghg,reg))*ACXD(ghg,"07",reg)*XDPF("07",reg)+
                                    (1-ABAT(ghg,reg))*ACXD(ghg,"04",reg)*XDPP("04",reg)+
                                    (1-ABAT(ghg,reg))*ACXD(ghg,"05",reg)*XDPGEN(reg)+
                                    sum(sec,(1-ABAT(ghg,reg))*ACHCV(ghg,sec,reg)*HCV(sec,reg))+
                                    sum(sec,sum(pro,(1-ABAT(ghg,reg))*ACIO(ghg,pro,sec,reg)*IOV(pro,sec,reg)))+
                                    sum(elec,(1-ABAT(ghg,reg))*AELECGEN(ghg,elec,reg)*ELECGEN(elec,reg)))/1000;



EEEGHG(reg)..      GHGT(reg)     =E= CO2(reg)+sum(ghgch4,EGHG(ghgch4,reg))*GWP_CH4+sum(ghgn2O,EGHG(ghgn2O,reg))*GWP_N2O/1000+sum(ghgCO2,EGHG(ghgco2,reg))+sum(ghgfluo,EGHG(ghgfluo,reg));

MRINV(reg)..            INVCC(reg) =E= sum(sec,PINVB(sec,reg)*INVV(sec,reg))+sum(elec,INVVELEC(elec,reg))*PINVB("05",reg);

MRSAVEG(reg)..            SAVECC_G(reg) =E= SAVE_G(reg);

ETSAVE(reg)..            TSAVE(reg)   =E= TSAVE0(reg);

ETXFGRSPRED_H(reg)..     TXFGRS_H(reg)   =E= TXFGRS0_H(reg);

ETAXECO2(reg)..     TAXECO2(reg)=E=EUETSPRICE2*(EX("USA")/EX(reg))$(ord(reg) le 14)+TAXECO2INIT_CC(reg);

ETAXECO22030(reg).. TAXECO2(reg)=E=EUETSPRICE2*(EX("USA")/EX(reg))$(ord(reg) le 14)+TAXECO2NEU(reg)$(ord(reg) gt 14)+TAXECO2INIT_CC(reg);

EQUOTANET(reg).. QUOTANET(reg)=E=0$(ord(reg) gt 14)+ (CO2QEUESR(reg)-(
                                        (1-SHARE_ETS_AVIATION(reg))*sum(secef,CTEP(secef,"12",reg)*IOV(secef,"12",reg)*CO2CONTENTIO(secef,"12",reg))+
                                         sum(secnets,sum(secef,CTEP(secef,secnets,reg)*IOV(secef,secnets,reg)*CO2CONTENTIO(secef,secnets,reg)))+
                                         sum(secef,CTEPH(secef,reg)*HCV(secef,reg)*CO2CONTENTH(secef,reg))+
                                         sum(secef,CTEPG(secef,reg)*GCV(secef,reg)*CO2CONTENTG(secef,reg))+
                                         sum(ghg,EGHG(ghg,reg)*GWP(ghg))))$(ord(reg) le 14);

EQUOTANETB(reg).. QUOTANET(reg)=E=0

Option decimals=7;


MODEL GEMINI_calage /
EPIBVA.PIBVA,EPIBVO.PIBVO,EPIMP.PIMP,EIMPOR.IMPOR,EPIMPR.PIMPR,EIMPTRA.IMPTRA,
EINVPVP.INVPVP,EEXPOP.EXPOP,EYD.YD,EPY.PY,EXD.XD,EFF.FF,EIMPO.IMPO,EXDPF.XDPF,
EPDPF.PDPF,EXDPP.XDPP,EPDPP.PDPP,EPD.PD,EKAV.KAV,ELAV.LAV,EEN.EN,EMA.MA,ETRA.TRA,
ETRANAE.TRANAE,ETRAP.TRAP,ETRAO.TRAO,ETRAEV.TRAEV,ETRAIC.TRAIC,EFUELIC.FUELIC,
EPTRANAE.PTRANAE,EPTRAP.PTRAP,EPTRAO.PTRAO,EPTRAEV.PTRAEV,EPTRAIC.PTRAIC,EPFUELIC.PFUELIC,
EOTRA.OTRA,EPTRA.PTRA,EPOTRA.POTRA,EPE.PE,EPEF.PEF,EENF.ENF,EIOV.IOV,EPM.PM,EPDR.PDR,
EPDRA.PDRA,EKAVO.KAVO,EKAVA.KAVA,EINVV.INVV
EHCDTOT.HCDTOT,EPHCDTOT.PHCDTOT,EHCRES.HCRES,EHCTRA.HCTRA,EHCOTH.HCOTH,EPHCOTH.PHCOTH,
EPHCTRA.PHCTRA,EPHCRES.PHCRES,EPHCRESE.PHCRESE,EPHCRESEF.PHCRESEF,EHCRESEF.HCRESEF,
EHCVHEATPUMP.HCVHEATPUMP,EPHCHEATPUMP.PHCHEATPUMP,
EIOVHEATPUMP.IOVHEATPUMP,EPIOHEATPUMP.PIOHEATPUMP,
EHCRESE.HCRESE,EHCTRAP.HCTRAP,EHCTRAO.HCTRAO,EPHCTRAP.PHCTRAP,EPHCTRAO.PHCTRAO,
EPHCTRNAE.PHCTRNAE,EHCTRNAE.HCTRNAE,
EPHCTRAEV.PHCTRAEV,EPHCTRAIC.PHCTRAIC,EHCTRAEV.HCTRAEV,EHCTRAIC.HCTRAIC,EHFUELIC.HFUELIC,EPHCFUELIC.PHCFUELIC,
EHCV.HCV,
EPB.PB,EPHC.PHC,
EPGC.PGC,EPINV.PINV,EPEX.PEX,EPL.PL,EPIO.PIO,EPF.PF,EFSEFA1.FSEFA_H_L,
EFSEFA2.FSEFA_H_K,EFSEFA3.FSEFA_H_F,EFSEFA4.FSEFA_G_L,EFGRS1.FGRS_DT_H,
EFSEFE1.FSESE_H_G,EFGRS2.FGRS_IT_G,EFGRS3.FGRS_DUT_G,EFGRS4.FGRS_VATHC_G,
EFGRS5.FGRS_VATIO_G,EFGRS6.FGRS_VATST_G,EFGRS7.FGRS_VATINV_G,EFGRS8.FGRS_VATGC_G,
ESAVEG.SAVE_G,ESAVEH.SAVE_H,MRKL.RLTL,EPK.PK,EEX.EX,EFSEFE2.FSESE_H_W,
EGEN.GEN,EPGEN.PGEN,EELECGEN.ELECGEN,EGENFOSS.GENFOSS,EPGENFOSS.PGENFOSS,EPELEC.PELEC,
EGENMHYDNUC.GENMHYDNUC,EPGENMHYDNUC.PGENMHYDNUC,
ELAVPOWER.LAVPOWER,EELECKAV.ELECKAV,EELECKAVA.ELECKAVA,EELECKAVO.ELECKAVO,
EENMAPOWER.ENMAPOWER,EPELECENMA.PELECENMA,EPELECR.PELECR,EPELECRA.PELECRA
EPDPGEN.PDPGEN,EXDPGEN.XDPGEN,EPELECKAV.PELECKAV,EINVVELEC.INVVELEC
EEUETSPRICE.EUETSPRICE,ETAXECO2B.TAXECO2,ETXFGRSPRED_H.TXFGRS_H,ETSAVE.TSAVE,ECHIETSPRICE.CHIETSPRICE
EQUOTANETB.QUOTANET
/;


MODEL GEMINIV /
EPIBVA.PIBVA,EPIBVO.PIBVO,EPIMP.PIMP,EIMPOR.IMPOR,EPIMPR.PIMPR,EIMPTRA.IMPTRA,
EINVPVP.INVPVP,EEXPOP.EXPOP,EYD.YD,EPY.PY,EXD.XD,EFF.FF,EIMPO.IMPO,EXDPF.XDPF,
EPDPF.PDPF,EXDPP.XDPP,EPDPP.PDPP,EPD.PD,EKAV.KAV,ELAV.LAV,EEN.EN,EMA.MA,ETRA.TRA,
ETRANAE.TRANAE,ETRAP.TRAP,ETRAO.TRAO,ETRAEV.TRAEV,ETRAIC.TRAIC,EFUELIC.FUELIC,
EPTRANAE.PTRANAE,EPTRAP.PTRAP,EPTRAO.PTRAO,EPTRAEV.PTRAEV,EPTRAIC.PTRAIC,EPFUELIC.PFUELIC,
EOTRA.OTRA,EPTRA.PTRA,EPOTRA.POTRA,EPE.PE,EPEF.PEF,EENF.ENF,EIOV.IOV,EPM.PM,EPDR.PDR,
EPDRA.PDRA,EKAVO.KAVO,EKAVA.KAVA,EINVV.INVV
EHCDTOT.HCDTOT,EPHCDTOT.PHCDTOT,EHCRES.HCRES,EHCTRA.HCTRA,EHCOTH.HCOTH,EPHCOTH.PHCOTH,
EPHCTRA.PHCTRA,EPHCRES.PHCRES,EPHCRESE.PHCRESE,EPHCRESEF.PHCRESEF,EHCRESEF.HCRESEF,
EHCVHEATPUMP.HCVHEATPUMP,EPHCHEATPUMP.PHCHEATPUMP,
EIOVHEATPUMP.IOVHEATPUMP,EPIOHEATPUMP.PIOHEATPUMP,
EHCRESE.HCRESE,EHCTRAP.HCTRAP,EHCTRAO.HCTRAO,EPHCTRAP.PHCTRAP,EPHCTRAO.PHCTRAO,
EPHCTRNAE.PHCTRNAE,EHCTRNAE.HCTRNAE,
EPHCTRAEV.PHCTRAEV,EPHCTRAIC.PHCTRAIC,EHCTRAEV.HCTRAEV,EHCTRAIC.HCTRAIC,EHFUELIC.HFUELIC,EPHCFUELIC.PHCFUELIC,
EHCV.HCV,
EPB.PB,EPHC.PHC,
EPGC.PGC,EPINV.PINV,EPEX.PEX,EPL.PL,EPIO.PIO,EFSEFA1.FSEFA_H_L,
EFSEFA2.FSEFA_H_K,EFSEFA3.FSEFA_H_F,EFSEFA4.FSEFA_G_L,EFGRS1.FGRS_DT_H,
EFSEFE1.FSESE_H_G,EFGRS2.FGRS_IT_G,EFGRS3.FGRS_DUT_G,EFGRS4.FGRS_VATHC_G,
EFGRS5.FGRS_VATIO_G,EFGRS6.FGRS_VATST_G,EFGRS7.FGRS_VATINV_G,EFGRS8.FGRS_VATGC_G,
ESAVEG.SAVE_G,ESAVEH.SAVE_H,MRKL.RLTL,MRKK.PK,
MRCOM.EX,MRKF.PF,EFSEFE2.FSESE_H_W
EGEN.GEN,EPGEN.PGEN,EELECGEN.ELECGEN,EGENFOSS.GENFOSS,EPGENFOSS.PGENFOSS,EPELEC.PELEC,
EGENMHYDNUC.GENMHYDNUC,EPGENMHYDNUC.PGENMHYDNUC,
ELAVPOWER.LAVPOWER,EELECKAV.ELECKAV,MRELECKAV.PELECKAV,EELECKAVA.ELECKAVA,EELECKAVO.ELECKAVO,
EENMAPOWER.ENMAPOWER,EPELECENMA.PELECENMA,EPELECR.PELECR,EPELECRA.PELECRA
EPDPGEN.PDPGEN,EXDPGEN.XDPGEN,EINVVELEC.INVVELEC
EEGHG.EGHG,ECO2.CO2,EEEGHG.GHGT
MRSAVEG.TXFGRS_H,MRINV.TSAVE,
MREUETS.EUETSPRICE,MRCHIETS.CHIETSPRICE,ETAXECO2B.TAXECO2
EQUOTANETB.QUOTANET/;


MODEL GEMINIV2023 /
EPIBVA.PIBVA,EPIBVO.PIBVO,EPIMP.PIMP,EIMPOR.IMPOR,EPIMPR.PIMPR,EIMPTRA.IMPTRA,
EINVPVP.INVPVP,EEXPOP.EXPOP,EYD.YD,EPY.PY,EXD.XD,EFF.FF,EIMPO.IMPO,EXDPF.XDPF,
EPDPF.PDPF,EXDPP.XDPP,EPDPP.PDPP,EPD.PD,EKAV.KAV,ELAV.LAV,EEN.EN,EMA.MA,ETRA.TRA,
ETRANAE.TRANAE,ETRAP.TRAP,ETRAO.TRAO,ETRAEV.TRAEV,ETRAIC.TRAIC,EFUELIC.FUELIC,
EPTRANAE.PTRANAE,EPTRAP.PTRAP,EPTRAO.PTRAO,EPTRAEV.PTRAEV,EPTRAIC.PTRAIC,EPFUELIC.PFUELIC,
EOTRA.OTRA,EPTRA.PTRA,EPOTRA.POTRA,EPE.PE,EPEF.PEF,EENF.ENF,EIOV.IOV,EPM.PM,EPDR.PDR,
EPDRA.PDRA,EKAVO.KAVO,EKAVA.KAVA,EINVV.INVV
EHCDTOT.HCDTOT,EPHCDTOT.PHCDTOT,EHCRES.HCRES,EHCTRA.HCTRA,EHCOTH.HCOTH,EPHCOTH.PHCOTH,
EPHCTRA.PHCTRA,EPHCRES.PHCRES,EPHCRESE.PHCRESE,EPHCRESEF.PHCRESEF,EHCRESEF.HCRESEF,
EHCVHEATPUMP.HCVHEATPUMP,EPHCHEATPUMP.PHCHEATPUMP
EIOVHEATPUMP.IOVHEATPUMP,EPIOHEATPUMP.PIOHEATPUMP,
EHCRESE.HCRESE,EHCTRAP.HCTRAP,EHCTRAO.HCTRAO,EPHCTRAP.PHCTRAP,EPHCTRAO.PHCTRAO,
EPHCTRNAE.PHCTRNAE,EHCTRNAE.HCTRNAE,
EPHCTRAEV.PHCTRAEV,EPHCTRAIC.PHCTRAIC,EHCTRAEV.HCTRAEV,EHCTRAIC.HCTRAIC,EHFUELIC.HFUELIC,EPHCFUELIC.PHCFUELIC,
EHCV.HCV,
EPB.PB,EPHC.PHC,
EPGC.PGC,EPINV.PINV,EPEX.PEX,EPL.PL,EPIO.PIO,EFSEFA1.FSEFA_H_L,
EFSEFA2.FSEFA_H_K,EFSEFA3.FSEFA_H_F,EFSEFA4.FSEFA_G_L,EFGRS1.FGRS_DT_H,
EFSEFE1.FSESE_H_G,EFGRS2.FGRS_IT_G,EFGRS3.FGRS_DUT_G,EFGRS4.FGRS_VATHC_G,
EFGRS5.FGRS_VATIO_G,EFGRS6.FGRS_VATST_G,EFGRS7.FGRS_VATINV_G,EFGRS8.FGRS_VATGC_G,
ESAVEG.SAVE_G,ESAVEH.SAVE_H,MRKL.RLTL,MRKK.PK,
MRCOM.EX,MRKF.PF,EFSEFE2.FSESE_H_W
EGEN.GEN,EPGEN.PGEN,EELECGEN.ELECGEN,EGENFOSS.GENFOSS,EPGENFOSS.PGENFOSS,EPELEC.PELEC,
EGENMHYDNUC.GENMHYDNUC,EPGENMHYDNUC.PGENMHYDNUC,
ELAVPOWER.LAVPOWER,EELECKAV.ELECKAV,MRELECKAV.PELECKAV,EELECKAVA.ELECKAVA,EELECKAVO.ELECKAVO,
EENMAPOWER.ENMAPOWER,EPELECENMA.PELECENMA,EPELECR.PELECR,EPELECRA.PELECRA
EPDPGEN.PDPGEN,EXDPGEN.XDPGEN,EINVVELEC.INVVELEC
MRSAVEG.TXFGRS_H,MRINV.TSAVE,
MREUETS.EUETSPRICE,MRCHIETS.CHIETSPRICE,ETAXECO2.TAXECO2,EEGHG.EGHG
MREUESR.EUETSPRICE2,EQUOTANET.QUOTANET/;


MODEL GEMINI2031 /
EPIBVA.PIBVA,EPIBVO.PIBVO,EPIMP.PIMP,EIMPOR.IMPOR,EPIMPR.PIMPR,EIMPTRA.IMPTRA,
EINVPVP.INVPVP,EEXPOP.EXPOP,EYD.YD,EPY.PY,EXD.XD,EFF.FF,EIMPO.IMPO,EXDPF.XDPF,
EPDPF.PDPF,EXDPP.XDPP,EPDPP.PDPP,EPD.PD,EKAV.KAV,ELAV.LAV,EEN.EN,EMA.MA,ETRA.TRA,
ETRANAE.TRANAE,ETRAP.TRAP,ETRAO.TRAO,ETRAEV.TRAEV,ETRAIC.TRAIC,EFUELIC.FUELIC,
EPTRANAE.PTRANAE,EPTRAP.PTRAP,EPTRAO.PTRAO,EPTRAEV.PTRAEV,EPTRAIC.PTRAIC,EPFUELIC.PFUELIC,
EOTRA.OTRA,EPTRA.PTRA,EPOTRA.POTRA,EPE.PE,EPEF.PEF,EENF.ENF,EIOV.IOV,EPM.PM,EPDR.PDR,
EPDRA.PDRA,EKAVO.KAVO,EKAVA.KAVA,EINVV.INVV
EHCDTOT.HCDTOT,EPHCDTOT.PHCDTOT,EHCRES.HCRES,EHCTRA.HCTRA,EHCOTH.HCOTH,EPHCOTH.PHCOTH,
EPHCTRA.PHCTRA,EPHCRES.PHCRES,EPHCRESE.PHCRESE,EPHCRESEF.PHCRESEF,EHCRESEF.HCRESEF,
EHCVHEATPUMP.HCVHEATPUMP,EPHCHEATPUMP.PHCHEATPUMP
EIOVHEATPUMP.IOVHEATPUMP,EPIOHEATPUMP.PIOHEATPUMP,
EHCRESE.HCRESE,EHCTRAP.HCTRAP,EHCTRAO.HCTRAO,EPHCTRAP.PHCTRAP,EPHCTRAO.PHCTRAO,
EPHCTRNAE.PHCTRNAE,EHCTRNAE.HCTRNAE,
EPHCTRAEV.PHCTRAEV,EPHCTRAIC.PHCTRAIC,EHCTRAEV.HCTRAEV,EHCTRAIC.HCTRAIC,EHFUELIC.HFUELIC,EPHCFUELIC.PHCFUELIC,
EHCV.HCV,
EPB.PB,EPHC.PHC,
EPGC.PGC,EPINV.PINV,EPEX.PEX,EPL.PL,EPIO.PIO,EFSEFA1.FSEFA_H_L,
EFSEFA2.FSEFA_H_K,EFSEFA3.FSEFA_H_F,EFSEFA4.FSEFA_G_L,EFGRS1.FGRS_DT_H,
EFSEFE1.FSESE_H_G,EFGRS2.FGRS_IT_G,EFGRS3.FGRS_DUT_G,EFGRS4.FGRS_VATHC_G,
EFGRS52031.FGRS_VATIO_G,EFGRS6.FGRS_VATST_G,EFGRS7.FGRS_VATINV_G,EFGRS8.FGRS_VATGC_G,
ESAVEG.SAVE_G,ESAVEH.SAVE_H,MRKL.RLTL,MRKK.PK,
MRCOM.EX,EPF2.PF,EFSEFE2.FSESE_H_W
EGEN.GEN,EPGEN.PGEN,EELECGEN.ELECGEN,EGENFOSS.GENFOSS,EPGENFOSS.PGENFOSS,EPELEC2031.PELEC,
EGENMHYDNUC.GENMHYDNUC,EPGENMHYDNUC.PGENMHYDNUC,
ELAVPOWER.LAVPOWER,EELECKAV.ELECKAV,MRELECKAV.PELECKAV,EELECKAVA.ELECKAVA,EELECKAVO.ELECKAVO,
EENMAPOWER.ENMAPOWER,EPELECENMA2031.PELECENMA,EPELECR.PELECR,EPELECRA.PELECRA
EPDPGEN.PDPGEN,EXDPGEN.XDPGEN,EINVVELEC.INVVELEC
MREUETS.EUETSPRICE,MRCHIETS.CHIETSPRICE,ETAXECO22030.TAXECO2,EEGHG.EGHG
MREUESR.EUETSPRICE,MRGHG.TAXECO2NEU,EQUOTANETB.QUOTANET /;

* DEBUT ITERATION POUR CALAGE
fILE infoiter information sur la convergence /iter.txt/;


* based on IPCC AR5
* see https://www.ghgprotocol.org/sites/default/files/ghgp/Global-Warming-Potential-Values%20%28Feb%2016%202016%29_1.pdf
GWP_CH4=28;
GWP_N2O=265;

* EPA Figures   epa_non-co2_greenhouse_gases_rpt-epa430r19010.pdf
CARBONCREDIT("BIO",reg)=1.5887;
HC(reg)=0;


iter=2017;
iterfin=2030;

TSUB(elec,reg)=0;
PFMIN(secff,reg)=0.0002;



SORTIEMAC("PGDP","2015",reg)=1;
SORTIEMAC("PGDP","2016",reg)=1;
PHCDTOT.L(reg)     =        PHCDTOT0(reg) ;
HCTRA.L(reg)       =        HCTRA0(reg);
HCOTH.L(reg)       =        HCOTH0(reg);
PHCOTH.L(reg)      =        PHCOTH0(reg);
PHCTRA.L(reg)      =        PHCTRA0(reg);
PHCRES.L(reg)      =        PHCRES0(reg);
PHCRESE.L(reg)     =        PHCRESE0(reg);
PHCRESEF.L(reg)    =        PHCRESEF0(reg);
HCRESEF.L(reg)     =        HCRESEF0(reg);
HCRESE.L(reg)      =        HCRESE0(reg);
HCTRAP.L(reg)      =        HCTRAP0(reg);
HCTRAO.L(reg)      =        HCTRAO0(reg);
PHCTRAP.L(reg)     =        PHCTRAP0(reg);
PHCTRAO.L(reg)     =        PHCTRAO0(reg);
HCRES.L(reg)       =        HCRES0(reg) ;
PHCTRNAE.L(reg)    =        PHCTRNAE0(reg);
HCTRNAE.L(reg)     =        HCTRNAE0(reg);
HCTRAEV.L(reg)     =        HCTRAEV0(reg);
HCTRAIC.L(reg)     =        HCTRAIC0(reg);
PHCTRAEV.L(reg)    =        PHCTRAEV0(reg);
PHCTRAIC.L(reg)    =        PHCTRAIC0(reg);
PHCFUELIC.L(reg)   =        PHCFUELIC0(reg);
HCDTOT.L(reg)      =        HCDTOT0(reg) ;
INVV.L(sec,reg)    =        INVV0(sec,reg)  ;
IMPTRA.L(sectra)   =        IMPTRA0(sectra)   ;
XD.L(sec,reg)      =        XD0(sec,reg)      ;
XDPP.L(secrp,reg)  =        XDPP0(secrp,reg)  ;
XDPF.L(secff,reg)  =        XDPF0(secff,reg)  ;
KAV.L(sec,reg)    =         KAV0(sec,reg)    ;
KAVO.L(sec,reg)    =        KAVO0(sec,reg)    ;
KAVA.L(sec,reg)    =        KAVA0(sec,reg)    ;
LAV.L(sec,reg)     =        LAV0(sec,reg)     ;
EN.L(sec,reg)      =        EN0(sec,reg)      ;
MA.L(sec,reg)      =        MA0(sec,reg)      ;
ENF.L(sec,reg)     =        ENF0(sec,reg)     ;
TRA.L(sec,reg)     =        TRA0(sec,reg)     ;
OTRA.L(sec,reg)     =       OTRA0(sec,reg)     ;
FF.L(secff,reg)    =        FF0(secff,reg)    ;
PD.L(sec,reg)      =        PD0(sec,reg)      ;
PDPF.L(secff,reg)  =        PDPF0(secff,reg)  ;
PDPP.L(secrp,reg)  =        PDPP0(secrp,reg)  ;
PL.L(sec,reg)      =        PL0(sec,reg)      ;
PM.L(sec,reg)      =        PM0(sec,reg)      ;
PE.L(sec,reg)      =        PE0(sec,reg)      ;
PB.L(sec,reg)      =        PB0(sec,reg)      ;
PEF.L(sec,reg)     =        PEF0(sec,reg)     ;
PM.L(sec,reg)      =        PM0(sec,reg)      ;
PTRA.L(sec,reg)    =        PTRA0(sec,reg)    ;
PTRAP.L(sec,reg)   =        PTRAP0(sec,reg)   ;
POTRA.L(sec,reg)   =        POTRA0(sec,reg)   ;
PTRAO.L(sec,reg)   =        PTRAO0(sec,reg)   ;
PTRANAE.L(sec,reg) =        PTRANAE0(sec,reg) ;
PTRAHY.L(sec,reg)  =        PTRAHY0(sec,reg)  ;
PHC.L(sec,reg)     =        PHC0(sec,reg)     ;
PDR.L(sec,reg)     =        PDR0(sec,reg)     ;
PDRA.L(sec,reg)    =        PDRA0(sec,reg)    ;
PINV.L(sec,reg)    =        PINV0(sec,reg)    ;
RLTL.L(reg)        =        RLTL0(reg)        ;
PEX.L(sec,reg)     =        PEX0(sec,reg)     ;

FSEFA_H_K.L(reg)   =        FSEFA0("H","K",reg);
FSEFA_H_L.L(reg)   =        FSEFA0("H","L",reg);
FSEFA_H_F.L(reg)   =        FSEFA0("H","F",reg);
FSEFA_G_L.L(reg)   =        FSEFA0("G","L",reg);
FSESE_H_G.L(reg)   =        FSESE0_H_G(reg);
FSESE_H_W.L(reg)   =        FSESE0_H_W(reg);
FGRS_DT_H.L(reg)     =     FGRS0("DT","H",reg)  ;
FGRS_IT_G.L(reg)     =     FGRS0("IT","G",reg)  ;
FGRS_DUT_G.L(reg)    =     FGRS0("DUT","G",reg)  ;
FGRS_VATHC_G.L(reg)  =     FGRS0("VATHC","G",reg)  ;
FGRS_VATIO_G.L(reg)  =     FGRS0("VATIO","G",reg)  ;
FGRS_VATST_G.L(reg)  =     FGRS0("VATST","G",reg)  ;
FGRS_VATINV_G.L(reg) =     FGRS0("VATINV","G",reg)  ;
FGRS_VATGC_G.L(reg)  =     FGRS0("VATGC","G",reg)  ;
SAVE_H.L(reg)       =      SAVE0("H",reg)     ;
SAVE_G.L(reg)       =      SAVE0("G",reg)     ;
CO2.L(reg)           =     CO20(reg)         ;
PK.L(sec,reg)      =       PK0(sec,reg)      ;
PIMP.L(sec,reg)    =       PIMP0(sec,reg)    ;
EX.L(Reg)           =      EX0(reg);
EX.fx("USA")           =   EX0("USA");

PY.LO(sec,reg)      =        PY0(sec,reg)*0.0001      ;
PK.LO(sec,reg)      =        PK0(sec,reg)*0.000001      ;
PK.UP(sec,reg)      =        1.0;
PF.LO(secff,reg)    =        PF0(secff,reg)*0.0001    ;

loop(reg,

if (HCVHEATPUMP0(reg) eq 0,   HCVHEATPUMP.fx(reg)=0;
                             PHCHEATPUMP.fx(reg)=1
                     else
                             HCVHEATPUMP.L(reg)=HCVHEATPUMP0(reg);
                             PHCHEATPUMP.L(reg)=PHCHEATPUMP0(reg)
   ));

loop(sec,loop(reg,
if (YD0(sec,reg)  eq 0, PY.fx(sec,reg)=1;
                        YD.fx(sec,reg)=0

                   else PY.L(sec,reg)=PY0(sec,reg);
                        YD.L(sec,reg)=YD0(sec,reg)
   );
if (HCV0(sec,reg) eq 0, HCV.fx(sec,reg)=0 else HCV.L(sec,reg)=HCV0(sec,reg))
if (KAV0(sec,reg) eq 0, PK.fx(sec,reg)=1  else PK.L(sec,reg)=PK0(sec,reg))
))
loop(secff,loop(reg,
if (FF0(secff,reg) eq 0,PF.fx(secff,reg)=1 else PF.L(secff,reg)=PF0(secff,reg))
    ))
     ;
loop(sec,loop(reg,
if (TRAEV0(sec,reg) eq 0, PTRAEV.fx(sec,reg)=1;
                          TRAEV.fx(sec,reg)=0;
                     else PTRAEV.L(sec,reg)=PTRAEV0(sec,reg))
if (TRAIC0(sec,reg) eq 0, PTRAIC.fx(sec,reg)=1;
                          TRAIC.fx(sec,reg)=0;
                     else PTRAIC.L(sec,reg)=PTRAIC0(sec,reg))
if (TRAHY0(sec,reg) eq 0, PTRAHY.fx(sec,reg)=1;
                          TRAHY.fx(sec,reg)=0;
                     else PTRAHY.L(sec,reg)=PTRAHY0(sec,reg))
if (FUELIC0(sec,reg) eq 0,PFUELIC.fx(sec,reg)=1;
                          FUELIC.fx(sec,reg)=0;
                     else PFUELIC.L(sec,reg)=PFUELIC0(sec,reg))
if (IOVHEATPUMP0(sec,reg) eq 0, IOVHEATPUMP.fx(sec,reg)=0;
                                PIOHEATPUMP.fx(sec,reg)=1;
                          else  IOVHEATPUMP.L(sec,reg)=IOVHEATPUMP0(sec,reg);
                                PIOHEATPUMP.L(sec,reg)=PIOHEATPUMP0(sec,reg));
))


loop(sec,loop(pro,loop(reg,
if (IOV0(sec,pro,reg) eq 0,
   IOV.fx(sec,pro,reg)=0;
   PIO.fx(sec,pro,reg)=1;
                      else
   IOV.L(sec,pro,reg)= IOV0(sec,pro,reg);
   PIO.L(sec,pro,reg)=PIO0(sec,pro,reg);
   )
)));

loop(sec,loop(rege,loop(reg,
if (IMPOR0(sec,rege,reg) eq 0,
    IMPOR.fx(sec,rege,reg)=0;
    PIMPR.fx(sec,rege,reg)=1;
                    else
    IMPOR.L(sec,rege,reg)=IMPOR0(sec,rege,reg);
    PIMPR.L(sec,rege,reg)=PIMPR0(sec,rege,reg);
    PIMPR.LO(sec,rege,reg) = PIMPR0(sec,rege,reg)*0.00001;

   )
)));

loop(pro,loop(reg,
if (INVPVP0(pro,reg) eq 0,
    INVPVP.fx(pro,reg)=0;
                  else
    INVPVP.L(pro,reg)=INVPVP0(pro,reg);
   )
if (GCV0(pro,reg) eq 0,
     PGC.fx(pro,reg)=1;
                  else
     PGC.L(pro,reg)=PGC0(pro,reg);
    )
if (EXPOP0(pro,reg) eq 0,
     EXPOP.fx(pro,reg)=0;
                  else
      EXPOP.L(pro,reg)=EXPOP0(pro,reg);
    )
if (IMPO0(pro,reg) eq 0,
     IMPO.fx(pro,reg)=0;
                  else
      IMPO.L(pro,reg)=IMPO0(pro,reg);
    )
));


loop(elec,loop(reg,
if (ELECKAV0(elec,reg) eq 0, PELECKAV.fx(elec,reg)=1 else PELECKAV.L(elec,reg)=PELECKAV0(elec,reg) ;PELECKAV.LO(elec,reg)=0.00001*PELECKAV0(elec,reg));
if (ELECKAV0(elec,reg) eq 0, PELEC.fx(elec,reg)=1 else PELEC.L(elec,reg)=PELEC0(elec,reg));
if (ELECGEN0(elec,reg) eq 0, ELECGEN.fx(elec,reg)=0 else ELECGEN.L(elec,reg)=ELECGEN0(elec,reg));
  )
  );




W.fx(reg)           =        W0(reg)           ;
NSUP.fx(reg)        =        NSUP0(reg) ;
PDRM1.fx(sec,reg)   =        PDRM10(sec,reg)   ;
PDRM2.fx(sec,reg)   =        PDRM20(sec,reg)   ;



TSAVE.L(reg)       =        TSAVE0(reg)       ;
TXFGRS_H.L(reg)       =        TXFGRS0_H(reg);

QUOTANET.L(reg)    =        0    ;


PPIBM1.fx(reg)          =        1;
PIBVA.L(reg)=          PIBVA0(reg);
PIBVO.L(reg)=          PIBVO0(reg);
FFS.fx(secff,reg)  = FF0(secff,reg);

PD.LO(sec,reg)      =        PD0(sec,reg)*0.0001      ;
PDPF.LO(secff,reg)  =        PDPF0(secff,reg)*0.0001  ;
PDPP.LO(secrp,reg)  =        PDPP0(secrp,reg)*0.0001  ;
PL.LO(sec,reg)      =        PL0(sec,reg)*0.0001      ;
PM.LO(sec,reg)      =        PM0(sec,reg)*0.0001      ;
PE.LO(sec,reg)      =        PE0(sec,reg)*0.0001      ;
PB.LO(sec,reg)      =        PB0(sec,reg)*0.0001      ;
PEF.LO(sec,reg)     =        PEF0(sec,reg)*0.0001     ;
PIO.LO(pro,sec,reg) =        PIO0(pro,sec,reg)*0.0001 ;
PIMP.LO(sec,reg)    =        PIMP0(sec,reg)*0.001     ;
PM.LO(sec,reg)      =        PM0(sec,reg)*0.0001      ;
PHC.LO(sec,reg)     =        PHC0(sec,reg)*0.0001     ;
PDR.LO(sec,reg)     =        PDR0(sec,reg)*0.0001     ;
PDRA.LO(sec,reg)    =        PDRA0(sec,reg)*0.0001    ;
PINV.LO(sec,reg)    =        PINV0(sec,reg)*0.0001    ;
RLTL.LO(reg)        =        RLTL0(reg)*0.0001        ;
PGC.LO(sec,reg)     =        PGC0(sec,reg)*0.0001     ;
PEX.LO(sec,reg)     =        PEX0(sec,reg)*0.0001     ;



XDA(sec,reg)     =        XDA0(sec,reg)     ;
XDM1(sec,reg)    =        XDM10(sec,reg)    ;
XDM2(sec,reg)    =        XDM20(sec,reg)    ;
KAVC(sec,reg)    =        KAVC0(sec,reg)    ;
KAVCM1(sec,reg)  =        KAVCM10(sec,reg)   ;
GCV(sec,reg)     =        GCV0(sec,reg)     ;
GCVTOT(reg)      =        GCVTOT0(reg) ;
STV(sec,reg)     =        STV0(sec,reg)     ;

ELECKAVC(elec,reg)=       ELECKAVC0(elec,reg);

GENFOSS.L(reg)=GENFOSS0(reg);
PGENFOSS.L(reg)=PGENFOSS0(reg);
PDPGEN.L(reg)=PDPGEN0(reg);
XDPGEN.L(reg)=XDPGEN0(reg);
PGEN.L(reg)=PGEN0(reg);
GEN.L(reg)=GEN0(reg);
GENMHYDNUC.L(reg)=GENMHYDNUC0(reg);
PGENMHYDNUC.L(reg)=PGENMHYDNUC0(reg);
ELECKAV.L(elec,reg)=ELECKAV0(elec,reg);
ELECKAVA.L(elec,reg)=ELECKAVA0(elec,reg);
ELECKAVO.L(elec,reg)=ELECKAVO0(elec,reg);
PELECRA.L(elec,reg)=PELECRA0(elec,reg);
PELECR.L(elec,reg)=PELECR0(elec,reg);

PELECENMA.L(elec,reg)=PELECENMA0(elec,reg);

ELECKAVCM1(elec,reg) = ELECKAVCM10(elec,reg) ;
PELECRM1(elec,reg)=PELECRM10(elec,reg);
PELECRM2(elec,reg)=PELECRM20(elec,reg);
ELECGENA(elec,reg)=ELECGENA0(elec,reg);
ELECKAVC(elec,reg)=ELECKAVC0(elec,reg);
PELECA(elec,reg)=PELEC0(elec,reg)   ;
PELECM1(elec,reg)=PELEC0(elec,reg)   ;
PELECM2(elec,reg)=PELEC0(elec,reg)   ;
GENMHYDNUCM2(reg)=GENMHYDNUCM20(reg);
GENMHYDNUCM1(reg)=GENMHYDNUCM10(reg);

*ALELECKAVA("HYD",reg)=0;ALELECKAVA("NUC",reg)=0;

ELECGEN.fx("HYD",reg)=ELECGEN0("HYD",reg);
ELECGEN.fx("NUC",reg)=ELECGEN0("NUC",reg);

ELECKAVO.fx("HYD",reg)=ELECKAVO0("HYD",reg);
ELECKAVO.fx("NUC",reg)=ELECKAVO0("NUC",reg);

ELECKAVMAX(elec,reg)=1000000;
CCSSHARE(elec,reg)=0;

TAXECO2M(reg)=0;
IORD("100")=0;IORD("101")=5;IORD("102")=10;IORD("103")=15;IORD("104")=20;IORD("105")=30;IORD("106")=40;IORD("107")=50;IORD("108")=100;IORD("109")=500;IORD("110")=1000;


OPTION Limrow  =0;
OPTION Limcol  =0;
OPTION sysout  = off;
OPTION solprint = off;

OPTION reslim = 10000;
OPTION MCP=path;



infoiter.nd=0;
put infoiter system.date,' ',system.time;put /;


DELECFOSS(reg)=DELECFOSS0(reg);
DELEC(elec,reg)=DELEC0(elec,reg);
DEPR(sec,pro,reg)=DEPR0(sec,pro,reg);
DRESEE(reg)=DRESEE0(reg);
DE(sec,reg)=DE0(sec,reg);
DK(sec,reg)=DK0(sec,reg);
DL(sec,reg)=DL0(sec,reg);
DM(sec,reg)=DM0(sec,reg);
SIGMA(sec,reg)=SIGMA0(sec,reg);
SIGMAE(sec,reg)=SIGMAE0(sec,reg);
SIGMAEF(sec,reg)=SIGMAEF0(sec,reg);
SIGMAHC(reg)=SIGMAHC0(reg);



TGXD(sec,reg)=1;
TGFF(secff,reg)=1;
TGE(sec,reg)=1;
TGM(sec,reg)=1;
TGL(sec,reg)=1;
TGK(sec,reg)=1;
DEPR(sec,pro,reg)=DEPR0(sec,pro,reg);
DELECFOSS(reg)=DELECFOSS0(reg);
TGHCRES(reg)=1;
TGHCTRA(reg)=1;
TGHCOTH(reg)=1;
GEPR(pro,sec,reg)=1;
GETRAOQEV(sec,reg)=1;
GETRAOQHY(sec,reg)=1;
GETRAOQIC(sec,reg)=1;
GETRAOEEV(sec,reg)=1;
GETRAOEHY(sec,reg)=1;
GEFUELIC07(sec,reg)=1;
GEFUELIC04(sec,reg)=1;
GEFUELIC(sec,reg)=1;
GEHCOTHV(secoth,reg)=1;
GEHCRESQ(reg)=1;
GEHCTRAP(reg)=1;
GEHCTRAO(reg)=1;
GEHCRESE(reg)=1;
GEHCRESEF(reg)=1;
*GEHCTRAOE(reg)=1;
GEHCRESEE(sece,reg)=1;
GEHCTRAOEE(sec,reg)=1;
GEHCTRAPP(sectra,reg)=1;
*GEHCTRAOQ(reg)=1;
GEHCTRNAE(reg)=1;
GEHCTRAOEIC(reg)=1;
GEHCTRAOEEV(reg)=1;
GEHCTRAOQEV(reg)=1;
GEHCTRAOQIC(reg)=1;
GEHFUELIC(reg)=1;
GEHFUELIC04(reg)=1;
GEHFUELIC07(reg)=1;
GETRAOFUELIC(sec,reg)=1;
GEHCRESEE_HEATPUMP(reg)=1;
GEPR_HEATPUMP(sec,reg)=1;

TGKE(elec,reg)=1;
TGKEA(elec,reg)=1;

TGKEA(elec,reg)=(AVAILABITY(elec,reg,"2018")/AVAILABITY(elec,reg,"2017"))$(AVAILABITY(elec,reg,"2017") ne 0);
ABAT(ghg,reg)=0;


EUETSPRICE_EXO=0;

$include Climate_Target

SOLVE GEMINI_calage USING MCP;
KAVC(sec,reg)    =        KAV.L(sec,reg)    ;
XDM1(sec,reg)    =        XD.L(sec,reg)/(1+growth0(reg));
XDM2(sec,reg)    =        XDM1(sec,reg)/(1+growth0(reg));
KAVCM1(sec,reg)  =        KAVC(sec,reg)/(1+growth0(reg));
XDA(sec,reg)=XDM1(sec,reg)*(XDM1(sec,reg)/XDM2(sec,reg))**2;
EC(reg)= (sum(sec,IMPO.L(sec,reg)*PIMP.L(sec,reg))+FSESE_H_W.L(reg)-FGRS_DUT_G.L(reg))-sum(sec,EXPOP.L(sec,reg)*PEX.L(sec,reg));
ELECKAVC(elecmhydnuc,reg)=ELECKAV.L(elecmhydnuc,reg);
ELECKAVCM1(elecmhydnuc,reg)=ELECKAVC(elecmhydnuc,reg)/(1+growth0(reg));
GENMHYDNUCM1(reg)=GENMHYDNUC.L(reg)/(1+growth0(reg));
GENMHYDNUCM2(reg)=GENMHYDNUCM1(reg)/(1+growth0(reg));
GENMHYDNUCA(reg)=(GENMHYDNUCM1(reg)*(GENMHYDNUCM1(reg)/GENMHYDNUCM2(reg))**2);
GENFOSSA(reg)   =  GENMHYDNUCA(reg)*APGEN(reg)*DELECFOSS(reg)*(PGENMHYDNUC.L(reg)/(APGEN(reg)*PGENFOSS.L(reg)))**SIGMAGEN(reg);
ELECGENA(elecmhydnuc,reg)  = ((GENMHYDNUCA(reg)*APGEN(reg)*DELEC(elecmhydnuc,reg)*(PGENMHYDNUC.L(reg)/(APGEN(reg)*PELEC.L(elecmhydnuc,reg)))**SIGMAGEN(reg)))$(ord(elecmhydnuc) gt 3)+
                        ((GENFOSSA(reg)*APELECFOSS(reg)*DELEC(elecmhydnuc,reg)*(PGENFOSS.L(reg)/(APELECFOSS(reg)*PELECA(elecmhydnuc,reg)))**SIGMAFOSS(reg)))$(ord(elecmhydnuc) le 3);


SOLVE GEMINI_calage USING MCP;
KAVC(sec,reg)    =        KAV.L(sec,reg)    ;
XDM1(sec,reg)    =        XD.L(sec,reg)/(1+growth0(reg));
XDM2(sec,reg)    =        XDM1(sec,reg)/(1+growth0(reg));
KAVCM1(sec,reg)  =        KAVC(sec,reg)/(1+growth0(reg));
XDA(sec,reg)=XDM1(sec,reg)*(XDM1(sec,reg)/XDM2(sec,reg))**2;
EC(reg)= (sum(sec,IMPO.L(sec,reg)*PIMP.L(sec,reg))+FSESE_H_W.L(reg)-FGRS_DUT_G.L(reg))-sum(sec,EXPOP.L(sec,reg)*PEX.L(sec,reg));
ELECKAVC(elecmhydnuc,reg)=ELECKAV.L(elecmhydnuc,reg);
ELECKAVCM1(elecmhydnuc,reg)=ELECKAVC(elecmhydnuc,reg)/(1+growth0(reg));
GENMHYDNUCM1(reg)=GENMHYDNUC.L(reg)/(1+growth0(reg));
GENMHYDNUCM2(reg)=GENMHYDNUCM1(reg)/(1+growth0(reg));
GENMHYDNUCA(reg)=(GENMHYDNUCM1(reg)*(GENMHYDNUCM1(reg)/GENMHYDNUCM2(reg))**2);
GENFOSSA(reg)   =  GENMHYDNUCA(reg)*APGEN(reg)*DELECFOSS(reg)*(PGENMHYDNUC.L(reg)/(APGEN(reg)*PGENFOSS.L(reg)))**SIGMAGEN(reg);
ELECGENA(elecmhydnuc,reg)  = ((GENMHYDNUCA(reg)*APGEN(reg)*DELEC(elecmhydnuc,reg)*(PGENMHYDNUC.L(reg)/(APGEN(reg)*PELEC.L(elecmhydnuc,reg)))**SIGMAGEN(reg)))$(ord(elecmhydnuc) gt 3)+
                        ((GENFOSSA(reg)*APELECFOSS(reg)*DELEC(elecmhydnuc,reg)*(PGENFOSS.L(reg)/(APELECFOSS(reg)*PELECA(elecmhydnuc,reg)))**SIGMAFOSS(reg)))$(ord(elecmhydnuc) le 3);


MAXPOTENTIAL(reg,"2017",elec)=ELECGEN.L(elec,reg);

SORTIEMAC("PGDP",T,reg)=1;


Loop(T$(iter le iterfin),




if (ord(T) ge 28,

ACXD(ghg,sec,reg)=ACXDT(T,ghg,sec,reg);
AELECGEN(ghg,elec,reg)=AELECGENT(T,ghg,elec,reg);
ACIO(ghg,pro,sec,reg)=ACIOT(T,ghg,pro,sec,reg);
ACHCV(ghg,sec,reg)=AHCVT(T,ghg,sec,reg);

INVVELEC.fx("OIP",regmeoil)=0;
PELECKAV.fx("HYD",reg)=PELECKAV0("HYD",reg)*SORTIEMAC("PGDP",T-1,reg);
PELECKAV.fx("NUC",reg)=PELECKAV0("NUC",reg)*SORTIEMAC("PGDP",T-1,reg);
ELECKAVMAX("WIN",reg)=MAXPOTENTIAL(reg,"2050","WIN")*(ELECKAVC("WIN",reg)/ELECGEN.L("WIN",reg))$(ELECGEN.L("WIN",reg) ne 0);
ELECKAVMAX("SOL",reg)=MAXPOTENTIAL(reg,"2050","SOL")*(ELECKAVC("SOL",reg)/ELECGEN.L("SOL",reg))$(ELECGEN.L("SOL",reg) ne 0);


FFS.fx(secff,reg)=FF_CC(T,secff,reg);
INVCC(reg)=INVV_CC(T,reg);
SAVECC_G(reg)=SAVE_G_CC(T,reg);
GHGQ(reg)=100000000;

**** Policies

if( (iter gt 2022) and (iter le 2030),

*** India

TSUB("SOL","IND")=TSUB("SOL","IND")+0.023;
TSUB("COA","IND")=TSUB("COA","IND")-0.06;


*** China

TXTVAIO("01",Sec,"CHI")=TXTVAIO("01",Sec,"CHI")+0.06;TXTVAHC("01","CHI")=TXTVAHC("01","CHI")+0.06;
TXTVAIO("03",Sec,"CHI")=TXTVAIO("03",Sec,"CHI")+0.03;TXTVAHC("03","CHI")=TXTVAHC("03","CHI")+0.03;
TXTVAIO("04",Sec,"CHI")=TXTVAIO("04",Sec,"CHI")+0.03;TXTVAHC("04","CHI")=TXTVAHC("04","CHI")+0.03;

*** USA

TSUB("COA","USA")=TSUB("COA","USA")-0.07;
TSUB("GAP","USA")=TSUB("GAP","USA")-0.04;

DECLELECT("COA","USA")=0.08;
DECLELECT("COA","CSA")=0.06;

TSUB("SOL","USA")=TSUB("SOL","USA")+0.025;
TSUB("WIN","USA")=TSUB("WIN","USA")+0.025;
TSUB("BIO","USA")=TSUB("BIO","USA")+0.025;

*** CSA

TSUB("COA","CSA")=TSUB("COA","CSA")-0.06;
TSUB("GAP","CSA")=TSUB("GAP","CSA")-0.06;
TSUB("OIP","CSA")=TSUB("OIP","CSA")-0.06;

TSUB("SOL","CSA")=TSUB("SOL","CSA")+0.04;
TSUB("WIN","CSA")=TSUB("WIN","CSA")+0.02;
TSUB("BIO","CSA")=TSUB("BIO","CSA")+0.02;

*** ASI

TSUB("COA","ASI")=TSUB("COA","ASI")-0.07;
TSUB("GAP","ASI")=TSUB("GAP","ASI")-0.05;
TSUB("OIP","ASI")=TSUB("OIP","ASI")-0.04;

TSUB("SOL","ASI")=TSUB("SOL","ASI")+0.02;
TSUB("WIN","ASI")=TSUB("WIN","ASI")+0.03;
TSUB("BIO","ASI")=TSUB("BIO","ASI")+0.04;

*** AFR

TSUB("COA","AFR")=TSUB("COA","AFR")-0.06;
TSUB("OIP","AFR")=TSUB("OIP","AFR")-0.03;
TSUB("GAP","AFR")=TSUB("GAP","AFR")-0.03;

TSUB("SOL","AFR")=TSUB("SOL","AFR")+0.05;

);




* 33=2022
if (ord(T) le 33,
    Geminiv.optfile =1 ;
    CO2QEUETS=CO2QEUETSTFITF55(T)  ;
    CO2QCHIETS=10000;
    TAXECO2INIT_CC(reg)=TAXECO2_CC(T,reg);
    SOLVE GEMINIV USING MCP;
    put infoiter iter,geminiv.modelstat,geminiv.resusd /;
    if (geminiv.modelstat ne 1, iter=2101);
   )


if ((ord(T ) gt 33) and (ord(T) le 41),

     Geminiv2023.optfile =1 ;
     CO2QEUETS=CO2QEUETSTFITF55(T)  ;
     CO2QEUESR(regeu)=CO2QEUESRTFITF55(regeu,T) ;
     CO2QCHIETS=CO2QCHIETST(T);
     TAXECO2INIT_CC(reg)=TAXECO2_CC(T,reg);
     SOLVE GEMINIV2023 USING MCP;
     put infoiter iter,GEMINIV2023.modelstat,geminiv2023.resusd /;
     if (GEMINIV2023.modelstat ne 1, iter=2101);
     CHIETSPRICE2030=CHIETSPRICE.L;
    );




SORTIEMAC("SUR1",T,reg)=HCDTOT.L(reg)-(HCDTOT_CC(T,reg)*(PHCDTOT.L(reg)/PHCDTOT_CC(T,reg)));

SORTIEMAC("PHCT",T,reg)=PHCDTOT.L(reg);
SORTIEMAC("HCTO",T,reg)=HCDTOT.L(reg);

SORTIEMAC("GDPZ",T,reg)=sum(sec,EXPOP.L(sec,reg)*PEX0(sec,reg)+PHC0(sec,reg)*HCV.L(sec,reg)+PGC0(sec,reg)*GCV(sec,reg)
                    +INVV.L(sec,reg)*PINV0(sec,reg)+STV(sec,reg)*PB0(sec,reg)*(1+TXTVAST(sec,reg))-
                    IMPO.L(sec,reg)*PIMP0(sec,reg))+sum(elec,INVVELEC.l(elec,reg))*PINV0("05",reg);
SORTIEMAC("IMPZ",T,reg)=sum(sec,IMPO.L(sec,reg)*PIMP0(sec,reg));
SORTIEMAC("CONZ",T,reg)=sum(sec,PHC0(sec,reg)*HCV.L(sec,reg));
SORTIEMAC("GCVZ",T,reg)=sum(sec,PGC0(sec,reg)*GCV(sec,reg));
SORTIEMAC("INVZ",T,reg)=sum(sec,INVV.L(sec,reg)*PINV0(sec,reg))+sum(elec,INVVELEC.l(elec,reg))*PINV0("05",reg);
SORTIEMAC("STVZ",T,reg)=sum(sec,STV(sec,reg)*PB0(sec,reg));
SORTIEMAC("EXPZ",T,reg)=sum(sec,EXPOP.L(sec,reg)*PEX0(sec,reg));
SORTIEMAC("GDPV",T,reg)=sum(sec,EXPOP.L(sec,reg)*PEX.L(sec,reg)+PHC.L(sec,reg)*HCV.L(sec,reg)+PGC.L(sec,reg)*GCV(sec,reg)
            +INVV.L(sec,reg)*PINV.L(sec,reg)+STV(sec,reg)*PB.L(sec,reg)*(1+TXTVAST(sec,reg))-
            IMPO.L(sec,reg)*PIMP.L(sec,reg))+sum(elec,INVVELEC.l(elec,reg))*PINV.L("05",reg);
SORTIEMAC("IMPV",T,reg)=sum(sec,IMPO.L(sec,reg)*PIMP.L(sec,reg));
SORTIEMAC("CONV",T,reg)=sum(sec,PHC.L(sec,reg)*HCV.L(sec,reg));
SORTIEMAC("GCVV",T,reg)=sum(sec,PGC.L(sec,reg)*GCV(sec,reg));
SORTIEMAC("INVV",T,reg)=sum(sec,INVV.L(sec,reg)*PINV.L(sec,reg))+sum(elec,INVVELEC.l(elec,reg))*PINV.L("05",reg);
SORTIEMAC("STVV",T,reg)=sum(sec,STV(sec,reg)*PB.L(sec,reg));
SORTIEMAC("EXPV",T,reg)=sum(sec,EXPOP.L(sec,reg)*PEX.L(sec,reg));
SORTIEMAC("PGDP",T,reg)=(SORTIEMAC("GDPV",T,reg)/SORTIEMAC("GDPZ",T,reg));
SORTIEMAC("PIMP",T,reg)=(SORTIEMAC("IMPV",T,reg)/SORTIEMAC("IMPZ",T,reg))/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("PCON",T,reg)=(SORTIEMAC("CONV",T,reg)/SORTIEMAC("CONZ",T,reg))/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("PGCV",T,reg)=(SORTIEMAC("GCVV",T,reg)/SORTIEMAC("GCVZ",T,reg))/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("PINV",T,reg)=((SORTIEMAC("INVV",T,reg)/SORTIEMAC("INVZ",T,reg))/SORTIEMAC("PGDP",T,reg))$(SORTIEMAC("INVZ",T,reg) ne 0);
SORTIEMAC("PSTV",T,reg)=((SORTIEMAC("STVV",T,reg)/SORTIEMAC("STVZ",T,reg))/SORTIEMAC("PGDP",T,reg))
                       $(SORTIEMAC("STVZ",T,reg) ne 0)+0$(SORTIEMAC("STVZ",T,reg) eq 0);
SORTIEMAC("PEXP",T,reg)=(SORTIEMAC("EXPV",T,reg)/SORTIEMAC("EXPZ",T,reg))/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("EXCH",T,reg)=EX.L(reg);
SORTIEMAC("RLTL",T,reg)=RLTL.L(reg);
SORTIEMAC("TSAV",T,reg)=TSAVE.L(reg);

SORTIEMAC("CARO",T,reg)= ((HCTRAIC.L(reg)*APHCTRAIC(reg)*(1-DHTRAIC(reg))*(PHCTRAIC.L(reg)/((PHC.L("04",reg)*APHCTRAIC(reg))/GEHCTRAOEIC(reg)))**SIGMAHTRAOIC(reg))/GEHCTRAOEIC(reg))*CTEPH("04",reg);
SORTIEMAC("CARE",T,reg)= ((HCTRAEV.L(reg)*APHCTRAEV(reg)*(1-DHTRAEV(reg))*(PHCTRAEV.L(reg)/((PHC.L("05",reg)*APHCTRAEV(reg))/GEHCTRAOEEV(reg)))**SIGMAHTRAOEV(reg))/GEHCTRAOEEV(reg))*CTEPH("05",reg);

SORTIEMAC("KMCO",T,reg)=SORTIEMAC("CARO",T,reg)*KMPERTOE("04",reg)*GEHCTRAOEIC(reg);
SORTIEMAC("KMCE",T,reg)=SORTIEMAC("CARE",T,reg)*KMPERTOE("05",reg)*GEHCTRAOEEV(reg);


SORTIEMAC("SAVG",T,reg)=SAVE_G.L(reg);
SORTIEMAC("SAVH",T,reg)=SAVE_H.L(reg);
SORTIEMAC("SAVW",T,reg)=FSEFA_H_K.L(reg)+FSEFA_H_L.L(reg)+FSEFA_H_F.L(reg)+FSESE_H_G.L(reg)
                        -sum(sec,PHC.L(sec,reg)*HCV.L(sec,reg))-FGRS_DT_H.L(reg);
SORTIEMAC("CO2H",T,reg)=sum(secefm7,CTEPH(secefm7,reg)*HCV.L(secefm7,reg)*CO2CONTENTH(secefm7,reg));
SORTIEMAC("BALC",T,reg)=-sum(sec,IMPO.L(sec,reg)*PIMP.L(sec,reg))-FSESE_H_W.L(reg)+FGRS_DUT_G.L(reg)
                        +sum(sec,EXPOP.L(sec,reg)*PEX.L(sec,reg))+QUOTANET.L(reg)*TAXECO2.L(reg)*1000;
SORTIEMAC("ENER",T,reg)=sum(sec,sum(secem7,CTEP(secem7,sec,reg)*IOV.L(secem7,sec,reg)))+sum(secem7,CTEPH(secem7,reg)*HCV.L(secem7,reg))+sum(secem7,sum(elec,CTEPOWER(elec,secem7,reg)*DEPRPOWER(elec,secem7,reg)*ENMAPOWER.L(elec,reg)));
SORTIEMAC("HENC",T,reg)=CTEPH("01",reg)*HCV.L("01",reg);
SORTIEMAC("HENO",T,reg)=CTEPH("02",reg)*HCV.L("02",reg);
SORTIEMAC("HENG",T,reg)=CTEPH("03",reg)*HCV.L("03",reg);

SORTIEMAC("HENP",T,reg)=CTEPH("04",reg)*HCV.L("04",reg);
SORTIEMAC("HENE",T,reg)=CTEPH("05",reg)*HCV.L("05",reg);

SORTIESEC("YD",T,sec,reg)=YD.L(sec,reg);
SORTIEMAC("HTRA",T,reg)=HCTRA.L(reg);
SORTIEMAC("HRES",T,reg)=HCRES.L(reg);
SORTIEMAC("HOTH",T,reg)=HCOTH.L(reg);
SORTIEMAC("PHTR",T,reg)=PHCTRA.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("PRES",T,reg)=PHCRES.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("PESE",T,reg)=PHCRESE.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("PESF",T,reg)=PHCRESEF.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("POTH",T,reg)=PHCOTH.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("HTAP",T,reg)=HCTRAP.L(reg);
SORTIEMAC("HTAO",T,reg)=HCTRAO.L(reg);
SORTIEMAC("PTAP",T,reg)=PHCTRAP.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("PTAO",T,reg)=PHCTRAO.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("HTEV",T,reg)=HCTRAEV.L(reg);
SORTIEMAC("HTIC",T,reg)=HCTRAIC.L(reg);
SORTIEMAC("PHEV",T,reg)=PHCTRAEV.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIEMAC("PHIC",T,reg)=PHCTRAIC.L(reg)/SORTIEMAC("PGDP",T,reg);

SORTIEMAC("HREE",T,reg)=HCRESE.L(reg);
SORTIEMAC("HREF",T,reg)=HCRESEF.L(reg);
SORTIEMAC("HR01",T,reg)=((HCRESEF.L(reg)*APHCRESEF(reg)*DRESEF("01",reg)*(PHCRESEF.L(reg)/((PHC.L("01",reg)*APHCRESEF(reg))/(GEHCRESEE("01",reg))))**SIGMAHRESEF(reg))/GEHCRESEE("01",reg));
SORTIEMAC("HR02",T,reg)=((HCRESEF.L(reg)*APHCRESEF(reg)*DRESEF("02",reg)*(PHCRESEF.L(reg)/((PHC.L("02",reg)*APHCRESEF(reg))/(GEHCRESEE("02",reg))))**SIGMAHRESEF(reg))/GEHCRESEE("02",reg));
SORTIEMAC("HR03",T,reg)=((HCRESEF.L(reg)*APHCRESEF(reg)*DRESEF("03",reg)*(PHCRESEF.L(reg)/((PHC.L("03",reg)*APHCRESEF(reg))/(GEHCRESEE("03",reg))))**SIGMAHRESEF(reg))/GEHCRESEE("03",reg));
SORTIEMAC("HR04",T,reg)=((HCRESEF.L(reg)*APHCRESEF(reg)*DRESEF("04",reg)*(PHCRESEF.L(reg)/((PHC.L("04",reg)*APHCRESEF(reg))/(GEHCRESEE("04",reg))))**SIGMAHRESEF(reg))/GEHCRESEE("04",reg));
SORTIEMAC("HR07",T,reg)=((HCRESEF.L(reg)*APHCRESEF(reg)*DRESEF("07",reg)*(PHCRESEF.L(reg)/((PHC.L("07",reg)*APHCRESEF(reg))/(GEHCRESEE("07",reg))))**SIGMAHRESEF(reg))/GEHCRESEE("07",reg));
SORTIEMAC("HP05",T,reg)=HCVHEATPUMP.L(reg);
SORTIEMAC("HR05",T,reg)=((HCRESE.L(reg)*APHCRESE(reg)*(1-DRESEE(reg))*(PHCRESE.L(reg)/((PHC.L("05",reg)*APHCRESE(reg))/(GEHCRESEE("05",reg))))**SIGMAHRESE(reg))/GEHCRESEE("05",reg));

SORTIEMAC("HT05",T,reg)=(HCTRAEV.L(reg)*APHCTRAEV(reg)*(1-DHTRAEV(reg))*(PHCTRAEV.L(reg)/((PHC.L("05",reg)*APHCTRAEV(reg))/GEHCTRAOEEV(reg)))**SIGMAHTRAOEV(reg))/GEHCTRAOEEV(reg);
SORTIEMAC("HT04",T,reg)=((HFUELIC.L(reg)*APHCFUELIC(reg)*DHFUELIC(reg)*(PHCFUELIC.L(reg)/((PHC.L("04",reg)*APHCFUELIC(reg))/GEHFUELIC04(reg)))**SIGMAHFUELIC(reg))/GEHFUELIC04(reg));
SORTIEMAC("HT07",T,reg)=((HFUELIC.L(reg)*APHCFUELIC(reg)*(1-DHFUELIC(reg))*(PHCFUELIC.L(reg)/((PHC.L("07",reg)*APHCFUELIC(reg))/GEHFUELIC07(reg)))**SIGMAHFUELIC(reg))/GEHFUELIC07(reg));

SORTIEMAC("ST05",T,reg)=SORTIEMAC("HT05",T,reg)*CTEPH("05",reg)/(SORTIEMAC("HT05",T,reg)*CTEPH("05",reg)+SORTIEMAC("HT04",T,reg)*CTEPH("04",reg)+SORTIEMAC("HT07",T,reg)*CTEPH("07",reg));
SORTIEMAC("ST04",T,reg)=SORTIEMAC("HT04",T,reg)*CTEPH("04",reg)/(SORTIEMAC("HT05",T,reg)*CTEPH("05",reg)+SORTIEMAC("HT04",T,reg)*CTEPH("04",reg)+SORTIEMAC("HT07",T,reg)*CTEPH("07",reg));
SORTIEMAC("ST07",T,reg)=SORTIEMAC("HT07",T,reg)*CTEPH("07",reg)/(SORTIEMAC("HT05",T,reg)*CTEPH("05",reg)+SORTIEMAC("HT04",T,reg)*CTEPH("04",reg)+SORTIEMAC("HT07",T,reg)*CTEPH("07",reg));

SORTIEMAC("HENB",T,reg)=CTEPH("07",reg)*SORTIEMAC("HT07",T,reg)+
                        CTEPH07(reg)*((HCRESEF.L(reg)*APHCRESEF(reg)*DRESEF("07",reg)*(PHCRESEF.L(reg)/((PHC.L("07",reg)*APHCRESEF(reg))/(GEHCRESEE("07",reg))))**SIGMAHRESEF(reg))/GEHCRESEE("07",reg));


SORTIEMAC("NBIO",T,reg)=CCSSHARE("BIO",reg)*ELECGEN.L("BIO",reg)*CARBONCREDIT("BIO",reg)/1000;
SORTIEMAC("CCSF",T,reg)=sum(secef,sum(elec,CCSSHARE(elec,reg)*CTEPOWER(elec,secef,reg)*DEPRPOWER(elec,secef,reg)*ENMAPOWER.L(elec,reg)*CO2CONTENTIOPOWER(elec,secef,reg)));
SORTIEMAC("SCCS",T,reg)=SORTIEMAC("SCCS",T-1,reg)+SORTIEMAC("NBIO",T,reg)+SORTIEMAC("CCSF",T,reg);
SORTIEMAC("ETSP",T,regeu)=EUETSPRICE.L/SORTIEMAC("PGDP",T,regeu);
SORTIEMAC("ETSP",T,"CHI")=CHIETSPRICE.L/SORTIEMAC("PGDP",T,"CHI");
SORTIEMAC("ESDP",T,regeu)=EUETSPRICE2.L*(EX.L("USA")/EX.L(regeu))/SORTIEMAC("PGDP",T,regeu);

SORTIEMAC("QUOT",T,reg)=QUOTANET.L(reg);;
SORTIEMAC("TAXE",T,reg)=TAXECO2.L(reg)/SORTIEMAC("PGDP",T,reg);

SORTIESEC("PY",T,sec,reg)=PY.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("PD",T,sec,reg)=PD.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("PB",T,sec,reg)=PB.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("XD",T,secnf,reg)=XD.L(secnf,reg);
SORTIESEC("XD",T,"05",reg)=XDPGEN.L(reg);
SORTIESEC("XD",T,secff,reg)=XDPF.L(secff,reg);
SORTIESEC("XD",T,"04",reg)=XDPP.L("04",reg);
SORTIESEC("PD",T,secnf,reg)=PD.L(secnf,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("PD",T,"05",reg)=PDPGEN.L(reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("PD",T,secff,reg)=PDPF.L(secff,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("PD",T,"04",reg)=PDPP.L("04",reg)/SORTIEMAC("PGDP",T,reg);

SORTIESEC("LAV",T,sec,reg)=LAV.L(sec,reg)+sum(elec,LAVPOWER.L(elec,reg))$(ord(sec) eq 5);
*SORTIESEC("EMP",T,sec,reg)=SORTIESEC("LAV",T,sec,reg)/WAGE(reg,sec);
SORTIESEC("KAV",T,sec,reg)=KAV.L(sec,reg)+sum(elec,ELECKAVC(elec,reg))$(ord(sec) eq 5);
SORTIESEC("FF",T,secff,reg)=FF.L(secff,reg);
SORTIESEC("PK",T,sec,reg)=PK.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("PF",T,secff,reg)=PF.L(secff,reg)/SORTIEMAC("PGDP",T,reg);

SORTIESEC("INVV",T,sec,reg)=INVV.L(sec,reg)+sum(elec,INVVELEC.l(elec,reg))$(ord(sec) eq 5);
SORTIESEC("PINV",T,sec,reg)=PINV.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("EXP",T,sec,reg)=EXPOP.L(sec,reg);
SORTIESEC("PEX",T,sec,reg)=PEX.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("IMP",T,sec,reg)=IMPO.L(sec,reg);
SORTIESEC("PIMP",T,sec,reg)=PIMP.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("EN",T,sec,reg)=EN.L(sec,reg)+sum(secem7,sum(elec,DEPRPOWER(elec,secem7,reg)*ENMAPOWER.L(elec,reg)))$(ord(sec) eq 5);
SORTIESEC("ENF",T,sec,reg)=ENF.L(sec,reg)+sum(secefm7,sum(elec,DEPRPOWER(elec,secefm7,reg)*ENMAPOWER.L(elec,reg)))$(ord(sec) eq 5);
SORTIESEC("PE",T,sec,reg)=PE.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("HCV",T,sec,reg)=HCV.L(sec,reg);
SORTIESEC("PHC",T,sec,reg)=PHC.L(sec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIESEC("CO2",T,sec,reg)= sum(secefm7,CTEP(secefm7,sec,reg)*IOV.L(secefm7,sec,reg)*CO2CONTENTIO(secefm7,sec,reg))+
                            (sum(secefm7,sum(elec,(1-CCSSHARE(elec,reg))*CTEPOWER(elec,secefm7,reg)*DEPRPOWER(elec,secefm7,reg)*ENMAPOWER.L(elec,reg)*CO2CONTENTIOPOWER(elec,secefm7,reg))))$(ord(sec) eq 5);
SORTIESEC("ENEC",T,sec,reg)=  CTEP("01",sec,reg)*IOV.L("01",sec,reg)+sum(elec,CTEPOWER(elec,"01",reg)*DEPRPOWER(elec,"01",reg)*ENMAPOWER.L(elec,reg))$(ord(sec) eq 5);
SORTIESEC("ENEO",T,sec,reg)=  CTEP("02",sec,reg)*IOV.L("02",sec,reg)+sum(elec,CTEPOWER(elec,"02",reg)*DEPRPOWER(elec,"02",reg)*ENMAPOWER.L(elec,reg))$(ord(sec) eq 5);
SORTIESEC("ENEG",T,sec,reg)=  CTEP("03",sec,reg)*IOV.L("03",sec,reg)+sum(elec,CTEPOWER(elec,"03",reg)*DEPRPOWER(elec,"03",reg)*ENMAPOWER.L(elec,reg))$(ord(sec) eq 5);
SORTIESEC("ENEP",T,sec,reg)=  CTEP("04",sec,reg)*IOV.L("04",sec,reg)+sum(elec,CTEPOWER(elec,"04",reg)*DEPRPOWER(elec,"04",reg)*ENMAPOWER.L(elec,reg))$(ord(sec) eq 5);
SORTIESEC("ENEE",T,sec,reg)=  CTEP("05",sec,reg)*IOV.L("05",sec,reg)+sum(elec,CTEPOWER(elec,"05",reg)*DEPRPOWER(elec,"05",reg)*ENMAPOWER.L(elec,reg))$(ord(sec) eq 5);
SORTIESEC("ENEB",T,sec,reg)=  CTEPTRA("07",sec,reg)*((FUELIC.L(sec,reg)*APFUELIC(sec,reg)*(1-DFUELIC(sec,reg))*(PFUELIC.L(sec,reg)/((PIO.L("07",sec,reg)*APFUELIC(sec,reg))/GEFUELIC07(sec,reg)))**SIGMAFUELIC(sec,reg))/GEFUELIC07(sec,reg))+
                              sum(elec,CTEPOWER(elec,"07",reg)*DEPRPOWER(elec,"07",reg)*ENMAPOWER.L(elec,reg))$(ord(sec) eq 5)+
                              (CTEP("07",sec,reg)*(((ENF.L(sec,reg)*APEF(sec,reg)*DEPR("07",sec,reg)*
                              (PEF.L(sec,reg)/((PIO.L("07",sec,reg)*APEF(sec,reg))/(GEPR("07",sec,reg))))**SIGMAEF(sec,reg))/
                               GEPR("07",sec,reg))));
SORTIESEC("ENTB",T,sec,reg)=CTEPTRA("07",sec,reg)*((FUELIC.L(sec,reg)*APFUELIC(sec,reg)*(1-DFUELIC(sec,reg))*(PFUELIC.L(sec,reg)/((PIO.L("07",sec,reg)*APFUELIC(sec,reg))/GEFUELIC07(sec,reg)))**SIGMAFUELIC(sec,reg))/GEFUELIC07(sec,reg));
SORTIESEC("ENTE",T,sec,reg)=CTEP("05",sec,reg)*((TRAEV.L(sec,reg)*APTRAEV(sec,reg)*(1-DTRAEV(sec,reg))*(PTRAEV.L(sec,reg)/((PIO.L("05",sec,reg)*APTRAEV(sec,reg))/GETRAOEEV(sec,reg)))**SIGMATRAOEV(sec,reg))/GETRAOEEV(sec,reg));
SORTIESEC("ENTP",T,sec,reg)=CTEP("04",sec,reg)*((FUELIC.L(sec,reg)*APFUELIC(sec,reg)*DFUELIC(sec,reg)*(PFUELIC.L(sec,reg)/((PIO.L("04",sec,reg)*APFUELIC(sec,reg))/GEFUELIC04(sec,reg)))**SIGMAFUELIC(sec,reg))/GEFUELIC04(sec,reg));

SORTIEELEC("GENE",elec,T,reg)=ELECGEN.L(elec,reg);
SORTIEELEC("PRIC",elec,T,reg)=PELEC.L(elec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIEELEC("PKEL",elec,T,reg)=PELECKAV.L(elec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIEELEC("PEEL",elec,T,reg)=PELECENMA.L(elec,reg)/SORTIEMAC("PGDP",T,reg);
SORTIEELEC("KAVE",elec,T,reg)=ELECKAV.L(elec,reg);
SORTIEELEC("TGKE",elec,T,reg)=TGKE(elec,reg);
SORTIEELEC("TGKA",elec,T,reg)=TGKEA(elec,reg);


SORTIEELEC("CAPA",elec,T,reg)=ELECKAV.L(elec,reg)*ALCAPACITY(elec,reg)*TGKE(elec,reg)/(AVAILABITY(elec,reg,T)/AVAILABITY(elec,reg,"2017"));
SORTIEELEC("CO2P",elec,T,reg)=(sum(secefm7,(1-CCSSHARE(elec,reg))*CTEPOWER(elec,secefm7,reg)*DEPRPOWER(elec,secefm7,reg)*ENMAPOWER.L(elec,reg)*CO2CONTENTIOPOWER(elec,secefm7,reg)));
SORTIEELEC("SCCS",elec,T,reg)=CCSSHARE(elec,reg);

SORTIEMAC("APGE",T,reg)=APGEN(reg);
SORTIEMAC("DFOS",T,reg)=DELECFOSS(reg);
SORTIEELEC("DELE",elec,T,reg)=DELEC(elec,reg);
SORTIEMAC("AFOS",T,reg)=APELECFOSS(reg);

SORTIEIO(pro,sec,T,reg)=IOV.L(pro,sec,reg);
SORTIEIOELEC(pro,elec,T,reg)=DEPRPOWER(elec,pro,reg)*ENMAPOWER.L(elec,reg);


*** CO2 from non-energy combustion


SORTIEMAC("CAWD",T,reg)=EGHG.L("CO2_AWB",reg);
SORTIEMAC("CIPP",T,reg)=EGHG.L("CO2_IPP",reg);
SORTIEMAC("COGF",T,reg)=EGHG.L("CO2_OGF",reg);
SORTIEMAC("COWA",T,reg)=EGHG.L("CO2_WAS",reg);
SORTIEMAC("CFFF",T,reg)=EGHG.L("CO2_FFF",reg);



**** CH4  ****

SORTIEMAC("HRIC",T,reg)=EGHG.L("CH4_RIC",reg);
SORTIEMAC("HAGR",T,reg)=EGHG.L("CH4_AGR",reg);
SORTIEMAC("HAWB",T,reg)=EGHG.L("CH4_AWB",reg);
SORTIEMAC("HGRB",T,reg)=EGHG.L("CH4_GRB",reg);
SORTIEMAC("HEHP",T,reg)=EGHG.L("CH4_EHP_COA",reg)+EGHG.L("CH4_EHP_CRU",reg)+EGHG.L("CH4_EHP_OIL",reg)+EGHG.L("CH4_EHP_GAS",reg)+EGHG.L("CH4_EHP_BIO",reg);
SORTIEMAC("HFPT",T,reg)=EGHG.L("CH4_FPT_COA",reg)+EGHG.L("CH4_FPT_CRU",reg)+EGHG.L("CH4_FPT_OIL",reg)+EGHG.L("CH4_FPT_GAS",reg);
SORTIEMAC("HOGF",T,reg)=EGHG.L("CH4_OGF",reg);
SORTIEMAC("HIPP",T,reg)=EGHG.L("CH4_IPP",reg);
SORTIEMAC("HROT",T,reg)=EGHG.L("CH4_ROT_COA",reg)+EGHG.L("CH4_ROT_CRU",reg)+EGHG.L("CH4_ROT_OIL",reg)+EGHG.L("CH4_ROT_GAS",reg);
SORTIEMAC("HIND",T,reg)=EGHG.L("CH4_IND_COA",reg)+EGHG.L("CH4_IND_CRU",reg)+EGHG.L("CH4_IND_OIL",reg)+EGHG.L("CH4_IND_GAS",reg);
SORTIEMAC("HRCO",T,reg)=EGHG.L("CH4_OTH_COA",reg)+EGHG.L("CH4_OTH_CRU",reg)+EGHG.L("CH4_OTH_OIL",reg)+EGHG.L("CH4_OTH_GAS",reg)+EGHG.L("CH4_OTH_BIO",reg);
SORTIEMAC("HRET",T,reg)=EGHG.L("CH4_RES_COA",reg)+EGHG.L("CH4_RES_CRU",reg)+EGHG.L("CH4_RES_OIL",reg)+EGHG.L("CH4_RES_GAS",reg)+EGHG.L("CH4_RES_BIO",reg);
SORTIEMAC("HCOM",T,reg)=EGHG.L("CH4_COM_COA",reg)+EGHG.L("CH4_COM_CRU",reg)+EGHG.L("CH4_COM_OIL",reg)+EGHG.L("CH4_COM_GAS",reg)+EGHG.L("CH4_COM_BIO",reg);
SORTIEMAC("HWAS",T,reg)=EGHG.L("CH4_WAS",reg);
SORTIEMAC("HNRT",T,reg)=EGHG.L("CH4_NRT_COA",reg)+EGHG.L("CH4_NRT_CRU",reg)+EGHG.L("CH4_NRT_OIL",reg)+EGHG.L("CH4_NRT_GAS",reg);



*** N2O ***

SORTIEMAC("NCRO",T,reg)=EGHG.L("N2O_CRO",reg);
SORTIEMAC("NLIV",T,reg)=EGHG.L("N2O_LIV",reg);
SORTIEMAC("NOTH",T,reg)=EGHG.L("N2O_LAN",reg);
SORTIEMAC("NFUG",T,reg)=EGHG.L("N2O_FUG",reg);
SORTIEMAC("NIPP",T,reg)=EGHG.L("N2O_IPP",reg);
SORTIEMAC("NWAS",T,reg)=EGHG.L("N2O_WAS",reg);
SORTIEMAC("NFCA",T,reg)=EGHG.L("N2O_FCA_COA",reg)+EGHG.L("N2O_FCA_CRU",reg)+EGHG.L("N2O_FCA_OIL",reg)+EGHG.L("N2O_FCA_GAS",reg)+EGHG.L("N2O_FCA_BIO",reg)+
                        EGHG.L("N2O_FCH_COA",reg)+EGHG.L("N2O_FCH_CRU",reg)+EGHG.L("N2O_FCH_OIL",reg)+EGHG.L("N2O_FCH_GAS",reg)+EGHG.L("N2O_FCH_BIO",reg);

testghg=EGHG.L("N2O_FCA_COA","DEU")+EGHG.L("N2O_FCA_CRU","DEU")+EGHG.L("N2O_FCA_OIL","DEU")+EGHG.L("N2O_FCA_GAS","DEU")+EGHG.L("N2O_FCA_BIO","DEU")+
        EGHG.L("N2O_FCH_COA","DEU")+EGHG.L("N2O_FCH_CRU","DEU")+EGHG.L("N2O_FCH_OIL","DEU")+EGHG.L("N2O_FCH_GAS","DEU")+EGHG.L("N2O_FCH_BIO","DEU");
display testghg;


*** F-gases ***

SORTIEMAC("S6MG",T,reg)=EGHG.L("SF6_MAG",reg);
SORTIEMAC("SEPS",T,reg)=EGHG.L("SF6_EPS",reg);
SORTIEMAC("SFPD",T,reg)=EGHG.L("SF6_FPD",reg);
SORTIEMAC("SSEM",T,reg)=EGHG.L("SF6_SEM",reg);
SORTIEMAC("HODS",T,reg)=EGHG.L("HFC_ODS",reg);
SORTIEMAC("HFPD",T,reg)=EGHG.L("HFC_FPD",reg);
SORTIEMAC("HSEM",T,reg)=EGHG.L("HFC_SEM",reg);
SORTIEMAC("PELE",T,reg)=EGHG.L("PFC_ELE",reg);
SORTIEMAC("NELE",T,reg)=EGHG.L("NF3_ELE",reg);
SORTIEMAC("PFAL",T,reg)=EGHG.L("PFC_ALU",reg);


$ONTEXT

*$include ghgcoef_V6

SORTIEMAC("HAGR",T,reg)=ACXDT(T,"CH4_AGR","06",reg)*SORTIESEC("XD",T,"06",reg)/1000;
SORTIEMAC("HAWB",T,reg)=ACXDT(T,"CH4_AWB","06",reg)*SORTIESEC("XD",T,"06",reg)/1000;
SORTIEMAC("HFOB",T,reg)=ACHCVT(T,"CH4_FOB",reg)*SORTIEMAC("CONZ",T,reg)/1000;
SORTIEMAC("HGRB",T,reg)=ACHCVT(T,"CH4_GRB",reg)*SORTIEMAC("CONZ",T,reg)/1000;
SORTIEMAC("HPEB",T,reg)=ACHCVT(T,"CH4_PEB",reg)*SORTIEMAC("CONZ",T,reg)/1000;
SORTIEMAC("HEHP",T,reg)=(AELECGENT(T,"CH4_EHP","OIL",reg)*SORTIEELEC("GENE","OIL",T,reg)+
                         AELECGENT(T,"CH4_EHP","GAS",reg)*SORTIEELEC("GENE","GAS",T,reg)+
                         AELECGENT(T,"CH4_EHP","COA",reg)*SORTIEELEC("GENE","COA",T,reg))/1000;
SORTIEMAC("HFFF",T,reg)=(ACYDT(T,"CH4_FFF","04",reg)*SORTIESEC("YD",T,"04",reg)+
                         ACYDT(T,"CH4_FFF","01",reg)*SORTIESEC("YD",T,"01",reg)+
                         ACYDT(T,"CH4_FFF","03",reg)*SORTIESEC("YD",T,"03",reg))/1000;
SORTIEMAC("HFPT",T,reg)=(ACXDPFT(T,"CH4_FPT","01",reg)*SORTIESEC("XD",T,"01",reg)+
                         ACXDPFT(T,"CH4_FPT","03",reg)*SORTIESEC("XD",T,"03",reg)+
                         ACXDPFT(T,"CH4_FPT","04",reg)*SORTIESEC("XD",T,"04",reg))/1000;
SORTIEMAC("HOGF",T,reg)=(ACXDPFT(T,"CH4_OGF","03",reg)*SORTIESEC("XD",T,"03",reg)+
                         ACXDPFT(T,"CH4_OGF","04",reg)*SORTIESEC("XD",T,"04",reg))/1000;
SORTIEMAC("HIND",T,reg)=AENT(T,"CH4_IND","07",reg)*SORTIESEC("ENF",T,"07",reg)/1000;
SORTIEMAC("HNRT",T,reg)=(AENT(T,"CH4_NRT","10",reg)*SORTIESEC("ENF",T,"10",reg)+
                         AENT(T,"CH4_NRT","11",reg)*SORTIESEC("ENF",T,"11",reg))/1000;
SORTIEMAC("HROT",T,reg)=AENT(T,"CH4_ROT","09",reg)*SORTIESEC("ENF",T,"09",reg)/1000;
SORTIEMAC("HRCO",T,reg)=AENT(T,"CH4_RCO","08",reg)*SORTIESEC("ENF",T,"08",reg)/1000;
SORTIEMAC("HREC",T,reg)=AENT(T,"CH4_REC","08",reg)*SORTIESEC("ENF",T,"08",reg)/1000;
SORTIEMAC("HIPP",T,reg)=ACXDT(T,"CH4_IPP","07",reg)*SORTIESEC("XD",T,"07",reg)/1000;
SORTIEMAC("HSPA",T,reg)=ACXDT(T,"CH4_SPA","07",reg)*SORTIESEC("XD",T,"07",reg)/1000;
SORTIEMAC("HWAS",T,reg)=ACHCVT(T,"CH4_WAS",reg)*SORTIEMAC("CONZ",T,reg)/1000;

SORTIEMAC("NCRO",T,reg)=ACXDT(T,"N2O_CRO","06",reg)*SORTIESEC("XD",T,"06",reg)/1000;
SORTIEMAC("NLIV",T,reg)=ACXDT(T,"N2O_LIV","06",reg)*SORTIESEC("XD",T,"06",reg)/1000;
SORTIEMAC("NFCA",T,reg)=(ACYDT(T,"N2O_FCA","04",reg)*SORTIESEC("YD",T,"04",reg)+
                         ACYDT(T,"N2O_FCA","01",reg)*SORTIESEC("YD",T,"01",reg)+
                         ACYDT(T,"N2O_FCA","03",reg)*SORTIESEC("YD",T,"03",reg))/1000;
SORTIEMAC("NFUG",T,reg)=(ACXDPFT(T,"N2O_FUG","03",reg)*SORTIESEC("XD",T,"03",reg)+
                         ACXDPFT(T,"N2O_FUG","04",reg)*SORTIESEC("XD",T,"04",reg))/1000;
SORTIEMAC("NIPP",T,reg)=ACXDT(T,"N2O_IPP","07",reg)*SORTIESEC("XD",T,"07",reg)/1000;
SORTIEMAC("NWAS",T,reg)=ACHCVT(T,"N2O_WAS",reg)*SORTIEMAC("CONZ",T,reg)/1000;
SORTIEMAC("NOTH",T,reg)=ACHCVT(T,"N2O_OTH",reg)*SORTIEMAC("CONZ",T,reg)/1000;

SORTIEMAC("S6MG",T,reg)=ACXDT(T,"SF6_MAG","07",reg)*SORTIESEC("XD",T,"07",reg)/1000;
SORTIEMAC("SEPS",T,reg)=sum(elec,AELECGENT(T,"SF6_EPS",elec,reg)*SORTIEELEC("GENE",elec,T,reg))/1000;
SORTIEMAC("SFPD",T,reg)=ACXDT(T,"SF6_FPD","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("SSEM",T,reg)=ACXDT(T,"SF6_SEM","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("HODS",T,reg)=ACXDT(T,"HFC_ODS","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("HFPD",T,reg)=ACXDT(T,"HFC_FPD","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("HSEM",T,reg)=ACXDT(T,"HFC_SEM","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("HSOL",T,reg)=AELECGENT(T,"HFC_SOL","SOL",reg)*SORTIEELEC("GENE","SOL",T,reg)/1000;
SORTIEMAC("PFPD",T,reg)=ACXDT(T,"PFC_FPD","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("PSEM",T,reg)=ACXDT(T,"PFC_SEM","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("PFAL",T,reg)=ACXDT(T,"PFC_ALU","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("PFPV",T,reg)=AELECGENT(T,"PFC_PHV","SOL",reg)*SORTIEELEC("GENE","SOL",T,reg)/1000;
SORTIEMAC("NFPV",T,reg)=AELECGENT(T,"NF3_PHV","SOL",reg)*SORTIEELEC("GENE","SOL",T,reg)/1000;
SORTIEMAC("NSEM",T,reg)=ACXDT(T,"NF3_SEM","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;
SORTIEMAC("NFPD",T,reg)=ACXDT(T,"NF3_FPD","08",reg)*SORTIESEC("XD",T,"08",reg)/1000;

SORTIEMAC("CAWD",T,reg)=ACXDT(T,"CO2_AWB","06",reg)*SORTIESEC("XD",T,"06",reg)/1000;
SORTIEMAC("CFOB",T,reg)=ACHCVT(T,"CO2_FOB",reg)*SORTIEMAC("CONZ",T,reg)/1000;
SORTIEMAC("CFFF",T,reg)=(ACXDPFT(T,"CO2_FFF","03",reg)*SORTIESEC("XD",T,"03",reg)+ACXDPFT(T,"CO2_FFF","04",reg)*SORTIESEC("XD",T,"04",reg))/1000;
SORTIEMAC("CGRB",T,reg)=ACHCVT(T,"CO2_GRB",reg)*SORTIEMAC("CONZ",T,reg)/1000;
SORTIEMAC("CIPP",T,reg)=ACXDT(T,"CO2_IPP","07",reg)*SORTIESEC("XD",T,"07",reg)/1000;
SORTIEMAC("COGF",T,reg)=(ACXDPFT(T,"CO2_OGF","03",reg)*SORTIESEC("XD",T,"03",reg)+ACXDPFT(T,"CO2_OGF","04",reg)*SORTIESEC("XD",T,"04",reg))/1000;
SORTIEMAC("CPEB",T,reg)=ACHCVT(T,"CO2_PEB",reg)*SORTIEMAC("CONZ",T,reg)/1000;
SORTIEMAC("CSPA",T,reg)=ACXDT(T,"CO2_SPA","07",reg)*SORTIESEC("XD",T,"07",reg)/1000;
SORTIEMAC("COWA",T,reg)=ACHCVT(T,"CO2_WAS",reg)*SORTIEMAC("CONZ",T,reg)/1000;

ACXDT(T,"CO2_AWB","07",reg)=ACXDT(T-1,"CO2_AWB","07",reg);
ACXDT(T,"CO2_IPP",sec,reg)=ACXDT(T-1,"CO2_IPP",sec,reg);
ACXDT(T,"CO2_OGF",sec,reg)=ACXDT(T-1,"CO2_OGF",sec,reg);
ACXDT(T,"CO2_WAS",sec,reg)=ACXDT(T-1,"CO2_WAS",sec,reg);
ACXDT(T,"CO2_FFF","01",reg)=ACXDT(T-1,"CO2_FFF","01",reg);

$OFFTEXT



iter=iter+1;

$include calage_Diamond_bio


GCV(sec,reg)        =        TGCV(sec,reg)*GCVTOT(reg);
NSUP.fx(reg)        =        NSUP.L(reg)*POP(T,reg)/POP(T-1,reg);
KAVCM1(sec,reg)     =        KAVC(sec,reg)      ;
INVVM1(sec,reg)     =        INVV.L(sec,reg)      ;
PDRM2.fx(sec,reg)   =        PDRM1.L(sec,reg)     ;
PDRM1.fx(sec,reg)   =        PDR.L(sec,reg)       ;
XDM2(sec,reg)    =           XDM1(sec,reg)      ;
XDM1(sec,reg)    =           XD.L(sec,reg)        ;
XDA(sec,reg)     =           (XDM1(sec,reg)*(XDM1(sec,reg)/XDM2(sec,reg))**2)$(XDA0(sec,reg) ne 0)+0;
KAVC(sec,reg)    =           (1-DECL(sec,reg))*KAVCM1(sec,reg)+INVVM1(sec,reg);
PPIBM1.fx(reg)      =        (sum(sec,EXPOP.L(sec,reg)*PEX.L(sec,reg)+PHC.L(sec,reg)*HCV.L(sec,reg)+PGC.L(sec,reg)*GCV(sec,reg)
                             +INVV.L(sec,reg)*PINV.L(sec,reg)+STV(sec,reg)*PB.L(sec,reg)*(1+TXTVAST(sec,reg))-
                             IMPO.L(sec,reg)*PIMP.L(sec,reg)))/
                            (sum(sec,EXPOP.L(sec,reg)*PEX0(sec,reg)+PHC0(sec,reg)*HCV.L(sec,reg)+PGC0(sec,reg)*GCV(sec,reg)
                            +INVV.L(sec,reg)*PINV0(sec,reg)+STV(sec,reg)*PB0(sec,reg)*(1+TXTVAST(sec,reg))-
                             IMPO.L(sec,reg)*PIMP0(sec,reg))) ;


TAXECO2CCS(regeu)=EUETSPRICE.L*(EX.L("USA")/EX.L(regeu));
TAXECO2CCS(regmeu)=TAXECO2.L(regmeu);
TAXECO2CCS("CHI")=TAXECO2.L("CHI")+CHIETSPRICE.L;

TAXECO2CCS(reg)=1000*TAXECO2CCS(reg)*(EX.L(reg)/EX.L("USA"))/SORTIEMAC("PGDP",T,"USA");

loop(reg,
if (TAXECO2CCS(reg) gt 50,
   CCSSHARE("COA",reg)=CCSSHARE("COA",reg)+CCSGROWTH(reg,"COA")*(TAXECO2CCS(reg)/50)**0.15;
   );
if (TAXECO2CCS(reg) gt 80,
   CCSSHARE("GAP",reg)=CCSSHARE("GAP",reg)+CCSGROWTH(reg,"GAP")*(TAXECO2CCS(reg)/80)**0.15;
   CCSSHARE("OIP",reg)=CCSSHARE("OIP",reg)+CCSGROWTH(reg,"OIP")*(TAXECO2CCS(reg)/80)**0.15;
   );
if (TAXECO2CCS(reg) gt 105,
   CCSSHARE("BIO",reg)=CCSSHARE("BIO",reg)+CCSGROWTH(reg,"BIO")*(TAXECO2CCS(reg)/105)**0.15;
   );
);

*CCSSHARE(elec,reg)=0;

CCSSHARE("COA",reg)=MIN(1,CCSSHARE("COA",reg));
CCSSHARE("GAP",reg)=MIN(1,CCSSHARE("GAP",reg));
CCSSHARE("BIO",reg)=MIN(1,CCSSHARE("BIO",reg));
CCSSHARE("OIP",reg)=MIN(1,CCSSHARE("OIP",reg));

PELECRM2(elec,reg)=PELECRM1(elec,reg);
PELECRM1(elec,reg)=PELECR.L(elec,reg);


PELECN(elec,reg) = ((1-TSUB(elec,reg))*APELEC(elec,reg)*(DLAV(elec,reg)*((W.L(reg)*(1+TXWPOWER("SS",elec,reg)))/TGL("05",reg))**(1-SIGMAELE(elec,reg))+
                  DKAV(elec,reg)*((RLTL.L(reg)+DECLELECT(elec,reg))*PINV.L("05",reg)*APELEINV(elec,reg)/TGKEA(elec,reg))**(1-SIGMAELE(elec,reg))+
                  DENMA(elec,reg)*PELECENMA.L(elec,reg)**(1-SIGMAELE(elec,reg)))
                  **(1/(1-SIGMAELE(elec,reg))))$(ELECGEN0(elec,reg) ne 0)+1$(ELECGEN0(elec,reg) eq 0) ;


PELECA(elec,reg)=(PELECN(elec,reg)*(1+ALELECPD(elec,reg)*((PELECN(elec,reg)-PELECM1(elec,reg))/
                                              PELECM1(elec,reg))+(1-ALELECPD(ELEC,reg))*((PELECM1(elec,reg)-PELECM2(elec,reg))/PELECM2(elec,reg))));

PELECM2(elec,reg)=PELECM1(elec,reg);
PELECM1(elec,reg)=PELECN(elec,reg);

if(iter eq 2023,
loop(reg,
if(CURRENTPOLICIES(reg,"2050","NUC") eq 0,
         ELECKAVCDELTANUC(reg)= ELECKAVC("NUC",reg)/(2050-2022);
         ELECGENDELTANUC(reg)=  ELECGEN.L("NUC",reg)/(2050-2022);
));
);


if(iter le 2022,
    ELECGEN.fx("HYD",reg)=ELECGEN.L("HYD",reg)*(CURRENTPOLICIES(reg,"2022","HYD")/CURRENTPOLICIES(reg,"2017","HYD"))**(1/(2022-2017));
    ELECGEN.fx("NUC",reg)$(ELECGEN.L("NUC",reg) ne 0)=ELECGEN.L("NUC",reg)*(CURRENTPOLICIES(reg,"2022","NUC")/CURRENTPOLICIES(reg,"2017","NUC"))**(1/(2022-2017));
  else
    ELECGEN.fx("HYD",reg)=ELECGEN.L("HYD",reg)*(CURRENTPOLICIES(reg,"2050","HYD")/CURRENTPOLICIES(reg,"2022","HYD"))**(1/(2050-2022));
    ELECGEN.fx("NUC",reg)$((ELECGEN.L("NUC",reg) ne 0) and (CURRENTPOLICIES(reg,"2050","NUC") ne 0))=ELECGEN.L("NUC",reg)*(CURRENTPOLICIES(reg,"2050","NUC")/CURRENTPOLICIES(reg,"2022","NUC"))**(1/(2050-2022));
    ELECGEN.fx("NUC",reg)$((ELECGEN.L("NUC",reg) ne 0) and (CURRENTPOLICIES(reg,"2050","NUC") eq 0))=MAX(0,ELECGEN.L("NUC",reg)-ELECGENDELTANUC(reg));
  );


GENMHYDNUCM1(reg)=GENMHYDNUC.L(reg)/(1+growth0(reg));
GENMHYDNUCM2(reg)=GENMHYDNUCM1(reg)/(1+growth0(reg));
GENMHYDNUCA(reg)=(GENMHYDNUCM1(reg)*(GENMHYDNUCM1(reg)/GENMHYDNUCM2(reg))**2);


PGENFOSSA(reg) =  APELECFOSS(reg)*(DELEC("COA",reg)*PELECA("COA",reg)**(1-SIGMAFOSS(reg))+
                      DELEC("OIP",reg)*PELECA("OIP",reg)**(1-SIGMAFOSS(reg))+
                      DELEC("GAP",reg)*PELECA("GAP",reg)**(1-SIGMAFOSS(reg)))**(1/(1-SIGMAFOSS(reg)));


PGENMHYDNUCA(reg)= APGEN(reg)*(DELECFOSS(reg)*PGENFOSSA(reg)**(1-SIGMAGEN(reg))+DELEC("WIN",reg)*PELECA("WIN",reg)**(1-SIGMAGEN(reg))+
                               DELEC("SOL",reg)*PELECA("SOL",reg)**(1-SIGMAGEN(reg))+DELEC("OTH",reg)*PELECA("OTH",reg)**(1-SIGMAGEN(reg))+
                               DELEC("BIO",reg)*PELECA("BIO",reg)**(1-SIGMAGEN(reg)))**(1/(1-SIGMAGEN(reg)));



GENFOSSA(reg)   =  GENMHYDNUCA(reg)*APGEN(reg)*DELECFOSS(reg)*(PGENMHYDNUCA(reg)/(APGEN(reg)*PGENFOSSA(reg)))**SIGMAGEN(reg);


ELECGENA(elecmhydnuc,reg)  = ((GENMHYDNUCA(reg)*APGEN(reg)*DELEC(elecmhydnuc,reg)*(PGENMHYDNUCA(reg)/(APGEN(reg)*PELECA(elecmhydnuc,reg)))**SIGMAGEN(reg)))$(ord(elecmhydnuc) gt 3)+
                        ((GENFOSSA(reg)*APELECFOSS(reg)*DELEC(elecmhydnuc,reg)*(PGENFOSSA(reg)/(APELECFOSS(reg)*PELECA(elecmhydnuc,reg)))**SIGMAFOSS(reg)))$(ord(elecmhydnuc) le 3);

ELECKAVCM1(elec,reg)=ELECKAVC(elec,reg);

*INVVELEC(elec,reg)= MAX(0,ELECKAVA.L(elec,reg)-((1-DECLELECT(elec,reg))*ELECKAVCM1(elec,reg)));

ELECKAVC(elec,reg)=(1-DECLELECT(elec,reg))*ELECKAVCM1(elec,reg)+INVVELEC.L(elec,reg);

if (iter le 2022, ELECKAVC("COA","SPN")=ELECKAVCM1("COA","SPN")*0.7;
                  ELECKAVC("COA","EU1")=ELECKAVCM1("COA","EU1")*0.9;
   );

if(iter le 2022,
    ELECKAVO.fx("HYD",reg)=ELECKAVC("HYD",reg)*(CURRENTPOLICIES(reg,"2022","HYD")/CURRENTPOLICIES(reg,"2017","HYD"))**(1/(2022-2017));
    ELECKAVO.fx("NUC",reg)$(ELECKAVO.L("NUC",reg) ne 0)=ELECKAVO.L("NUC",reg)*(CURRENTPOLICIES(reg,"2022","NUC")/CURRENTPOLICIES(reg,"2017","NUC"))**(1/(2022-2017));
  else
    ELECKAVO.fx("HYD",reg)=ELECKAVC("HYD",reg)*(CURRENTPOLICIES(reg,"2050","HYD")/CURRENTPOLICIES(reg,"2022","HYD"))**(1/(2050-2022));
    ELECKAVO.fx("NUC",reg)$((ELECGEN.L("NUC",reg) ne 0) and (CURRENTPOLICIES(reg,"2050","NUC") ne 0))=ELECKAVC("NUC",reg)*(CURRENTPOLICIES(reg,"2050","NUC")/CURRENTPOLICIES(reg,"2022","NUC"))**(1/(2050-2022));
    ELECKAVO.fx("NUC",reg)$((ELECGEN.L("NUC",reg) ne 0) and (CURRENTPOLICIES(reg,"2050","NUC") eq 0))=MAX(0,ELECKAVC("NUC",reg)-ELECKAVCDELTANUC(reg));
   );



TAXECO2M4(reg)=1000*TAXECO2.L(reg)/SORTIEMAC("PGDP",T,reg)*(SORTIEMAC("EXCH",T,reg)/SORTIEMAC("EXCH",T,"USA"))*(SORTIEMAC("PGDP",T,reg)/SORTIEMAC("PGDP",T,"USA"));
TAXECO2M(reg)=MAX(TAXECO2M(reg),TAXECO2M4(reg));

COUTUABAT(ghg,sec,reg)=0;ABAT(ghg,reg)=0;
IA(reg)=0;IB(reg)=0;FB(ghg,reg)=0;FA(ghg,reg)=0;



loop(reg, if (TAXECO2M(reg) lt 0, TAXECO2M(reg)=0;));


if (iter ge 2023,
  loop(reg,

     loop(iin,
        if (TAXECO2M(reg) ge IORD(iin), IA(reg)=IORD(iin);FA(ghg,reg)=FABAT(T,reg,ghg,iin);
                       if (ord(iin) ne card(iin),IB(reg)=IORD(iin+1);FB(ghg,reg)=FABAT(T,reg,ghg,iin+1);
                       else IB(reg)=IORD("110");FB(ghg,reg)=FABAT(T,reg,ghg,"110");)
            );
          );

        If ((IA(reg) ne 0) or (IB(reg) ne 0),
             if (IA(reg) eq IB(reg),ABAT(ghg,reg)=FA(ghg,reg);
             else ABAT(ghg,reg)=FA(ghg,reg)+(TAXECO2M(reg)-IA(reg))*
                                                              (FB(ghg,reg)-FA(ghg,reg))/(IB(reg)-IA(reg))));
       );


);


display ABAT;
);
);

display ELECKAVC;




put infoiter system.date,' ',system.time;put /;
putclose infoiter;

$include AirPollutants_Modeling_v

$include IPCC_Report






