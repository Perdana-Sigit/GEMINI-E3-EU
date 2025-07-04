SET
POL Air Pollutants  /BC,CO,NH3,NMVOC,NOX,OC,PM10,PM2_5,SO2/
;

Parameter

SORTIEPOLS(pol,sec,T,reg)
SORTIEPOLH(pol,sec,T,reg)
SORTIEPOLE(pol,elec,T,reg)
SORTIEPOLL(pol,T,reg)
SORTIEPOL(pol,t,reg)

APXD(pol,sec,reg)           Emissions factor related to production
APKAV(pol,sec,reg)          Emissions factor related to apital
APIO(pol,pro,sec,reg)       Emissions factor related to intermediate consumption
APELECXD(pol,elec,reg)      Emissions factor related to electricity generation
APELECIO(pol,pro,elec,reg)  Emissions factor related to intermediate consumption of electricity generation
APHH(pol,sec,reg)           Emissions factor related to household consumption
APLU(pol,reg)               Emissions factor related to land use


EMISSION_CONTROL(t,reg,pol) Coefficient emissions reduction
STEEPNES(reg,pol)           Steepnes factor
GDPPERCAPITA(T,reg)         GDP per capita
;

$GDXIN AirPollutants_Coefficient.gdx
* Sets from GTAP database
$LOAD APXD APHH APELECXD APIO APLU APELECIO APKAV
;

GDPPERCAPITA(T,reg)=SORTIEMAC("GDPZ",T,reg)/POP(T,reg);
STEEPNES(reg,pol)=3.5;
EMISSION_CONTROL(t,reg,pol)=1-(1/(1+(GDPPERCAPITA(T,reg)-GDPPERCAPITA("2017",reg))/STEEPNES(reg,pol)));


*SORTIEPOLS(pol,sec,T,reg)=APXD(pol,sec,reg)*SORTIESEC("XD",T,sec,reg)+sum(pro,APIO(pol,pro,sec,reg)*SORTIEIO(pro,sec,T,reg))+APKAV(pol,sec,reg)*SORTIESEC("KAV",T,sec,reg);
*SORTIEPOLH(pol,sec,T,reg)=APHH(pol,sec,reg)*SORTIESEC("HCV",T,sec,reg);
*SORTIEPOLL(pol,T,reg)=APLU(pol,reg)*SORTIESEC("XD",T,"07",reg);
*SORTIEPOLE(pol,elec,T,reg)=APELECXD(pol,elec,reg)*SORTIEELEC("GENE",elec,T,reg)+sum(pro,APELECIO(pol,pro,elec,reg)*SORTIEIOELEC(pro,elec,T,reg));

*SORTIEPOL(pol,t,reg)=sum(sec,SORTIEPOLS(pol,sec,T,reg))+sum(sec,SORTIEPOLH(pol,sec,T,reg))+SORTIEPOLL(pol,T,reg)+sum(elec,SORTIEPOLE(pol,elec,T,reg));


SORTIEPOLS(pol,sec,T,reg)=APXD(pol,sec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIESEC("XD",T,sec,reg)+sum(pro,APIO(pol,pro,sec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIEIO(pro,sec,T,reg))+APKAV(pol,sec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIESEC("KAV",T,sec,reg);
SORTIEPOLH(pol,sec,T,reg)=APHH(pol,sec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIESEC("HCV",T,sec,reg);
SORTIEPOLL(pol,T,reg)=APLU(pol,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIESEC("XD",T,"07",reg);
SORTIEPOLE(pol,elec,T,reg)=APELECXD(pol,elec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIEELEC("GENE",elec,T,reg)+sum(pro,APELECIO(pol,pro,elec,reg)*(1-EMISSION_CONTROL(t,reg,pol))*SORTIEIOELEC(pro,elec,T,reg));

SORTIEPOL(pol,t,reg)=sum(sec,SORTIEPOLS(pol,sec,T,reg))+sum(sec,SORTIEPOLH(pol,sec,T,reg))+SORTIEPOLL(pol,T,reg)+sum(elec,SORTIEPOLE(pol,elec,T,reg));

*display EMISSION_CONTROL,APHH,SORTIEPOLH;


