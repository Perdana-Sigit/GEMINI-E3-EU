SET
POL Air Pollutants  /BC,CO,NH3,NMVOC,NOX,OC,PM10,PM2_5,SO2/

;

Parameter

EMIAP_Q(pol,sec,reg) Air pollutants indexed to production level
EMIAP_QELEC(pol,elec,reg) Air pollutants indexed to production level
EMIAP_H(pol,sec,reg) Air pollutants indexed to households conusmption level
EMIAP_IO(pol,pro,sec,reg) IO based non CO2 emissions
EMIAP_IOELEC(pol,pro,elec,reg) IO based non CO2 emissions
EMIAP_LU(pol,reg) Air pollutants related to Land use
EMIAP_K(pol,sec,reg) Air pollutants indexed to capital level

SORTIEPOLS(pol,sec,T,reg)
SORTIEPOLH(pol,sec,T,reg)
SORTIEPOLE(pol,elec,T,reg)
SORTIEPOLL(pol,T,reg)
SORTIEPOL(pol,t,reg)


APXD(pol,sec,reg)           Emissions factor related to production
APKAV(pol,sec,reg)          Emissions factor related to capital
APIO(pol,pro,sec,reg)       Emissions factor related to intermediate consumption
APELECXD(pol,elec,reg)      Emissions factor related to electricity generation
APELECIO(pol,pro,elec,reg)  Emissions factor related to intermediate consumption of electricity generation
APHH(pol,sec,reg)           Emissions factor related to household consumption
APLU(pol,reg)               Emissions factor related to land use

EMISSION_CONTROL(t,reg,pol) Coefficient emissions reduction
STEEPNES(reg,pol)           Steepnes factor
GDPPERCAPITA(T,reg)         GDP per capita

$GDXIN AirPollutants.gdx
* Sets from GTAP database
$LOAD EMIAP_Q,EMIAP_QELEC,EMIAP_H,EMIAP_IO,EMIAP_IOELEC,EMIAP_LU EMIAP_K


;

GDPPERCAPITA(T,reg)=SORTIEMAC("GDPZ",T,reg)/POP(T,reg);
STEEPNES(reg,pol)=3.5;
EMISSION_CONTROL(t,reg,pol)=1-(1/(1+(GDPPERCAPITA(T,reg)-GDPPERCAPITA("2017",reg))/STEEPNES(reg,pol)));


APXD(pol,sec,reg)=(EMIAP_Q(pol,sec,reg)/SORTIESEC("XD","2017",sec,reg))$(SORTIESEC("XD","2017",sec,reg) ne 0);
APHH(pol,sec,reg)=(EMIAP_H(pol,sec,reg)/SORTIESEC("HCV","2017",sec,reg))$(SORTIESEC("HCV","2017",sec,reg) ne 0);
APELECXD(pol,elec,reg)=(EMIAP_QELEC(pol,elec,reg)/SORTIEELEC("GENE",elec,"2017",reg))$(SORTIEELEC("GENE",elec,"2017",reg) ne 0);
APIO(pol,pro,sec,reg)=(EMIAP_IO(pol,pro,sec,reg)/SORTIEIO(pro,sec,"2017",reg))$(SORTIEIO(pro,sec,"2017",reg) ne 0);
APLU(pol,reg)=(EMIAP_LU(pol,reg)/SORTIESEC("XD","2017","07",reg))$(SORTIESEC("XD","2017","07",reg) ne 0);
APELECIO(pol,pro,elec,reg)=(EMIAP_IOELEC(pol,pro,elec,reg)/SORTIEIOELEC(pro,elec,"2017",reg))$(SORTIEIOELEC(pro,elec,"2017",reg) ne 0);
APKAV(pol,sec,reg)=(EMIAP_K(pol,sec,reg)/SORTIESEC("KAV","2017",sec,reg))$(SORTIESEC("KAV","2017",sec,reg) ne 0);  ;

SORTIEPOLS(pol,sec,T,reg)=APXD(pol,sec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIESEC("XD",T,sec,reg)+sum(pro,APIO(pol,pro,sec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIEIO(pro,sec,T,reg))+APKAV(pol,sec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIESEC("KAV",T,sec,reg);
SORTIEPOLH(pol,sec,T,reg)=APHH(pol,sec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIESEC("HCV",T,sec,reg);
SORTIEPOLL(pol,T,reg)=APLU(pol,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIESEC("XD",T,"07",reg);
SORTIEPOLE(pol,elec,T,reg)=APELECXD(pol,elec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIEELEC("GENE",elec,T,reg)+sum(pro,APELECIO(pol,pro,elec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIEIOELEC(pro,elec,T,reg));

SORTIEPOL(pol,t,reg)=sum(sec,SORTIEPOLS(pol,sec,T,reg))+sum(sec,SORTIEPOLH(pol,sec,T,reg))+SORTIEPOLL(pol,T,reg)+sum(elec,SORTIEPOLE(pol,elec,T,reg));


execute_unload "AirPollutants_Coefficient.gdx"  APXD APHH APELECXD APIO APLU APELECIO APKAV

execute_unload "AirPOllutants_inventory.gdx"  SORTIEPOLS SORTIEPOLH SORTIEPOLL SORTIEPOLE

display EMISSION_CONTROL,APHH,SORTIEPOLH;

