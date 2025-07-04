  DHTRAOEV(reg)=DHTRAOEV(reg)*(SHARECAREV(reg,T)/SHARECAREV(reg,T-1));
  DHFUELIC(reg)=1-(1-DHFUELIC(reg))*(SHARECARBIO(reg,T)/SHARECARBIO(reg,T-1));
  TGKE(elec,reg)=TGKE(elec,reg)*(AVAILABITY(elec,reg,T)/AVAILABITY(elec,reg,T-1))$(AVAILABITY(elec,reg,"2017") ne 0);
  TGKEA(elec,reg)=TGKEA(elec,reg)*(AVAILABITY(elec,reg,T+1)/AVAILABITY(elec,reg,T))$(AVAILABITY(elec,reg,"2017") ne 0);

  if (iter le 2023 ,
  TGKE(elec,reg)=TGKE(elec,reg)*TGKELEC(elec,"1");
  TGKEA(elec,reg)=TGKEA(elec,reg)*TGKELEC(elec,"1");

  TGL(sec,reg)=TGL(sec,reg)*TGLGROWTH(reg,"1");
  GCVTOT(reg)=GCVTOT(reg)*TGGROWTH(reg,"1") ;

  TGE(sec,reg)=TGE(sec,reg)*TGGE(reg,"1");
  TGE("05",reg)=(TGE("05",reg)/TGGE(reg,"1"))*TGGE0508(reg,"1");
  TGE("08",reg)=(TGE("08",reg)/TGGE(reg,"1"))*TGGE0508(reg,"1");

  TGXD(secff,reg)=TGXD(secff,reg)*TGPF(reg,secff,"1");
  TGFF(secff,reg)=TGFF(secff,reg)*TGPF(reg,secff,"1");
  GEHCTRAOEIC(reg)=GEHCTRAOEIC(reg)*TGGEHCTRAOEIC("1");
  GEHCTRAOEEV(reg)=GEHCTRAOEEV(reg)*TGGEHCTRAOQEV("1");
  GEHCTRAOQEV(reg)=GEHCTRAOQEV(reg)*TGGEHCTRAOEEV("1");
  GEHCRESE(reg)=GEHCRESE(reg)*TGGEHCRESE(reg,"1");

*  DELEC("SOL","FRA")=DELEC("SOL","FRA")+DELECFOSS("FRA")*0.02*0.5;
*  DELEC("WIN","FRA")=DELEC("WIN","FRA")+DELECFOSS("FRA")*0.02*0.5;
*  DELECFOSS("FRA")=DELECFOSS("FRA")*0.98;

*  DELEC("SOL","ITA")=DELEC("SOL","ITA")+DELECFOSS("ITA")*0.01*0.5;
*  DELEC("WIN","ITA")=DELEC("WIN","ITA")+DELECFOSS("ITA")*0.01*0.5;
*  DELECFOSS("ITA")=DELECFOSS("ITA")*0.99;

*  DELEC("SOL","SPN")=DELEC("SOL","SPN")+DELECFOSS("SPN")*0.05;
*  DELECFOSS("SPN")=DELECFOSS("SPN")*0.95;
*  DELEC("GAP","SPN")=DELEC("GAP","SPN")+DELEC("COA","SPN")*0.3;
*  DELEC("COA","SPN")=DELEC("COA","SPN")*0.7;

*  DELEC("SOL","NLD")=DELEC("SOL","NLD")+DELECFOSS("NLD")*0.05*0.9;
*  DELEC("WIN","NLD")=DELEC("WIN","NLD")+DELECFOSS("NLD")*0.05*0.1;
*  DELECFOSS("NLD")=DELECFOSS("NLD")*0.95;

  DELEC("WIN","SWE")=DELEC("WIN","SWE")+DELEC("BIO","SWE")*0.04;
  DELEC("BIO","SWE")=DELEC("BIO","SWE")*0.96;

*  DELEC("SOL","POL")=DELEC("SOL","POL")+DELECFOSS("POL")*0.002;
*  DELECFOSS("POL")=DELECFOSS("POL")*0.998;

*  DELEC("SOL","BEL")=DELEC("SOL","BEL")+DELECFOSS("BEL")*0.01*0.5;
*  DELEC("WIN","BEL")=DELEC("WIN","BEL")+DELECFOSS("BEL")*0.01*0.5;
*  DELECFOSS("BEL")=DELECFOSS("BEL")*0.99;

*  DELEC("SOL","EU1")=DELEC("SOL","EU1")+DELECFOSS("EU1")*0.01*0.2;
*  DELEC("WIN","EU1")=DELEC("WIN","EU1")+DELECFOSS("EU1")*0.01*0.8;
*  DELECFOSS("EU1")=DELECFOSS("EU1")*0.99;
*  DELEC("GAP","EU1")=DELEC("GAP","EU1")+DELEC("COA","EU1")*0.05;
*  DELEC("COA","EU1")=DELEC("COA","EU1")*0.95;

*  DELEC("SOL","EU2")=DELEC("SOL","EU2")+DELECFOSS("EU2")*0.02*0.8;
*  DELEC("WIN","EU2")=DELEC("WIN","EU2")+DELECFOSS("EU2")*0.02*0.2        ;
*  DELECFOSS("EU2")=DELECFOSS("EU2")*0.98;

  DELEC("SOL","EU3")=DELEC("SOL","EU3")+DELEC("BIO","EU3")*0.08;
  DELEC("BIO","EU3")=DELEC("BIO","EU3")*0.92;

*  DELEC("SOL","EU4")=DELEC("SOL","EU4")+DELECFOSS("EU4")*0.02*0.5;
*  DELEC("WIN","EU4")=DELEC("WIN","EU4")+DELECFOSS("EU4")*0.02*0.5;
*  DELECFOSS("EU4")=DELECFOSS("EU4")*0.98;

*  DELEC("SOL","EU5")=DELEC("SOL","EU5")+DELECFOSS("EU5")*0.01*0.5;
*  DELEC("WIN","EU5")=DELEC("WIN","EU5")+DELECFOSS("EU5")*0.01*0.5;
*  DELECFOSS("EU5")=DELECFOSS("EU5")*0.99;

*  DELEC("WIN","EU6")=DELEC("WIN","EU6")+DELECFOSS("EU6")*0.05*0.8;
*  DELEC("SOL","EU6")=DELEC("SOL","EU6")+DELECFOSS("EU6")*0.05*0.2;
*  DELECFOSS("EU6")=DELECFOSS("EU6")*0.95;

  DELEC("WIN","GBR")=DELEC("WIN","GBR")+DELECFOSS("GBR")*0.14*0.95;
  DELEC("SOL","GBR")=DELEC("SOL","GBR")+DELECFOSS("GBR")*0.14*0.05;
  DELECFOSS("GBR")=DELECFOSS("GBR")*0.86;


  DELEC("WIN","USA")=DELEC("WIN","USA")+DELECFOSS("USA")*0.055*0.5;
  DELEC("SOL","USA")=DELEC("SOL","USA")+DELECFOSS("USA")*0.055*0.5;
  DELECFOSS("USA")=DELECFOSS("USA")*0.945;
  DELEC("GAP","USA")=DELEC("GAP","USA")+DELEC("COA","USA")*0.02;
  DELEC("COA","USA")=DELEC("COA","USA")*0.98;

  DELEC("WIN","CHI")=DELEC("WIN","CHI")+DELECFOSS("CHI")*0.01*0.7;
  DELEC("SOL","CHI")=DELEC("SOL","CHI")+DELECFOSS("CHI")*0.01*0.3;
  DELECFOSS("CHI")=DELECFOSS("CHI")*0.99;

  DELEC("WIN","IND")=DELEC("WIN","IND")+DELECFOSS("IND")*0.003*0.3;
  DELEC("SOL","IND")=DELEC("SOL","IND")+DELECFOSS("IND")*0.003*0.7;
  DELECFOSS("IND")=DELECFOSS("IND")*0.997;

  DELEC("WIN","CSA")=DELEC("WIN","CSA")+DELECFOSS("CSA")*0.04*0.4;
  DELEC("SOL","CSA")=DELEC("SOL","CSA")+DELECFOSS("CSA")*0.04*0.6;
  DELECFOSS("CSA")=DELECFOSS("CSA")*0.96;

  DELEC("GAP","CSA")=DELEC("GAP","CSA")+DELEC("COA","CSA")*0.01;
  DELEC("COA","CSA")=DELEC("COA","CSA")*0.99;

  DELEC("WIN","ASI")=DELEC("WIN","ASI")+DELECFOSS("ASI")*0.02*0.1;
  DELEC("SOL","ASI")=DELEC("SOL","ASI")+DELECFOSS("ASI")*0.02*0.9;
  DELECFOSS("ASI")=DELECFOSS("ASI")*0.98;

  DELEC("WIN","MID")=DELEC("WIN","MID")+DELECFOSS("MID")*0.002*0.1;
  DELEC("SOL","MID")=DELEC("SOL","MID")+DELECFOSS("MID")*0.002*0.9;
  DELECFOSS("MID")=DELECFOSS("MID")*0.998;

  DELEC("WIN","AFR")=DELEC("WIN","AFR")+DELECFOSS("AFR")*0.05*0.5;
  DELEC("SOL","AFR")=DELEC("SOL","AFR")+DELECFOSS("AFR")*0.05*0.5;
  DELECFOSS("AFR")=DELECFOSS("AFR")*0.95;

  DELEC("WIN","ROW")=DELEC("WIN","ROW")+DELECFOSS("ROW")*0.015*0.5;
  DELEC("SOL","ROW")=DELEC("SOL","ROW")+DELECFOSS("ROW")*0.015*0.5;
  DELECFOSS("ROW")=DELECFOSS("ROW")*0.985;

  DELEC("WIN","RUS")=DELEC("WIN","RUS")+DELECFOSS("RUS")*0.001*0.80;
  DELEC("SOL","RUS")=DELEC("SOL","RUS")+DELECFOSS("RUS")*0.001*0.20;
  DELECFOSS("RUS")=DELECFOSS("RUS")*0.999;


  Sumelec(reg)=DELEC("WIN",reg)+DELEC("SOL",reg)+DELEC("OTH",reg)+DELEC("BIO",reg)+DELECFOSS(reg);

*  DELEC("WIN","DEU")=DELEC("WIN","DEU")+0.5*(0.02*DELEC("BIO","DEU")+0.01*DELEC("OTH","DEU"));
*  DELEC("SOL","DEU")=DELEC("SOL","DEU")+0.5*(0.02*DELEC("BIO","DEU")+0.01*DELEC("OTH","DEU"));
*  DELEC("BIO","DEU")=DELEC("BIO","DEU")*0.98;
*  DELEC("OTH","DEU")=DELEC("OTH","DEU")*0.99;
*  Sumelec(reg)=DELEC("WIN",reg)+DELEC("SOL",reg)+DELEC("OTH",reg)+DELEC("BIO",reg)+DELECFOSS(reg);
*  display sumelec;

  sumDRESEF(reg)=DRESEF("01",reg)+DRESEF("02",reg)+DRESEF("03",reg)+DRESEF("04",reg);
  DRESEF("01",reg)=DRESEF("01",reg)-(DRESEF("01",reg)/sumDRESEF(reg))*DRESEF_HEATPUMP(reg)*TG_HEATPUMP(reg);
  DRESEF("02",reg)=DRESEF("02",reg)-(DRESEF("02",reg)/sumDRESEF(reg))*DRESEF_HEATPUMP(reg)*TG_HEATPUMP(reg);
  DRESEF("03",reg)=DRESEF("03",reg)-(DRESEF("03",reg)/sumDRESEF(reg))*DRESEF_HEATPUMP(reg)*TG_HEATPUMP(reg);
  DRESEF("04",reg)=DRESEF("04",reg)-(DRESEF("04",reg)/sumDRESEF(reg))*DRESEF_HEATPUMP(reg)*TG_HEATPUMP(reg);
  DRESEF_HEATPUMP(reg)=DRESEF_HEATPUMP(reg)*(1+TG_HEATPUMP(reg));



  sumDRESEFI(sec,reg)=DEPR("01",sec,reg)+DEPR("02",sec,reg)+DEPR("03",sec,reg)+DEPR("04",sec,reg);
  DEPR("01",sec,reg)$(sumDRESEFI(sec,reg) ne 0)=DEPR("01",sec,reg)-(DEPR("01",sec,reg)/sumDRESEFI(sec,reg))*DEPR_HEATPUMP(sec,reg)*TG_HEATPUMP(reg);
  DEPR("02",sec,reg)$(sumDRESEFI(sec,reg) ne 0)=DEPR("02",sec,reg)-(DEPR("02",sec,reg)/sumDRESEFI(sec,reg))*DEPR_HEATPUMP(sec,reg)*TG_HEATPUMP(reg);
  DEPR("03",sec,reg)$(sumDRESEFI(sec,reg) ne 0)=DEPR("03",sec,reg)-(DEPR("03",sec,reg)/sumDRESEFI(sec,reg))*DEPR_HEATPUMP(sec,reg)*TG_HEATPUMP(reg);
  DEPR("04",sec,reg)$(sumDRESEFI(sec,reg) ne 0)=DEPR("04",sec,reg)-(DEPR("04",sec,reg)/sumDRESEFI(sec,reg))*DEPR_HEATPUMP(sec,reg)*TG_HEATPUMP(reg);
  DEPR_HEATPUMP(sec,reg)=DEPR_HEATPUMP(sec,reg)*(1+TG_HEATPUMP(reg));

  DEPR("07","08",regeu)=DEPR("07","08",regeu)+0.01*DEPR("04","08",regeu);DEPR("04","08",regeu)=DEPR("04","08",regeu)*0.99;
  DEPR("07","09",regeu)=DEPR("07","09",regeu)+0.01*DEPR("04","09",regeu);DEPR("04","09",regeu)=DEPR("04","09",regeu)*0.99;
  DEPR("07","10",regeu)=DEPR("07","10",regeu)+0.01*DEPR("04","10",regeu);DEPR("04","10",regeu)=DEPR("04","10",regeu)*0.99;
  DEPR("07","13",regeu)=DEPR("07","13",regeu)+0.01*DEPR("04","13",regeu);DEPR("04","13",regeu)=DEPR("04","13",regeu)*0.99;

  sumDRESEFI(sec,reg)=0;
  sumDRESEFI(secm,reg)=DM(secm,reg)+DK(secm,reg)+DL(secm,reg)+DE(secm,reg);
  display sumDRESEFI;


  DK(secm,regeu)=DK(secm,regeu)+0.03*DE(secm,regeu)*DK(secm,regeu)/(DM(secm,regeu)+DK(secm,regeu)+DL(secm,regeu));
  DL(secm,regeu)=DL(secm,regeu)+0.03*DE(secm,regeu)*DL(secm,regeu)/(DM(secm,regeu)+DK(secm,regeu)+DL(secm,regeu));
  DE(secm,regeu)=DE(secm,regeu)*0.97;
  DM(secm,regeu)=1-DE(secm,regeu)-DK(secm,regeu)-DL(secm,regeu);

  sumDRESEFI(sec,reg)=0;
  sumDRESEFI(secm,reg)=DM(secm,reg)+DK(secm,reg)+DL(secm,reg)+DE(secm,reg);

  display sumDRESEFI;

  else
  if (iter le 2030 ,

  TGKE(elec,reg)=TGKE(elec,reg)*TGKELEC(elec,"2");
  TGKEA(elec,reg)=TGKEA(elec,reg)*TGKELEC(elec,"2");

  TGL(sec,reg)=TGL(sec,reg)*TGLGROWTH(reg,"2");
  GCVTOT(reg)=GCVTOT(reg)*TGGROWTH(reg,"2") ;
  TGE(sec,reg)=TGE(sec,reg)*TGGE(reg,"2");
  TGE("05",reg)=(TGE("05",reg)/TGGE(reg,"2"))*TGGE0508(reg,"2");
  TGE("08",reg)=(TGE("08",reg)/TGGE(reg,"2"))*TGGE0508(reg,"2");
  TGXD(secff,reg)=TGXD(secff,reg)*TGPF(reg,secff,"2");
  TGFF(secff,reg)=TGFF(secff,reg)*TGPF(reg,secff,"2");
  GEHCTRAOEIC(reg)=GEHCTRAOEIC(reg)*TGGEHCTRAOEIC("2");
  GEHCTRAOEEV(reg)=GEHCTRAOEEV(reg)*TGGEHCTRAOQEV("2");
  GEHCTRAOQEV(reg)=GEHCTRAOQEV(reg)*TGGEHCTRAOEEV("2");
  GEHCRESE(reg)=GEHCRESE(reg)*TGGEHCRESE(reg,"2");

  DELEC("WIN","RUS")=DELEC("WIN","RUS")+DELECFOSS("RUS")*0.002*0.80;
  DELEC("SOL","RUS")=DELEC("SOL","RUS")+DELECFOSS("RUS")*0.002*0.20;
  DELECFOSS("RUS")=DELECFOSS("RUS")*0.998;

  DELEC("WIN","MID")=DELEC("WIN","MID")+DELECFOSS("MID")*0.01*0.4;
  DELEC("SOL","MID")=DELEC("SOL","MID")+DELECFOSS("MID")*0.01*0.6;
  DELECFOSS("MID")=DELECFOSS("MID")*0.99;

  DELEC("WIN","ROW")=DELEC("WIN","ROW")+DELECFOSS("ROW")*0.02*0.5;
  DELEC("SOL","ROW")=DELEC("SOL","ROW")+DELECFOSS("ROW")*0.02*0.5;
  DELECFOSS("ROW")=DELECFOSS("ROW")*0.98;



  Sumelec(reg)=DELEC("WIN",reg)+DELEC("SOL",reg)+DELEC("OTH",reg)+DELEC("BIO",reg)+DELECFOSS(reg);
  display Sumelec,DELEC;


  else
  if (iter le 2040 ,

  TGKE(elec,reg)=TGKE(elec,reg)*TGKELEC(elec,"3");
  TGKEA(elec,reg)=TGKEA(elec,reg)*TGKELEC(elec,"3");

  TGL(sec,reg)=TGL(sec,reg)*TGLGROWTH(reg,"3");
  GCVTOT(reg)=GCVTOT(reg)*TGGROWTH(reg,"3") ;
  TGE(sec,reg)=TGE(sec,reg)*TGGE(reg,"3");
  TGE("05",reg)=(TGE("05",reg)/TGGE(reg,"3"))*TGGE0508(reg,"3");
  TGE("08",reg)=(TGE("08",reg)/TGGE(reg,"3"))*TGGE0508(reg,"3");
  TGXD(secff,reg)=TGXD(secff,reg)*TGPF(reg,secff,"3");
  TGFF(secff,reg)=TGFF(secff,reg)*TGPF(reg,secff,"3");
  GEHCTRAOEIC(reg)=GEHCTRAOEIC(reg)*TGGEHCTRAOEIC("3");
  GEHCTRAOEEV(reg)=GEHCTRAOEEV(reg)*TGGEHCTRAOQEV("3");
  GEHCTRAOQEV(reg)=GEHCTRAOQEV(reg)*TGGEHCTRAOEEV("3");
  GEHCRESE(reg)=GEHCRESE(reg)*TGGEHCRESE(reg,"3");


  else
  if (iter le 2050 ,
  TGKE(elec,reg)=TGKE(elec,reg)*TGKELEC(elec,"4");
  TGKEA(elec,reg)=TGKEA(elec,reg)*TGKELEC(elec,"4");

  TGL(sec,reg)=TGL(sec,reg)*TGLGROWTH(reg,"4");
  GCVTOT(reg)=GCVTOT(reg)*TGGROWTH(reg,"4") ;
  TGE(sec,reg)=TGE(sec,reg)*TGGE(reg,"4");
  TGE("05",reg)=(TGE("05",reg)/TGGE(reg,"4"))*TGGE0508(reg,"4");
  TGE("08",reg)=(TGE("08",reg)/TGGE(reg,"4"))*TGGE0508(reg,"4");
  TGXD(secff,reg)=TGXD(secff,reg)*TGPF(reg,secff,"4");
  TGFF(secff,reg)=TGFF(secff,reg)*TGPF(reg,secff,"4");
  GEHCTRAOEEV(reg)=GEHCTRAOEEV(reg)*TGGEHCTRAOQEV("4");
  GEHCTRAOQEV(reg)=GEHCTRAOQEV(reg)*TGGEHCTRAOEEV("4");
  GEHCRESE(reg)=GEHCRESE(reg)*TGGEHCRESE(reg,"4");




);
);
);
);

