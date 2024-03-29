SQLite format 3   @        �   �                                                        .	(   �    ��>"P
!	H	��	����t�M&H��                                                                                                                                              �?##�CtableCompetitionCo�###�tableCompetitionCompetition �CREATE TABLE Competition(idSport INT PRIMARY KEY, startDate DATE, endDate DATE,
FOREIGN KEY(idSport) REFERENCES Sport(idSport))6I# indexsqlite_autoindex_Competition_1Competition ��$55�itableCollectiveDisciplineCollectiveDiscipline �CREATE TABLE CollectiveDiscipline(idSport INT NOT NULL, sportName TEXT NOT NULL, disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(sportName) REFERENCES Sport(sportName))�$55�itableIndividualDisciplineIndividualDiscipline �CREATE TABLE IndividualDiscipline(idSport INT NOT NULL, sportName TEXT NOT NULL, disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(sportName) REFERENCES Sport(sportName))�.�5tableRecordRecord �CREATE TABLE Record(idRecord INT PRIMARY KEY, idParticipant INT NOT NULL, idSport INT NOT NULL, recordType TEXT NOT NULL, round TEXT NOT NULL, date DATE NOT NULL,
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant)),? indexsqlite_autoindex_Record_1Record ��k%%�tableBreaksRecordBreaksRecord �CREATE TABLE BreaksRecord(idRecord INT PRIMARY KEY, idParticipant INT NOT  NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idRecord) REFERENCES Record(idRecord))8K% indexsqlite_autoindex_BreaksRecord_1BreaksRecord ��i))�tableParticipatesInParticipatesIn �CREATE TABLE ParticipatesIn(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))�T�}tableCoachesCoaches �CREATE TABLE Coaches(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))\�tableSportSport �CREATE TABLE Sport(idSport INT PRIMARY KEY, sportName TEXT NOT NULL)*= indexsqlite_autoindex_Sport_1Sport ���utableCoachCoach �CREATE TABLE Coach( idParticipant INT PRIMARY KEY,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))*= indexsqlite_autoindex_Coach_1Coach ��	�tableAthleteAthleteUCREATE TABLE Athlete(idParticipant INT PRIMARY KEY, firstOlympicGames TEXT, gameParticipations INT, pastGOLDmedals INT NOT NULL, pastSILVERmedals INT NOT NULL, pastBRONZEmedals INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))-
A indexsqlite_autoindex_Athlete_1AthleteV�O))�YtableOlympicComitteOlympicComitte	CREATE TABLE OlympicComitte(
  "AFG" TEXT,
  "National Olympic Committee of the  Islamic Republic of Afghanistan" TEXT,
  "/logos/AFG.jpg" TEXT,
  "01/01/1936" TEXT
)�b##�tableParticipantParticipantCREATE TABLE Participant( idParticipant INT PRIMARY KEY, abbreviation CHAR(3) NOT NULL, name TEXT NOT NULL, birthYear INT,
FOREIGN KEY(abbreviation) REFERENCES OlympicCommittee(abbreviation))5I# indexsqlite_autoindex_Participant_1Participant� --�stableAttendesCeremonyAttendesCeremonyCREATE TABLE AttendesCeremony(OlympicCommitteeAbbreviation CHAR(3) NOT NULL,
idCeremony INT NOT NULL,
FOREIGN KEY(idCeremony) REFERENCES Ceremony(idCeremony),
FOREIGN KEY(OlympicCommitteeAbbreviation) REFERENCES OlympicCommittee(abbreviation))�*--�tableOlympicCommitteeOlympicCommitteeCREATE TABLE OlympicCommittee(abbreviation CHAR(3) PRIMARY KEY, name TEXT NOT NULL, logo TEXT NOT NULL, recognitionDate DATE)?S- indexsqlite_autoindex_OlympicCommittee_1OlympicCommitteev�?tableCeremonyCeremonyCREATE TABLE Ceremony(idCeremony INT PRIMARY KEY, date DATE NOT NULL, time TIME NOT NULL)/C indexsqlite_autoindex_Ceremony_1Ceremony      �   � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   !08/08/202112:00:00	!23/07/202112:00:00
   � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          		   �    ���S��K�k0��n
�
|
-	�	�	{	.��b%��D��w5��a��E��\ ��h�j � �                                         :8A)!DMADominica Olympic Committee/logos/DMA.jpg01/01/1993:7A)!DOMComit� Ol�mpico Dominicano/logos/DOM.jpg01/01/1954O6k)!DJIComit� National Olympique et Sportif Djiboutien/logos/DJI.jpg01/01/1984_5�	)!DENNational Olympic Committee and Sports Confederation of Denmark/logos/DEN.jpg01/01/1905:4A)!CODComit� Olympique Congolais/logos/COD.jpg01/01/1968_3�	)!PRKOlympic Committee of the Democratic People's Republic of Korea/logos/PRK.jpg01/01/195772;)!CZECzech Olympic Committee/logos/CZE.jpg01/01/1993E1W)!CYPThe Cyprus National Olympic Committee/logos/CYP.jpg01/01/1978609)!CUBComit� Ol�mpico Cubano/logos/CUB.jpg01/01/1955:/A)!CROCroatian Olympic Committee/logos/CRO.jpg01/01/1993J.a)!CIVComit� National Olympique de C�te d'Ivoire/logos/CIV.jpg01/01/1963G-[)!CRCComit� Ol�mpico Nacional  de Costa Rica/logos/CRC.jpg01/01/1936R,q)!COKCook Islands Sports and National Olympic Committee/logos/COK.jpg01/01/1986N+i)!CGOComit� National Olympique et Sportif Congolais/logos/CGO.jpg01/01/1964L*e)!COMComit� Olympique et Sportif des Iles Comores/logos/COM.jpg01/01/1993:)A)!COLComit� Ol�mpico Colombiano/logos/COL.jpg01/01/1948@(M)!TPEChinese Taipei Olympic Committee/logos/TPE.jpg01/01/19608'=)!CHIComit� Ol�mpico de Chile/logos/CHI.jpg01/01/1934D&U)!CHAComit� Olympique et Sportif Tchadien/logos/CHA.jpg01/01/1964R%q)!CAFComit� National Olympique et Sportif Centrafricain/logos/CAF.jpg01/01/1965@$M)!CAYCayman Islands Olympic Committee/logos/CAY.jpg01/01/1976=#G)!CPVComit� Ol�mpico Cabo-Verdiano/logos/CPV.jpg01/01/1993:"A)!CANCanadian Olympic Committee/logos/CAN.jpg01/01/1907P!m)!CMRComit� National Olympique et Sportif du Cameroun/logos/CMR.jpg01/01/1963F Y)!CAMNational Olympic Committee of Cambodia/logos/CAM.jpg01/01/1995DU)!BDIComit� National Olympique du Burundi/logos/BDI.jpg01/01/1993Qo)!BURComit� National Olympique et des Sports Burkinab�/logos/BUR.jpg01/01/1972;C)!BULBulgarian Olympic Committee/logos/BUL.jpg01/01/1924Ja)!BRUBrunei Darussalam National Olympic Council/logos/BRU.jpg01/01/19849?)!BRAComit� Ol�mpico do Brasil/logos/BRA.jpg01/01/1935CS)!BOTBotswana National Olympic Committee/logos/BOT.jpg01/01/1980Kc)!BIHOlympic Committee of Bosnia and Herzegovina/logos/BIH.jpg01/01/19939?)!BOLComit� Ol�mpico Boliviano/logos/BOL.jpg01/01/19368=)!BHUBhutan Olympic Committee/logos/BHU.jpg01/01/1983;C)!BERBermuda Olympic Association/logos/BER.jpg01/01/1936Mg)!BENComit� National Olympique et Sportif B�ninois/logos/BEN.jpg01/01/1962Qo)!BIZBelize Olympic and Commonwealth Games Association/logos/BIZ.jpg01/01/1968FY)!BELComit� Olympique et Interf�d�ral Belge/logos/BEL.jpg01/01/1906Uw)!BLRNational Olympic Committee of the Republic of Belarus/logos/BLR.jpg01/01/1993EW)!BARThe Barbados Olympic Association Inc./logos/BAR.jpg01/01/1951>I)!BANBangladesh Olympic Association/logos/BAN.jpg01/01/19809?)!BRNBahrain Olympic Committee/logos/BRN.jpg01/01/19799?)!BAHBahamas Olympic Committee/logos/BAH.jpg01/01/1952Vy)!AZENational Olympic Committee of the Azerbaijani Republic/logos/AZE.jpg01/01/1993CS)!AUT�sterreichisches Olympisches Comit�/logos/AUT.jpg01/01/1912AO)!AUSAustralian Olympic Committee Inc./logos/AUS.jpg01/01/37957
;)!ARUComit� Ol�mpico Arubano/logos/ARU.jpg01/01/1986E	W)!ARMNational Olympic Committee of Armenia/logos/ARM.jpg01/01/19939?)!ARGComit� Ol�mpico Argentino/logos/ARG.jpg01/01/1923Kc)!ANTThe Antigua and Barbuda Olympic Association/logos/ANT.jpg01/01/19768=)!ANGComit� Ol�mpico Angolano/logos/ANG.jpg01/01/198069)!ANDComit� Ol�mpic Andorr�/logos/AND.jpg01/01/1975I_)!ASAAmerican Samoa National Olympic Committee/logos/ASA.jpg01/01/1987DU)!ALGComit� Olympique et Sportif Alg�rien/logos/ALG.jpg01/01/1964CS)!ALBAlbanian National Olympic Committee/logos/ALB.jpg01/01/1959c�)!AFGNational Olympic Committee of the  Islamic Republic of Afghanistan/logos/A   �+   
s   	8
   �	9 ���������������y	iYQI9aqA1)�!������g��a�������yqYQAI91	9)
b���������!�������yqaiYAI)19Q!	]	f	����(�
������
������qyi9)Q�aY!1AI	 �����������p^U��yLCi:1
t
�
�
�
�
�
�
�
�
�
}
�
Y
k
�
G
,
>
�
5	
#	�	�

	�
	��	�	�	�	�	�	�	�	�	�	�	�	x	o
P	T	K	B�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   EOR �ZIM �ZAM �YEM �ISV �IVB �VIE �VEN �VAN �UZB �URU �USA �TAN �UAE �UKR �UGA �TUV �TKM �TUR �TUN �TTO �TGA �TOG �TLS �THA �TJK �SYR �SUI �SWE �SUR �SUD �VIN �SRI �ESP �SSD �RSA �SOM �SOL �SLO �SVK �SGP �SLE �SEY �SRB �SEN �KSA �STP �SMR �SAM �LCA �SKN �RWA �ROC �ROU �MDA �KOR �QAT �PUR �POR �POL �PHI �PER �CHN �PAR �PNG �PAN �PLE �PLW �PAK �OMA �NOR �MKD �NGR �NIG �NCA �NZL �NED �NEP �NRU �NAM �MYAMOZ~MAR}MNE|MGL{MONzMEXyMRIxMTNwMHLvMLTuMLItMDVsMASrMAWqMADpLUXoLTUnLIEmLBAlLBRkLESjlbniLAThLAOgKGZfKUWeKOSdKIRcKENbKAZaJOR`JPN_JAM^ITA]ISR\IRI[IRLZIRQYINAXINDWISLVHUNUHKGTHONSHAIRGUYQGBSPGUIOGUANGUMMGRNLGREKGBRJGHAIGERHGEOGGAMFGABEFRADFINCFIJBFSMAETH@SWZ?EST>ERI=GEQ<ESA;EGY:ECU9DMA8DOM7DJI6DEN5COD4PRK3CZE2CYP1CUB0CRO/CIV.CRC-COK,CGO+COM*COL)TPE(CHI'CHA&CAF%CAY$CPV#CAN"CMR!CAM BDIBURBULBRUBRABOTBIHBOLBHUBERBENBIZBELBLRBARBANBRNBAHAZEAUTAUSARU
ARM	ARGANTANGANDASAALGALB	AFG   �    ������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"��������������ukaWMC9/%
�
�
�
�
�
�
�
�
�
�
�
�
�
{
q
g
]
S
I
?
5
+
!


	�	�	�	�	�	�	�	�	�	�	�	�	�	w	m	c	Y	O	E	;	1	'				�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#������   �_2GUM�^2GBS�]2MDV�\2SUR�[2HON�Z2TGA�Y2NIG�X2GAB�W2CIV�V2MLI�U2AND�T2MON�S2FIJ�R2TOG�Q2VAN�P2SYR�O2BER�N2LIE�M2PNG�L2ANT�K2ESA�J2SOM�I2CPV�H2BOT�G2BDI�F2GUY�E2KEN�D2GHA�C2TJK�B2COD�A2HAI�@2CMR�?2ZAM�>2UGA�=2SWZ�<2MRI�;2PAN�:2BUR�92RWA�82HKG�72NAM�62PAR�52CRC�42LUX�32TTO�22ERI�12ETH�02BIZ�/2MOZ�.2COK�-2SAM�,2STP�+2NGR�*2RSA�)2NED�(2DOM�'2JAM�&2UAE�%2SWE�$2KSA�#2ISL�"2NCA�!2VIE� 2MYA�2ARU�2MKD�2BRA�2MDA�2CAN�2MLT�2ARM�2MNE�2GEO�2TUN�2YEM�2JOR�2LAT�2ALB�2GRE�2ECU�2IRQ�2BUL�2FIN�2LBN�2GUA�
2CHI�	2NZL�2SEN�2BRN�2MAR�2CYP�2KUW�2QAT�2POR�2IRL� 2EOR�2NEP�~2BIH�}2KGZ�|2SRI�{2ALG�z2BHU�y2BEL�x2SGP�w2ROU�v2KOS�u2AFG�t2BAN�s2TPE�r2AUT�q2PHI�p2ISR�o2THA�n2PAK�m2PER�l2AZE�k2COL�j2EST�i2LTU�h2VEN�g2KAZ�f2TUR�e2ARG�d2OMA�c2UKR�b2CRO�a2DEN�`2IND�_2FRA�^2CUB�]2HUN�\2SLO�[2MAS�Z2UZB�Y2KOR�X2POL�W2PUR�V2MGL�U2CZE�T2INA�S2GER�R2SRB�Q2NOR�P2SUI�O2IRI�N2BLR�M2EGY�L2MEX�K2ITA�J2ROC�I2GBR�H2CHN�G2AUS�F2JPN�E2SVK�D2USA�C2SMR�B2ESP�A1CAM�@1IRE�?1PRK�>1LCA�=1GRN�<1DMA�;1BAH�:1LBR�91TAN�81LES�71IVB�61ASA�51NRU�41SOL�31ISV�21TKM�11MAD�01LAO�/1SEY�.1BEN�-1LBA�,1MAW�+1GAM�*1DJI�)1SUD�(1PLE�'1SLE�&1URU�%1COM�$1KIR�#1CHA�"1ANG�!1ZIM� 1BOL�1GUI�1GUM�1GBS�1MDV�1SUR�1HON�1TGA�1NIG�1GAB�1CIV�1MLI�1AND�1MON�1FIJ�1TOG�1VAN�1SYR�1BER�1LIE�1PNG�1ANT�
1ESA�	1SOM�1CPV�1BOT�1BDI�1GUY�1KEN�1GHA�1TJK�1COD� 1HAI1CMR~1ZAM}1UGA|1SWZ{1MRIz1PANy1BURx1RWAw1HKGv1NAMu1PARt1CRCs1LUXr1TTOq1ERIp1ETHo1BIZn1MOZm1COKl1SAMk1STPj1NGRi1RSAh1NEDg1DOMf1JAMe1UAEd1SWEc1KSAb1ISLa1NCA`1VIE_1MYA^1ARU]1MKD\1BRA[1MDAZ1CANY1MLTX1ARMW1MNEV1GEOU1TUNT1YEMS1JORR1LATQ1ALBP1GREO1ECUN1IRQM1BULL1FINK1LBNJ1GUAI1CHIH1NZLG1SENF1BRNE1MARD1CYPC1KUWB1QATA1POR@1IRL?1EOR>1NEP=1BIH<1KGZ;1SRI:1ALG91BHU81BEL71SGP61ROU51KOS41AFG31BAN21TPE11AUT01PHI/1ISR.1THA-1PAK,1PER+1AZE*1COL)1EST(1LTU'1VEN&1KAZ%1TUR$1ARG#1OMA"1UKR!1CRO 1DEN1IND1FRA1CUB1HUN1SLO1MAS1UZB1KOR1POL1PUR1MGL1CZE1INA1GER1SRB1NOR1SUI1IRI1BLR1EGY1MEX
1ITA	1ROC1GBR1CHN1AUS1JPN1SVK1USA1SMR   �_   2�    T���������������������|vpjd^XRLF@:4.("
��������
	�	�	�	�	r	P	4		 ����vZA$
�����hP*����}aH0�����lR9�����[A%����|cL/�����sX?���zS/                             !�7 �USAHenry Turner LEVERETT�$�= �USAJack Hobson LEVERETT III�"�9 �PAKMuhammad Khalil AKHTAR��/ �FRAClement BESSAGUET�&�A �THAIsaranuudom PHURIHIRANPHAT�� ' �ROCLeonid EKIMOV�%TUROzgur VARLIK� ~7~PAKGhulam Mustafa BASHIR�}%}KORJong-Ho SONG�|)|PERMarko CARRILLO�{#{GEROliver GEIS�z%zAZERuslan LUNEV�y!yCHNYuehong LI�x%xJPNDai YOSHIOKA�w+wGERChristian REITZ�v5vCOLBernardo TOBAR PRADO�u/uITARiccardo MAZZETTI�t-tAUSSergei EVGLEVSKI�s!sCHNJunmin LIN�r%rESTPeeter OLESK�q'qCUBJorge ALVAREZ�p5pMGLDavaakhuu ENKHTAIVAN�o-oFRAJean QUIQUAMPOIX�n#nCUBLeuris PUPO�m#mKORDaeyoon HAN�l5lBLRYury SHCHERBATSEVICH�k+kLTUKarolis GIRULIS�j'jITALorenzo BACCI�&iCiVENJulio Cesar IEMMA HERNANDEZ�h!hKORSangdo KIM�g'gAUSJack ROSSITER�f%fHUNZalan PEKLERe/eMEXJose Luis SANCHEZ�d'dCROMiran MARICIC�c'cNORHenrik LARSEN�b+bITAMarco DE NICOLO�a%aKAZYuriy YURKOV�`'`SRBMilenko SEBIC�_-_USANickolaus MOWRER�^)^CZEPetr NYMBURSKY�]1]JPNTakayuki MATSUMOTO�\'\CHNZhonghao ZHAO�[-[NORJon-Hermann HEGG�Z#ZSVKPatrik JANY�Y/YUSAPatrick SUNDERMAN�X#XJPNNaoya OKADA�W%WUKROleh TSARKOV�V+VCZEJiri PRIVRATSKY�U)UPOLTomasz BARTNIK�T!TTUROmer AKGUN�&SCSINDAishwary Pratap Singh TOMAR�R1RSRBMilutin STEFANOVIC�Q%QAUSDane SAMPSON�P)PINDSanjeev RAJPUT�$O?OARGAlexis Exequiel EBERHARDT�N#NCROPetar GORSA�M'MDENSteffen OLSEN�L+LCHNChanghong ZHANGK3KOMAHamed Said ALKHATRI�J+JIRIMahyar SEDAGHAT�I#IHUNIstvan PENI�H'HEGYOsama ELSAEID�G'GUKRSerhiy KULISH�F-FROCSergey KAMENSKIY�E%EROCYulia ZYKOVA�D+DCROSnjezana PEJCIC�C-CINDTejaswini SAWANT�B/BDENRikke Maeng IBSEN�A'AINDAnjum MOUDGIL�@'@JPNShiori HIRATA�?)?FRAOceanne MULLER�>!>CUBEglys CRUZ�=-=ITASofia CECCARELLO�<+<HUNEszter MESZAROS� ;7;AUSKatarina Rose KOWPLOS�:5:USAMary Carolynn TUCKER�9%9SLOZiva DVORSAK� 878NORJeanette Hegg DUESTAD�$7?7MASNur Suryani MOHAMED TAIBI�6#6KORSanghee BAE�515IRIFatemeh KARAMZADEH�434UZBMukhtasar TOKHIROVA�3-3GBRSeonaid MCINTOSH�2%2KOREunyoung CHO�1/1POLAneta STANKIEWICZ�#0=0PURYarimar MERCADO MARTINEZ�/+/MGLYesugen OYUNBAT�.+.EGYAlzahraa SHABAN�-#-CHNMengyao SHI�,+,CZENikola MAZUROVA�+/+SRBSanja VUKASINOVIC�(*G*INAVidya Rafika Rahmatan TOYYIBA�)!)GERJolyn BEER�()(SRBAndrea ARSOVIC�'#'NORJenny STENE�&'&SUINina CHRISTEN�%+%IRINajmeh KHEDMATI�$)$ROCYulia KARIMOVA�#+#BLRMaria MARTYNOVA�"+"USASagen MADDALENA�!#!CHNDongqi CHEN� 1 EGYAbdel Aziz MEHELBA�'EGYMaggy ASHMAWY�#=MEXJorge Martin OROZCO DIAZ�&CMEXAlejandra RAMIREZ CABALLERO�+ROCMaxim KABATSKIY�3ROCEkaterina SUBBOTINA�1USADerrick Scott MEIN�)USAKayle BROWNING�/ITAMauro DE FILIPPIS�'ITAJessica ROSSI�'ROCAlexey ALIPOV�+ROCDaria SEMIANOVA�%AGBRMatthew John COWARD HOLLEY�)GBRKirsty HEGARTY�#CHNHaicheng YU�'CHNXiaojing WANG�+SVKMarian KOVACOCY�)SVKJana SPOTAKOVA�'AUSJames WILLETT�-AUSLaetisha SCANLAN�1AUSThomas Derek GRICE�#   R�o   Q�f   P�^   N�Y   M�\   L�]   J�]   I�\   H�]   F�^   E�Y   C�V   B�V   A�S   ?�R   >�S   =�R   ;�S   :�Q   9�V   7�]   6�j   5�j   3�h   2�i   1�i   /�i   .�e   ,�a   +�a   *�j   (�u   '�y   &�u   $�r   #�p   "�r    �u   �q   �j   �i   �n   �v   �~   �   �   �   �   �   �   4    S����������|pdXL@4��~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xp    ������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$   O��   K{z   G   D��   @IH   <��   8}|   4   0��   -KJ   )	�	�   %~~   !   ��   LL   ��   ��   8 � �V��S��K�k0��n
�
|
-	�	�	{	.��b%��D��w5��a��E��\ ��h�j � �                                         :8A)!DMADominica Olympic Committee/logos/DMA.jpg01/01/1993:7A)!DOMComit� Ol�mpico Dominicano/logos/DOM.jpg01/01/1954O6k)!DJIComit� National Olympique et Sportif Djiboutien/logos/DJI.jpg01/01/1984_5�	)!DENNational Olympic Committee and Sports Confederation of Denmark/logos/DEN.jpg01/01/1905:4A)!CODComit� Olympique Congolais/logos/COD.jpg01/01/1968_3�	)!PRKOlympic Committee of the Democratic People's Republic of Korea/logos/PRK.jpg01/01/195772;)!CZECzech Olympic Committee/logos/CZE.jpg01/01/1993E1W)!CYPThe Cyprus National Olympic Committee/logos/CYP.jpg01/01/1978609)!CUBComit� Ol�mpico Cubano/logos/CUB.jpg01/01/1955:/A)!CROCroatian Olympic Committee/logos/CRO.jpg01/01/1993J.a)!CIVComit� National Olympique de C�te d'Ivoire/logos/CIV.jpg01/01/1963G-[)!CRCComit� Ol�mpico Nacional  de Costa Rica/logos/CRC.jpg01/01/1936R,q)!COKCook Islands Sports and National Olympic Committee/logos/COK.jpg01/01/1986N+i)!CGOComit� National Olympique et Sportif Congolais/logos/CGO.jpg01/01/1964L*e)!COMComit� Olympique et Sportif des Iles Comores/logos/COM.jpg01/01/1993:)A)!COLComit� Ol�mpico Colombiano/logos/COL.jpg01/01/1948@(M)!TPEChinese Taipei Olympic Committee/logos/TPE.jpg01/01/19608'=)!CHIComit� Ol�mpico de Chile/logos/CHI.jpg01/01/1934D&U)!CHAComit� Olympique et Sportif Tchadien/logos/CHA.jpg01/01/1964R%q)!CAFComit� National Olympique et Sportif Centrafricain/logos/CAF.jpg01/01/1965@$M)!CAYCayman Islands Olympic Committee/logos/CAY.jpg01/01/1976=#G)!CPVComit� Ol�mpico Cabo-Verdiano/logos/CPV.jpg01/01/1993:"A)!CANCanadian Olympic Committee/logos/CAN.jpg01/01/1907P!m)!CMRComit� National Olympique et Sportif du Cameroun/logos/CMR.jpg01/01/1963F Y)!CAMNational Olympic Committee of Cambodia/logos/CAM.jpg01/01/1995DU)!BDIComit� National Olympique du Burundi/logos/BDI.jpg01/01/1993Qo)!BURComit� National Olympique et des Sports Burkinab�/logos/BUR.jpg01/01/1972;C)!BULBulgarian Olympic Committee/logos/BUL.jpg01/01/1924Ja)!BRUBrunei Darussalam National Olympic Council/logos/BRU.jpg01/01/19849?)!BRAComit� Ol�mpico do Brasil/logos/BRA.jpg01/01/1935CS)!BOTBotswana National Olympic Committee/logos/BOT.jpg01/01/1980Kc)!BIHOlympic Committee of Bosnia and Herzegovina/logos/BIH.jpg01/01/19939?)!BOLComit� Ol�mpico Boliviano/logos/BOL.jpg01/01/19368=)!BHUBhutan Olympic Committee/logos/BHU.jpg01/01/1983;C)!BERBermuda Olympic Association/logos/BER.jpg01/01/1936Mg)!BENComit� National Olympique et Sportif B�ninois/logos/BEN.jpg01/01/1962Qo)!BIZBelize Olympic and Commonwealth Games Association/logos/BIZ.jpg01/01/1968FY)!BELComit� Olympique et Interf�d�ral Belge/logos/BEL.jpg01/01/1906Uw)!BLRNational Olympic Committee of the Republic of Belarus/logos/BLR.jpg01/01/1993EW)!BARThe Barbados Olympic Association Inc./logos/BAR.jpg01/01/1951>I)!BANBangladesh Olympic Association/logos/BAN.jpg01/01/19809?)!BRNBahrain Olympic Committee/logos/BRN.jpg01/01/19799?)!BAHBahamas Olympic Committee/logos/BAH.jpg01/01/1952Vy)!AZENational Olympic Committee of the Azerbaijani Republic/logos/AZE.jpg01/01/1993CS)!AUT�sterreichisches Olympisches Comit�/logos/AUT.jpg01/01/1912AO)!AUSAustralian Olympic Committee Inc./logos/AUS.jpg01/01/37957
;)!ARUComit� Ol�mpico Arubano/logos/ARU.jpg01/01/1986E	W)!ARMNational Olympic Committee of Armenia/logos/ARM.jpg01/01/19939?)!ARGComit� Ol�mpico Argentino/logos/ARG.jpg01/01/1923Kc)!ANTThe Antigua and Barbuda Olympic Association/logos/ANT.jpg01/01/19768=)!ANGComit� Ol�mpico Angolano/logos/ANG.jpg01/01/198069)!ANDComit� Ol�mpic Andorr�/logos/AND.jpg01/01/1975I_)!ASAAmerican Samoa National Olympic Committee/logos/ASA.jpg01/01/1987DU)!ALGComit� Olympique et Sportif Alg�rien/logos/ALG.jpg01/01/1964CS)!ALBAlbanian National Olympic Committee/logos/ALB.jpg01/01/1959c�)!AFGNational Olympic Committee of the  Islamic Republic of Afghanistan/logos/AFG.jpg01/01/1936   ; � ��G �*��@�{4��u8
�
�
�
B	�	�	w	=	�j��Z�}7���*��i/��^"��`��O � �                              :sA)!MDVMaldives Olympic Committee/logos/MDV.jpg01/01/1985;rC)!MASOlympic Council of Malaysia/logos/MAS.jpg01/01/19548q=)!MAWMalawi Olympic Committee/logos/MAW.jpg01/01/19689p?)!MADComit� Olympique Malgache/logos/MAD.jpg01/01/1964Joa)!LUXComit� Olympique et Sportif Luxembourgeois/logos/LUX.jpg01/01/1912Gn[)!LTUNational Olympic Committee of Lithuania/logos/LTU.jpg01/01/1991?mK)!LIELiechtenstein Olympic Committee/logos/LIE.jpg01/01/19358l=)!LBALibyan Olympic Committee/logos/LBA.jpg01/01/1963BkQ)!LBRLiberia National Olympic Committee/logos/LBR.jpg01/01/1955BjQ)!LESLesotho National Olympic Committee/logos/LES.jpg01/01/1972:iA)!lbnLebanese Olympic Committee/logos/lbn.jpg01/01/19489h?)!LATLatvian Olympic Committee/logos/LAT.jpg01/01/1991AgO)!LAONational Olympic Committee of Lao/logos/LAO.jpg01/01/1979Qfo)!KGZNational Olympic Committee of the Kyrgyz Republic/logos/KGZ.jpg01/01/19938e=)!KUWKuwait Olympic Committee/logos/KUW.jpg01/01/19668d=)!KOSKosovo Olympic Committee/logos/KOS.jpg01/01/2014CcS)!KIRKiribati National Olympic Committee/logos/KIR.jpg01/01/2003@bM)!KENNational Olympic Committee Kenya/logos/KEN.jpg01/01/1955Xa})!KAZNational Olympic Committee of the Republic of Kazakhstan/logos/KAZ.jpg01/01/19938`=)!JORJordan Olympic Committee/logos/JOR.jpg01/01/1963:_A)!JPNJapanese Olympic Committee/logos/JPN.jpg01/01/1912;^C)!JAMJamaica Olympic Association/logos/JAM.jpg01/01/1936D]U)!ITAComitato Olimpico Nazionale Italiano/logos/ITA.jpg01/01/1915?\K)!ISRThe Olympic Committee of Israel/logos/ISR.jpg01/01/1952[[�)!IRINational Olympic Committee of the Islamic Republic of Iran/logos/IRI.jpg01/01/1947=ZG)!IRLOlympic Federation of Ireland/logos/IRL.jpg01/01/1922BYQ)!IRQNational Olympic Committee of Iraq/logos/IRQ.jpg01/01/1948:XA)!INAKomite Olimpiade Indonesia/logos/INA.jpg01/01/1952:WA)!INDIndian Olympic Association/logos/IND.jpg01/01/1927RVq)!ISLNational Olympic and Sports Association of Iceland/logos/ISL.jpg01/01/1935;UC)!HUNHungarian Olympic Committee/logos/HUN.jpg01/01/3795YT)!HKGSports Federation & Olympic Committee of Hong Kong, China/logos/HKG.jpg01/01/19519S?)!HONComit� Ol�mpico Hondure�o/logos/HON.jpg01/01/19568R=)!HAIComit� Olympique Ha�tien/logos/HAI.jpg01/01/1924:QA)!GUYGuyana Olympic Association/logos/GUY.jpg01/01/1948?PK)!GBSComit� Ol�mpico da Guin�-Bissau/logos/GBS.jpg01/01/1995LOe)!GUIComit� National Olympique et Sportif Guin�en/logos/GUI.jpg01/01/1965<NE)!GUAComit� Ol�mpico Guatemalteco/logos/GUA.jpg01/01/1947?MK)!GUMGuam National Olympic Committee/logos/GUM.jpg01/01/19869L?)!GRNGrenada Olympic Committee/logos/GRN.jpg01/01/1984:KA)!GREHellenic Olympic Committee/logos/GRE.jpg01/01/3795;JC)!GBRBritish Olympic Association/logos/GBR.jpg01/01/19057I;)!GHAGhana Olympic Committee/logos/GHA.jpg01/01/1951?HK)!GERDeutscher Olympischer Sportbund/logos/GER.jpg01/01/3795CGS)!GEOGeorgian National Olympic Committee/logos/GEO.jpg01/01/1993EFW)!GAMThe Gambia National Olympic Committee/logos/GAM.jpg01/01/19769E?)!GABComit� Olympique Gabonais/logos/GAB.jpg01/01/1968MDg)!FRAComit� National Olympique et Sportif Fran�ais/logos/FRA.jpg01/01/37949C?)!FINFinnish Olympic Committee/logos/FIN.jpg01/01/1907YB)!FIJFiji Association of Sports and National Olympic Committee/logos/FIJ.jpg01/01/1955PAm)!FSMFederated States of Micronesia Olympic Committee/logos/FSM.jpg01/01/1997;@C)!ETHEthiopian Olympic Committee/logos/ETH.jpg01/01/1954S?s)!SWZEswatini Olympic and Commonwealth Games Association/logos/SWZ.jpg01/01/1972:>A)!ESTEstonian Olympic Committee/logos/EST.jpg01/01/1991C=S)!ERIEritrean National Olympic Committee/logos/ERI.jpg01/01/1999E<W)!GEQComit� Ol�mpico de  Guinea Ecuatorial/logos/GEQ.jpg01/01/1984>;I)!ESAComit� Ol�mpico de El Salvador/logos/ESA.jpg01/01/1938::A)!EGYEgyptian Olympic Committee/logos/EGY.jpg01/01/1910;9C)!ECUComit� Ol�mpico Ecuatoriano/logos/ECU.jpg01/01/1959   8 � �w)��`#��Z��X�~?
�
�
g
	�	�	L	��U��e'��i��0��H��s!��>��P  �                                                                   B�+Q)!SOMSomalia National Olympic Committee/logos/SOM.jpg01/01/1972M�*g)!SOLNational Olympic Committee of Solomon Islands/logos/SOL.jpg01/01/1983`�)�)!SLOOlympic Committee of Slovenia Association of Sports Federations/logos/SLO.jpg01/01/1993C�(S)!SVKSlovak Olympic and Sports Committee/logos/SVK.jpg01/01/1993B�'Q)!SGPSingapore National Olympic Council/logos/SGP.jpg01/01/1948J�&a)!SLENational Olympic Committee of Sierra Leone/logos/SLE.jpg01/01/1964U�%w)!SEYSeychelles Olympic and Commonwealth Games Association/logos/SEY.jpg01/01/1979;�$C)!SRBOlympic Committee of Serbia/logos/SRB.jpg01/01/1912O�#k)!SENComit� National Olympique et Sportif S�n�galais/logos/SEN.jpg01/01/1963?�"K)!KSASaudi Arabian Olympic Committee/logos/KSA.jpg01/01/1965F�!Y)!STPComit� Ol�mpico de S�o Tom� e Pr�ncipe/logos/STP.jpg01/01/1993G� [)!SMRComitato Olimpico Nazionale Sammarinese/logos/SMR.jpg01/01/1959`��)!SAMSamoa Association of Sports and National Olympic Committee Inc./logos/SAM.jpg01/01/1983:�A)!LCASt Lucia Olympic Committee/logos/LCA.jpg01/01/1993E�W)!SKNSt. Kitts and Nevis Olympic Committee/logos/SKN.jpg01/01/1993N�i)!RWAComit� National Olympique et Sportif du Rwanda/logos/RWA.jpg01/01/19849�?)!ROCRussian Olympic Committee/logos/ROC.jpg01/01/1993E�W)!ROURomanian Olympic and Sports Committee/logos/ROU.jpg01/01/1914a��)!MDANational Olympic and Sports Committee of the Republic of Moldova/logos/MDA.jpg01/01/1993@�M)!KORKorean Sport & Olympic Committee/logos/KOR.jpg01/01/19477�;)!QATQatar Olympic Committee/logos/QAT.jpg01/01/1980>�I)!PURComit� Ol�mpico de Puerto Rico/logos/PUR.jpg01/01/1948;�C)!PORComit� Ol�mpico de Portugal/logos/POR.jpg01/01/19098�=)!POLPolish Olympic Committee/logos/POL.jpg01/01/1919<�E)!PHIPhilippine Olympic Committee/logos/PHI.jpg01/01/19297�;)!PERComit� Ol�mpico Peruano/logos/PER.jpg01/01/19369�?)!CHNChinese Olympic Committee/logos/CHN.jpg01/01/19799�?)!PARComit� Ol�mpico Paraguayo/logos/PAR.jpg01/01/1970H�])!PNGPapua New Guinea Olympic Committee  Inc./logos/PNG.jpg01/01/19749�?)!PANComit� Ol�mpico de Panam�/logos/PAN.jpg01/01/19471�C)PLEPalestine Olympic Committee/logos/PLE.jpg@�M)!PLWPalau National Olympic Committee/logos/PLW.jpg01/01/1999<�E)!PAKPakistan Olympic Association/logos/PAK.jpg01/01/19486�
9)!OMAOman Olympic Committee/logos/OMA.jpg01/01/1982]�	�)NORNorwegian Olympic and Paralympic Committee and Confederation of Sports/logos/NOR.jpgD�U)!MKDOlympic Committee of North Macedonia/logos/MKD.jpg01/01/1993>�I)!NGRNigeria Olympic Committee Inc./logos/NGR.jpg01/01/1951M�g)!NIGComit� Olympique et Sportif National du Niger/logos/NIG.jpg01/01/1964<�E)!NCAComit� Ol�mpico Nicarag�ense/logos/NCA.jpg01/01/1959B�Q)!NZLNew Zealand Olympic Committee Inc./logos/NZL.jpg01/01/1919X�})!NEDNederlands Olympisch Comit�* Nederlandse Sport Federatie/logos/NED.jpg01/01/19127�;)!NEPNepal Olympic Committee/logos/NEP.jpg01/01/19637�;)!NRUNauru Olympic Committee/logos/NRU.jpg01/01/1994B� Q)!NAMNamibia National Olympic Committee/logos/NAM.jpg01/01/19919?)!MYAMyanmar Olympic Committee/logos/MYA.jpg01/01/1947F~Y)!MOZComit� Ol�mpico Nacional de Mo�ambique/logos/MOZ.jpg01/01/1979B}Q)!MARComit� National Olympique Marocain/logos/MAR.jpg01/01/1959=|G)!MNEMontenegrin Olympic Committee/logos/MNE.jpg01/01/2007D{U)!MGLMongolian National Olympic Committee/logos/MGL.jpg01/01/1962;zC)!MONComit� Olympique Mon�gasque/logos/MON.jpg01/01/19538y=)!MEXComit� Ol�mpico Mexicano/logos/MEX.jpg01/01/1923;xC)!MRIMauritius Olympic Committee/logos/MRI.jpg01/01/1972Pwm)!MTNComit� National Olympique et Sportif Mauritanien/logos/MTN.jpg01/01/1979Lve)!MHLMarshall Islands National  Olympic Committee/logos/MHL.jpg01/01/20069u?)!MLTMaltese Olympic Committee/logos/MLT.jpg01/01/1936Lte)!MLIComit� National Olympique et Sportif du Mali/logos/MLI.jpg01/01/1963   $ �\"�x>��N�p,��E	
�
\
!	�	�	J��d��@��|?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  *�O5)EORRefugee Olympic Team/logos/EOR.jpg:�NA)!ZIMZimbabwe Olympic Committee/logos/ZIM.jpg01/01/1980D�MU)!ZAMNational Olympic Committee of Zambia/logos/ZAM.jpg01/01/19637�L;)!YEMYemen Olympic Committee/logos/YEM.jpg01/01/1981@�KM)!ISVVirgin Islands Olympic Committee/logos/ISV.jpg01/01/1967H�J])!IVBBritish Virgin Islands Olympic Committee/logos/IVB.jpg01/01/19829�I?)!VIEVietnam Olympic Committee/logos/VIE.jpg01/01/1979:�HA)!VENComit� Ol�mpico Venezolano/logos/VEN.jpg01/01/1935]�G�)!VANVanuatu Association of Sports and National Olympic Committee/logos/VAN.jpg01/01/1987X�F})!UZBNational Olympic Committee of the Republic of Uzbekistan/logos/UZB.jpg01/01/19938�E=)!URUComit� Ol�mpico Uruguayo/logos/URU.jpg01/01/1923M�Dg)!USAUnited States Olympic & Paralympic  Committee/logos/USA.jpg01/01/3794:�CA)!TANTanzania Olympic Committee/logos/TAN.jpg01/01/1968O�Bk)!UAEUnited Arab Emirates National Olympic Committee/logos/UAE.jpg01/01/1980E�AW)!UKRNational Olympic Committee of Ukraine/logos/UKR.jpg01/01/19938�@=)!UGAUganda Olympic Committee/logos/UGA.jpg01/01/1956]�?�)!TUVTuvalu Association of Sports and  National Olympic Committee/logos/TUV.jpg01/01/2007J�>a)!TKMNational Olympic Committee of Turkmenistan/logos/TKM.jpg01/01/19939�=?)!TURTurkish Olympic Committee/logos/TUR.jpg01/01/1911B�<Q)!TUNComit� National Olympique Tunisien/logos/TUN.jpg01/01/1957E�;W)!TTOTrinidad and Tobago Olympic Committee/logos/TTO.jpg01/01/1947W�:{)!TGATonga Sports Association and National Olympic Committee/logos/TGA.jpg01/01/1984A�9O)!TOGComit� National Olympique du Togo/logos/TOG.jpg01/01/1965G�8[)!TLSComit� Ol�mpico Nacional de Timor-Leste/logos/TLS.jpg01/01/2003F�7Y)!THANational Olympic Committee of Thailand/logos/THA.jpg01/01/1950H�6])!TJKNational Olympic Committee of Tajikistan/logos/TJK.jpg01/01/19938�5=)!SYRSyrian Olympic Committee/logos/SYR.jpg01/01/19489�4?)!SUISwiss Olympic Association/logos/SUI.jpg01/01/19129�3?)!SWESwedish Olympic Committee/logos/SWE.jpg01/01/1913:�2A)!SURSurinaams Olympisch Comit�/logos/SUR.jpg01/01/19597�1;)!SUDSudan Olympic Committee/logos/SUD.jpg01/01/1959]�0�)!VINThe St Vincent and the Grenadines National Olympic Committee/logos/VIN.jpg01/01/1987G�/[)!SRINational Olympic Committee of Sri Lanka/logos/SRI.jpg01/01/19377�.;)!ESPComit� Ol�mpico Espa�ol/logos/ESP.jpg01/01/1912F�-Y)!SSDSouth Sudan National Olympic Committee/logos/SSD.jpg01/01/2015X�,})!RSASouth African Sports Confederation and Olympic Committee/logos/RSA.jpg01/01/1991   : � ��;��c&�w<��i#��k/
�
�
s
$	�	�	l	1��A��D��^!��P��S���D���>��l2 � �                                                             :r}MDV,Maldives Olympic Committee,/logos/MDV.jpg,01/01/1985;qMAS,Olympic Council of Malaysia,/logos/MAS.jpg,01/01/19548pyMAW,Malawi Olympic Committee,/logos/MAW.jpg,01/01/19689o{MAD,Comit� Olympique Malgache,/logos/MAD.jpg,01/01/1964Kn�LUX,Comit� Olympique et Sportif Luxembourgeois,/logos/LUX.jpg,01/01/1912Hm�LTU,National Olympic Committee of Lithuania,/logos/LTU.jpg,01/01/1991@l�LIE,Liechtenstein Olympic Committee,/logos/LIE.jpg,01/01/19358kyLBA,Libyan Olympic Committee,/logos/LBA.jpg,01/01/1963Cj�LBR,Liberia National Olympic Committee,/logos/LBR.jpg,01/01/1955Ci�LES,Lesotho National Olympic Committee,/logos/LES.jpg,01/01/1972:h}lbn,Lebanese Olympic Committee,/logos/lbn.jpg,01/01/19489g{LAT,Latvian Olympic Committee,/logos/LAT.jpg,01/01/1991Bf�LAO,National Olympic Committee of Lao,/logos/LAO.jpg,01/01/1979Re�+KGZ,National Olympic Committee of the Kyrgyz Republic,/logos/KGZ.jpg,01/01/19938dyKUW,Kuwait Olympic Committee,/logos/KUW.jpg,01/01/19668cyKOS,Kosovo Olympic Committee,/logos/KOS.jpg,01/01/2014Db�KIR,Kiribati National Olympic Committee,/logos/KIR.jpg,01/01/2003Aa�	KEN,National Olympic Committee Kenya,/logos/KEN.jpg,01/01/1955Y`�9KAZ,National Olympic Committee of the Republic of Kazakhstan,/logos/KAZ.jpg,01/01/19938_yJOR,Jordan Olympic Committee,/logos/JOR.jpg,01/01/1963:^}JPN,Japanese Olympic Committee,/logos/JPN.jpg,01/01/1912;]JAM,Jamaica Olympic Association,/logos/JAM.jpg,01/01/1936E\�ITA,Comitato Olimpico Nazionale Italiano,/logos/ITA.jpg,01/01/1915@[�ISR,The Olympic Committee of Israel,/logos/ISR.jpg,01/01/1952[Z�=IRI,National Olympic Committee of the Islamic Republic of Iran,/logos/IRI.jpg,01/01/1947>Y�IRL,Olympic Federation of Ireland,/logos/IRL.jpg,01/01/1922CX�IRQ,National Olympic Committee of Iraq,/logos/IRQ.jpg,01/01/1948:W}INA,Komite Olimpiade Indonesia,/logos/INA.jpg,01/01/1952:V}IND,Indian Olympic Association,/logos/IND.jpg,01/01/1927SU�-ISL,National Olympic and Sports Association of Iceland,/logos/ISL.jpg,01/01/1935;THUN,Hungarian Olympic Committee,/logos/HUN.jpg,01/01/3795\S�?HKG,"Sports Federation & Olympic Committee of Hong Kong, China",/logos/HKG.jpg,01/01/19519R{HON,Comit� Ol�mpico Hondure�o,/logos/HON.jpg,01/01/19568QyHAI,Comit� Olympique Ha�tien,/logos/HAI.jpg,01/01/1924:P}GUY,Guyana Olympic Association,/logos/GUY.jpg,01/01/1948@O�GBS,Comit� Ol�mpico da Guin�-Bissau,/logos/GBS.jpg,01/01/1995MN�!GUI,Comit� National Olympique et Sportif Guin�en,/logos/GUI.jpg,01/01/1965=M�GUA,Comit� Ol�mpico Guatemalteco,/logos/GUA.jpg,01/01/1947@L�GUM,Guam National Olympic Committee,/logos/GUM.jpg,01/01/19869K{GRN,Grenada Olympic Committee,/logos/GRN.jpg,01/01/1984:J}GRE,Hellenic Olympic Committee,/logos/GRE.jpg,01/01/3795;IGBR,British Olympic Association,/logos/GBR.jpg,01/01/19057HwGHA,Ghana Olympic Committee,/logos/GHA.jpg,01/01/1951@G�GER,Deutscher Olympischer Sportbund,/logos/GER.jpg,01/01/3795DF�GEO,Georgian National Olympic Committee,/logos/GEO.jpg,01/01/1993FE�GAM,The Gambia National Olympic Committee,/logos/GAM.jpg,01/01/19769D{GAB,Comit� Olympique Gabonais,/logos/GAB.jpg,01/01/1968NC�#FRA,Comit� National Olympique et Sportif Fran�ais,/logos/FRA.jpg,01/01/37949B{FIN,Finnish Olympic Committee,/logos/FIN.jpg,01/01/1907ZA�;FIJ,Fiji Association of Sports and National Olympic Committee,/logos/FIJ.jpg,01/01/1955Q@�)FSM,Federated States of Micronesia Olympic Committee,/logos/FSM.jpg,01/01/1997;?ETH,Ethiopian Olympic Committee,/logos/ETH.jpg,01/01/1954T>�/SWZ,Eswatini Olympic and Commonwealth Games Association,/logos/SWZ.jpg,01/01/1972:=}EST,Estonian Olympic Committee,/logos/EST.jpg,01/01/1991D<�ERI,Eritrean National Olympic Committee,/logos/ERI.jpg,01/01/1999F;�GEQ,Comit� Ol�mpico de  Guinea Ecuatorial,/logos/GEQ.jpg,01/01/1984?:�ESA,Comit� Ol�mpico de El Salvador,/logos/ESA.jpg,01/01/1938:9}EGY,Egyptian Olympic Committee,/logos/EGY.jpg,01/01/1910  _� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"��������������ukaWMC9/%
�
�
�
�
�
�
�
�
�
�
�
�
�
{
q
g
]
S
I
?
5
+
!


	�	�	�	�	�	�	�	�	�	�	�	�	�	w	m	c	Y	O	E	;	1	'				�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#������   �_2GUM�^2GBS�]2MDV�\2SUR�[2HON�Z2TGA�Y2NIG�X2GAB�W2CIV�V2MLI�U2AND�T2MON�S2FIJ�R2TOG�Q2VAN�P2SYR�O2BER�N2LIE�M2PNG�L2ANT�K2ESA�J2SOM�I2CPV�H2BOT�G2BDI�F2GUY�E2KEN�D2GHA�C2TJK�B2COD�A2HAI�@2CMR�?2ZAM�>2UGA�=2SWZ�<2MRI�;2PAN�:2BUR�92RWA�82HKG�72NAM�62PAR�52CRC�42LUX�32TTO�22ERI�12ETH�02BIZ�/2MOZ�.2COK�-2SAM�,2STP�+2NGR�*2RSA�)2NED�(2DOM�'2JAM�&2UAE�%2SWE�$2KSA�#2ISL�"2NCA�!2VIE� 2MYA�2ARU�2MKD�2BRA�2MDA�2CAN�2MLT�2ARM�2MNE�2GEO�2TUN�2YEM�2JOR�2LAT�2ALB�2GRE�2ECU�2IRQ�2BUL�2FIN�2LBN�2GUA�
2CHI�	2NZL�2SEN�2BRN�2MAR�2CYP�2KUW�2QAT�2POR�2IRL� 2EOR�2NEP�~2BIH�}2KGZ�|2SRI�{2ALG�z2BHU�y2BEL�x2SGP�w2ROU�v2KOS�u2AFG�t2BAN�s2TPE�r2AUT�q2PHI�p2ISR�o2THA�n2PAK�m2PER�l2AZE�k2COL�j2EST�i2LTU�h2VEN�g2KAZ�f2TUR�e2ARG�d2OMA�c2UKR�b2CRO�a2DEN�`2IND�_2FRA�^2CUB�]2HUN�\2SLO�[2MAS�Z2UZB�Y2KOR�X2POL�W2PUR�V2MGL�U2CZE�T2INA�S2GER�R2SRB�Q2NOR�P2SUI�O2IRI�N2BLR�M2EGY�L2MEX�K2ITA�J2ROC�I2GBR�H2CHN�G2AUS�F2JPN�E2SVK�D2USA�C2SMR�B2ESP�A1CAM�@1IRE�?1PRK�>1LCA�=1GRN�<1DMA�;1BAH�:1LBR�91TAN�81LES�71IVB�61ASA�51NRU�41SOL�31ISV�21TKM�11MAD�01LAO�/1SEY�.1BEN�-1LBA�,1MAW�+1GAM�*1DJI�)1SUD�(1PLE�'1SLE�&1URU�%1COM�$1KIR�#1CHA�"1ANG�!1ZIM� 1BOL�1GUI�1GUM�1GBS�1MDV�1SUR�1HON�1TGA�1NIG�1GAB�1CIV�1MLI�1AND�1MON�1FIJ�1TOG�1VAN�1SYR�1BER�1LIE�1PNG�1ANT�
1ESA�	1SOM�1CPV�1BOT�1BDI�1GUY�1KEN�1GHA�1TJK�1COD� 1HAI1CMR~1ZAM}1UGA|1SWZ{1MRIz1PANy1BURx1RWAw1HKGv1NAMu1PARt1CRCs1LUXr1TTOq1ERIp1ETHo1BIZn1MOZm1COKl1SAMk1STPj1NGRi1RSAh1NEDg1DOMf1JAMe1UAEd1SWEc1KSAb1ISLa1NCA`1VIE_1MYA^1ARU]1MKD\1BRA[1MDAZ1CANY1MLTX1ARMW1MNEV1GEOU1TUNT1YEMS1JORR1LATQ1ALBP1GREO1ECUN1IRQM1BULL1FINK1LBNJ1GUAI1CHIH1NZLG1SENF1BRNE1MARD1CYPC1KUWB1QATA1POR@1IRL?1EOR>1NEP=1BIH<1KGZ;1SRI:1ALG91BHU81BEL71SGP61ROU51KOS41AFG31BAN21TPE11AUT01PHI/1ISR.1THA-1PAK,1PER+1AZE*1COL)1EST(1LTU'1VEN&1KAZ%1TUR$1ARG#1OMA"1UKR!1CRO 1DEN1IND1FRA1CUB1HUN1SLO1MAS1UZB1KOR1POL1PUR1MGL1CZE1INA1GER1SRB1NOR1SUI1IRI1BLR1EGY1MEX
1ITA	1ROC1GBR1CHN1AUS1JPN1SVK1USA1SMR1ESP   #� ������������~tj`VLB8.$����������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    �2CAM�2IRE� 2PRK�2LCA�~2GRN�}2DMA�|2BAH�{2LBR�z2TAN�y2LES�x2IVB�w2ASA�v2NRU�u2SOL�t2ISV�s2TKM�r2MAD�q2LAO�p2SEY�o2BEN�n2LBA�m2MAW�l2GAM�k2DJI�j2SUD�i2PLE�h2SLE�g2URU�f2COM�e2KIR�d2CHA�c2ANG�b2ZIM�a2BOL�`2GUI   �/ ����mS4����x]A'����}_D%����cK/�����xN0
�
�
�
�
�
h
K
+
	�	�	�	�	r	P	4		 ����vZA$
�����hP*����}aH0�����lR9�����[A%����|cL/�����sX?���zS/                             !�7 �USAHenry Turner LEVERETT�$�= �USAJack Hobson LEVERETT III�"�9 �PAKMuhammad Khalil AKHTAR��/ �FRAClement BESSAGUET�&�A �THAIsaranuudom PHURIHIRANPHAT�� ' �ROCLeonid EKIMOV�%TUROzgur VARLIK� ~7~PAKGhulam Mustafa BASHIR�}%}KORJong-Ho SONG�|)|PERMarko CARRILLO�{#{GEROliver GEIS�z%zAZERuslan LUNEV�y!yCHNYuehong LI�x%xJPNDai YOSHIOKA�w+wGERChristian REITZ�v5vCOLBernardo TOBAR PRADO�u/uITARiccardo MAZZETTI�t-tAUSSergei EVGLEVSKI�s!sCHNJunmin LIN�r%rESTPeeter OLESK�q'qCUBJorge ALVAREZ�p5pMGLDavaakhuu ENKHTAIVAN�o-oFRAJean QUIQUAMPOIX�n#nCUBLeuris PUPO�m#mKORDaeyoon HAN�l5lBLRYury SHCHERBATSEVICH�k+kLTUKarolis GIRULIS�j'jITALorenzo BACCI�&iCiVENJulio Cesar IEMMA HERNANDEZ�h!hKORSangdo KIM�g'gAUSJack ROSSITER�f%fHUNZalan PEKLERe/eMEXJose Luis SANCHEZ�d'dCROMiran MARICIC�c'cNORHenrik LARSEN�b+bITAMarco DE NICOLO�a%aKAZYuriy YURKOV�`'`SRBMilenko SEBIC�_-_USANickolaus MOWRER�^)^CZEPetr NYMBURSKY�]1]JPNTakayuki MATSUMOTO�\'\CHNZhonghao ZHAO�[-[NORJon-Hermann HEGG�Z#ZSVKPatrik JANY�Y/YUSAPatrick SUNDERMAN�X#XJPNNaoya OKADA�W%WUKROleh TSARKOV�V+VCZEJiri PRIVRATSKY�U)UPOLTomasz BARTNIK�T!TTUROmer AKGUN�&SCSINDAishwary Pratap Singh TOMAR�R1RSRBMilutin STEFANOVIC�Q%QAUSDane SAMPSON�P)PINDSanjeev RAJPUT�$O?OARGAlexis Exequiel EBERHARDT�N#NCROPetar GORSA�M'MDENSteffen OLSEN�L+LCHNChanghong ZHANGK3KOMAHamed Said ALKHATRI�J+JIRIMahyar SEDAGHAT�I#IHUNIstvan PENI�H'HEGYOsama ELSAEID�G'GUKRSerhiy KULISH�F-FROCSergey KAMENSKIY�E%EROCYulia ZYKOVA�D+DCROSnjezana PEJCIC�C-CINDTejaswini SAWANT�B/BDENRikke Maeng IBSEN�A'AINDAnjum MOUDGIL�@'@JPNShiori HIRATA�?)?FRAOceanne MULLER�>!>CUBEglys CRUZ�=-=ITASofia CECCARELLO�<+<HUNEszter MESZAROS� ;7;AUSKatarina Rose KOWPLOS�:5:USAMary Carolynn TUCKER�9%9SLOZiva DVORSAK� 878NORJeanette Hegg DUESTAD�$7?7MASNur Suryani MOHAMED TAIBI�6#6KORSanghee BAE�515IRIFatemeh KARAMZADEH�434UZBMukhtasar TOKHIROVA�3-3GBRSeonaid MCINTOSH�2%2KOREunyoung CHO�1/1POLAneta STANKIEWICZ�#0=0PURYarimar MERCADO MARTINEZ�/+/MGLYesugen OYUNBAT�.+.EGYAlzahraa SHABAN�-#-CHNMengyao SHI�,+,CZENikola MAZUROVA�+/+SRBSanja VUKASINOVIC�(*G*INAVidya Rafika Rahmatan TOYYIBA�)!)GERJolyn BEER�()(SRBAndrea ARSOVIC�'#'NORJenny STENE�&'&SUINina CHRISTEN�%+%IRINajmeh KHEDMATI�$)$ROCYulia KARIMOVA�#+#BLRMaria MARTYNOVA�"+"USASagen MADDALENA�!#!CHNDongqi CHEN� 1 EGYAbdel Aziz MEHELBA�'EGYMaggy ASHMAWY�#=MEXJorge Martin OROZCO DIAZ�&CMEXAlejandra RAMIREZ CABALLERO�+ROCMaxim KABATSKIY�3ROCEkaterina SUBBOTINA�1USADerrick Scott MEIN�)USAKayle BROWNING�/ITAMauro DE FILIPPIS�'ITAJessica ROSSI�'ROCAlexey ALIPOV�+ROCDaria SEMIANOVA�%AGBRMatthew John COWARD HOLLEY�)GBRKirsty HEGARTY�#CHNHaicheng YU�'CHNXiaojing WANG�+SVKMarian KOVACOCY�)SVKJana SPOTAKOVA�'AUSJames WILLETT�-AUSLaetisha SCANLAN�1AUSThomas Derek GRICE�#AUSPenny SMITH�
+
JPNShigetaka OYAMA�	)	JPNYukie NAKAYAMA�!SVKErik VARGA�1SVKZuzana STEFECEKOVA�'USABrian BURROWS�3USAMadelynn Ann BERNAU�-SMRGian Marco BERTI�1SMRAlessandra PERILLI�/ESPAlberto FERNANDEZ�	'ESPFatima GALVEZ�   ~ ����pV2����uN2�����iP7�����_D#	����{V5
�
�
�
�
�
f
L
1
	�	�	�	�	�	d	F	'�����bF&	����rO6����jO*����iM1����{^<$����^?#����rN1����y`?                           �/FRACeline GOBERVILLE��1AUSElena GALIABOVITCH��!CHNYuemei LIN�� / EGYRadwa ABDEL LATIF��% �TPEChia Ying WU��~% �CHNRanxin JIANG��}+ �SRBZorana ARUNOVIC�#�|; �INDYashaswini Singh DESWAL��{+ �UKROlena KOSTEVYCH��z) �AUTSylvia STEINER�!�y7 �MGLAnudari TSOLMONBAATAR��x/ �USASandra UPTAGRAFFT��w) �HUNVeronika MAJOR��v! �KORGaeun CHOO��u- �ROCMargarita LOMOVA��t/ �ECUAndrea PEREZ PENA��s' �GERMonika KARSCH��r' �JPNSatoko YAMADA��q- �FRAMathilde LAMOLLE��p3 �SRBJasmina MILOVANOVIC��o# �CUBLaina PEREZ�'�nG �IRQFatimah Abbas Waheeb AL-KAABI"�m9 �ROCVitalina BATSARASHKINA��l) �TPEChia Chen TIEN��k+ �BLRViktoria CHAIKA��j �BULSelin ALI��i3 �FINSatu MAKELA-NUMMELA��h) �NZLNatalie ROONEY�"�g9 �GUAAna Waleska SOTO ABRIL��f! �LBNRay BASSIL��e) �ITASilvana STANCO��d- �FRACarole CORMENIER��c3 �GUAAdriana RUANO OLIVA��b# �CHNWeiyun DENG��a' �FRAMelanie COUZY��`' �POLSandra BERNAL�%�_? �CHIFrancisca CROVETTO CHADID��^+ �SVKDanka BARTEKOVA�!�]7 �THASutiya JIEWCHALOEMMIT��\- �UKRIryna MALOVICHKO��[% �ITADiana BACOSI��Z) �ITAChiara CAINERO�"�Y9 �POLAleksandra JARMOLINSKA��X% �NZLChloe TIPPLE��W# �AUSLaura COLES��V/ �CYPAndri ELEFTHERIOU��U1 �MEXGabriela RODRIGUEZ��T) �CZEBarbora SUMOVA��S3 �ROCNatalia VINOGRADOVA��R% �SENChiara COSTA��Q �CHNMeng WEI��P! �GBRAmber HILL� �O5 �GERNadine MESSERSCHMIDT��N+ �KAZZoya KRAVCHENKO��M) �CHNDonglian ZHANG� �L5 �THAIsarapa IMPRASERTSUK��K' �KAZAssem ORYNBAY��J) �BRNMaryam HASSANI��I) �JPNNaoko ISHIHARA��H/ �FRALucie ANASTASSIOU��G' �USAAmber ENGLISH��F- �ROCZilia BATYRSHINA��E3 �USAAusten Jewell SMITH��D- �MARIbtissam MARIRHI��C! �ARGMelisa GIL��B1 �THASavate SRESTHAPORN�(�AE �PERAlessandro DE SOUZA FERREIRA��@- �CZEDavid KOSTELECKY��?+ �KUWTalal ALRASHIDI��>' �CYPAndreas MAKRI��=' �GBRAaron HEADING��<# �EGYAhmed ZAHER�!�;7 �KUWAbdulrahman AL FAIHAN��:% �GERAndreas LOEW��9# �TPEKun-Pi YANG��83 �QATMohammed AL RUMAIHI��7% �PORJoao AZEVEDO��6# �CZEJiri LIPTAK��5+ �CROJosip GLASNOVIC��4' �IRLDerek BURNETT��3' �TPEYing-Shin LIN� �25 �ROCAnastasiia GALASHINA��1) �ARGFernanda RUSSO��0% �EORLuna SOLOMON��/+ �NEPKalpana PARIYAR��.1 �BIHTatjana DJEKANOVIC�"�-9 �KGZKanykei KUBANYCHBEKOVA��,- �SRITehani EGODAWELA��+% �ALGHouda CHAABI��*) �BHULenchu KUNZANG��)% �KORHeemoon PARK��(' �AUSElise COLLIER��'# �BELJessie KAPS��&1 �SGPQian Xiu Adele TAN��%% �DENAnna NIELSEN��$1 �INDElavenil VALARIVAN��#- �IRIArmina SADEGHIAN��" �CHNQian YANG��!- �JPNHaruka NAKAGUCHI�� 1 �USAAlison Marie WEISZ��3 �ROULaura-Georgeta ILIE��+ �INDApurvi CHANDELA��! �KOREunji KWON��! �CHNLuyao WANG��+ �KOSDrilon IBRAHIMI��% �AFGMahdi YOVARI��- �USALucas KOZENIESKY��) �CZEDavid HRCKULAK��% �INDDeepak KUMAR��! �KORTaeyun NAM��/ �BANAbdullah Hel BAKI��' �ITAMarco SUPPINI�$�A �MEXEdson Ismael RAMIREZ RAMOS�5 �AUSAlex Chresten HOBERG�' �TPEShao-Chuan LU� �5 �EGYYoussef Helmy MAKKAR� �5 �ROCVladimir MASLENNIKOV��+ �AUTMartin STREMPFL��' �PHIJayson VALDEZ�!�7 �INDDivyansh Singh PANWAR��# �CHNHaoran YANG��
) �USAWilliam SHANER��	) �ISRSergey RICHTER��# �CHNLihao SHENG��- �UKRPavlo KOROSTYLOV��) �ITATommaso CHELLI�   �! ���~]A%	����oU8�����mL1�����nO4�����nN2
�
�
�
�
�
g
M

	�	�	�	�	o	M	.	�����xX8����za;�����pR1����uW<�����fM.����x[;  ����mP6����xZ=!                         �'�USAAlison GIBSON��-�ITAChiara PELLACANI�+�ITAElena BERTOCCHI�� 1�GBRKatherine TORRANCE��!GBRGrace REID��~+~JPNHazuki MIYAMOTO��})}JPNHaruka ENOMOTO�&�|A|MEXCarolina MENDOZA HERNANDEZ��{/{MEXDolores HERNANDEZ��z#zGERTina PUNZEL��y)yGERLena HENTSCHEL�$�x=xCANMelissa CITRINI BEAULIEU��w'wCANJennifer ABEL��vvCHNHan WANG��u#uCHNTingmao SHI��t-tROCNikita SHLEIKHER��s/sROCEvgenii KUZNETSOV��r%rGBRJack LAUGHER��q/qGBRDaniel GOODFELLOW��p)pITAGiovanni TOCCI��o/oITALorenzo MARSAGLIA��n%nJPNKen TERAUCHI��mmJPNSho SAKAI�(�lElMEXJuan Manuel CELAYA HERNANDEZ��k)kMEXYahel CASTILLO��j%jGERLars RUDIGER��i-iGERPatrick HAUSDING��h!hUSAMike HIXON��g/gUSAAndrew CAPOBIANCO��ffCHNSiyi XIE��e'eCHNZongyuan WANG�!�d7dINDAngad Vir Singh BAJWA��c'cDENJesper HANSEN� �b5bGRENikolaos MAVROMMATIS��a/aITATammaro CASSANDRO��`%`EGYAzmy MEHELBA��_+_FINEetu KALLIOINEN��^)^JPNHiroyuki IKAWA��]-]UAESaif BIN FUTTAIS��\%\ARGFederico GIL� �[5[GUAJuan Ramon SCHAEFFER�$�Z=ZPERNicolas PACHECO ESPINOSA��Y%YFINLari PESONEN��X1XCYPGeorgios ACHILLEOS��W+WUSAVincent HANCOCK��V%VAZEEmin JAFAROV��U'UCZEJakub TOMECEK��T)TSWEStefan NILSSON��S)SFRAEmmanuel PETIT��R#RKORJongjun LEE��Q1QKUWAbdullah ALRASHIDI�P1PKUWMansour AL RASHEDI�#�O;OUSAPhillip Russell JUNGMAN��N!NAUSPaul ADAMS��M%MNORErik WATNDAL��L'LEGYMostafa HAMDY�$�K=KKSASaeid Mugbel T ALMUTAIRI��J/JINDMairaj Ahmad KHAN��I'IFRAEric DELAUNAY�!�H7HCYPDimitris KONSTANTINOU��G/GITAGabriele ROSSETTI��F/FROCAnton ARISTARKHOV��E%ECHNZhengyang HE��DDCHNQian WANG��C'CUKROleh OMELCHUK��BBCHNWei PANG��A#ASRBDamir MIKEC��@'@TUNAla ALOTHMANI��?#?ITAPaolo MONNA��>->ROCArtem CHERNOUSOV��=3=ROCVadim MUKHAMETYANOV��<<KORMose KIM��;);SVKJuraj TUZINSKY��:):INDAbhishek VERMA��939CUBJorge GRAU POTRILLE� �858ISLAsgeir SIGURGEIRSSON��7#7CHNBowen ZHANG�+�6K6NCAEdwin Orlando BARBERENA MERCADO��5#5TURYusuf DIKEC��4+4VIEXuan Vinh HOANG��3-3EGYSamy ABDEL RAZEK��2)2IRIJavad FOROUGHI��1%1MYAYe Tun NAUNG��0#0KORJong Oh JIN��/+/JPNKojiro HORIMIZU��./.INDChaudhary SAURABH�-'-ARUPhilip ELHAGE��,/,MKDBorjan BRANKOVSKI��+/+BRAFelipe Almeida WU��*-*AUSDaniel REPACHOLI��)')PAKGulfam JOSEPH��(!(USAJames HALL��'%'TURIsmail KELES��&'&INDRahi SARNOBAT��%%%KORJunghye KWAK��$%$CHNYaxuan XIONG��#-#GERDoreen VENNEKAMP��"+"CHNJiaruixuan XIAO��!#!KORMinjung KIM��  CHNYu ZHANG�!�7THATanyaporn PRUCKSAKORN��#INDManu Bhaker��!MDAAnna DULCE��)BULMaria GROZDEVA��%CANLynda KIEJKO��1AUSDina ASPANDIYAROVA��+MLTEleanor BEZZINA��-BULAntoaneta BONEVA��/ARMElmira KARAPETYAN��%POLKlaudia BRES��KORBomi KIM��+MNEJelena PANTOVIC��+GEONino SALUKVADZE��)JPNChizuru SASAKI��#TUNOlfa CHARNI��-MGLGundegmaa OTRYAD��%USAAlexis LAGAN��/YEMYasameen AL-RAIMI� �5ECUDiana DURANGO FLORES��)JORAsma ABU RABEE��'EGYHala ELGOHARI��
'
LATAgate RASMANE��	'	GERCarina WIMMER��1IRIHaniyeh ROSTAMIYAN�!�7THANaphaswan YANGPAIBOON�!�7SUIHeidi DIETHELM GERBER��+ALBManuela DELILAJ��'GREAnna KORAKAKI�   � �����bD�����hP7�����qP,����}W<�����^? 
�
�
�
�
z
^
A
"
	�	�	�	�	p	Q	8		����qW3����yS6�����u[A%
���aG(�����jD'����kR4����mT<#����tS2          �+CHIMaria MAILLIARD��1GERSophie Ulrike KOCH��1UZBDilnoza RAKHMATOVA��'CANKatie VINCENT�� ' MDAMaria OLARASU��'�MDADaniela COCIU��~)�ROCIrina ANDREEVA��}3�BULStaniliya STAMENOVA��|'�HUNKincso TAKACS��{!�CHNWenjun LIN��z�GERLisa JAHN��y!�CROVanesa TOT��x!�GBRKatie REID�#�w;�UKRAnastasiia CHETVERIKOVA�!�v7�CUBKatherin NUEVO SEGURA��u+�POLDorota BOROWSKA��t1�THAOrasa THIANGKATHOK�"�s9�MEXAranza VAZQUEZ MONTANO��r+�SWEEmma GULLSTRAND��q!�BRALuana LIRA��p+�UKRViktoriya KESAR��o1�MASNur Dhabitah SABRI��n-�USAHailey HERNANDEZ��m/�SUIMichelle HEIMBERG�l)�AUSAnabelle SMITH� �k5�MEXArantxa CHAVEZ MUNOZ��j)�RSAMicaela BOUTER�#�i;�RSAJulia Catherine VINCENT��h)�UKRAnna PYSMENSKA��g!�MASYan Yee NG��f#�NEDInge JANSEN��e�KORSuji KIM��d3�GBRScarlett MEW JENSEN��c'�JPNSayaka MIKAMI��b!�AUSEsther QIN��a-�ROCMariia POLIAKOVA��`#�CANPamela WARE��_+�PURRafael QUINTERO��^%�JPNRikuto TAMAI��]/�USABrandon LOSCHIAVO�-�\O�GERJaden Shiloh EIKERMANN GREGORCHUK��[/�BRAIsaac SOUZA FILHO��Z%�GERTimo BARTHEL��Y'�KORYeongtaek KIM��X#�CANRylan WIENS��W#�MEXIvan GARCIA��V#�JPNReo NISHIDA��U+�FRAMatthieu ROSSET��T'�GBRNoah WILLIAMS��S�CHNJian YANG��R#�VENOscar ARIZA��Q-�AUSCassiel ROUSSEAU��P'�USAJordan WINDLE��O)�AUSSamuel FRICKER�#�N;�BRAKawan FIGUEREDO PEREIRA��M'�SGPJonathan CHAN�)�LG�MEXAndres Isaac VILLARREAL TUDON��K+�COLSebastian VILLA��J!�AUSMelissa WU��I!�KORHalim KWON��H3�SGPShen-Yan Freida LIM�!�G7�ITASarah JODOIN DI MARIA��F#�CANCelina TOTH��E'�USAKatrina YOUNG��D/�ROCYulia TIMOSHININA��C%�IRLTanya WATSON�B-�MASJun Hoong CHEONG��A+�BRAIngrid OLIVEIRA��@%�GERElena WASSEN�?'�FRAAlais KALONJI��>!�NORAnne TUXEN��=-�ROCAnna KONANYKHINA��<#�ITANoemi BATKI��;'�UKRSofiia LYSKUN�:'�CHNHongchan QUAN�%�9?�GBRAndrea SPENDOLINI SIRIEIX��8%�AUSNikita HAINS��7-�EGYMaha ABDEL SALAM��6-�NEDCeline VAN DUIJN��5)�MASPandelela PAMG��4'�MASMun Yee LEONG��3%�GBRLois TOULSON��2!�GBREden CHENG��1+�JPNMinami ITAHASHI��0%�JPNMatsuri ARAI��/-�GERChristina WASSEN��.#�CANCaeli MCKAY��--�CANMeaghan BENFEITO��,-�MEXAlejandra OROZCO�)�+G�MEXGabriela Belem AGUNDEZ GARCIA��*+�USADelaney SCHNELL��)-�USAJessica PARRATTO��(#�CHNJiaqi ZHANG��'�CHNYuxi CHEN��&/�COLSebastian MORALES� �%9�COLDaniel RESTREPO GARCIA�$%�UKROleg KOLODIY�#�#;�ESPNicolas GARCIA BOISSIER��"�AUSShixin LI��!)�MEXRommel PACHECO�� 3�MEXOsmar OLVERA IBARRA��#�USATyler DOWNS��)�DOMJose RUVALCABA��1�JAMYona KNIGHT-WISDOM�!�7�ESPAlberto AREVALO ALCON��1�NZLAnton DOWN-JENKINS��)�FRAAlexis JANDARD��'�CANCedric FOFANA��)�GERMartin WOLFRAM��%�GBRJames HEATLY��)�IRLOliver DINGLEY��#�EGYMohab ISHAK��+�JPNKazuki MURAKAMI��!�JPNHiroki ITO���KORHaram WOO��%�KORYeongnam KIM��)�UKROleksii SEREDA��#�UKROleh SERBIN!�7�CANNathan ZSOMBOR-MURRAY��-�CANVincent RIENDEAU��1�MEXKevin BERLIN REYES�%�?�MEXJose Diego BALLEZA ISAIAS��
+�ROCViktor MINIBAEV��	-�ROCAleksandr BONDAR��!�CHNAisen CHEN���CHNYuan CAO���GBRMatty LEE��%�GBRThomas DALEY��'�USAKrysta PALMER�
   ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xp    ������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

				
�e@ ����������������xph`XPH@80(  ����������������xph	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@����������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�`XPH@80(  ����������������xph`XPH@80(  ������        ~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������   � ����_@!����gE(����}O%����qS6�����mL/
�
�
�
�
k
P
5

	�	�	�	�	i	L	1	�����pU;"����oR,����iK. ����uO2����y^: ����sY>%����y^C#����cF&�+�BLRVolha KHUDZENKA��/�POLJustyna ISKRZYCKA��)�BELHermien PETERS��'�SLOAnja OSTERMAN�� -�AUTViktoria SCHWARZ�#�;SLOSpela PONOMARENKO JANIC��~#~AUSAlyssa BULL��}'}AUSAlyce BURNETT�&�|A|ESPIsabel CONTRERAS RODRIGUEZ��{/{AUTAna-Roxana LEHACI��z%zHUNDanuta KOZAK��y%yUKRMariya POVKH��x'xFRAManon HOSTENS��w+wKAZSvetlana USSOVA��v3vBLRNadzeya MAKARCHANKA��u+uBLRDaryna PIKULEVA��t!tCHIKaren ROCO��s!sCHNMengya SUN��r!rCHNShixiao XU��q%qARGBrenda ROJAS��p#pCHNMengdie YIN��o/oPOLHelena WISNIEWSKA��n+nNZLLisa CARRINGTON��mmJPNYuka ONO��l+lSRBMilica STAROVIC��k+kSWELinnea STENSILS��j'jTUNKhaoula SASSI��i#iSAMAnne CAIRNS�!�h7hCROAnamaria GOVORCINOVIC��g%gGBRDeborah KERR��f+fITAFrancesca GENZO�#�e;eUKRMariia KICHASOVA-SKORYK��d/dKAZNatalya SERGEYEVA��c#cFRALea JAMELOT��b1bCANAndreanne LANGLOIS��a#aHUNAnna KARASZ��`)`PORTeresa PORTELA�#�_;_DENSara Corfixsen MILTHERS��^-^UKRYuliia YURIICHUK��]#]GBREmily LEWIS��\%\COKJade TIERNEY��[)[ESPTeresa PORTELA��Z#ZEGYSamaa AHMED��YYCHNQing MA��XXHUNDora LUCZ��W)WDENEmma JORGENSEN��V+VFRAVanina PAOLETTI��U3UPOLMarta WALCZYKIEWICZ�#�T;TROCSvetlana CHERNIGOVSKAYA��S%SALGAmira KHERIS��R-RCANMichelle RUSSELL��Q1QROCNatalia PODOLSKAIA��P/PPORJoana VASCONCELOS�#�O;OSAMRudolf BERKING-WILLIAMS��N)NSAMTuva'a CLIFTON��M-MFRAGuillaume BURGER��L)LFRAEtienne HUBERT��K1KCANVincent JOURDENAIS��J'JCANBrian MALFESI��I#IAUSJordan WOOD��H/HAUSRiley FITZSIMMONS��G!GHUNAdam VARGA��F#FHUNKornel BEKE��E%EITALuca BECCARO��D'DITASamuele BURGO��C!CSVKAdam BOTEK��B%BSVKSamuel BALAZ��A-AROCMaxim SPESIVTSEV��@)@ROCRoman ANOSHKIN��?!?CHNTingkai BU��>'>CHNCongkang WANG��=%=BLRAleh YURENIA��<)<BLRMikita BORYKAU��;1;ESPInigo PENA ARRIOLA�%�:?:ESPFrancisco CUBELOS SANCHEZ��9%9NZLKurtis IMRIE��88NZLMax BROWN��7'7HUNBalint KOPASZ��6#6HUNBence NADAS��5#5CZERadek SLOUF��4%4CZEJosef DOSTAL��3%3GERJacob SCHOPF��22GERMax HOFF��1%1AUSThomas GREEN�#�0;0AUSJean VAN DER WESTHUYZEN�%�/?/STPRoque FERNANDES DOS RAMOS�$�.=.STPBuly DA CONCEICAO TRISTE��-)-UKRDmytro IANCHUK��,),UKRPavlo ALTUKHOV��+1+KAZTimofey YEMELYANOV��*/*KAZSergey YEMELYANOV��)%)HUNDaniel FEJES��(%(HUNBalazs ADOLF��'%'CZEMartin FUKSA��&!&CZEPetr FUKSA��%1%ROCVladislav CHEBOTAR��$+$ROCViktor MELANTEV��#)#ESPPablo MARTINEZ��"+"ESPCayetano GARCIA��!)!POLTomasz BARNIAK�� + POLWiktor GLAZUNOW��1CANConnor FITZPATRICK��%CANRoland VARGA��-ROUVictor MIHALACHI��+ROUCatalin CHIRILA�'�CBRAIsaquias QUEIROZ DOS SANTOS�+�KBRAJacky Jamael NASCIMENTO GODMANN��!GERTim HECKER��/GERSebastian BRENDEL��'CHNPengfei ZHENG��CHNHao LIU� �5CUBFernando Dayan JORGE��)CUBSerguey TORRES��)JPNTeruko KIRIAKE��3KAZMargarita TORLOPOVA��)USANevin HARRISON�%�?CANLaurence VINCENT-LAPOINTE��)UKRLiudmyla LUZAN� �9NGRAyomide Emmanuel BELLO�%ESPAntia JACOME��#HUNVirag BALLA��-UZBNilufar ZOKIROVA��
-
ROCOlesia ROMASENKO��	1	AUSBernadette WALLACE��'JPNManaka KUBOTA��-AUSJosephine BULMER��)BLRAlena NAZDROVA�%�?CUBYarisleidis CIRILO DUBOYS�   ~! ����uZ@#����eI(	����pN-�����bF*�����rT8
�
�
�
�
{
L
.
	�	�	�	�	r	S	3	�����fI.����zW:!����{R2����sZ>����uV6����}^B!����iN/����}R9!                             �KORAhreum NA��!CHNJiajun SUN�(� E PARAgua Marina ESPINOLA SALINAS��+�NORKatrine AALERUD��~'�BELValerie DEMEY��}'�AUSSarah GIGANTE� �|5�POLKatarzyna NIEWIADOMA��{)�CANLeah KIRCHMANN��z'�SLOEugenia BUJAK��y-�CANKarol-Ann CANUEL��x%�POLAnna PLICHTA��w-�AUTAnna KIESENHOFER�(�vE�CRCMaria Jose VARGAS BARRIENTOS��u%�ISROmer SHAPIRA��t%�USAChloe DYGERT��s'�GERLiane LIPPERT��r'�GBRAnna SHACKLEY��q1�UKRValeriya KONONENKO��p'�GERHannah LUDWIG��o-�CZETereza NEUMANOVA��n)�ITASoraya PALADIN��m1�CYPAntri CHRISTOFOROU��l)�NEDDemi VOLLERING��k/�ROCTamara BALABOLINA��j/�LUXChristine MAJERUS��i+�FRAJuliette LABOUS��h/�UZBOlga ZABELINSKAYA��g-�RSACarla OBERHOLZER�#�f;�DENEmma Cecilie JOERGENSEN��e+�TTOTeniel CAMPBELL��d'�ITAMarta Cavalli��c)�ERIMosana DEBESAY�$�b=�ESPAne SANTESTEBAN GONZALEZ�"�a9�RSAAshleigh MOOLMAN-PASIO��`'�JPNHiromi KANEKO��_!�ETHSelam AMHA��^%�JPNEri YONAMINE��])�CANAlison JACKSON� �\5�ITAElisa LONGO BORGHINI�!�[7�DENCecilie Uttrup LUDWIG��Z)�GERLisa BRENNAUER� �Y5�NEDAnnemiek VAN VLEUTEN��X/�THAJutatip MANEEPHAN�&�WA�COLPaula Andrea PATINO BEDOYA��V-�BLRAlena AMIALIUSIK��U)�SUIMarlen REUSSER��T#�USARuth WINDER��S#�AUSGrace BROWN��R%�NEDMarianne VOS��Q%�USACoryn RIVERA��P!�POLMarta LACH��O)�LTURasa LELEIVYTE� �N5�NEDAnna VAN DER BREGGEN��M'�BELLotte KOPECKY�%�L?�ESPMargarita Victoria GARCIA��K'�GERTrixi WORRACK��J+�HUNKolos CSIZMADIA��I%�HUNSandor TOTKA��H%�EGYMomen MAHRAN��G%�KORGwanghee CHO��F)�LATRoberts AKMENS��E)�ITAManfredi RIZZA��D1�LTUMindaugas MALDONIS��C+�FRAMaxime BEAUMONT��B'�CANMark DE JONGE��A!�GBRLiam HEATH��@!�ROCOleg GUSEV� �?5�ARGRuben VOISARD REZOLA��>/�ROCEvgenii LUKANTSOV��=-�CANNicholas MATVEEV��<)�SWEPetter MENNING� �;5�SRBStrahinja STEFANOVIC� �:5�ESPCarlos AREVALO LOPEZ��9#�CHNXiaoxu YANG��8)�ESPSaul CRAVIOTTO��73�JPNMomotaro MATSUSHITA��6+�TUNAfef BEN ISMAIL�,�5M�DENBolette Margrethe Nyvang IVERSEN� �45�DENJulie Froelund FUNCH��3-�CANMadeline SCHMIDT� �25�CANAlanna BRAY-LOUGHEED��1)�NZLTeneale HATTON��0'�NZLAlicia HOSKIN��/-�AUSJo BRIGDEN-JONES��.'�AUSJaime ROBERTS��-+�GERSarah BRUESSLER��,'�GERCaroline ARFT��+�CHNYu ZHOU��*!�CHNDongyin LI��)#�GERTina DIETZE��(#�FRASarah GUYOT��'+�HUNErika MEDVECZKY��&%�HUNDora BODONYI��%'�POLAnna PULAWSKA��$'�POLKarolina NAJA��#+�ARGAgustin VERNICE��"3�COKKohl TAMARUA-HORTON��!)�CANSimon MCTAVISH�� '�BELArtuur PETERS��!�CHNDong ZHANG��-�PORFernando PIMENTA��#�SVKPeter GELLE��1�NORLars Magne ULLVANG��3�BRAVagner JUNIOR SOUTA�$�=�IRIAli AGHAMIRZAEIJENAGHRAD��%�SRBBojan ZDELAR��!�BIZAmado CRUZ��1�TUNMohamed Ali MRABET��)�EORSaeid Fazloula��-�POLMateusz KAMINSKI��1�MDASerghei TARNOVSCHI��'�JPNTakanori TOME��/�TUNGhailene KHATTALI�%�?�CUBJose Ramon PELIER CORDOVA��'�UKRYurii VANDIUK�"�9�GERConrad-Robin SCHEIBNER��#�FRAAdrien BART��%�MOZJoaquim LOBO��)�ROCKira STEPANOVA��#�CHNJieyi HUANG��
%�NZLCaitlin RYAN��	#�BELLize BROEKX���GERJule HAKE��/�BLRMaryna LITVINCHUK��'�HUNTamara CSIPES��)�GERSabrina HERING�   | ���xX9����~_F(����{`D�����iM4����}aC(	
�
�
�
�
j
O
3
	�	�	�	�		c	<	�����dH(	����nL+����nM0����iM.����aD)	����}_;����vZ>����xZ=!  �~-~FRAGuillaume MARTIN��}'}ERIMerhawi KUDUS��|)|ITAGiulio CICCONE��{+{CZEMichal SCHLEGEL��z!zGBRAdam YATES��y3yUZBMuradjan HALMURATOV��x)xDENJakob FUGLSANG�#�w;wDENChristopher JUUL JENSEN��v3vAUTHermann PERNSTEINER�#�u;uDENMichael Valgren HUNDAHL��t'tGERSimon GESCHKE��s'sHUNAttila VALTER��r'rROCIlnur ZAKARIN�&�qAqNORTobias Halland JOHANNESSEN��p%pSUIMarc HIRSCHI��o+oECURichard CARAPAZ�(�nEnCOLSergio Andres HIGUITA GARCIA��m'mSLOTadej POGACAR�!�l7lMEXEder FRAYRE MOCTEZUMA��k+kUKRAnatolii BUDIAK��j+jNEDWilco KELDERMAN��i+iKAZDmitriy GRUZDEV��h'hITAGianni MOSCON��g#gPOLRafal MAJKA��f#fFRADavid GAUDU��e/eBELGreg VAN AVERMAET��d%dCHNRuidong WANG��c)cAUSLuke DURBRIDGE��b-bNEDDylan VAN BAARLE�)�aGaVENOrluis Alberto AULAR SANABRIA��`1`GUAManuel RODAS OCHOA��_'_AZEElchin ASADOV�%�^?^CRCAndrey AMADOR BAKKAZAKOVA��])]AUSLucas HAMILTON��\-\CANGuillaume BOIVIN��['[ROCPavel SIVAKOV��Z-ZNORMarkus HOELGAARD�&�YAYCOLJhoan Esteban CHAVES RUBIO�*�XIXCOLNairo Alexander QUINTANA ROJAS��W'WNEDBauke MOLLEMA��V#VLUXMichel RIES��U'ULUXKevin GENIETS��T)TKAZVadim PRONSKIY��S1SMARMohcine EL KOURAJI� �R5RROUEduard-Michael GROSU��Q)QALGHamza MANSOURI��P)PSUIMichael SCHAER�!�O7OBLRAleksandr RIABUSHENKO��N1NESPAlejandro VALVERDE��M%MBURPaul DAUMONT��L1LGBRSimon Philip YATES��K3KESPJesus HERRADA LOPEZ��J/JARGEduardo SEPULVEDA�"�I9IGREPolychronis TZORTZAKIS��H'HIRLDaniel MARTIN��G+GJPNNariyuki MASUDA��F'FIRLEdward DUNBAR��E-ERSANicholas DLAMINI��D/DBELMauri VANSEVENANT��C'CTPEChun Kai FENG��B+BJPNYukiya ARASHIRO��A#ATURAhmet ORKEN�*�@I@ECUJhonnatan Manuel NARVAEZ PRADO��?'?RWAMoise MUGISHA��>#>NEDYoeri HAVIK��=%=ESTPeeter PRUUS��<3<LTUEvaldas SISKEVICIUS�$�;=;ESPGorka IZAGUIRRE INSAUSTI��:':HKGHiu Fung CHOY��9)9ITADamiano CARUSO��818AUTGregor MUEHLBERGER��7%7PORJoao ALMEIDA��6)6COLRigoberto URAN��5+5USABrandon MCNULTY��4/4USAG Lawson CRADDOCK��3'3BELWout VAN AERT��2%2SUIStefan KUENG�"�191ESPJon IZAGUIRRE INSAUSTI��0+0KAZAlexey LUTSENKO��/)/NORTobias S. FOSS��.'.RSAStefan DE BOD� �-5-EORAhmad Baddredin Wais��,-,ROCAleksandr VLASOV��+%+NEDTom DUMOULIN��*+*BELRemco EVENEPOEL��)')ESTTanel KANGERT�,�(M(PORNelson Filipe S. Simoes OLIVEIRA��'%'AUSRichie PORTE��&#&SVKLukas KUBIS�%)%GBRGeraint THOMAS��$)$AUTPatrick KONRAD��#%#LATToms SKUJINS��"!"CANHugo HOULE��!'!POLMaciej BODNAR�� ) ALGAzzedine LAGAB��)CZEMichael KUKRLE�!�7GERMaximilian SCHACHMANN��%FRARemi CAVAGNA��%AUSRohan DENNIS��1GBRTao GEOGHEGAN HART�#�;ERIAmanuel GHEBREIGZABHIER��'SLOPrimoz ROGLIC��%GERNikias ARNDT��)NZLGeorge BENNETT��)DENKasper ASGREEN��'ITAFilippo GANNA��'IRLNicolas ROCHE��-IRISaeid SAFARZADEH��'NZLPatrick BEVIN��+ITAAlberto BETTIOL��!GERLisa KLEIN��-EORMasomah Ali Zada��#USAAmber NEBEN��'AUSAmanda SPRATT��%NORStine BORGLI��/ITAMarta BASTIANELLI��
1
BELJulie VAN DE VELDE�&�	A	CHICatalina Anais SOTO CAMPOS��-AUSTiffany CROMWELL��/GBRElizabeth DEIGNAN��#NAMVera ADRIAN�$�=CUBArlenis SIERRA CANADILLA��#USALeah THOMAS�*�IMEXLizbeth Yareli Salazar V�zquez�
he@ 0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�`XPH@80(  ����������������xph`XPH@80(  ������	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@����������xph`XPH@80(  ����������������xph`XPH@8����������������xph`XPH@80(  ����������������xph        

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMM

		  ��������������������������������������������������KKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  LLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!    �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLL   x ����bA#	����rX?%����cD)���rT8�����^< 
�
�
�
t
U
5

	�	�	�	�	j	F	+		����hM(����lM)����kK0����kH����rO4����sX7����rN*����rM2                        �v3�ESPJose QUILES BROTONS��u%�GHASamuel TAKYI�"�t9�CUBLazaro ALVAREZ ESTRADA��s3�IRLKurt Anthony WALKER��r-�ZAMEveristo MULENGA��q/�KAZSerik TEMIRZHANOV��p/�FRASamuel KISTOHURRY��o+�GUYKeevin ALLICOCK��n!�USADuke RAGAN�!�m7�KENNicholas Okongo OKOTH�!�l7�MGLTsendbaatar ERDENEBAT��k+�JORMohammad ALWADI��j%�BRAKeno MACHADO/�iS�EGYAbdelrahman SALAH ORABI ABDELGAWWAD��h+�ALGMohammed HOUMRI�!�g7�MEXRogelio ROMERO TORRES��f#�CUBArlen LOPEZ��e1�GBRBenjamin WHITTAKER��d%�AUSPaulo AOKUSO�)�cG�AZELoren Berto ALFONSO DOMINGUEZ��b1�KAZBekzad NURDAULETOV��a%�CHNDaxiang CHEN��`-�MARMohamed ASSAGHIR��_-�UZBDilshod RUZMETOV��^%�CROLuka PLANTIC��]%�ROCImam KHATAEV� �\5�TJKShabbos NEGMATULLOEV��['�IRLEmmet BRENNAN��Z'�TURBayram MALKAN�%�Y?�JOROdai Riyad Adel ALHINDAWI� �X5�COLJorge VIVAS PALACIOS��W%�GHAShakul SAMED�5�V_�ESPGazimagomed Schamilovich JALIDOV GAFUROVA� �U5�VENNalek KORBAJ BARRERA��T'�GBRFrazer CLARKE��S/�USARichard TORREZ JR� �R5�ALGChouaib BOULOUDINATS� �Q5�KAZKamshybek KUNKABAYEV�%�P?�EGYYousry REZK MOSTAFA HAFEZ��O%�FRAMourad ALIEV��N%�INDSatish KUMAR��M/�TJKSiyovush ZUKHUROV��L'�UKRTsotne ROGAVA��K%�CUBDainier PERO��J'�JAMRicardo BROWN�*�II�COLCristian Camilo SALCEDO CODAZI��H'�ROCIvan VERIASOV��G3�AZEMahammad ABDULLAYEV�!�F7�CMRMaxime YEGNONG NJIEYO��E-�UZBBakhodir JALOLOV��D'�BRNDanis LATYPOV��C+�CHNErbieke TUOHETA�"�B9�EOREldric Sella Rodriguez��A)�JPNYuito MORIWAKI��@#�ROCGleb BAKSHI�#�?;�CODDavid TSHAMA MWENEKABWE�"�>9�ARGFrancisco Daniel VERON��=%�TTOAaron PRINCE��</�GEOGiorgi KHARABADZE��;-�ARMArman DARCHINYAN� �:5�HAIDarrelle VALSAINT JR��9'�SVKAndrej CSEMEZ� �85�DOMEuri CEDENO MARTINEZ��73�UKROleksandr KHYZHNIAK��6%�INDAshish KUMAR�!�57�UGAKavuma David SSEMUJJU��4'�PHIEumir MARCIAL��3+�ALGYounes NEMOUCHI��2/�BLRVitali BANDARENKA��1%�SWEAdam CHARTOI��03�IRISeyedshahin MOUSAVI��/%�BRAHebert SOUSA��.!�USATroy ISLEY��-/�UZBFanat KAKHRAMONOV��,-�KAZAbilkhan AMANKUL�+�+K�CMRDieudonne Wilfred SEYI NTSENGUE��*7�ARGBrian Agustin ARREGUI �)5�CMRAlbert MENGUE AYISSI��(%�TURNecat EKINCI��'+�USADelante JOHNSON��&'�GBRPat MCCORMACK��%3�KAZAblaikhan ZHUSSUPOV�"�$9�DOMRohan POLANCO EMILIANO��##�IRLAidan WALSH��"%�ZAMSteven ZIMBA��!1�UGAMusa Shadiri BWOGI�� +�ROCAndrei ZAMKOVOI��+�SWZThabiso DLAMINI� �5�BLRAliaksandr RADZIONAU��'�INDVikas KRISHAN��+�CUBRoniel IGLESIAS�#�;�SAMMarion Faustino AH TONG�)�G�JORZeyad Eishaih Hussein EASHASH��'�CANWyatt SANFORD�%�?�AZELorenzo SOTOMAYOR COLLAZO��1�UZBBobo-Usmon BATUROV��%�MRIMerven CLAIR��-�GEOEskerkhan MADIEV�+�K�JPNSewonrets Quincy Mensah OKAZAWA��1�POLMichal KWIATKOWSKI��+�FRAKenny ELISSONDE��'�CZEZdenek STYBAR��-�GEREmanuel BUCHMANN��#�SUIGino MAEDER��#�CROJosip RUMAC��!�SLOJan POLANC��#�SVKJuraj SAGAN��+�ITAVincenzo NIBALI��
-�NAMTristan DE LANGE��	%�BELTiesj BENOOT��%�RSARyan GIBBONS�!�7�ESPOmar FRAILE MATARRANZ��#�SLOJan TRATNIK��+�LATKrists NEILANDS��1�NORAndreas LEKNESSUND� �5�PERRoyner NAVARRO CALLE�#�;�PANChristofer JURADO LOPEZ��#�TUROnur BALKAN�� -�FRABenoit COSNEFROY��'CANMichael WOODS�   x
 ����kJ ���wW5����hG*
����hN+����sN*
�
�
�
�
�
i
=
$
	�	�	�	{	b	C		 ����c@%����wQ7����dE%	����x[;����b? ����b8���wY9����nA$
                  �n#nGBRGalal YAFAI��m)mFRABillal BENNAMA�*�lIlCOLYuberjen Herney MARTINEZ RIVAS��k1kUZBShakhobidin ZOIROV��j1jVENYoel Segundo FINOL�$�i=iDOMRodrigo MARTE DE LA ROSA�!�h7hARGRamon Nicanor QUIROGA��g3gROCSvetlana SOLUIANOVA��f'fPOLSandra DRABIK��e/eUGACatherine NANZIRI��d+dTPEHsiao-Wen HUANG��c1cUZBTursunoy RAKHIMOVA��b3bITAGiordana SORRENTINO��a1aTURBuse Naz CAKIROGLU�$�`=`COLIngrit VALENCIA VICTORIA��_'_MARRabab CHEDDAR��^#^PHIIrish MAGNO�'�]C]BULStoyka Zhelyazkova KRASTEVA��\3\BDIOrnella HAVYARIMANA��[#[INDMC Mary KOM��Z)ZJPNTsukimi NAMIKI��Y+YTHAJutamas JITPONG�+�XKXVENIrismar Del Valle CARDOZO ROJAS��W!WCHNYuan CHANG��V-VKENChristine ONGARE� �U5UGBRCharley-Sian DAVISON��T)TVIEThi Tam NGUYEN��S-SALGRoumaysa BOUALAM��R%RCANMandy BUJOLD��Q)QUSAVirginia FUCHS�&�PAPDOMMiguelina HERNANDEZ GARCIA��O)OBRAGraziele SOUSA��N-NSRBNina RADOVANOVIC��M/MINDLovlina BORGOHAIN��L)LTPENien-Chin CHEN��K1KUZBShakhnoza YUNUSOVA��J/JTURBusenaz SURMENELI��I%IGERNadine APETZ��HHCHNHong GU��G-GKENElizabeth AKINYI��F'FITAAngela CARINI��E/EMAROumayma BEL AHBIB��D-DROCSaadat DALGATOVA�.�CQCDOMMaria Altagracia MORONTA HERNANDEZ��B)BTHABaison MANIKON��A1APOLKarolina KOSZEWSKA�(�@E@MEXBrianda Tamara CRUZ SANDOVAL��?+?CANMyriam DA SILVA��>%>UKRAnna LYSENKO��=#=USAOshae JONES�#�<;<MOZAlcinda Helena PANGUANA��;);ITARebecca NICOLI��:%:CODNaomie YUMBA��9#9TUREsra YILDIZ��88KORYeonji OH�$�7=7TUNMariem HOMRANI EP ZAYANI��6)6KOSDonjeta SADIKU��5%5ALGImane KHELIF� �454ARGDayana Erika SANCHEZ��3-3FRAMaiva HAMADOUCHE��2'2FINMira POTKONEN��111THASudaporn SEESONDEE�"�090IRLKellie Anne HARRINGTON��/'/USARashida ELLIS��.-.BRABeatriz FERREIRA�!�-7-INDSimranjit Kaur BAATTH��,-,SWEAgnes ALEXIUSSON��+!+TPEShih-Yi WU��*+*GBRCaroline DUBOIS�)/)UZBRaykhona KODIROVA�"�(9(MEXEsmeralda FALCON REYES�(�'E'ECUMaria Jose PALACIOS ESPINOZA��&-&KAZNadezhda RYABETS�%%%ALGIchrak CHAIB)�$G$ECUErika Stefania PACHITO JURADO��#)#IRLAoife O'ROURKE��"%"MOZRady GRAMANE��!+!NEDNouchka FONTIJN�� ' PANAtheyna BYLON��!INDPooja RANI��/CANTammara THIBEAULT��CHNQian LI�!�7ROCZenfira MAGOMEDALIEVA�"�9MGLMyagmarjargal MUNKHBAT��)AUSCaitlin PARKER��%GBRLauren PRICE��+POLElzbieta WOJCIK��%USANaomi GRAHAM��)GBRCheavon CLARKE�'�CSAMAto Leau PLODZICKI-FAOAGALI� �5CUBJulio LA CRUZ PERAZA��#NZLDavid NYIKA��)MARYouness BAALLA��+UZBSanjar TURSUNOV��-JORHussein IASHAISH� �5ECUJulio Cesar CASTILLO�"�9GERAmmar Riad ABDULJABBAR��/KENElly Ajowi OCHOLA��)KAZVassiliy LEVIT��1ESPEnmanuel REYES PLA�#�
;
PERJose Maria LUCAR JAIMES��	)	BRAAbner TEIXEIRA� �5ALGAbdelhafid BENCHABLA�"�9ROCMuslim GADZHIMAGOMEDOV�!�7BLRUladzislau SMIAHLIKAU��+UKRMykola BUTSENKO��3COLCeiber AVILA SEGURA��3ARGMirco Jehiel CUELLO(�EDOMAlexy Miguel DE LA CRUZ BAEZ��+GERHamsat SHADALOV�� % HUNRoland GALOS�$�=�UZBMirazizbek MIRZAKHALILOV��~+�THAChatchai BUTDEE�'�}C�ECUJean Carlos CAICEDO PACHITO��|1�IRIDaniyal SHAHBAKHSH��{)�MARMohamed HAMOUT��z-�VIEvan Duong NGUYEN��y1�ROCAlbert BATYRGAZIEV��x'�GBRPeter MCGRAIL��w'�AZETayfur ALIYEV�   { ���~fK%	����xY9����hK3�����iO-����h=
�
�
�
�
{
X
;
	�	�	�	�	�	h	L	+	�����aD(����bA%����zX<����zY4����mO3�����_4
�����bC'����tW<                                 �i)�BRARenato REZENDE��h%�NEDNiek KIMMANN��g)�NEDTwan VAN GENDT��f�GBRKye WHYTE��e1�JPNYoshitaku NAGASAKO�#�d;�ARGNicolas Exequiel TORRES��c)�USACorben SHARRAH��b'�ECUAlfredo CAMPO��a%�AUSAnthony DEAN��`'�NEDJoris HARMSEN��_-�COLVincent PELLUARD��^+�RSALaura STRUGNELL��]/�RSAClarissa JOHNSTON��\'�AUSAmie THOMPSON��[%�AUSEmily ROGERS��Z%�EGYHanna HIEKAL��Y�EGYLaila ALI�'�XC�COLMonica Sarai ARANGO ESTRADA�(�WE�COLEstefania ALVAREZ PIEDRAHITA��V3�LIEMarluce SCHIERSCHER��U%�LIELara MECHNIG��T/�KAZYekaterina NEMICH��S-�KAZAlexandra NEMICH��R-�ISRShelly BOBRITSKY��Q%�ISREden BLECHER��P+�GBRIsabelle THORPE��O'�GBRKate SHORTMAN��N+�USALindi SCHROEDER��M'�USAAnita ALVAREZ�(�LE�MEXJoana Betzabe JIMENEZ GARCIA�!�K7�MEXNuria DIOSDADO GARCIA��J)�BLRDaria KULAGINA��I3�BLRVasilina KHANDOSHKA��H)�ESPIris TIO CASAS�"�G9�ESPAlisa OZHOGINA OZHOGIN��F1�NEDNoortje DE BROUWER��E/�NEDBregje DE BROUWER��D'�FRALaura TREMBLE��C/�FRACharlotte TREMBLE�#�B;�AUTEirini-Marina ALEXANDRI� �A5�AUTAnna-Maria ALEXANDRI��@)�ITACostanza FERRO��?'�ITALinda CERRUTI��>3�CANJacqueline SIMONEAU��=+�CANClaudia HOLZNER��<)�JPNMegumu YOSHIDA��;#�JPNYukiko INUI��:1�UKRAnastasiya SAVCHUK��9'�UKRMarta FIEDINA��8!�CHNWenyan SUN��7'�CHNXuechen HUANG��61�ROCSvetlana ROMASHINA�"�59�ROCSvetlana KOLESNICHENKO��4+�KAZZakir SAFIULLIN�&�3A�DOMLeonel DE LOS SANTOS NUNEZ��2/�JPNDaisuke NARIMATSU��1)�FRASofiane OUMIHA��0)�JORObada ALKASBEH��/'�NEDEnrico LACRUZ��.)�MRIRicharno COLIN��-/�ARMHovhannes BACHKOV��,-�TJKBakhodur USMONOV��+�CUBAndy CRUZ��*�PNGJohn UME��)-�AZEJavid CHALABIYEV��()�BLRDzmitry ASANAU��'/�UKRYaroslav KHARTSYZ��&1�NAMJonas Junias JONAS��%'�ROCGabil MAMEDOV��$)�GBRLuke MCCORMACK��#-�UZBElnur ABDURAIMOV��")�INDManish KAUSHIK��!)�MARAbdelhaq NADIR�� )�USAKeyshawn DAVIS��1�PERLeodan PEZO SABOYA��-�AUSHarrison GARSIDE��)�POLDamian DURKACZ� �5�MGLChinzorig BAATARSUKH��#�ANTAlston RYAN�!�7�BRAWanderson DE OLIVEIRA� �5�CODFiston MBAYA MULUMBA��+�EORWessam SALAMANA��+�USAYarisel RAMIREZ�"�9�CODMarcelat SAKOBI MATSHU�(�E�COLYeni Marcela ARIAS CASTANEDA��1�ESAYamileth SOLORZANO��/�BULStanimira PETROVA��)�CRONikolina CACIC�!�7�ROUMaria Claudia NECHITA�#�;�BOTKeamogetse Sadie KENOSI��)�BRAJucielen ROMEU��3�GBRKarriss ARTINGSTALL��#�TPEYu-Ting LIN��!�ITAIrma TESTA��)�CANCaroline VEYRE��
3�ROCLiudmila VORONTSOVA� �	5�SOMRamla Said Ahmed ALI���KORAeji IM��'�AUSSkye NICOLSON��)�PHINesthy PETECIO���JPNSena IRIE��)�IRLMichaela WALSH��)�TUNKhouloud HLIMI�'�C�CPVDaniel David VARELA DE PINA� �5�IRLBrendan Emmet IRVINE�%� ?�ESPGabriel ESCOBAR MASCUNANO��)ALGMohamed FLISSI��~3~GEOSakhil ALAKHVERDOVI��}/}ZAMPatrick CHINYEMBA��|-|KAZSaken BIBOSSINOV��{+{GHATetteh SULEMANU��z#zCHNJianguan HU��y%yAUSAlex WINWOOD��x)xTURBatuhan CIFTCI��w1wARMKoryun SOGHOMONYAN��v'vJPNRyomei TANAKA�#�u;uPURYankiel RIVERA FIGUEROA��t%tPHICarlo PAALAM��ssINDAmit AMIT�"�r9rBOTRajab Otukile MAHOMMED�!�q7qROUCosmin-Petre GIRLEANU��p'pBULDaniel ASENOV��o)oCUBYosbany VEITIA�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        ������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMM   �" ���y`D)����~`C%	����xY8����mO(����yX;
�
�
�
�
i
M
/
	�	�	�	�	{	]	A	"	����oS9 ����pR7�����iN2����x\?'	����w\E)����|aF'����{[?&����y\?"                        �j)jLUXStefan ZACHAUS��i)iNORCasper STORNES��h)hRSAHenri SCHOEMAN��g)gITADelian STATEFF��f+fBELMarten VAN RIEL��e'eFRADorian CONINX��d-dGERJustus NIESCHLAG��c+cESPFernando ALARZA��b!bESPMario MOLA��a!aHUNTamas TOTH��`'`AUTLukas HOLLAUS��_/_GBRJonathan BROWNLEE��^%^NZLHayden WILDE��]/]SUIAndrea SALVISBERG��\1\ROCDmitriy POLYANSKIY��[#[AUSAaron ROYLE��Z#ZFRALeo BERGERE��Y'YMARMehdi ESSADIQ��X-XCANTyler MISLAWCHUK��W%WMEXIrving PEREZ��V%VPORJoao PEREIRA��U/UAUSJacob BIRTWHISTLE��T'TIRLRussell WHITE��S/SITAGianluca POZZATTI��R!RCHIDiego MOYA��Q%QFRAVincent LUIS��P)PAUSMatthew HAUSER��O'OISRShachar SAGIV��NNGBRAlex YEE��M%MHUNBence BICSAK��L!LSUIMax STUDER��K)KCANMatthew SHARPE��J)JUSAKevin MCDOWELL��I'IHKGOscar COGGINS� �H5HNORKristian BLUMMENFELT��G+GROCIgor POLYANSKIY��FFISRRan SAGIV��E)EROUFelix DUCHAMPT��D'DIRLCarolyn HAYES��C1CITAVerena STEINHAUSER��B/BSUINicola SPIRIG HUG��A-ARSASimone ACKERMANN��@'@ITAAngelica OLMO��?3?FRACassandre BEAUGRAND��>'>AUSEmma JEFFCOAT��='=GBRVicky HOLLAND��<%<NORLotte MILLER��;/;GBRJessica LEARMONTH��:':USAKatie ZAFERES��9)9PORMelanie SANTOS��8#8ITAAlice BETTO��7'7AUSJaz HEDGELAND��6'6HUNZsofia KOVACS� �555ROCAlexandra RAZARENOVA��4%4CANAmelie KRETZ��3+3RSAGillian SANDERS��2!2ESPAnna GODOY��1'1MEXClaudia RIVAS��030ROCAnastasia GORBUNOVA��/'/ESTKaidi KIVIOJA��.).NZLAinsley THORPE��-+-HUNZsanett HORVATH��,%,CANJoanna BROWN��+#+NEDMaya KINGMA��*'*SUIJolanda ANNEN��)#)BERFlora DUFFY��(-(USASummer RAPPAPORT��'+'AUSAshleigh GENTLE��&3&NZLNicole VAN DER KAAY��%)%BRALuisa BAPTISTA��$)$BRAVittoria LOPES��#-#CZEVendula FRINTOVA��"'"MEXCecilia PEREZ��!+!ECUElizabeth BRAVO�� ' NEDRachel KLAMER��%GERAnabel KNOLL�"�9ESPMiriam CASILLAS GARCIA��+ARGRomina BIAGIOLI��'BELClaire MICHEL��+CHIBarbara RIVEROS��+GERLaura LINDEMANN��'AUTLisa PERTERER��%USATaylor KNIBB� �5GBRGeorgia TAYLOR-BROWN��%AUTJulia HAUSER��1EGYBasmla ELSALAMONEY��+FRALeonie PERIAULT��)JPNYuko TAKAHASHI��)CHNMengying ZHONG��)CZEPetra KURIKOVA��1BELValerie BARTHELEMY��+JPNNiina KISHIMOTO��'SUIZoe CLAESSENS�+CANDrew MECHIELSEN��-ROCNatalia SUVOROVA��)NEDMerel SMULDERS��
-
LATVineta PETERSONE$�	=	THAChutikan KITWANITSATHIAN��+AUSSaya SAKAKIBARA�-�OECUDomenica Michelle AZUERO GONZALEZ��!NEDJudy BAAUW��)JPNSae HATAKEYAMA��+FRAManon VALENTINO��-ROCNatalia AFREMOVA�%�?BRAPriscila STEVAUX CARNAVAL��1DENSimone CHRISTENSEN�� - GBRBethany SHRIEVER��+�USAFelicia STANCIL��~%�BELElke VANHOOF��}-�USAAlise WILLOUGHBY��|)�NEDLaura SMULDERS��{'�NZLRebecca PETCH��z'�COLMariana PAJ�N��y+�USAPayton RIDENOUR��x)�FRAAxelle ETIENNE��w+�AUSLauren REYNOLDS��v)�NORTore NAVRESTAD��u'�USAConnor FIELDS��t%�FRAJoris DAUDET��s)�LATHelvijs BABRIS��r'�FRARomain MAHIEU��q+�ITAGiacomo FANTONI��p%�RSAAlex LIMBERG��o'�FRASylvain ANDRE��n!�SUIDavid GRAF��m%�CANJames PALMER�(�lE�COLCarlos Alberto RAMIREZ YEPES��k/�SUISimon M. MARQUART��j1�ROCEvgeny KLESHCHENKO�   �$ ����kN5�����pT7�����lN2�����eE*����tWA%

�
�
�
�

i
L
0
	�	�	�	�	�	c	M	2	����wZ@����uX8�����}bH+�����hK1�����yY<"	�����bH1�����oP>����sW?$              �q%�NGROffiong EDEM��p�CHNMeng CHEN��o'�CMRSarah HANFFOU��n'�CZEHana MATELOVA��m+�BRABruna TAKAHASHI��l1�HKGWai Yam Minnie SOO��k1�NGROlufunke OSHONAIKE�j�FIJSally YEE��i�SGPMengyu YU��h1�UKRMargaryta PESOTSKA��g�PORFu YU�f-�SVKBarbora BALAZOVA��e)�SVKLubomir PISTEJ��d%�INDManika BATRA��c)�HUNSzandra PERGEL��b!�HUNAdam SZUDI��a%�EGYDina MESHREF��`+�CUBDaniela FONSECA��_%�CUBJorge CAMPOS��^�CANMo ZHANG��]#�CANEugene WANG��\+�AUTSofia POLCANOVA��['�AUTStefan FEGERL��Z)�AUSMelissa TAPPER��Y�AUSHeming HU��X-�ROUBernadette SZOCS��W!�KORJihee JEON��V!�KORSangsu LEE��U#�HKGHoi Kem DOO��T)�GERPetrissa SOLJA��S/�GERPatrick FRANZISKA��R%�FRAJia Nan YUAN��Q'�TPEI-Ching CHENG��P!�CHNShiwen LIU��O�CHNXin XU��N�JPNMima ITO��M%�JPNJun MIZUTANI��L1�GERDimitrij OVTCHAROV��K#�SLOBojan TOKIC��J)�GBRLiam PITCHFORD��I#�ARGGaston ALTO��H'�AUTRobert GARDOS��G�JPNKoki NIWA��F%�NGRQuadri ARUNA��E+�AUTDaniel HABESOHN��D-�SWEMattias KARLSSON��C)�BRAGustavo TSUBOI��B)�KSAAli ALKHADRAWI��A#�KORWoojin JANG��@%�USANikhil KUMAR��?�TUNAdam HMAM��>)�DENJonathan GROTH��=�SVKYang WANG��<%�HKGSiu Hang LAM��;!�TPEYun Ju LIN�:/�JPNTomokazu Harimoto��9'�ESPAlvaro ROBLES��8/�TOGKokou Dodji FANNY��7)�PURBrian AFANADOR��6)�ROUOvidiu IONESCU��5/�GREPanagiotis GIONIS��4�USAKanak JHA�3'�CROAndrej GACINA��2+�SWEAnton KAELLBERG��1%�IRINima ALAMIAN� �05�MGLLkhagvasuren ENKHBAT��/#�FRASimon GAUZY��.)�PORTiago APOLONIA�!�-7�INDSathiyan GNANASEKARAN� �,5�SGPZhe Yu Clarence CHEW��+)�HKGChun Ting WONG��*/�FRAEmmanuel LEBESSON��)%�SLODarko JORGIC��('�ALGLarbi BOURIAH��'%�VANYoshua SHING��&�AUSXin YAN��%-�TPEChih-Yuan CHUANG��$)�CROTomislav PUCAR��#'�HUNBence MAJOROS��"%�ECUAlberto MINO��!/�SRBDimitrije LEVAJAC�� /�ARGHoracio CIFUENTES��#�EGYAhmed SALEH��'�SENIbrahima DIAW��)�GBRPaul DRINKHALL���UKRLei KOU��)�BRAHugo CALDERANO��%�CHNZhendong FAN���GERTimo BOLL��3�KAZKirill GERASSIMENKO��!�SRBZsolt PETO��%�CANJeremy HAZIN��'�CZEPavel SIRUCEK���CHNLong MA��)�PORMarcos FREITAS��+�ROCKirill SKACHKOV��!�EGYOmar ASSAR��+�NGROlajide OMOTAYO�!�7�INDSharath Kamal ACHANTA��-�CZELubomir JANCARIK��+�KORYoungsik JEOUNG��%�AUSDavid POWELL��/�AUSStephanie GILMORE��
%�BRASilvana LIMA��	'�NZLElla WILLIAMS��/�AUSSally FITZGIBBONS��#�FRAPauline ADO��)�ECUDominic BARONA��)�PERDaniella ROSAS��3�BRATatiana Weston-Webb��'�FRAJohanne DEFAY��+�PORYolanda HOPKINS��+�PORTeresa BONVALOT�� '�JPNAmuro TSUZUKI��-RSABianca BUITENDAG��~%~JPNMahina MAEDA��})}USACaroline MARKS��|/|CRCLeilani MCGONAGLE��{#{ISRAnat LELIOR��z)zCRCBrisa HENNESSY��y'yUSACarissa MOORE��x-xPERSofia MULANOVICH��w#wJPNKenji NENER��v#vAUTAlois KNABL��u/uESPJavier GOMEZ NOYA��t#tNZLTayler REID��s)sUSAMorgan PEARSON��r%rSYRMohamad MASO��q!qPORJoao SILVA��p)pJPNMakoto ODAKURA��o/oAZERostyslav PEVTSOV��n)nBRAManoel MESSIAS��m#mNORGustav IDEN��l/lMEXCrisanto GRAJALES��k+kGERJonas SCHOMBURG�   �$ ����kP1�����nM7 ����sT:����~cG)�����kO-
�
�
�
�
w
]
C
(
	�	�	�	�	z	^	A	&		����tX@$����|eG)����xX2�����lO4����}[A$����{\A$
����x[A#
����gC$                    �u-uESPPaula RUIZ BRAVO�!�t7tNEDSharon VAN ROUWENDAAL��s3sGERLeonie Antonia BECK��r)rCANKate SANDERSON��q+qPOLGrzegorz HEDWIG�%�p?pSENJean Pierre Renan BOURHIS��o+oSLOBenjamin SAVSEK��n!nIRLLiam JEGOU��m+mCANCameron SMEDLEY��l#lSVKMatej BENUS��k)kAUSDaniel WATKINS��j'jFRAMartin THOMAS��i+iSUIThomas KOECHLIN��h)hUSAZachary LOKKEN��g-gKAZAlexandr KULIKOV��f'fESPAnder ELOSEGI��e#eCZELukas ROHAN��d)dCROMatija MARINIC��c%cGBRAdam BURGESS��b-bGERSideris TASIADIS��a'aJPNTakuya HANEDA��`#`SLOEva TERCELJ��__CHNTong LI��^3^KAZYekaterina SMIRNOVA��]']TPEChu-Han CHANG��\-\SVKEliska MINTALOVA��[)[NEDMartina WEGMAN��Z#ZMARCelia JODAR��Y3YAUTViktoria WOLFFHARDT�#�X;XPOLKlaudia Kinga ZWOLINSKA��W'WITAStefanie HORN��V!VJPNAki YAZAWA��U+UGBRKimberley WOODS��T)TSUINaemi BRAENDLE��S1SFRAMarie-Zelia LAFONT��R%RGERRicarda FUNK��Q)QCANFlorence MAHEU��P/PESPMaialen CHOURRAUT��O'OMEXSofia REINOSO��N/NCZEKaterina KUDEJOVA��M!MSUIAlena MARX��L!LJPNAyano SATO��K'KGERAndrea HERZOG��J'JUSAEvy LEIBFARTH�#�I;IANDMonica DORIA VILARRUBLA��H/HITAMarta BERTONCELLI��G#GAUSJessica FOX��F%FUKRViktoriia US��E-EPOLAleksandra STACH��D1DAUTNadine WERATSCHNIG��C/CFRAMarjorie DELASSUS��B'BROCAlsu MINAZOVA��A+ASVKMonika SKACHOVA��@+@CZETereza FISEROVA��??CHNShi CHEN��>->GBRMallory FRANKLIN��=-=ESPNuria VILARRUBLA��<'<COKJane NICHOLAS��;%;SLOAlja KOZOROG��:#:NZLLuuka JONES��9!9BRAAna SATILA��8'8CANHaley DANIELS��7#7SWEErik HOLMER�6'6USAMichal SMOLEN�!�575GBRBradley FORBES-CRYANS��4#4ARGLucas ROSSI��3+3AUTFelix OSCHMAUTZ��2)2BRAPedro DA SILVA��1'1CZEJiri PRSKAVEC��0)0ESPDavid LLORENTE��/%/MARMathis SOUDI��.).NZLCallum GILBERT��-'-JPNKazuya ADACHI��,/,BELGabriel DE COSTER��+)+CANMichael TAYLER��*%*SVKJakub GRIGAR��)3)POLKrzysztof MAJERCZAK��()(SUIMartin DOUGOUD��''CHNXin QUAN��&%&SLOPeter KAUZER��%#%FRABoris NEVEU��$#$ROCPavel EIGEL��#)#PORAntoine LAUNAY��"'"GERHannes AIGNER��!)!AUSLucien DELFOUR�� 3 ITAGiovanni DE GENNARO��/ROCPolina MIKHAILOVA��+THAOrawan PARANANG��3SWEChristina KAELLBERG��'NEDBritt EERLAND��%SGPTianwei FENG��#TPESzu-Yu CHEN��!PORJieni SHAO��-ROUElizabeta SAMARA��SYRHend ZAZA��%PURMelanie DIAZ��+JPNKasumi ISHIKAWA��+GUYChelsea EDGHILL��'AUSJian Fang LAY��%MONXiaoxin YANG��#CHNYingsha SUN�USAJuan LIU��!ESPMaria XIAO� �5MGLBolorerdene BATMUNKH��%SUIRachel MORET��!USALily ZHANG��)LUXSarah DE NUTTE��
#
LUXXia Lian NI��	-	BULPolina TRIFONOVA��)UKRGanna GAPONOVA��%ROCYana NOSKOVA��AUTJia LIU� �5THASuthasini SAWETTABUT��'HUNDora MADARASZ��+FRAPrithika PAVADE��!GBRTin-Tin HO��POLQian LI�� 1 INDSutirtha MUKHERJEE��-�AUSMichelle BROMLEY��~!�KORYubin SHIN��})�BRAJessica YAMADA��|�GERYing HAN��{#�TUNFadwa GARCI��z+�POLNatalia PARTYKA��y-�ITADebora VIVARELLI��x-�SWELinda BERGSTROEM��w%�EGYYousra HELMY��v1�CHIMaria Paulina VEGA��u'�HUNGeorgina POTA��t3�KAZAnastassiya LAVROVA��s%�ESPGalia DVORAK��r%�PURAdriana DIAZ�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        JJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ������������������������������������������������������

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������   } ����jN2����tXB$����y_<"���z[> ����|]4
�
�
�
�
i
N
1
	�	�	�	�	�	k	R	4	�����hM0�����pD)����nN5����Y;����sU1����xZ0����}eJ+����rW/           �r5�POLAleksandra KOWALCZUK�%�q?�HONKeyla Paola AVILA RAMIREZ��p%�AUSReba STEWART��o%�CHNShuyin ZHENG��n'�SRBMilica MANDIC��m)�GBRBianca WALKDEN��l�TURNafia KUS�/�kS�DOMKatherine Julissa RODRIGUEZ PEGUERO��j%�KAZCansel DENIZ��i-�UZBSvetlana OSIPOVA��h%�KENFaith OGALLO��g�KORDabin LEE�#�f;�CIVAminata Charlene TRAORE��e%�CIVSeydou GBANE��d!�GBRMahama CHO��c#�CROIvan SAPINA�#�b;�TGAPita Nikolas TAUFATOFUA��a!�CHNHongyi SUN�'�`C�NIGAbdoulrazak ISSOUFOU ALFAGA��_+�MEXCarlos SANSORES� �^5�GABAnthony Mylann OBAME��]/�MKDDejan GEORGIEVSKI��\1�GERAlexander BACHMANN��[+�KAZRuslan ZHAPAROV��Z!�KORKyo Don IN��Y+�CUBRafael CASTILLO�!�X7�SLOIvan Konrad TRAJKOVIC��W+�ROCVladislav LARIN��V+�AFGFarzad MANSOURI�&�UA�CIVCheick Sallah Junior CISSE�"�T9�NORRichard Andre ORDEMANN��S#�CROToni KANAET��R)�ITASimone ALESSIO�"�Q9�AZEMilad BEIGI HARCHEGANI��P+�MARAchraf MAHBOUBI�/�OS�DOMMoises Daniel HERNANDEZ ENCARNACION��N-�ROCMaksim KHRAMTCOV��M+�BURFaysal SAWADOGO� �L5�ESPRaul MARTINEZ GARCIA��K/�UZBNikita RAFALOVICH�'�JC�BRAIcaro Miguel MARTINS SOARES��I!�EGYSeif EISSA��H/�JORSaleh ELSHARABATY��G#�AUSJack MARTON��F%�TPEWei-Ting LIU��E+�EORAbdullah Sediqi��D1�IRIMirhashem HOSSEINI�)�CG�BRAEdival MARQUES QUIRINO PONTES��B%�BELJaouad ACHAB��A%�TPEYu-Jen HUANG�)�@G�EGYAbdelrahman Wael MAHMOUD ABOW��?)�JPNRicardo SUZUKI��>�NZLTom BURNS��=%�BIHNedzad HUSIC��<!�CHNShuai ZHAO��;%�DOMBernardo PIE��:/�ESPJavier PEREZ POLO��9'�GBRBradly SINDEN��8-�UZBUlugbek RASHITOV�7%�TURHakan RECBER��6'�MLISeydou FOFANA��5#�KORDaehoon LEE��4+�USANicole AHSINGER��33�CANRosannagh MACLENNAN��21�MEXDafne NAVARRO LOZA��1#�GBRBryony PAGE��0%�CHNLingling LIU��/+�ROCSusana KOCHESOK��.!�JPNMegu UYAMA��-#�CHNXueying ZHU��,�CHNDong DONG��++�ROCDmitrii USHAKOV� �*5�BLRUladzislau HANCHAROU��))�AUSDominic CLARKE��(#�JPNDaiki KISHI��''�NZLDylan SCHMIDT��&-�BLRIvan LITVINOVICH�%%�ROCAndrey YUDIN�$�$=�MEXDaniel DELGADILLO FAISAL��#/�GERFlorian WELLBROCK��"3�HKGWilliam Yan THORLEY� �!5�ITAGregorio PALTRINIERI�� /�HUNKristof RASOVSZKY��-�ESPAlberto MARTINEZ�&�A�GBRHector Thomas Cheal PARDOE��-�TUNOussama MELLOULI��!�CANHau-Li FAN��%�ISRMatan RODITI��'�CZEMatej KOZUBEK��-�JPNTaishin MINAMIDE��#�FRADavid AUBRY��%�PORTiago CAMPOS��+�NAMPhillip SEIDLER��)�NEDFerry WEERTMAN��-�ROCKirill ABROSIMOV�&�A�KAZJose Luis DEL VILLAR GALAN� �5�FRAMarc-Antoine OLIVIER��/�USAJordan WILIMOVSKY��+�ECUDavid FARINANGO��+�RSAMichael MCGLYNN��#�AUSKai EDWARDS� �5�GREAthanasios KYNIGAKIS��#�GERRob MUFFELS��)�ITAMario SANZULLO��
#�SLOSpela PERSE��	#�VENPaola PEREZ��)�USAHaley ANDERSON��)�PORAngelica ANDRE��/�BRAAna Marcela CUNHA��+�USAAshley TWICHELL���CHNXin XIN��'�ITARachele BRUNI��3�UKRKrystyna PANCHISHKO���JPNYumi KIDA�� '�GERFinnia WUNRAM��-ECUSamantha AREVALO� �~5~SGPLi-Shan Chantal LIEW�#�};}ALGSouad Nefissa CHEROUATI��|'|GBRAlice DEARING��{'{FRALara GRANGEON��z-zARGCecilia BIAGIOLI��y!yHUNAnna OLASZ�$�x=xROCAnastasiia KIRPICHNIKOVA��w#wAUSKareena LEE��v)vRSAMichelle WEBER�   ~	 ����qR9 ���lQ9����~\= �����hO)����mM2
�
�
�
�
s
N
2
	�	�	�	�	x	^	C	"	����_:�����`5����~[7�����mS9����aG+����mO.�����nR4�����eG*	     �p1pROCAnastasiia VOINOVA��o)oJPNYuka KOBAYASHI��n+nNZLEllesse ANDREWS��m+mCANKelsey MITCHELL��l'lGBRKaty MARCHANT��k!kCHNShanju BAO��j3jHKGHoi Yan Jessica LEE��i)iROCIvan GLADYSHEV��h+hNEDMatthijs BUCHLI��g-gAUSMatthew GLAETZER��f+fNZLCallum SAUNDERS��e'eCANHugo BARRETTE��d-dFRASebastien VIGIER��c'cPOLMateusz RUDYK��bbCHNChao XU��a#aNZLSam WEBSTER��`#`GBRJack CARLIN��_/_KAZSergey PONOMARYOV��^%^TTOKwesi BROWNE��]1]ROCPavel YAKUSHEVSKIY��\+\GERMaximilian LEVY��[#[GBRJason KENNY��Z!ZRSAJean SPIES��Y-YNEDJeffrey HOOGLAND��X)XROCDenis DMITRIEV�,�WMWCOLKevin Santiago QUINTERO CHAVARRO��V/VMASAzizulhasni AWANG��U'UTTONicholas PAUL��T#TFRARayan HELAL��S+SSURJair TJON EN FA��R#RCZETomas BABEK��Q/QGERStefan BOETTICHER��P'PJPNYuta WAKIMOTO��O-OPOLPatryk RAJKOWSKI��N#NCANNick WAMMES�(�MEMMASMuhammad Shah Firdaus SAHROM��L#LJPNYudai NITTA��K#KAUSNathan HART��J-JNEDHarrie LAVREYSEN��I)INZLEthan MITCHELL��H1HAUSMatthew RICHARDSON��GGCANDerek GEE��F'FCANMichael FOLEY��E%EUSAGavin HOOVER��D+DUSAAdrian HEGYVARY�!�C7CESPAlbert TORRES BARCELO� �B5BESPSebastian MORA VEDRI� �A5ANEDJan-Willem VAN SCHIP��@+@UKROlena STARIKOVA��?'?UKRLiubov BASOVA��>#>POLUrszula LOS��=-=POLMarlena KARWACKA��<1<MEXYuli VERDUGO OSUNA�(�;E;MEXLuz Daniela GAXIOLA GONZALEZ��:1:LTUSimona KRUPECKAITE��9+9LTUMigle MAROZAITE��838NEDShanne BRASPENNINCX��737NEDLaurine VAN RIESSEN��6#6JPNMiyu YAMADA��5/5SRBTijana BOGDANOVIC��4)4CROKristina TOMIC�"�393THAPanipak WONGPATTANAKIT�!�272COLAndrea RAMIREZ VARGAS�#�1;1ESPAdriana CEREZO IGLESIAS��0+0EGYNour ABDELSALAM��/+/TURRukiye YILDIRIM��.1.MAROumaima EL BOUCHTI��-+-ISRAbishag SEMBERG�,1,PURVictoria STAMBAUGH��+%+KORJaeyoung SIM��*#*CANYvette YONG�&�)A)EORDina Pouryounes Langeroudi��((CHNJingyu WU� �'5'VIEThi Kim Tuyen TRUONG��&&TPEPo-Ya SU�!�%;%TUNMohamed Khalil JENDOUBI�$%$IRLJack WOOLLEY��#'#JPNSergio SUZUKI�"�"9"THARamnarong SAWEKWIHAREE��!!KORJun JANG�� - ITAVito DELL'AQUILA�-�OCOLJefferson Alfredo OCHOA FERNANDEZ��'ETHSolomon DEMSE��1PHIKurt Bryan BARBOSA��'AUSSafwan KHALIL��%ARGLucas GUZMAN��/ROCMikhail ARTAMONOV��%PORRui BRAGANCA��!HUNOmar SALIM� �5ESPAdrian VICENTE YUNTA�%�?IRIArmin HADIPOUR SEIGHALANI��%TPEChia-Ling LO��3NIGTekiath BEN YESSOUF�#�;CRCNishi Lee LINDO ALVAREZ��!GBRJade JONES��%AUSStacey HYMER��#MARNada LAARAJ��#JPNMayu HAMADA��!GREFani TZELI�!CHNLijun ZHOU��!KORAhreum LEE��#CANSkylar PARK� �
5
POLPatrycja ADAMKIEWICZ��	1	USAAnastasija ZOLOTIC�3IRINahid KIYANICHANDEH��1TURHatice Kubra ILGUN�!�7EORKimia Alizadeh Zenozi��/ROCTatiana KUDASHOVA��%EGYHedaya WAHBA��+USAPaige MCPHERSON��)AZEFarida AZIZOVA��TURNur TATAR�� % CHNMengyu ZHANG�&�A�NGRElizabeth Oluchi ANYANACHO��~3�UZBNigora TURSUNKULOVA�(�}E�CIVRuth Marie Christelle GBAGBI��|+�BRAMilena TITONELI��{+�GBRLauren WILLIAMS��z%�TGAMalia PASEKA��y!�HAILauren LEE��x-�JORJulyana AL-SADEQ��w-�FRAMagda WIET HENIN��v'�CODNaomie KATOKA��u#�CROMatea JELIC��t+�MEXBriseida ACOSTA��s'�FRAAlthea LAURIN�   � ����pQ8����mS3�����eF*����u[@&�����^>&
�
�
�
�
w
X
8
	�	�	�	�	�	h	L	0	����y\;����uX;����|`@(	����{\:�����fC+
����qP8�����jK*����tS4           �r)�HKGKa Long CHEUNG��q-�ROCAnton BORODACHEV��p1�ROCVladislav MYLNIKOV��o!�USANick ITKIN��n1�HKGChun Yin Ryan CHOI��m+�MEXDiego CERVANTES�l)�FRAJulien MERTINE�!�k7�CZEAlexander CHOUPENITCH��j-�UZBMalika KHAKIMOVA��i5�HKGKaylin Sin Yan HSIEH�h-�FRACoraline VITALIS��g/�ROCVioletta KOLOBOVA��f%�TUNSarra BESBES��e/�ROUAna Maria POPESCU��d#�ESTErika KIRPU��c'�ESTKatrina LEHIS��b-�HKGYik Hei Coco LIN��a+�ESTJulia BELJAJEVA��`�KORSera SONG��_1�ROCAizanat MURTAZAEVA�&�^A�SGPKiria Tikanah ABDUL RAHMAN��]'�ITAMara NAVARRIA��\!�CHNMingye ZHU��[-�USAKatharine HOLMES��Z'�KORYoung Mi KANG��Y1�POLAleksandra JARECKA��X�CHNSheng LIN� �W5�BRANathalie MOELLHAUSEN� �V5�POLRenata KNAPIK-MIAZGA��U+�ROCYulia LICHAGINA��T'�USAKelley HURLEY��S%�KORInjeong CHOI��R+�USACourtney HURLEY��Q+�UKROlena KRYVYTSKA��P/�ITARossella FIAMINGO��O3�SENNdeye Binta DIONGUE��N-�PERMaria Luisa DOIG��M)�POLEwa TRZEBINSKA��L)�ITAFederica ISOLA��K3�HKGMan Wai Vivian KONG��J�CHNYiwen SUN��I#�JPNNozomi SATO��H-�ROCInna DERIGLAZOVA��G�JPNRio AZUMA��F/�CHIKatina PROESTAKIS��E'�TUNInes BOUBAKRI��D)�ITAArianna ERRIGO��C!�USALee KIEFER��B�EGYNoha HANY��A'�KORHee Sook JEON��@'�EGYNoura MOHAMED��?'�CHNQingyuan Chen��>)�SGPAmita BERTHIER��=)�ITAMartina BATINI��<)�CANEleanor HARVEY��;'�HUNFlora PASZTOR��:-�POLMartyna JELINSKA��9�JPNYuka UENO �85�USAJacqueline DUBROVICH��7#�USANicole ROSS��6'�CANKelleigh RYAN��5'�TURIrem KARAMETE��41�CANJessica Zi Jia GUO��3)�ALGMeriem MEBARKI��2%�GERLeonie EBERT�+�1K�COLSaskia Loretta VAN ERVEN GARCIA��0!�JPNSera AZUMA��/%�HUNFanni KREISS��.3�ROCAdelina ZAGIDULLINA�-#�ITAAlice VOLPI��,'�HUNKata KONDRICZ��+'�FRAYsaora THIBUS��*+�FRAPauline RANVIER��)+�EGYYara ELSHARKAWY��(#�FRAAnita BLAZE� �'5�ROCLarisa KOROBEYNIKOVA��&'�FRAClara COPPONI��%-�USAJennifer VALENTE��$'�JPNYumi KAJIHARA��#/�AUSAnnette EDMONDSON��"-�EGYEbtissam MOHAMED��!-�NZLHolly EDMONDSTON�� '�ITAElisa BALSAMO��/�CANAllison BEVERIDGE��1�BLRTatsiana SHARAKOVA��'�PORMaria MARTINS���HKGYao PANG���CHNJiali LIU��/�LTUOlivija BALEISYTE�!�7�NORAnita Yvonne STENBERG���IRLEmily KAY��'�POLDaria PIKULIK��+�FRABenjamin THOMAS��#�SUIThery SCHIR��+�AUTAndreas MUELLER��#�GERRoger KLUGE��#�IRLMark DOWNEY��%�ITAElia VIVIANI��#�RSADavid MAREE��)�JPNEiya HASHIMOTO��%�AUSSam WELSFORD��+�KAZArtyom ZAKHAROV��+�BELKenny DE KETELE��'�GBRMatthew WALLS�"�
9�POLSzymon Wojciech SAJNOK��	'�DENNiklas LARSEN��-�NZLCampbell STEWART��-�BLRYauheni KARALIOK��1�GREChristos VOLIKAKIS��%�NEDKirsten WILD��#�NEDAmy PIETERS��3�ROCMariia NOVOLODSKAIA��+�ROCGulnaz BADYKOVA��!�DENJulie LETH�� /�DENAmalie DIDERIKSEN��#GBRLaura KENNY��~+~GBRKatie ARCHIBALD��}'}NZLKirstie JAMES� �|5|GERLea Sophie FRIEDRICH��{'{CHNTianshi ZHONG��z'zFRAMathilde GROS��y)yROCDaria SHMELEVA��x!xKORHyejin LEE��w!wGEREmma HINZE��v-vAUSKaarle MCCULLOCH��u'uFRACoralie DEMAY��t#tHKGWai Sze LEE��s+sCANLauriane GENEST��r'rUSAMadalyn GODBY��q/qRSACharlene DU PREEZ�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        ��������������������������������������������������������������������������������������������������~~JJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKK~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     � ����tV6�����fD)����{]8�����rT8�����tQ7
�
�
�
�
�
v
X
=
!
	�	�	�	�	v	Y	9		 ����_B&�����cG&����dF,�����hJ,����|cI0�����_B%����hL1�����fH-      �u!uJPNChika AOKI��t%tFRAManon BRUNET��s+sUSADagmara WOZNIAK��r'rROCOlga NIKITINA��q3qGRETheodora GKOUNTOURA��ppCHNYaqi SHAO��o-oTUNYasmine DAGHFOUS��n1nTUNAmira BEN CHAABANE��m%mJPNMisaki EMURA��l#lCHNJiarui QIAN��k%kITAIrene VECCHI��j'jJPNNorika TAMURA��i)iFRACecilia BERDER��h%hUKROlga KHARLAN�%�g?gALGKaouther MOHAMED BELKEBIR��f/fFRACharlotte LEMBACH�:�eieINDBhavani Devi Chadalavada Anandha Sundhararaman��d)dCANGabriella PAGE��c)cUSAMariel ZAGUNIS�%�b?bARGMaria Belen PEREZ MAURICE��a%aKORSooyeon CHOI� �`5`USAAnne-Elizabeth STONE��_%_HUNLiza PUSZTAI�^^KORJisu YOON��]']HUNRenata KATONA��\+\ROCSofiya VELIKAYA��[![KORJiyeon KIM��Z#ZHUNAnna MARTON��Y!YEGYNada HAFEZ��X/XROCSofia POZDNIAKOVA��W/WUZBZaynab DAYIBEKOVA��V%VUKRIgor REIZLIN��U'UITAMarco FICHERA��T'TJPNMasaru YAMADA��S)SITAEnrico GAROZZO��R+RUSAYeisser RAMIREZ��Q+QKAZRuslan KURBANOV��P-PSUIMichele NIGGELER��O#OROCSergey BIDA��N+NJPNKazuyasu MINOBE��M#MCZEJakub JURKA��LLKORSegeon MA��K)KMARHoussam ELKORD��J+JUSACurtis MCDOWALD��I#IUSAJacob HOYLE��H+HUKRBogdan NIKISHIN��G%GKGZRoman PETROV��F'FFRAYannick BOREL��E'ENEDBas VERWIJLEN��DDCHNChao DONG��CCJPNKoki KANO��B-BSUIBenjamin STEFFEN��A/AITAAndrea SANTARELLI��@1@FRAAlexandre BARDENET��?'?ROCSergey KHODOS��>)>KORYoungjun KWEON��=)=FRARomain CANNONE��<!<CHNZijie WANG��;%;ROCPavel SUKHOV��:):UKRRoman SVICHKAR��9+9HUNGergely SIKLOSI��8#8CHNMinghao LAN��7+7EGYMohamed ELSAYED�6)6KORSangyoung PARK� �555VENRuben LIMARDO GASCON�'�4C4CANMarc-Antoine BLAIS-BELANGER��3#3SUIMax HEINZER��2+2UZBSherzod MAMUTOV��1'1ALGAkram BOUNABI��0%0ITALuigi SAMELE��/+/ROUIulian TEODOSIU��./.USAAndrew MACKIEWICZ��-)-GEOSandro BAZADZE��,',ITAEnrico BERRE'��+'+VENJose QUINTERO��*1*JPNTomohiro SHIMAMURA��)%)KORJunghwan KIM��('(USAEli DERSHWITZ��'%'EGYMohamed AMER��&'&HUNAron SZILAGYI��%%%EGYZiad ELSISSY��$+$HUNAndras SZATMARI��###EGYMohab SAMER��""KORSanguk OH��!#!GERMax HARTUNG�� 3 ROCKonstantin LOKHANOV��#HUNTamas DECSI��+GERBenedikt WAGNER��%CANShaul GORDON��#USADaryl HOMER� �5ROCVeniamin RESHETNIKOV��KORBongil GU��'ITALuca CURATOLI��'JPNKento YOSHIDA��'TUNFares FERJANI��-IRIMohammad RAHBARI��%IRIAli PAKDAMAN��+ROCKamil IBRAGIMOV��'JPNKaito STREETS��+IRIMojtaba ABEDINI��#CHNYingming XU��'FRABolade APITHY��%GERMatyas SZABO��%ALGSalim HEROUI��%GERAndre SANITA��+ESPCarlos LLAVADOR��1GERBenjamin KLEIBRINK�"�
9
EGYAlaaeldin ABOUELKASSEM��	+	ITADaniele GAROZZO��+GBRMarcus MEPSTEAD��+USAGerek MEINHARDT��)ITAAndrea CASSARA��'KORKwanghyun LEE��)ITAAlessio FOCONI��'JPNToshiya SAITO��%CANEli SCHENKEL��3USAAlexander MASSIALAS�"� 9 CANMaximilien VAN HAASTER��#�FRAEnzo LEFORT��~+�BRAGuilherme TOLDO��}/�ROCKirill BORODACHEV��|�CANAlex CAI��{-�JPNTakahiro SHIKINE��z)�HKGSiu Lun CHEUNG��y/�JPNKyosuke MATSUYAMA��x+�TUNMohamed SAMANDI��w%�FRAMaxime PAUTY��v)�EGYMohamed HASSAN��u'�CHNMengkai HUANG��t'�GERPeter JOPPICH��s'�EGYMohamed HAMZA�   � ����pY>%�����\@$�����pV;����~eI"�����pV;"
�
�
�
�
�
b
H
,
	�	�	�	�	�	k	Q	2	����tW=����vY3����sV4����|_C%�����mL.����X=&�����rW8 ����mQ2        �y#�USATimothy LAM��x-�INAJonatan Christie��w'�ROCSergey SIRANT��v-�HKGKa Long Angus NG��u%�JPNKento Momota��t%�GUAKevin CORDON�$�s=�INAAnthony Sinisuka GINTING��r)�FINKalle KOLJONEN��q#�AUTLuka WRABER��p�CHNLong CHEN��o1�SRINiluka KARUNARATNE�n%�TPETzu-Wei WANG��m#�MASZii Jia Lee��l!�MEXLino MUNOZ��k+�UKRArtem POCHTAROV��j%�GERKai SCHAEFER��i%�EORAram Mahmoud�*�hI�BRAYgor Coelho COELHO DE OLIVEIRA��g�CHNYuqi SHI��f%�SGPKean Yew LOH�$�e=�INDSai Praneeth BHAMIDIPATI�!�d7�THAKantaphon WANGCHAROEN��c+�ISRMisha ZILBERMAN��b)�TPETien Chen CHOU��a+�DENAnders ANTONSEN��`%�NEDMark CALJOUW��_!�CANBrian YANG�^+�JPNKanta TSUNEYAMA��]1�AZEAde Resky DWICAHYO��\#�IRLNhat NGUYEN�[-�VIETien Minh NGUYEN��Z#�ESPPablo ABIAN��Y�ESTRaul MUST��X!�SURSoren OPTI��W)�HUNGergely KRAUSZ��V!�GBRToby PENTY��U+�SWEFelix BURESTEDT��T'�MLTMatthew ABELA��S)�NEDRobin TABELING�!�R7�AUSSimon Wing Hang LEUNG��Q-�GERIsabel HERTTRICH��P%�CANJosephine WU��O1�CANJoshua HURLBURT-YU��N+�FRADelphine DELRUE��M%�FRAThom GICQUEL��L3�EGYAdham Hatem ELGAMAL��K)�DENAlexandra BOJE� �J5�DENMathias CHRISTIANSEN��I%�MASLiu Ying GOH��H)�MASPeng Soon CHAN��G#�KORYujung CHAE�#�F;�THASapsiree TAERATTANACHAI�"�E9�THADechapol PUAVARANUKROH�#�D;�INAMelati Daeva OKTAVIANTI��C)�INAPraveen JORDAN��B%�GBRMarcus ELLIS��A'�HKGYing Suet TSE��@'�HKGChun Man TANG��?+�JPNArisa HIGASHINO��>)�CHNYa Qiong HUANG��=%�CHNSi Wei ZHENG��<+�CHNDong Ping HUANG��;#�CHNYi Lyu WANG��:)�BULStefani STOEVA��9+�BULGabriela STOEVA��8/�AUSGronya SOMERVILLE��7)�AUSSetyana MAPASA��61�THARawinda PRAJONGJAI�$�5=�THAJongkolphan KITITHARAKUL��4%�CANKristen TSAI��3-�CANRachel HONDERICH��2#�EGYHadia HOSNY��1�EGYDoha HANY��0'�DENSara THYGESEN��//�DENMaiken FRUERGAARD��.'�MASMeng Yean LEE��-'�MASMei Kuan CHOW��,%�GBRLauren SMITH��+#�GBRChloe BIRCH��*'�NEDCheryl SEINEN��)#�NEDSelena PIEK��(+�JPNWakana NAGAHARA��')�JPNMayu MATSUMOTO��&'�JPNSayaka HIROTA��%)�JPNYuki FUKUSHIMA��$!�CHNYin Hui LI��#�CHNYue DU��"+�KORSeung Chan SHIN��!!�KORSo Hee LEE�� %�KORHeeyong KONG��#�KORSoyeong KIM��!�CHNYi Fan JIA��)�CHNQing Chen CHEN��+�INAApriyani RAHAYU��'�INAGreysia POLII��'�INDChirag SHETTY�#�;�INDSatwiksairaj RANKIREDDY�$�=�NGRAnuoluwapo Juwon OPEYORI��'�NGRGodwin OLOFUA��!�GBRSean VENDY���GBRBen LANE��'�GERMarvin SEIDEL��'�GERMark LAMSFUSS��%�ROCIvan SOZONOV��+�ROCVladimir IVANOV��!�CANNyl YAKURA��'�CANJason HO-SHUE��%�KORSeungjae SEO��#�KORSolgyu CHOI���USARyan CHEW��%�USAPhillip CHEW�
%�JPNKeigo SONODA��	)�JPNTakeshi KAMURA�#�;�INAKevin Sanjaya SUKAMULJO�"�9�INAMarcus Fernaldi GIDEON��'�JPNYuta WATANABE��'�JPNHiroyuki ENDO�$�=�DENAnders Skaarup RASMUSSEN��!�DENKim ASTRUP��+�INAHendra SETIAWAN��)�INAMohammad AHSAN�� %�MASWooi Yik SOH��!MASAaron CHIA��~#~CHNYu Chen LIU��}!}CHNJun Hui LI��|%|TPEChi-Lin WANG��{{TPEYang LEE��z#zAZEAnna BASHTA��y#yCHNHengyu YANG��x+xTUNNadia BEN AZIZI��w+wITAMartina CRISCIO��v/vITARossella GREGORIO�   | ����lN&����oJ)����}eM1����x^C����iO"
�
�
�
�
v
Y
7

	�	�	�	�	s	V	<		����tS7����tZ<����qQ0����kB ����eB!����bG%����aA����|],               �u)	uTUNHaikel ACHOURI�.�tQ	tCUBGabriel Alejandro ROSILLO KINDELAN��s-	sPOLTadeusz MICHALIK��r%	rGEOGiorgi MELIA��q!	qTURCenk ILDEM��p#	pROCMusa EVLOEV�'�oC	oUSAJacarra Gwenisha WINCHESTER��n'	nINDVinesh PHOGAT�.�mQ	mECULuisa Elizabeth VALVERDE MELENDRES��l/	lCUBLaura HERIN AVILA� �k5	kBLRVanesa KALADZINSKAYA�%�j?	jKAZTatyana AMANZHOL-BAKATYUK� �i5	iPOLRoksana Marta ZASINA�&�hA	hGUMRckaela Maree Ramos AQUINO�*�gI	gCMRJoseph Emilienne ESSOMBE TIAKO��f3	fMGLBolortuya BAT OCHIR��e%	eJPNMayu MUKAIDA�$�d=	dSWESofia Magdalena MATTSSON��c#	cCHNQianyu PANG��b/	bGREMaria PREVOLARAKI��a3	aROCOlga KHOROSHAVTSEVA� �`5	`ROUAndreea Beatrice ANA��_!	_CHNMinghu LIU��^1	^IRIReza ATRINAGHARCHI� �]5	]GBSDiamantino IUNA FAFE��\1	\UZBGulomjon ABDULLAEV��[3	[MGLBekhbayar ERDENEBAT��Z-	ZKAZNurislam SANAYEV��Y'	YTURSuleyman ATLI��X/	XINDRavi Kumar Dahiya��W)	WJPNYuki TAKAHASHI��V3	VSRBStevan Andria MICIC�&�UA	UBULGeorgi Valentinov VANGELOV�)�TG	TCOLOscar Eduardo TIGREROS URBANO��S#	SROCZavur UGUEV�!�R7	RUSAThomas Patrick GILMAN��Q/	QARMArsen HARUTYUNYAN��P1	PALGAbdelhak KHERBACHE��O#	OJPNMiho NONAKA��N1	NROCViktoriia MESHKOVA��M/	MAUSOceania MACKENZIE��L-	LRSAErin STERKENBURG��K3	KPOLAleksandra MIROSLAW��J%	JAUTJessica PILZ��I%	IKORChaehyun SEO��H)	HSUIPetra KLINGLER��G#	GUSAKyra CONDIE��F)	FFRAAnouck JAUBERT��E+	EUSABrooke RABOUTOU��D#	DCHNYiling SONG��C)	CROCIuliia KAPLINA��B%	BITALaura ROGORA��A#	ACANAlannah YIP��@-	@FRAJulia CHANOURDIE��?'	?JPNAkiyo NOGUCHI��>!	>SLOMia KRAMPL��=)	=SLOJanja GARNBERT��<'	<GBRShauna COXSEY��;1	;RSAChristopher COSSER��:+	:GERAlexander MEGOS��9/	9KAZRishat KHAIBULLIN��8#	8CANSean McColl��7%	7KORJongwon CHON��6#	6FRABassa MAWEM��5)	5AUSTom O'HALLORAN��4+	4ROCAleksey RUBTSOV��3#	3USAColin DUFFY��2)	2AUTJakob SCHUBERT��11	1ITAMichael PICCOLRUAZ��0-	0ITALudovico FOSSALI��/!	/JPNKai HARADA��./	.USANathaniel COLEMAN��-	-CHNYufei PAN�,!	,CZEAdam ONDRA��+'	+FRAMickael MAWEM��*3	*ESPAlberto GINES LOPEZ��))	)JPNTomoa NARASAKI��('	(GERJan Jan HOJER��'-	'VIEThuy Linh NGUYEN��&)	&DENMia BLICHFELDT��%'	%UKRMaria ULITINA��$!	$KORSeyoung AN��#-	#BRAFabiana DA SILVA�*�"I	"MDVFathimath Nabaaha ABDUL RAZZAQ��!#	!CHNBingjiao HE�� -	 MYAThuzar THET HTAR��)	PERDaniela MACIAS��)	BULLinda ZETCHIRI�!�7	IRISoraya AGHAEIHAJIAGHA��)	HKGNgan Yi CHEUNG��%	TPETzu Ying TAI�"�9	THABusanan ONGBAMRUNGPHAN��%	USABeiwen ZHANG��#	CHNYu Fei CHEN��3	ROCEvgeniya KOSETSKAYA�$�=	INAGregoria Mariska TUNJUNG��!	BELLianne TAN��/	THARatchanok INTANON��#	SGPJia Min YEO��)	GBRKirsty GILMOUR��+	JPNAkane YAMAGUCHI�	GERYvonne LI��	FRAXuefei QI��!	CANMichele LI��)	JPNNozomi OKUHARA��)	PAKMahoor SHAHZAD��%	HUNLaura SAROSI��
3	
AUSHsuan-Yu Wendy CHEN��	'		ESTKristin KUUBA��1	ISRKsenia POLIKARPOVA�"�9	ESPClara AZURMENDI MORENO�"�9	INDPusarla Venkata SINDHU��%	MASSoniia CHEAH��)	SUISabrina JAQUET��+	SVKMartina REPISKA��	KORGaeun KIM�!�7	NGRDorcas Ajoke ADESOKAN�%� ?	 GUANikte Alejandra SOTOMAYOR��+�MEXHaramara GAITAN��~)�TURNeslihan YIGIT��})�DENViktor AXELSEN��|%�KORKwanghee HEO��{3�MRIGeorges Julien PAUL��z)�FRABrice LEVERDEZ�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        




























	
	
















 
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�			~	~	}	}	|	|	{	{	z	z	y	y	x	x	w	w	v	v	u	u	t	t	s	s	r	r	q	q	p	p	o	o	n	n	m	m	l	l	k	k	j	j	i	i	h	h	g	g	f	f	e	e	d	d	c	c	b	b	a	a	`	`	_	_	^	^	]	]	\	\	[	[	Z	Z	Y	Y	X	X	W	W	V	V	U	U	T	T	S	S	R	R	Q	Q	P	P	O	O	N	N	M	M	L	L	K	K	J	J	I	I	H	H	G	G	F	F	E	E	D	D	C	C	B	B	A	A	@	@	?	?	>	>	=	=	<	<	;	;	:	:	9	9	8	8	7	7	6	6	5	5	4	4	3	3	2	2	1	1	0	0	/	/	.	.	-	-	,	,	+	+	*	*	)	)	(	(	'	'	&	&	%	%	$	$	#	#	"	"	!	!	 	 																																											
	
																					 	 ������������������������������������������������������	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   u ����gK,���zT'����iL/����hG'����~`< 
�
�
�
�
i
N
(
	�	�	�	�	k	@	%	���|_<����aB)����cF! ���vZ3����qM.����lG(����bJ-����pO!                    �j%	�GEORamaz ZOIDZE�+�iK	�EGYMohamed Ibrahim Elsayed ELSAYED��h1	�ALGAbdelmalek MERABET��g)	�EORAker Al Obaidi��f3	�IRIMohammadreza GERAEI��e!	�SRBMate NEMES��d)	�ARMKaren ASLANYAN��c)	�HUNBalint KORPASI�(�bE	�DENFredrik Holmquist BJERREHUUS��a)	�TUNSouleymen NASR��`	�KORHansu RYU�!�_7	�USASarah Ann HILDEBRANDT��^#	�INDSeema SEEMA��]'	�UKROksana LIVACH�%�\?	�MGLNamuuntsetseg TSOGT-OCHIR�'�[C	�ECULucia Yamileth YEPEZ GUZMAN��Z#	�TUNSarra HAMDI��Y-	�ROUEmilia Alina VUC�"�X9	�CUBYusneylis GUZMAN LOPEZ��W'	�TUREvin DEMIRHAN�,�VM	�KAZValentina Ivanovna ISLAMOVA-BRIK��U!	�JPNYui SUSAKI�&�TA	�BULMiglena Georgieva SELISHKA��S	�CHNYanan SUN��R)	�AZEMariya STADNIK��Q-	�ROCStalvira ORSHUSH�!�P7	�NGRAdijat Avorshai IDRIS��O1	�NGRBlessing OBORUDUDU�'�NC	�USATamyra Mariama MENSAH STOCK��M+	�FRAKoumba LARROQUE��L+	�UKRAlla CHERKASOVA��K	�CHNFeng ZHOU� �J5	�KGZMeerim ZHUMANAZAROVA�$�I=	�CANDanielle Suzanne LAPPAGE��H'	�AZEElis MANOLOVA�$�G=	�CUBYudari SANCHEZ RODRIGUEZ��F!	�JPNSara DOSHO�.�EQ	�POLAgnieszka Jadwiga WIESZCZEK-KORDUS��D!	�EGYEnas AHMED��C1	�GERAnna Carmen SCHELL�"�B9	�BULMimi Nikolova HRISTOVA��A)	�ROCKhanum VELIEVA�#�@;	�MGLBattsetseg SORONZONBOLD��?)	�CROBozo STARCEVIC��>'	�HUNTamas LORINCZ�)�=G	�IRIMohammadali Abdolhamid GERAEI��<-	�BULAik MNATSAKANIAN��;'	�JPNShohei YABIKU��:%	�TUNLamjed MAAFI�9-	�MARZied AIT OUAGRAM��8-	�KGZAkzhol MAKHMUDOV�)�7G	�SWEAlex Michel BJURBERG KESSIDIS�"�69	�UZBJalgasbay BERDIMURATOV��5+	�KAZDemeu ZHADRAYEV�'�4C	�MEXAlfonso Antonio LEYVA YEPEZ� �35	�ROCAleksandr CHEKHIRKIN� �25	�CUBYosvanys PENA FLORES��1)	�AZERafig HUSEYNOV��0+	�ARMKarapet CHALYAN��//	�NGREkerekeme AGIOMOR��.-	�JPNSohsuke TAKATANI�)�-G	�IRIHassan Aliazam YAZDANICHARATI��,/	�SMRMyles Nazem AMINE��+%	�INDDeepak PUNIA�(�*E	�PERPool Edinson AMBROCIO GREIFO��)%	�SVKBoris MAKOEV��()	�ROCArtur NAIFONOV��'-	�SUIStefan REICHMUTH��&3	�ALGFateh BENFERDJALLAH*�%I	�COLCarlos Arturo IZQUIERDO MENDEZ��$!	�CHNZushen LIN�#�#;	�USADavid Morris TAYLOR III��"%	�BLRAli SHABANAU��!+	�UZBJavrail SHAPIEV�� #	�TUROsman GOCEN�/	�KAZDaulet NIYAZBEKOV��/	�TUNHaithem DAKHLAOUI��1	�KGZErnazar AKMATALIEV��-	�GREGeorgios PILIDIS��)	�JPNTakuto OTOGURO�!�7	�POLMagomedmurad GADZHIEV��+	�INDBajrang BAJRANG��+	�ARMVazgen TEVANYAN��#	�AZEHaji ALIYEV� �5	�ROCGadzhimurad RASHIDOV� �5	�IRIMorteza GHIASI CHEKA�(�E	�ARGAgustin Alejandro DESTRIBATS��/	�MGLTulga TUMUR OCHIR��1	�HUNIszmail MUSZUKAJEV�+�K	�CUBAlejandro Enrique VALDES TOBIER��%	�SENAdama DIATTA�$�=	�CUBJeandry GARZON CABALLERO��-	�KAZDaniyar KAISANOV��'	�POLKamil RYBICKI��+	�JPNKeisuke OTOGURO�)	�GBSAugusto MIDANA��
)	�PURFranklin GOMEZ��	)	�AZETuran BAYRAMOV!�7	�ITAFrank CHAMIZO MARQUEZ��+	�ROCZaurbek SIDAKOV��+	�UKRVasyl MYKHAILOV� �5	�UZBBekzod ABDURAKHMONOV��/	�USAKyle Douglas DAKE�*�I	�IRIMostafa Mohabbali HOSSEINKHANI�#�;	�EGYAmr Reda Ramadan HUSSEN��3	�GEOAvtandil KENTCHADZE�(� E	�BLRMahamedkhabib KADZIMAHAMEDAU��-	ALGAdem BOUDJEMLINE��~3	~IRIMohammadhadi SARAVI�!�}7	}USATracy Gangelo HANCOCK��|-	|ARMArtur ALEKSANYAN��{'	{SRBMihail KAJAIA��z#	zBULKiril MILOV��y/	yKGZUzur DZHUZUPBEKOV�"�x9	xFINArvi Martin SAVOLAINEN��w%	wCZEArtur OMAROV��v-	vHUNAlex Gergo SZOKE�   w ���x]>����|\5�����nV5�����eG+���}\=!
�
�
�
�
m
Q
2
	�	�	�	}	c	D	$	 ����dC)����mD*����kP(���tK1����yX&	����qJ#����c> �����e9                                  �a1
aBLRAliaksandr HUSHTYN�)�`G
`NGRAminat Oluwafunmilayo ADENIYI��_3
_ROUKriszta Tunde INCZE� �^5
^MGLBolortuya KHURELKHUU��]#
]INDSonam SONAM��\
\CHNJia LONG�!�[7
[LATAnastasija GRIGORJEVA��Z1
ZKGZAisuluu TYNYBEKOVA��Y+
YHUNMarianna SASTIN�"�X9
XBRALais NUNES DE OLIVEIRA��W-
WROCLiubov OVCHAROVA��V-
VUKRIryna KOLIADENKO� �U5
UBULTaybe Mustafa YUSEIN�(�TE
TUSAKayla Colleen Kiyoko MIRACLE��S!
STUNMarwa AMRI��R%
RJPNYukako KAWAI�$�Q=
QSWEHenna Katarina JOHANSSON�$�P=
PUKROleksandr KHOTSIANIVSKYI��O3
OBLRDzianis KHRAMIANKOU��N+
NALGDjahid BERRAHAL��M1
MUSAGable Dan STEVESON��L)
LROCSergei KOZYREV��K#
KKOSEgzon SHALA��J)
JCANAmarveer DHESI�/�IS
IEGYDiaaeldin Kamal Gouda ABDELMOTTALEB��H1
HGERGennadij CUDINOVIC��G!
GTURTaha AKGUL��F/
FGEOGeno PETRIASHVILI��E/
EIRIAmir Hossein ZARE�D1
DKAZYusup BATIRMURZAEV��C'
CKGZAiaal LAZAREV�!�B7
BMGLLkhagvagerel MUNKHTUR��A#
ACHNZhiwei DENG�&�@A
@ROCValeriia KOBLOVA ZHOLOBOVA�!�?7
?POLJowita Maria WRZESIEN��>'
>CHNNingning RONG�"�=9
=MGLKhongorzul BOLDSAIKHAN�'�<C
<NGROdunayo Folasade ADEKUOROYE�"�;9
;GUIFatoumata Yarie CAMARA�%�:?
:MEXAlma Jane VALENCIA ESCOTO��9%
9JPNRisako KAWAI��8#
8UKRTetyana KIT��7/
7MDAAnastasia NICHITA��6-
6BLRIryna KURACHKINA�#�5;
5FRAMathilde Helene RIVIERE��4'
4TUNSiwar BOUSETA�!�37
3USAHelen Louise MAROULIS��2#
2INDAnshu ANSHU�&�1A
1BULEvelina Georgieva NIKOLOVA��0+
0IRIAli Reza NEJATI��/'
/USAIldar HAFIZOV��./
.GEREtienne KINSINGER��-1
-UZBElmurat TASMURADOV�"�,9
,KGZZholaman SHARSHENBEKOV��+'
+UKRLenur TEMIROV��*#
*TURKerem KAMAL��)1
)KAZMirambek AINAGULOV��('
(ROCSergey EMELIN��'+
'CHNSailike WALIHAN��&)
&MDAVictor CIOBANU�%�%?
%CUBLuis Alberto ORTA SANCHEZ��$)
$ARMArmen MELIKYAN�!�#7
#EGYHaithem Fahmy MAHMOUD��"/
"ALGAbdelkarim FERGAT��!-
!JPNKenichiro FUMITA�� #
 CROIvan HUKLEK�(�E
CUBDaniel GREGORICH HECHAVARRIA�#�;
GERDenis Maksymilian KUDLA�&�A
USAJohn Walter STEFANOWICZ JR��-
KGZAtabek AZISBEKOV��'
UKRZhan BELENIUK��-
ALGBachir SID AZARA��'
AZEIslam ABBASOV��1
KAZNursultan TURSYNOV��
CHNFei PENG��)
HUNViktor LORINCZ��-
UZBRustam ASSAKALOV��3
SRBZurabi DATUNASHVILI��+
BLRKiryl MASKEVICH��'
GEOLasha GOBADZE��-
EGYMohamed METWALLY��1
UZBMuminjon ABDULLAEV��+
FINElias KUOSMANEN�$�=
CHIYasmani ACOSTA FERNANDEZ�,�M
EGYAbdellatif Mohamed Ahmed MOHAMED��/
LTUMantas KNYSTAUTAS��#
GEREduard POPP��
'

ESTArtur VITITIN��	+
	TUNAmine GUENNICHI� �5
ROUAlin ALEXUC-CIURARIU��#
KORMinseok KIM��)
ROCSergey SEMENOV��1
CUBMijain LOPEZ NUNEZ��%
TURRiza KAYAALP��'
GEOIakobi KAJAIA��+
IRIAmin MIRZAZADEH��1
BRAEduard SOGHOMONYAN�� 
 CHNQian ZHOU��'	�UKRAlla BELINSKA��~	�ESTEpp MAE��}+	�MGLBurmaa OCHIRBAT��|/	�ROCNatalia VOROBIEVA��{%	�GERAline FOCKEN��z%	�TURYasemin ADAR��y1	�BLRVasilisa MARZALIUK�$�x=	�EGYSamar Amer Ibrahim HAMZA��w/	�KGZAiperi MEDET KYZY��v)	�TUNZaineb SGHAIER#�u;	�BRAAline DA SILVA FERREIRA��t)	�JPNHiroe MINAGAWA�!�s7	�CANErica Elizabeth WIEBE��r1	�USAAdeline Maria GRAY��q-	�KAZElmira SYZDYKOVA��p-	�USAAlejandro SANCHO��o%	�ROCArtem SURKOV�!�n7	�CUBIsmael BORRERO MOLINA�'�mC	�COLJulian Stiven HORTA ACEVEDO��l)	�UKRParviz NASIBOV��k)	�GERFrank STAEBLER�   � ���y[7����lB%����iP2�����eM2����{W> 
�
�
�
�
c
H
,
	�	�	�	�	c	A	'	����qU:�����vX8�����oP5�����iO5�����nN2�����hK/�����dD,�����iI)    �a)
�GBRHeather WATSON��`/
�UKRDayana YASTREMSKA��_/
�CZEKarolina PLISKOVA��^)
�ARGAndres MOLTENI��]'
�BELJoran VLIEGEN��\%
�BELSander GILLE��[%
�GBRNeal SKUPSKI��Z%
�GBRJamie MURRAY��Y)
�AUTPhilipp OSWALD��X'
�AUTOliver MARACH��W
�GERTim PUETZ��V/
�NEDJean-Julien ROJER��U)
�NEDWesley KOOLHOF��T'
�SVKFilip POLASEK��S'
�GBRJoe SALISBURY��R#
�GBRAndy MURRAY��Q%
�COLRobert FARAH� �P5
�COLJuan-Sebastian CABAL��O+
�USAAustin KRAJICEK��N'
�NZLMichael VENUS��M)
�NZLMarcus DANIELL��L!
�CROMate PAVIC��K'
�CRONikola MEKTIC�"�J9
�POLKamil Adrian MAJCHRZAK��I+
�ITALorenzo MUSETTI�H%
�FRAGilles SIMON��G#
�GBRLiam BROADY��F-
�GERAlexander ZVEREV��E'
�FRAJeremy CHARDY��D/
�SRBMiomir KECMANOVIC��C%
�AUSJohn MILLMAN��B'
�JPNKei NISHIKORI��A'
�CHITomas BARRIOS��@)
�SVKNorbert GOMBOS��?'
�ITAFabio FOGNINI��>/
�KAZMikhail KUKUSHKIN��=%
�CZETomas MACHAC��<#
�FRAUgo HUMBERT��;#
�AUSMax PURCELL��:)
�POLHubert HURKACZ��9+
�GERDominik KOEPFER��8)
�USAFrances TIAFOE� �75
�GEONikoloz BASILASHVILI��6#
�CROMarin CILIC��5)
�ARGFacundo BAGNIS��4#
�SVKLukas KLEIN��3%
�KORSoonwoo KWON��2-
�KAZAlexander BUBLIK��1!
�PORJoao SOUSA��01
�JPNYoshihito NISHIOKA��/)
�BLREgor GERASIMOV��.!
�USATommy PAUL��-'
�JPNYuichi SUGITA��,%
�BRAJoao MENEZES��+3
�ESPPablo CARRENO BUSTA��*/
�ARGDiego SCHWARTZMAN��)+
�USATennys SANDGREN��(#
�INDSumit NAGAL��'%
�FRAGael MONFILS��&+
�AUSJames DUCKWORTH��%%
�AUSLuke SAVILLE��$%
�BOLHugo DELLIEN��#+
�BRAThiago MONTEIRO��")
�EGYMohamed SAFWAT��!%
�BLRIlya IVASHKA�� '
�UZBDenis ISTOMIN��)
�ARGFederico CORIA��)
�ITALorenzo SONEGO��3
�PERJuan Pablo VARILLAS��%
�USAMarcos GIRON��+
�ROCKaren KHACHANOV��1
�COLDaniel Elahi GALAN��#
�PORPedro SOUSA��3
�ARGFrancisco CERUNDOLO�#�;
�ESPRoberto CARBALLES BAENA�'�C
�ESPAlejandro DAVIDOVICH FOKINA�!�7
�GERPhilipp KOHLSCHREIBER��1
�GERJan-Lennard STRUFF��#
�JPNTaro DANIEL��#
�TPEYen-Hsun LU��'
�ESPPablo ANDUJAR��%
�BRAMarcelo MELO��3
�BRALuisa VERAS STEFANI��)
�KAZAndrey GOLUBEV��1
�KAZYaroslava SHVEDOVA��-
�ARGHoracio ZEBALLOS��+
�ARGNadia PODOROSKA��
'
�FRANicolas MAHUT��	3
�FRAKristina MLADENOVIC��!
�USARajeev RAM�!�7
�USABethanie MATTEK-SANDS��!
�CROIvan DODIG��%
�CRODarija JURAK�!�7
�FRAPierre-Hugues HERBERT��#
�FRAFiona FERRO�!�7
�CANFelix AUGER-ALIASSIME��1
�CANGabriela DABROWSKI�� %
�POLLukasz KUBOT��#
POLIga SWIATEK�~)
~GERKevin KRAWIETZ��}+
}GERLaura SIEGEMUND��|'
|JPNBen MCLACHLAN��{'
{JPNEna SHIBAHARA��z1
zGREStefanos Tsitsipas��y'
yGREMaria SAKKARI��x)
xSRBNovak DJOKOVIC��w+
wSRBNina STOJANOVIC��v!
vAUSJohn PEERS��u)
uAUSAshleigh BARTY��t)
tROCAslan KARATSEV��s'
sROCElena VESNINA��r'
rROCAndrey Rublev�$�q=
qROCAnastasia PAVLYUCHENKOVA� �p5
pROCAbdulrashid SADULAEV��o)
oROUAlbert SARITOV�'�nC
nIRIMohammadhossein MOHAMMADIAN��m)
mALGMohammed FARDJ�)�lG
lUZBMagomed Idrisovitch IBRAGIMOV��k-
kTUNMohamed SAADAOUI��j-
jGEOElizbar ODIKADZE� �i5
iCUBReineris SALAS PEREZ��h1
hMKDMagomedgadji NUROV�!�g7
gUSAKyle Frederick SNYDER��f+
fAZESharif SHARIFOV�*�eI
eITAAbraham de Jesus CONYEDO RUANO��d%
dCANJordan STEEN��c+
cKAZAlisher YERGALI��b1
bTURSuleyman KARADENIZ�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        }||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJ

		  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�


~
~
}
}
|
|
{
{
z
z
y
y
x
x
w
w
v
v
u
u
t
t
s
s
r
r
q
q
p
p
o
o
n
n
m
m
l
l
k
k
j
j
i
i
h
h
g
g
f
f
e
e
d
d
c
c
b
b
a
a
`
`
_
_
^
^
]
]
\
\
[
[
Z
Z
Y
Y
X
X
W
W
V
V
U
U
T
T
S
S
R
R
Q
Q
P
P
O
O
N
N
M
M
L
L
K
KJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  
J
J
I
I
H
H
G
G
F
F
E
E
D
D
C
C
B
B
A
A
@
@
?
?
>
>
=
=
<
<
;
;
:
:
9
9
8
8
7
7
6
6
5
5
4
4
3
3
2
2
1
1
0
0
/
/
.
.
-
-
,
,
+
+
*
*
)
)
(
(
'
'
&
&
%
%
$
$
#
#
"
"
!
!
 
 














































	
	
















 
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�   � ����X:����pS0����{Z;�����^> ����y`G%
�
�
�
�
u
W
;
	�	�	�	�	�	h	M	.	�����oR4�����kN3�����hJ1�����rW7����|fM/�����vY<! ����nR<�����r[@      '�eCfFRAMelanie DE JESUS DOS SANTOS��d%eNEDLieke WEVERS��cdCHNYufei LU��b%cBELNina DERWAEL��a)bCANBrooklyn MOORS��`'aITAAlice D'AMATO��_%`JPNMai MURAKAMI��^)_ITAMartina MAGGIO��]/^GBRJennifer GADIROVA��\+]GERElisabeth SEITZ��[\GERKim BUI��Z'[HUNZsofia KOVACS��Y1ZSUIGiulia STEINGRUBER��X-YGBRJessica GADIROVA��W#XESPRoxana POPA��V+WFRACarolann HEDUIT�U'VBELJutta VERKEST��T1UROCVladislava URAZOVA��S%TUSASimone BILES��R)SBRAFlavia SARAIVA��Q)RJPNUrara ASHIKAWA��P'QCHNChenchen GUAN��O!PUSASunisa LEE��N#OCHNXijing TANG�M)NCANElsabeth BLACK��L+MROCNikita NAGORNYY��K%LBRADiogo SOARES�JKKORJunho LEE��I+JJPNTakeru Kitazono��H!IGBRJames HALL��GHCHNWei SUN��F!GSUIEddy YUSOF��E#FUSASam Mikulak��D+EROCArtur DALALOYAN��C)DUKRPetro PAKHNYUK��BCTURAdem ASIL��A%BGERLukas DAUSER��@#ATURAhmet ONDER��?/@SUIBenjamin GISCHARD��>%?TPEChih Kai LEE��=)>GERPhilipp HERDER��<)=TPEChia-Hung TANG��;!<BRACaio SOUZA��:%;KAZMilad KARIMI��9%:CHNRuoteng XIAO��8%9USABrody MALONE��7%8UKRIllia KOVTUN��6!7GBRJoe FRASER��5+6JPNDaiki HASHIMOTO��4'5CANShallon OLSEN��3%4MEXAlexa MORENO��213ROCAngelina MELNIKOVA��1)2BRARebeca ANDRADE��0+1USAMykayla SKINNER��/!0USAJade CAREY��.-/ROCLiliia AKHAIMOVA��-%.KORSeojeong YEO��,)-MEXGiuliana OLMOS��+%,INDAnkita Raina��*#+INDSania MIRZA��)+*USANicole MELICHAR��(+)POLAlicja ROSOLSKA��'/(SRBAleksandra KRUNIC��&%'TPEChieh-Yu HSU��%)&TPEYu-Chieh HSIEH��$+%JPNMakoto NINOMIYA��#)$CHNYing-Ying DUAN��")#CANSharon FICHMAN��!'"TPEYung-Jan CHAN�� )!TPEHao-Ching CHAN��% JPNShuko AOYAMA��'CHNZhaoxuan YANG��CHNYifan XU��%ROURaluca OLARU��-ROUMonica NICULESCU��%NEDDemi SCHUURS��#AUSEllen PEREZ��+UKRNadiia KICHENOK��/UKRLiudmyla KICHENOK��'AUSStorm SANDERS��'BRALaura PIGOSSI��1CZEKaterina SINIAKOVA��3ESPSara SORRIBES TORMO��'POLMagda LINETTE��+ITAJasmine PAOLINI��%NEDKiki BERTENS��%KAZZarina DIYAS��%EGYMaiar SHERIF��-KAZYulia PUTINTSEVA��1GERAnna-Lena FRIEDSAM��-ESPGarbine MUGURUZA��
3CZEMarketa VONDROUSOVA��	!
JPNNao HIBINO��!	TUNOns JABEUR��#JPNNaomi Osaka��!JPNMisaki DOI��+UKRElina SVITOLINA� �5ESPCarla SUAREZ NAVARRO��!CHNQiang WANG��#ITASara ERRANI��+FRACaroline GARCIA�� /SUIViktorija GOLUBIC�"�9 ROCEkaterina ALEKSANDROVA��~)
�SUIBelinda BENCIC��}3
�BELAlison VAN UYTVANCK��|%
�FRAAlize CORNET��{)
�KAZElena RYBAKINA�"�z9
�CANLeylah Annie FERNANDEZ��y'
�SRBIvana JOROVIC��x-
�LATJelena OSTAPENKO��w1
�ROUMihaela BUZARNESCU��v'
�CZEPetra KVITOVA�$�u=
�MEXRenata ZARAZUA RUCKSTUHL��t%
�USAAlison RISKE��s%
�CHNSaisai ZHENG��r%
�ESPPaula BADOSA��q1
�CZEBarbora KREJCIKOVA� �p5
�LATAnastasija SEVASTOVA��o)
�USAJessica PEGULA��n-
�AUSAjla TOMLJANOVIC��m'
�ITACamila GIORGI��l)
�USAJennifer BRADY��k#
�CRODonna VEKIC��j-
�SWERebecca PETERSON��i%
�GERMona BARTHEL��h+
�ESTAnett KONTAVEIT��g+
�AUSSamantha STOSUR�%�fC
�COLMaria Camila OSORIO SERRANO�e'
�BELElise MERTENS� �d5
�PARVeronica CEPEDE ROYG��c+
�BLRAryna SABALENKA� �b5
�ROCVeronika KUDERMETOVA�   �* �����hO0����~`?�����e?$����oT>�����tU8 
�
�
�
�
}
d
H
+
	�	�	�	�	v	Y	;		����rT;����a@$�����lM6����eN%	����mT6�����hB)����xU8�����bF*                          �i'�CANCorey CONNERS��h'�CZEOndrej LIESER��g-�CANMackenzie HUGHES��f�NZLRyan FOX��e#�IRLShane LOWRY��d)�FRAAntoine ROZNER��c�TPEC.T. PAN��b'�FINKalle SAMOOJA��a#�MASGavin GREEN��`'�USAJustin THOMAS��_)�INDAnirban LAHIRI� �^5�MEXCarlos ORTIZ BECERRA�"�]9�ZIMScott Nicholas VINCENT��\+�VENJhonattan VEGAS��[!�GBRPaul CASEY��Z'�RSAGarrick HIGGO��Y+�GBRTommy FLEETWOOD��X%�USAPatrick REED��W!�GERHurly LONG�#�V;�RSAChristiaan BEZUIDENHOUT��U+�THAGunn CHAROENKUL��T)�NORViktor HOVLAND��S)�INDUdayan S. MANE��R-�DENRasmus HOEJGAARD��Q)�PHIJuvic PAGUNSAN� �P5�THAJazz JANEWATTANANOND��O!�KORSi Woo KIM�N+�USACollin MORIKAWA��M!�SWEAlex NOREN��L-�SWEHenrik NORLANDER�$�K=�MEXAbraham ANCER SAGASTEGUI��J)�ESPJorge CAMPILLO��I'�POLAdrian MERONK��H)�SVKRory SABBATINI��G'�FINSami VALIMAKI�&�FA�COLJuan Sebastian MUNOZ AMAYA��E�CHNAshun WU��D#�ESPAdri ARNAUS�&�CA�NORKristian Krogh JOHANNESSEN��B%�CHIMito PEREIRA��A+�ITAGuido MIGLIOZZI��@%�PURMaria TORRES��?/�SUIAlbane VALENZUELA��>#�USANelly KORDA��=�CHNXiyu LIN��<-�IRLStephanie MEADOW��;+�FINMatilda CASTREN��:�NZLLydia KO��9�TPEMin LEE��8%�KORJin Young KO��7�GBRMel REID��6)�AUTChristine WOLF��5+�ESPCarlota CIGANDA��4'�CHNShanshan FENG��31�PHIBianca PAGDANGANAN�"�29�ARGMagdalena SIMMERMACHER��1'�COLMariajo URIBE��0%�NEDAnne VAN DAM��/+�ITAGiulia MOLINARO�#�.;�DENEmily Kristine PEDERSEN��-!�MEXGaby LOPEZ��,1�GBRJodi EWART SHADOFF��+!�SLOPia BABNIK��*+�NORTonje DAFFINRUD��)%�INDDiksha DAGAR��(/�THAPatty TAVATANAKIT��')�FINSanna NUUTINEN��&-�FRAPerrine DELACOUR��%'�ESPAzahara MUNOZ��$#�INDAditi ASHOK��#'�USADanielle KANG��"+�ECUDaniela DARQUEA��!)�FRACeline BOUTIER�� !�JPNMone INAMI��%�HKGTiffany CHAN��'�USAJessica KORDA�$�=�MEXMaria Jose FASSI ALVAREZ��/�SWEMadelene SAGSTROM��+�GERCaroline MASSON��)�CZEKlara SPILKOVA��'�IRLLeona MAGUIRE��!�KORInbee PARK��!�KORHyojoo KIM���MASKelly TAN��'�MARMaha HADDIOUI��%�KORSeiyoung KIM��%�GERSophia POPOV��'�USALexi THOMPSON��'�BELManon DE ROEY��)�SWEAnna NORDQVIST��-�THAAriya JUTANUGARN��#�SUIKim METRAUX��%�JPNNasa HATAOKA��-�CANBrooke HENDERSON��!�AUSMinjee LEE��
#�CANAlena SHARP��	%�AUSHannah GREEN�%�?�ITALucrezia COLOMBOTTO ROSSO���PHIYuka SASO�%�TPEWei-Ling HSU� �5�DENNanna Koerstz MADSEN���CHNYang LIU��'�TURIbrahim COLAK��)�BRAArthur ZANETTI�"�9�GREEleftherios PETROUNIAS�� )�FRASamir AIT SAID��%�USAYul MOLDAUER�#�~;ESPRayderley Miguel ZAPATA��}+~ISRArtem DOLGOPYAT��|!}KORHansol KIM��{%|KORSunghyun RYU��z%{CHNJingyuan ZOU��y'zTURFerhat ARICAN��xyCHNHao YOU��wxCHNYilin FAN� �v5wROCAnastasiia ILIANKOVA��u1vROCViktoria LISTUNOVA��t+uITAVanessa FERRARI��s'tARMArtur DAVTYAN��r1sPHICarlos Edriel YULO��q%rKORJeahwan SHIN��p)qROCDenis ABLYAZIN��o)pJPNKohei KAMEYAMA��n/oIRLRhys MC CLENAGHAN��m-nROCDavid BELYAVSKIY��l!mUSAAlec YODER��k#lJPNKazuma KAYA��j%kGBRMax WHITLOCK��i%jNEDBart DEURLOO��hiCROTin SRBIC��g!hAUSTyson BULL��f!gKORYunseo LEE
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        ������������������������������������������������������������������������������������������������������}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}���������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLK   � ����hI)�����dD+����|\?�����oP4����sT4
�
�
�
�
�
l
I
.
	�	�	�	�	�	g	L	*	����rS4����sX< ����rP4�����gL1����tW1�����hJ-����w[A"����pP1              �i%jKOSLoriana KUKA��h-iUSANefeli PAPADAKIS��g/hFRAMadeleine MALONGA��f#gISRInbar LANIR��e1fUKRAnastasiya TURCHYN��d+eAUTBernadette GRAF��c1dCUBKaliema ANTOMARCHI��b'cCODMarie BRANSER��a'bECUVanessa CHALA��`-aNEDGuusje STEENHUIS��_#`CHNZhenzhao MA��^'_CROBarbara MATIC��]'^BRAMaria PORTELA��\3]UZBGulnoza MATNIYAZOVA��['\KIRKinaua BIRIBO��Z'[FRAMargaux PINOT��Y1ZGREElisavet TELTSIDOU��X-YROCMadina TAIMAZOVA��W)XIRLMegan FLETCHER��V+WCHADemos MEMNELOUM��U'VSWEAnna BERNHOLM��T'UKORSeongyeon KIM��S%TPORBarbara TIMO� �R5SGERGiovanna SCOCCIMARRO��Q)REORNigara Shaheen��P%QJPNChizuru ARAI��O%PGBRGemma HOWELL�#�N;OCMRAyuk Otay ARREY SOPHINA��M)NITAAlice BELLANDI� �L5MJAMEbony DRYSDALE DALEY��K)LAUSAoife COUGHLAN��J1KVENElvismar RODRIGUEZ��I-JPURMaria PEREZ DIAZ��H)IESPMaria BERNABEU��G/HAUTMichaela POLLERES��F%GCHNXiaoqian SUN��E%FMARAssmaa NIANG��D)ETUNNihel LANDOLSI��C+DNEDSanne VAN DIJKE��B#CISRRaz HERSHKO��A%BBIHLarisa CERIC��@1ALTUSandra JABLONSKYTE��?'@PORRochele NUNES��>/?NEDTessie SAVELKOULS��='>GERJasmin KUELBS��<3=UKRYelyzaveta KALANINA��;)<PURMelissa MOJICA��:;CHNShiyan XU��9':ALGSonia ASSELAH��8+9GBRSarah ADLINGTON��7-8AZEIryna KINDZERSKA��6-7KSATahani ALQAHTANI��5)6TTOGabriella WOOD��4'5CROIvana MARANIC��3%4FRARomane DICKO��23KORMijin HAN�!�172BRAMaria Suelen ALTHEMAN��0!1JPNAkira SONE��/+0NCAIzayana MARENCO�,�.M/CMRHortence Vanessa MBALLA ATANGANA��--.BLRMaryna SLUTSKAYA��,--SLOAnamari VELENSEK��+-,USANina CUTRO-KELLY��*#+TURKayra SAYIT��)3*TUNNihel CHEIKH ROUHOU��(%)CUBIdalys ORTIZ��')(SRBMarica PERISIC�$�&='CIVZoulehia Abzetta DABONNE��%)&BULIvelina ILIEVA��$3%ANGDiassonema MUCUNGUI��#%$KOSNora GJAKOVA��")#HUNHedvig KARAKAS��!-"CANJessica KLIMKAIT�� +!TUNGhofran KHELIFI��' GERTheresa STOLL��#CHNTongjuan LU��/ROCDaria MEZHETSKAIA��KORJisu KIM��%PANMiryam ROPER� �5FRASarah Leonie CYSIQUE��+POLJulia KOWALCZYK��#SLOKaja KAJZER��%EORSanda Aldass��)TPEChen-Ling LIEN��)PORTelma MONTEIRO��+JPNTsukasa YOSHIDA��)NEDSanne VERHAGEN��/ISRTimna NELSON LEVY��-MGLSumiya DORJSUREN��/AUTSabrina FILZMOSER��1GEOEteri LIPARTELIANI��%AUSLogan MARTIN��'GBRDeclan BROOKS��'JPNRimu NAKAMURA�*�ICRCKenneth Fabian TENCIO ESQUIVEL��
'USAJustin DOWELL��	-
FRAAnthony JEANJEAN��!	USANick BRUCE��%VENDaniel DHERS��#ROCIrek RIZAEV� �5ROCElizaveta POSADSKIKH��+SUINikita DUCARROZ��'AUSNatalya DIEHM�"�9CHIMacarena PEREZ GRASSET��)USAPerris BENEGAS�� 3GERLara Marie LESSMANN�# JPNMinato OIKE��~)�USAHannah ROBERTS�!�}7�GBRCharlotte WORTHINGTON��|'�PURRafael CAMPOS��{#�CHNYechun YUAN��z+�AUTMatthias SCHWAB��y!�KORSungjae IM��x/�USAXander SCHAUFFELE��w)�BELThomas PIETERS��v'�AUSMarc LEISHMAN��u'�AUSCameron SMITH��t%�BELThomas DETRY��s#�AUTSepp STRAKA��r+�CHIJoaquin NIEMANN��q)�JPNRikuya HOSHINO��p/�DENJoachim B. HANSEN��o-�FRARomain LANGASQUE��n-�JPNHideki MATSUYAMA��m+�ITARenato PARATORE��l-�PARFabrizio ZANOTTI��k1�GERMaximilian KIEFFER��j%�IRLRory MCILROY�   � ����tU1�����hI,�����gJ.����rP5����}\D 
�
�
�
�
s
T
3
	�	�	�	�	�	c	I	$	����oQ3�����hH(����fD(����}^C)���z_A&����uR2����sU6�����lO3         �i3�CHIMary Dee VARGAS LEY��h'�UKRDaria BILODID��g)�SRBMilica NIKOLIC��f)�GERKatharina MENZ��e'�ISRShira RISHONY��d-�KOSDistria KRASNIQI��c%�KORYujeong KANG��b%�ARGPaula PARETO��a)�PORCatarina COSTA��`-�TURGulkader SENTURK��_-�BRAGabriela CHIBANA��^+�MAWHarriet BONFACE�#�];�KAZOtgontsetseg GALBADRAKH��\)�ESPJulia FIGUEROA��[-�ITAFrancesca MILANI�"�Z9�INDShushila Devi LIKMABAM��Y)�FRAShirine BOUKLI��X%�KOSAkil GJAKOVA��W/�GUIMamadou Samba BAH� �V5�UZBKhikmatillokh TURAEV� �U5�ARMFerdinand KARAPETIAN��T'�AZERustam ORUJOV��S%�ITAFabio BASILE��R)�ROCMusa MOGUSHKOV��Q3�SRIChamara REPIYALLAGE��P�GAMFaye NJIE��O%�SWETommy MACIAS��N+�ROUAlexandru RAICU��M%�BURLucas DIALLO��L-�FRAGuillaume CHAINE�!�K7�GEOLasha SHAVDATUASHVILI�#�J;�DJIAden-Alexandre HOUSSEIN��I/�JORYounis EYAL SLMAN�#�H;�MGLTsogtbaatar TSEND-OCHIR��G#�YEMAhmed AYASH��F%�GERIgor WANDTKE��E-�KAZZhansay SMAGULOV��D)�KSASulaiman HAMAD��C'�TURBilal CILOGLU��B+�UAEVictor SCVORTOV��A+�CUBMagdiel ESTRADA��@%�ISRTohar BUTBUL��?%�MONCedric BESSI��>'�MDAVictor STERPU��=3�SUDMohamed ABDALRASOOL��<!�JPNShohei ONO��;1�TJKSomon MAKHMADBEKOV��:%�EORAhmad Alikaj��9+�BRAEduardo BARBOSA��8!�SUINils STUMP��7'�ALGFethi NOURINE��6#�KORChangrim AN��5/�CANArthur MARGELIDON��4/�UKRGeorgii ZANTARAIA��3#�MDADenis VIERU� �25�GEOVazha MARGVELASHVILI��1-�NIGIsmael ALHASSANE��0-�UZBSardor NURILLAEV��/�KORBaul AN��.'�SLOAdrian GOMBOC��-+�GERSebastian SEIDL��,+�ITAManuel LOMBARDO��++�ZAMSteven MUNGANDU��*+�ISRBaruch SHMAILOV��))�BRADaniel CARGNIN�"�(9�MGLBaskhuu YONDONPERENLEI��')�AZEOrkhan SAFAROV��&'�PERJuan POSTIGOS��%'�MOZKevin LOFORTE�"�$9�ESPAlberto GAITERO MARTIN��##�AUSNathan KATZ��"-�EGYMohamed ABDELAAL��!)�BLRDzmitry MINKOU� � 5�CRCIan SANCHO CHINCHILA��)�ROCYakub SHAMILOV��!�JPNHifumi ABE��)�ALBIndrit CULLHAJ��+�QATAyoub ELIDRISSI��1�KAZYerlan SERIKZHANOV��-�FRAKilian LE BLOUCH��'�TJKAkmal MURODOV��)�GUMJoshter ANDREW��-�ARGEmmanuel LUCENTI��%�KAZDidar KHAMZA��+�JPNTakanori NAGASE��'�AZEMurad FATIYEV�!�7�UZBSharofiddin BOLTABOEV���ISRSagi MUKI��1�GEOTato GRIGALASHVILI��+�KGZVladimir ZOLOEV��1�SAMPeniamina PERCIVAL��!�VANHugo CUMBO��-�PLEWesam ABU RMILAH��-�SLEFrederick HARRIS��3�AUTShamil BORCHASHVILI��
%�NEDFrank DE WIT��	3�BRAEduardo Yudy SANTOS�"�9�CANAntoine VALOIS-FORTIER��-�URUAlain APRAHAMIAN��3�GREAlexios NTANATSIDIS��)�HUNAttila UNGVARI��'�PURAdrian GANDIA��)�GERDominic RESSEL��'�MGLSaeid MOLLAEI��)�TURVedat ALBAYRAK�� /�ITAChristian PARLATI��#�SWERobin PACEK��~'PORAnri EGUTIDZE��}!~KORSungho LEE��|)}BELMatthias CASSE��{#|LBNNacif ELIAS��z-{COMHousni THAOUBANI��y)zROCAlan KHUBETSOV��x-yEGYMohamed ABDELAAL��w'xBULIvaylo IVANOV��v)wGBRNatalie POWELL��u)vMNEJovana PEKOVIC��t1uMGLMunkhtsetseg OTGON��s/tGERAnna-Maria WAGNER��r%sBRAMayra AGUIAR�q!rVENKaren LEON�!�p7qROCAleksandra BABINTSEVA��o-pPORPatricia SAMPAIO��n%oCROKarla PRODAN��m#nPOLBeata PACUT��l3mGABSarah Myriam MAZOUZ��k#lKORHyunji YOON��j%kJPNShori HAMADA�    ����sX9�����oU: ����uZ=�����qQ ����nR5
�
�
�
�
�
h
J
-
	�	�	�	�	v	U	8	�����eC����wW? ����uS6�����iK/����yZ>" ����a>#
����sS.�����`6                �h/iAUSKatharina HAECKER�'�gChCANCatherine BEAUCHEMIN-PINARD��f3gAUTMagdalena KRSSAKOVA��e'fNEDJuul FRANSSEN��d+eBRAKetleyn QUADROS��c#dISRGili SHARIR��b+cPHIKiyomi WATANABE��a%bDENLaerke OLSEN��`-aECUEstefania GARCIA�"�_9`MADDamiella NOMENJANAHARY��^/_ITAMaria CENTRACCHIO��]%^JPNMiku TASHIRO��\+]GERMartyna TRAJDOS��[)\JPNNaohisa TAKATO�"�Z9[UZBSharafuddin LUTFILLAEV��Y'ZTPEYung Wei YANG��X!YGUAJose RAMOS��W%XUKRArtem LESIUK� �V5WLAOSoukphaxay SITHISANE��U-VBULYanislav GERCHEV��T)UECULenin PRECIADO��S/TBELJorre VERSTRAETEN��R3SROCRobert MSHVIDOBADZE��Q1RESPFrancisco GARRIGOS��P3QGEOLukhumi CHKHVIMIANI��O'PGERMoritz PLAFKY��N'OKAZYeldos SMETOV��M-NAZEKaramat HUSEYNOV��L#MKORWon Jin KIM��K+LBRAEric TAKABATAKE��J1KNEDTornike TSJAKADOEA�!�I7JMGLAmartuvshin DASHDAVAA��H+IBHUNgawang NAMGYEL��G%HTURMihrac AKKUS��F'GFRALuka MKHEIDZE��E+FGBRAshley MCKENZIE��D+EEGYRamadan DARWISH��C'DROCNiiaz ILIASOV��B'CCANShady ELNAHAS��A)BUAEIvan REMARENCO��@)ANEDMichael KORREL��?/@PAKHussain Shah SHAH��>)?AZEZelym KOTSOIEV��=)>ISRPeter PALTCHIK��<3=GEOVarlam LIPARTELIANI��;'<BLRMikita SVIRYD��:);BELToma NIKIFOROV��9-:ESTGrigori MINASKIN��8!9JPNAaron WOLF��7'8PORJorge FONSECA��6+7FRAAlexandre IDDIR��5-6HUNMiklos CIRJENICS��45KORGuham CHO��3/4IRLBenjamin FLETCHER�$�2=3UZBMukhammadkarim KHURRAMOV��1+2FIJTevita TAKAYAWA��0/1GERKarl-Richard FREY��//0BRARafael BUZACARINI��.//SRBAleksandar KUKOLJ�$�-=.MGLOtgonbaatar LKHAGVASUREN��,3-LATJevgenijs BORODAVKO��+',MRIRemi FEUILLET��*++ITANicholas MUNGAI��)'*GEOLasha BEKAURI� �(5)MGLAltanbagana GANTULGA��')(GEREduard TRIPPEL��&/'ROCMikhail IGOLNIKOV��%)&KAZIslam BOZBAYEV��$)%SRBNemanja MAJDOV��#1$SEYNantenaina FINESSE��")#UZBDavlat BOBONOV��!'"CUBMorales SILVA�� )!CZEDavid KLAMMERT��/ DOMRobert FLORENTINO��%TURMihael ZGANK�#�;ESPNikoloz SHERAZADISHVILI��)NEDNoel VAN T END��+SMRPaolo PERSOGLIA��%GHAKwadjo ANANI��!ISRLi KOCHMAN��'BRARafael MACEDO�#�;TJKKomronshokh USTOPIRIYON��%SWEMarcus NYMAN��%FRAAxel CLERGET��1AZEMammadali MEHDIYEV��)EORPopole Misenga��'POLPiotr KUCZERA��%KORDonghan GWAK��)HUNKrisztian TOTH� �5LIERaphael SCHWENDINGER��%USAColton BROWN��+JPNShoichiro MUKAI��+UKRQuedjau NHABALI�.�QBENCeltus Williams Abiola DOSSOU YOVO��
/GEOGuram TUSHISHVILI��	'
GERJohannes FREY��'	EORJavad Mahjoub��LBAAli OMAR��+SENMbagnick NDIAYE��1JPNHisayoshi HARASAWA��+POLMaciej SARNACKI��/UZBBekmurod OLTIBOEV��)TJKTemur RAKHIMOV��%UKRIakiv KHAMMO�� NEDHenk GROL��+ AZEUshangi KOKAURI��~'�CZELukas KRPALEK��}/�ROUVladut SIMIONESCU��|-�ROCTamerlan BASHAEV��{#�FRATeddy RINER��z#�KORMinjong KIM��y%�BRARafael SILVA��x#�CUBAndy GRANDA��w�ISROr SASSON�"�v9�MGLDuurenbayar ULZIIBAYAR��u'�AUTStephan HEGYI��t'�NEPSoniya BHATTA�s#�JPNFuna TONAKI� �r5�MGLUrantsetseg MUNKHBAT��q#�COLLuz ALVAREZ��p-�HUNEva CSERNOVICZKI��o%�TPEChen-Hao LIN��n�CHNYanan LI��m'�ROCIrina DOLGOVA��l)�AZEAisha GURBANLI��k)�SLOMarusa STANGAR��j/�RSAGeronay WHITEBOOI�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        IHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ���������������������������������������������������������

		  �������������������������������������������������������������������������������������������������������������������������������������������������������������   � ����lR1����pO-�����kJ+�����dC$����q[7
�
�
�
�
x
^
A
%
	�	�	�	�	y	]	@	&		����{^A&
����xZ>%����xY>"����uV;#����nQ9���aG&����jP3�����hJ1           �j#�TPEYa-Ting TAN��i!�GERLisa UNRUH��h+�KORChae Young KANG��g'�JPNYuto HORIGOME��f+�BRAGiovanni VIANNA��e#�JPNYukito AOKI��d'�FRAVincent MILOU��c)�BRAGustavo FELIPE��b3�PERAngelo CARO NARVAEZ��a'�AUSShane O'NEILL��`)�BRAKelvin HOEFLER��_#�JPNSora SHIRAI��^-�BELAxel CRUYSBERGHS��]%�USAJagger EATON�*�\I�COLLuis Jhancarlos GONZALEZ ORTIZ��[!�CANMicky PAPA��Z+�RSABrandon VALJALO��Y+�PORGustavo RIBEIRO��X1�USANyjah IMANI HUSTON��W#�USAJake ILARDI��V+�FRAAurelien GIRAUD��U#�CANMatt BERGER��T)�PURManny SANTIAGO�%�S?�BRAIsadora RODRIGUES PACHECO� �R5�CHIJosefina TAPIA VARAS��Q#�AUSPoppy OLSEN��P+�GBRBombette MARTIN��O�CHNXin ZHANG��N)�FINLizzie ARMANTO��M+�ESPJulia BENEDETTI��L3�FRAMadeleine LARCHERON��K)�USAJordyn BARRATT��J+�JPNSakura YOSOZUMI��I'�JPNKokona HIRAKI��H+�USABrighton ZEUNER��G�GBRSky BROWN��F%�BRADora VARELLA��E-�RSAMelissa WILLIAMS��D#�BRAYndiara ASP��C'�POLAmelia BRODKA��B+�USABryce WETTSTEIN��A/�GERLilly STOEPHASIUS��@)�JPNMisugu OKAMOTO��?'�BRAPedro QUINTAS��>'�ITAIvan FEDERICO��=%�JPNAyumu HIRANO��<-�USAHeimana REYNOLDS��;#�USACory JUNEAU��:#�USAZion WRIGHT��9-�FRAVincent MATHERON��8'�DENRune GLIFBERG��7)�AUSKieran WOOLLEY��61�ITAAlessandro MAZZARA��5!�ESPDanny LEON��4'�CANAndy ANDERSON��3+�SWEOskar ROZENBERG��21�RSADallas OBERHOLTZER��1#�ESPJaime MATEU��0)�PURSteven PINIERO��/)�GERTyler EDTMAYER��.)�BRALuiz FRANCISCO��-'�AUSKeegan PALMER��,%�BRAPedro BARROS��+)�USAAlexis SABLONE��*)�ESPAndrea BENITEZ��)#�BRAPamela ROSA��()�JPNMomiji NISHIYA��'/�NEDKeet OLDENBEUVING��&#�USAAlana SMITH��%)�BELLore BRUGGEMAN��$)�BRALeticia Bufoni��##�CHNWenhui ZENG��")�NEDRoos ZWETSLOOT��!'�JPNFuna NAKAYAMA�� %�USAMariah DURAN��%�CANAnnie GUGLIA��!�ITAAsia LANZI��+�AUTJulia BRUECKLER��'�FRACharlotte HYM� �5�PHIMargielyn Arda DIDAL��'�AUSHayley WILSON��)�JPNAori NISHIMURA��#�BRARayssa LEAL��/�KOSMajlinda KELMENDI�%�?�GEOTetiana LEVYTSKA-SHUKVANI�!�7�TKMGulbadam BABAMURATOVA��!�ISRGili COHEN��+�SUIFabienne KOCHER��'�GBRChelsie GILES�!�;�MGLSosorbaram LKHAGVASUREN��JPNUta ABE��1�THAKachakorn WARASIHA��#�PORJoana RAMOS��#�KORDa-Sol PARK��-�FRAAmandine BUCHARD��/�ROCNatalia KUZIUTINA��
-�PANKristine JIMENEZ��	-�MKDArbresha REXHEPI��1�BELCharline VAN SNICK��'�ESPAna PEREZ BOX��+�CANEcaterina GUICA��+�BRALarissa PIMENTA��%�POLAgata PERENC��+�HAISabiana ANESTOR��'�ROUAndreea CHITU��#�VIEThuy NGUYEN�� -�USAAngelica DELGADO��1�UZBDiyora KELDIYOROVA��~HUNReka PUPP��}%~GBSTaciana LIMA��|)}MARSoumiya IRAOUI��{-|ITAOdette GIUFFRIDA��z#{CHNJunxia YANG��y#zHUNSzofi OZBAS�x1yVENAnriquelis BARRIOS��w3xFRAClarisse AGBEGNENOU��v1wHONCergia DAVID GUITY��u-vCPVSandrine BILLIET� �t5uMEXPrisca AWITI ALCARAZ��s'tGBRLucy RENSHALL�$�r=sCUBMaylin DEL TORO CARVAJAL��qrKORHeeju HAN�!�p7qESPCristina CABANA PEREZ��o1pPOLAgata OZDOBA-BLACH��n#oEORMuna Dahouk��m)nROCDaria DAVYDOVA��l/mUZBFarangiz KHOJIEVA��k)lSRBAnja OBRADOVIC��j)kSLOTina TRSTENJAK��i)jMGLGankhaich BOLD�   �- ����tM����pP(����yX8�����jK3�����]?$
�
�
�
�
l
P
1
	�	�	�	�	z	]	A	#	����qX;$����}b@#����|dE+����nI+����sX<"����eE*����x[@%����^D-                                     �jkKAZIgor SON��i#jITADavide RUIU�'�hCiPERMarcos Antonio ROJAS CONCHA��g)hJPNYoichi ITOKAZU��f1gPOLSlawomir NAPLOSZEK�!�e7fMASKhairul Anuar MOHAMAD��deINDAtanu DAS� �c5dHUNMatyas Laszlo BALOGH��b%cMAWAreneo DAVID��a%bKAZDenis GANKIN��`)aTUNMohamed HAMMED��_)`GBRPatrick HUSTON��^)_BANMd Ruman SHANA��]'^SLOZiga RAVNIKAR� �\5]COLDaniel Felipe PINEDA��[#\CHNDapeng WANG��Z-[ISVNicholas D'AMOUR��Y)ZTPEChih-Chun TANG�X/YJPNTakaharu FURUKAWA��W#XUSAJacob WUKIE��V!WAUSRyan TYACK��U'VGERFlorian UNRUH��T!UTURMete GAZOZ��S)TKAZIlfat ABDULLIN��R#SJPNYuki KAWATA��Q+RBRAMarcus DALMEIDA��P#QJPNHiroki MUTO��O'PINDTarundeep RAI��N%OAUSDavid BARNES��M)NCHIAndres AGUILAR��L1MROCGalsan BAZARZHAPOV��K'LINDPravin JADHAV��J/KNEDSjef VAN DEN BERG��I+JINARiau EGA AGATHA��H/IINAArif DWI PANGESTU��G+HFRAThomas CHIRAULT�"�F9GFRAJean-Charles VALLADONT��E'FTPEYu-Cheng DENG��D'ETPEChun-Heng WEI��C)DGBRJames WOODGATE�%�B?CIRIMilad VAZIRI TEYMOORLOOEI�"�A9BMGLOtgonbold BAATARKHUYAG��@%ACHNShaoxuan WEI��?'@EGYYoussof TOLBA�>-?KAZSanzhar MUSSAYEV��=>CHNJialun LI��<'=USABrady ELLISON��;'<USAJack WILLIAMS��:';LUXJeff HENCKELS��9%:MEXLuis ALVAREZ��8'9ESPDaniel CASTRO��7'8ITAMauro NESPOLI��6)7FINAntti VIKSTROM��536VIEHoang Phi Vu NGUYEN��4%5NEDSteve WIJLER��34MDADan OLARU��2#3ISRItay SHANNY��1#2KORJe Deok KIM��0)1UKROleksii HUNBIN��/'0FRAPierre PLIHON��.3/INAAlviyanto PRASTYADI��-.GBRTom HALL��,)-CANCrispin DUENAS��+!,KORWoojin KIM��*)+BELJarno DE SMEDT��)%*AUSTaylor WORTH��(')NEDGijs BROEKSMA��''(JPNMiki NAKAMURA��&1'BLRKaryna KAZLOUSKAYA��%1&UKRVeronika MARCHENKO��$+%MDAAlexandra MIRCA��#'$ROCElena OSIPOVA��")#JPNAzusa YAMAUCHI�"�!9"MGLUrantungalag BISHINDEE�� /!UKRAnastasia PAVLOVA��# KORMinhee JANG��'GBRNaomi FOLKARD��)USACasey KAUFHOLD��-SVKDenisa BARANKOVA��-GERMichelle KROPPEN��'ROCKsenia PEROVA��3BLRKaryna DZIOMINSKAYA��)INDDeepika KUMARI��%ESTReena PARNAT��'BANDiya SIDDIQUE��3INADiananda CHOIRUNISA��/CANStephanie BARRETT��%AUSAlice INGLEY��+CHAMarlyse HOURTOU�!�7POLSylwia Maria ZYZANSKA��)TURYasemin ANAGOZ��!DENMaja JAGER��'ITALucilla BOARI��-ITATatiana ANDREOLI��#TPEChia-En LIN�$�=MEXAna Pavla VAZQUEZ FLORES��
EGYAmal ADAM��	-
GERCharline SCHWARZ��3	SWEChristine BJERENDAL��'GBRBryony PITMAN��+ESPInes DE VELASCO��KORSan AN��1MEXAlejandra VALENCIA� �5ROUMadalina AMAISTROAIE��!MEXAida ROMAN��/VIENguyet DO THI ANH�� 1UKRLidiia SICHENIKOVA��' TPEChien-Ying LE��~-�GREEvangelia PSARRA��}/�ROCSvetlana GOMBOEVA��|%�JPNRen HAYAKAWA��{'�TUNRihab ELWALID��z)�BLRHanna MARUSAVA�%�y?�USAJennifer MUCINO-FERNANDEZ��x/�ITAChiara REBAGLIATI��w'�FRALisa BARBELIN��v+�USAMackenzie BROWN��u)�BRAMarina CANETTA��t'�CHNXiaoqing LONG��s1�MASSyaqiera MASHAYIKH��r#�BHUKarma KARMA�,�qM�ECUAdriana ESPINOSA DE LOS MONTEROS�$�p=�COLValentina ACOSTA GIRALDO��o+�CZEMarie HORACKOVA��n%�CHNXiaolei YANG��m-�NEDGabriela BAYARDO��l�CHNJiaxin WU��k'�GBRSarah BETTLES�   s ���uI-�����aD*����dF.����t[*����jI
�
�
�
�
r
N
4
	�	�	�	�	]	;		����d5���lE����nR3����~]@���|]6���uW.���mQ6����kM2                                !�]7�INARahmat Erwin ABDULLAH��\%�ALBBriken CALJA��[+�MARAbderrahim MOUM��Z+�CANMaude G CHARRON�$�Y=�NCASema Nancy LUDRICK RIVAS��X'�TPEWen-Huei CHEN�!�W7�MLTYasmin ZAMMIT STEVENS�(�VE�ECUAngie Paola PALACIOS DAJOMES��U%�TURNuray LEVENT��T%�GBRSarah DAVIES��S'�AUSKiana ELLIOTT��R+�PHIElreen Ann ANDO� �Q5�GERLisa Marie SCHWEIZER�1�PW�CUBMarina de la Caridad RODRIGUEZ MITJAN��O/�ITAGiorgia BORDIGNON�)�NG�COLMercedes Isabel PEREZ TIGRERO�&�MA�AUSErika Yuriko Iris YAMASAKI��L+�VIEThi Duyen HOANG�,�KM�VENYusleidy Mariana FIGUEROA ROLDAN��J)�TPEHsing-Chun KUO��I)�TKMPolina GURYEVA�!�H7�ITAMaria Grazia ALEMANNO��G�GBRZoe SMITH��F'�CANTali DARSIGNY�$�E=�FRADora Meiriama TCHAKOUNTE��D-�ARMIzabella YAYLYAN��C%�JPNMikiko ANDOH��B+�GERSabine KUSTERER�,�AM�ECUMaria Alexandra ESCOBAR GUERRERO��@/�NZLDavid Andrew LITI��?#�IRIAli DAVOUDI��>3�USACaine Morgan WILKES��=)�TPEYun-Ting HSIEH��<1�AUTSargis MARTIROSJAN�"�;9�TKMHojamuhammet TOYCHYYEV��:�SYRMan ASAAD��9/�NEDEnzo Kofi KUWORGE�8)�ISRDavid LITVINOV�!�77�ESPMarcos RUIZ I VELASCO��6!�HUNPeter NAGY��5-�GEOLasha TALAKHADZE��4'�KORYeounhee KANG��3/�USAMartha Ann ROGERS��21�NZLKanah ANDREWS-NAHU�1#�CHNZhouyu WANG� �05�ESPLidia VALENTIN PEREZ�+�/K�DOMCismery Dominga SANTANA PEGUERO�*�.I�CMRClementine MEUKEUGNI NOUMBISSI�$�-=�MGLAnkhtsetseg MUNKHJANTSAN�'�,C�ECUTamara Yajaira SALAZAR ARCE�&�+A�BRAJaqueline ANTONIA FERREIRA��*%�MDAElena CILCIC�*�)I�FRAGaelle Verlaine NAYO KETCHANKE�+�(K�VENNaryury Alexandra PEREZ REVERON�,�'M�TGAKuinini Juanita Mechteld MANUMUA��&-�DOMVeronica SALADIN��%'�AUTSarah FISCHER�%�$?�CUBEyurkenia DUVERGER PILETA��#�CHNWenwen LI�!�"7�AUSCharisma AMOE-TARRANT��!%�USASarah ROBLES�� )�NZLLaurel HUBBARD��3�GBREmily Jade CAMPBELL�/�S�BELAnna Marie-Julienne A VANBELLINGHEN�"�9�MGLBilegsaikhan ERDENEBAT��#�KORSeon Mi LEE��#�INANurul AKMAL�$�=�GUAScarleth UCELO MARROQUIN�"�9�DOMZacarias BONNAT MICHEL��#�CHNXiaojun LYU�!�7�USAHarrison James MAURUS��-�LATRitvars SUHAREVS��'�TUNRamzi BAHLOUL��)�ALBErkand QERIMAJ�/�S�COLBrayan Santiago RODALLEGAS CARVAJAL��/�NZLCameron MCTAGGART�*�I�OMAAmur Salim Ramadhan AL-KANJARI��1�ITAAntonino PIZZOLATO�%�?�ESPAndres Eduardo MATA PEREZ��%�GERNico MUELLER��'�KORMyeongmok HAN�'�C�COLLuis Javier MOSQUERA LOZANO��)�KIRRuben KATOATAU��
#�PAKTalha TALIB�.�	Q�MADTojonirina Alain ANDRIANTSITOHAINA��!�CHNLijun CHEN��-�JPNMitsunori KONNAI��)�GEOGoga CHKHEIDZE�+�K�MEXJonathan Antonio MUNOZ MARTINEZ���INA. DENI��#�ITAMirko ZANNI��1�UZBAdkhamjon ERGASHEV���SOLMary LIFU�� +�TUNNouha LANDOULSI�%�?�MEXAna Gabriela LOPEZ FERRER�"�~9CANRachel LEBLANC-BAZINET��}-~POLJoanna LOCHOWSKA��|-}TPENien-Hsin CHIANG��{!|JPNKanae YAGI��z3{TKMKristina SHERMETOVA��y#zCHNQiuyun LIAO��x)yUKRKamila KONOTOP��w1xKAZZulfiya CHINSHANLO��v%wPHIHidilyn DIAZ��uvKOREunji HAM��t+uUZBMuattar NABIEVA��stCHNFabin LI�'�rCsKSASeraj Abdulrahim M ALSALEEM��q!rPNGMorea BARU��p'qTPEChan-Hung KAO�)�oGpMADEric Herman ANDRIANTSITOHAINA�%�n?oDOMLuis Alberto GARCIA BRITO��m/nGEOShota MISHVELIDZE��l+mINAEko Yuli IRAWAN�"�k9lGERSimon Josef BRANDHUBER�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        �����������������������������������������������������������������������������������������������~~}}|IHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}|{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJI}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     y � ����d<����hO(���yS"����jL#���~\)
�
�
�
y
L
(
	�	�	�	n	O	/	�����eI%����fI'����~eF)����tW<!����kO-����y\C*����jG-�����jQ7 �    �V+WFRAChristopher SIX��U%VROCAndrey MITIN��T#UAUSKevin MCNAB��S!TUSADoug PAYNE��RSAUTLea SIEGL��Q-RJPNToshiyuki TANAKA��P)QNZLJesse CAMPBELL��O%PBRAMarcelo TOSI��N)OSWELouise ROMEIKE��M%NDENPeter FLARUP��L'MPURLauren BILLYS��K#LUSABoyd MARTIN� �J5KTHAWeerapat PITAKANONDA��I'JJPNKazuma TOMOTO�#�H;IRSAVictoria SCOTT-LEGENDRE��G/HITAVittoria PANIZZON��F'GCHNAlex HUA TIAN��E+FSWETherese VIKLUND�!�D7ETHAArinadtha CHAVATANONT��C!DIRLSam WATSON��B!CSUIFelix VOGG��A)BITAArianna SCHIVO��@-AROCMikhail NASTENKO��?3@POLMalgorzata CYBULSKA�"�>9?AUTKatrin KHODDAM-HAZRATI��='>JPNYoshiaki OIWA��<!=AUSShane ROSE��;!<AUSAndrew HOY��:3;CZEMiloslav PRIHODA JR��9':POLJoanna PAWLAK�%�8?9ESPFrancisco GAVINO GONZALEZ��7#8IRLSarah ENNIS��6+7IRLAustin O'CONNOR��5-6FRANicolas TOUZAINT��4!5NEDMerel BLOM��3+4GERJulia KRAJEWSKI��2%3CHNYingfeng BAO��1%2GERMichael JUNG��0)1FRAKarim LAGHOUAG��/#0SUIRobin GODEL��.#/CHNHuadong SUN��-1.SWELudwig SVENNERSTAL��,'-NZLJonelle PRICE��+3,HKGThomas Heffernan HO��*3+NEDJanneke BOONZAAIJER��))*GBROliver TOWNEND��(-)THAKorntawat SAMRAN��'!(GBRTom MCEWEN��&%'BRACarlos PARRO��%%&INDFouaad MIRZA��$+%CZEMiroslav TRUNDA��#+$CANJessica PHOENIX��"'#AUSStuart TINNEY��!%"BRAMarcio APPEL�� 3!SUIEveline BODENMULLER��) IRLCathal DANIELS��)FRAThomas CARLILE�"�9SWESara ALGOTSSON OSTHOLT��1BLRAliaksandr FAMINOU��)JPNRyuzo KITAJIMA��%POLPawel SPISAK�!�;BULHristo Dimitrov HRISTOV!�7AUSMatthew Ryan LYDEMENT��'UZBAkbar DJURAEV��%ROCTimur NANIEV��#TKMOvez OVEZOV��1USAWesley Brian KITTS��%KORYunseong JIN��3POLArkadiusz MICHALSKI��)LTUArnas SIDISKIS��#TUNAymen BACHA��/ARMSimon MARTIROSYAN��-LATArturs PLESNIEKS�(�EASATanumafili Malietoa JUNGBLUT�'�CCMRJeanne Gaelle EYENGA MBOOSI��+CANKristel NGARLEM�!�
7GBREmily Victoria GODLEY� �	5
MEXAremi FUENTES ZAVALA�!�7	LBNMahassen Hala FATTOUH�*�IECUNeisi Patricia DAJOMES BARRERA��'BLRDarya NAUMAVA�#�;USAKatherine Elizabeth NYE�&�ASWEPatricia Caroline STRENIUS��3NRUNancy Genzel ABOUKE� �9UZBKumushkhon FAYZULLAEVA0�UVENKeydomar Giovanni VALLENILLA SANCHEZ�� 3PLEMohammed K H HAMADA�$�= POLBartlomiej Stefan ADAMUS� �~5�CANBoady Robert SANTAVY� �}5�KGZBekdoolot RASULBEKOV��|/�CUBOlfides SAEZ VERA��{�KORDongju YU�&�zA�QATFares Ibrahim E. H. ELBAKH��y+�GHAChristian AMOAH��x#�TPEPo-Jen CHEN��w3�GRETheodoros IAKOVIDIS��v)�GEOAnton PLIESNOI� �u5�EORCyrille Tchatchet II��t'�TPEWan-Ling FANG��s/�MRIRoilya RANAIVOSOA�.�rQ�DOMBeatriz Elizabeth PIRON CANDELARIO�#�q;�ROCKristina Ivanovna SOBOL��p%�FRAAnais MICHEL�)�oG�CUBLudia Marguiela MONTERO RAMOS��n3�INAWindy Cantika AISAH�'�mC�INDChanu Saikhom MIRABAI CHANU��l'�PNGLoa Dika TOUA�$�k=�BRANathasha ROSA FIGUEIREDO��j!�CHNZhihui HOU��i%�BELNina STERCKX�%�h?�VENJulio Ruben MAYORA PERNIA��g/�JPNMasanori MIYAMOTO��f)�TUNKarem BEN HNIA�'�eC�MEXJorge Adan CARDENAS ESTRADA�'�dC�KSAMahmoud Mohammed S ALHUMAYD�%�c?�BULBozhidar Dimitrov ANDREEV��b3�ESPDavid SANCHEZ LOPEZ��a!�MDAMarin ROBU�!�`7�AUSBrandon Dean WAKELING��_#�CHNZhiyong SHI� �^5�USAClarence CUMMINGS JR�   { ���~bE'����^B"�����nP2�����dH/����tX>
�
�
�
�
d
F
*
	�	�	�	z	T	8	����vW2
����lK/����pM,����qT9 ����bD&
����oP7����mI)	����qT8                         �Q1�MARAbdelkebir OUADDAR��P'�AUSJamie KERMOND��O)�CZEKamil PAPOUSEK��N-�MEXPatricio PASQUEL��M+�MAREl Ghali BOUKAA��L)�GERMaurice TEBBEL��K)�ISRAlberto MICHAN��J1�FRAPenelope LEPREVOST��I/�ARGMatias ALBARRACIN��H/�ITAEmanuele GAUDIANO�!�G7�AUSEdwina TOPS-ALEXANDER��F%�CHISamuel PAROT�#�E;�MEXManuel GONZALEZ DUFRANE��D/�SRIMathilda KARLSSON��C%�CZEAles OPATRNY��B#�GBRHolly SMITH��A%�CHNZhenqiang LI��@!�EGYAbdel SAID��?!�CHNYaofeng LI��>-�MEXEnrique GONZALEZ��=#�USALaura KRAUT�!�<7�JORIbrahim HANI BISHARAT�!�;7�ESPEduardo ALVAREZ AZNAR��:%�NEDWillem GREVE��9+�CZEAnna KELLNEROVA��8'�SUISteve GUERDAT��7+�USAKent FARRINGTON��6+�NEDHarrie SMOLDERS��5/�NZLTom TARVER-PRIEBE��4)�EGYMohamed TALAAT��3)�SUIBryan BALSIGER��23�COLRoberto TERAN TAFUR��13�MEXEugenio GARZA PEREZ��0)�BRARodrigo PESSOA��/'�DENAndreas SCHOU��.%�AUSKatie LAURIE��-)�FRASimon DELESTRE��,+�GERChristian KUKUK��+1�ARGJose Maria LAROCCA��*%�CZEOndrej ZVARA��)#�MARSamy COLMAN��(/�CANChris VON MARTELS�$�'=�ESPJose Antonio GARCIA MENA��&1�PORJoao Miguel TORRAO� �%5�AUTVictoria MAX-THEURER�$�$=�CANBrittany FRASER-BEAULIEU��#)�SWEJuliette RAMEL��"#�GBRCarl HESTER��!/�SUIEstelle WETTSTEIN�� )�ITAFrancesco ZAZA�!�7�DOMYvonne LOSOS DE MUNIZ��'�SWEAntonia RAMEL��1�GBRCharlotte DUJARDIN��#�JPNKazuki SADO��)�ESTDina ELLERMANN��'�GBRCharlotte FRY� �5�ROCAleksandra MAKSAKOVA�%�?�ESPSevero Jesus JURADO LOPEZ�%�?�BRAJoao Victor MARCARI OLIVA�"�9�DENNanna Skodborg MERRALD��-�UKRInna LOGUTENKOVA��)�PORRodrigo TORRES��/�SWETherese NILSHAGEN�%�?�GERJessica VON BREDOW-WERNDL��+�BELLarissa PAULUIS��1�AUTChristian SCHUMACH��+�CANLindsay KELLOCK��'�PORMaria CAETANO�#�;�LUXNicolas WAGNER EHLINGER��+�DENCathrine DUFOUR��/�ROCTatyana KOSTERINA�!�
7�NEDHans Peter MINDERHOUD�.�	Q�MEXMartha Fernanda DEL VALLE QUIRARTE��)�IRLHeike HOLSTEIN��'�USAAdrienne LYLE��+�BELDomien MICHIELS��)�AUTFlorian BACHER��)�ESPBeatriz FERRER��-�FRAAlexandre AYACHE��/�JPNHiroyuki KITAHARA�!�7�SGPPei Jia Caroline CHEW�� )�JPNShingo HAYASHI��/�USASabine SCHUT-KERY��~#AUSKelly LAYNE��}'~BELLaurence ROOS��|3}DENCarina Cassoe KRUTH��{-|ROCInessa MERKULOVA�#�z;{FRAMorgan BARBANCON MESTRE��y+zMARYessin RAHMOUNI��x!yAUSMary HANNA��w)xUSASteffen PETERS��v!wNEDEdward GAL��u'vGERIsabell WERTH��t)uFRAMaxime COLLARD��s1tNEDMarlies VAN BAALEN��r%sFINHenri RUOSTE��q1rGERDorothee SCHNEIDER��p)qCHIVirginia YARUR��o'pAUSSimone PEARCE��n%oKORDongseon KIM��m+nNEDDinja VAN LIERE��l+mBELAlexa FAIRCHILD��k'lGBRGareth HUGHES��j/kJPNMasanao TAKAHASHI��i'jSWEPatrik KITTEL��h+iROCMaria SHUVALOVA��g%hPORCarlos PINTO� �f5gGERHelen LANGEHANENBERG��e/fDENCharlotte HEERING��d'eRSATanya SEYMOUR�!�c7dESPClaudio CASTILLA RUIZ�#�b;cCANNaima MOREIRA LALIBERTE�$�a=bECUNicolas Lionel WETTSTEIN��`'aGBRLaura COLLETT��_/`BLRAlexandre ZELENKO��^'_CANColleen LOACH��]+^GERSandra AUFFARTH��\)]USAPhillip DUTTON��['\SUIMelody JOHNER�%�Z?[BELLara DE LIEDERKERKE-MEIER�!�Y7ZBRARafael MAMPRIN LOSANO��X+YITASusanna BORDONE��WXNZLTim PRICE�   �  ����\@%	����tZ@�����yT:�����jK0����~^E*
�
�
�
�
{
[
?

	�	�	�	�	t	U	;	#	����kQ6 ����mP7����vT5�����lT8����y^B&����{Y3����}`B(����wZ@                     �S/TCANGabriela STAFFORD��R#SESPMarta PEREZ��Q)RCZEKristiina MAKI��P)QUSACory Ann MCGEE��O'PJPNNozomi TANAKA��N#OAUSLinden HALL��M%NNEDSifan HASSAN��L+MUGAWinnie NANYONDO�"�K9LETHFreweyni GEBREEZIBEHER��J#KGBRKate FRENCH��I+JKAZElena POTAPENKO��H)IHUNSarolta KOVACS��G-HUSASammy ACHTERBERG��F!GKORSunwoo KIM��E+FECUMarcela CUASPUD�%�DCEBRAMaria Ieda CHAVES GUIMARAES�C'DIRLNatalya COYLE��B+CHUNMichelle GULYAS#�A;BMEXMariana ARCEO GUTIERREZ��@3AROCGulnaz GUBAYDULLINA��?%@MEXMayan OLIVER��>-?ROCUliana BATASHOVA��=)>AUSMarina CARRIER��<%=FRAMarie OTEIZA��;#<EGYHaydy MORSY��:-;POLAnna MALISZEWSKA��9':GERAnnika SCHLEU��8'9CHNXiaonan ZHANG��7%8CHNMingyu ZHANG��637UZBAlise FAKHRUTDINOVA��5#6GBRJoanna MUIR�!�475LTUGintare VENCKAUSKAITE��3/4CUBLeidis Laura MOYA��273BLRAnastasiya PROKOPENKO�1)2FRAElodie CLOUVEL��0'1ITAElena MICHELI��/0KORSehee KIM��.%/EGYAmira KANDIL��-%.ITAAlice SOTERO��,'-BLRVolha SILKINA��+',TURIlke OZYUKSEL��*1+LTULaura ASADAUSKAITE��)%*JPNRena SHIMAZU��(-)JPNNatsumi TOMONAGA��'-(GERRebecca LANGREHR��&3'ESPAleix HEREDIA VIVES��%'&ARGPamela ZAPATA��$+%AUTGustav GUSTENAU��#$CZEJan KUF��"1#UKRPavlo TYMOSHCHENKO��!#"HUNAdam MAROSI�� !AUSEd FERNON��+ MEXDuilio CARRILLO��!CHNShuhuan LI��)JPNShohei IWAMOTO��/ROCAleksandr LIFANOV��)CHIEsteban BUSTOS��#GBRJames COOKE��/LTUJustinas KINDERIS��'GERFabian LIEBIG��+FRAValentin PRADES�'EGYAhmed ELGENDY�%CZEMartin VLACH��#CUBLester DERS��+FRAValentin BELAUD��/GUACharles FERNANDEZ��'GERPatrick DOGUE��'BLRIlya PALAZKOV�#�;MEXAlvaro SANDOVAL AGUILAR��'GBRJoseph CHOONG��CHNShuai LUO��#EGYAhmed HAMED��-POLLukasz GUTKOWSKI��
-KAZPavel ILYASHENKO��	%
KORWoongtae JUN��-	UZBAlexander SAVKIN��)LATPavels SVECOVS��%HUNRobert KASZA��#KORJinhwa JUNG��/POLSebastian STASIAK��'USAAmro ELGEZIRY��/JPNDaisuke FUKUSHIMA��)NORGeir GULLIKSEN�� 'IRLCian O'CONNOR��% EGYMouda ZEYADA� �~5�SWEHenrik VON ECKERMANN��}!�JPNEiken SATO��|-�BELNiels BRUYNSEELS��{%�EGYNayel NASSAR��z!�JPNKoki SAITO��y/�CANMario DESLAURIERS�"�x9�SWEMalin BARYARD-JOHNSSON��w'�IRLBertram ALLEN��v�GBRBen MAHER��u%�NZLDaniel MEECH��t'�GBRHarry CHARLES��s3�BRAYuri MANSUR GUERIOS��r%�BELJerome GUERY��q-�BELGregory WATHELET��p#�ISRAshlee BOND��o-�FRANicolas DELMOTTE��n-�SWEPeder FREDRICSON��m)�NEDMarc HOUTZAGER��l)�GERDaniel DEUSSER��k'�IRLDarragh KENNY��j3�LATKristaps NERETNIEKS��i#�GBRScott BRASH�"�h9�NEDMaikel VAN DER VLEUTEN��g%�SUIMartin FUCHS��f'�PORLuciana DINIZ��e#�SUIBeat MANDLI��d�CHNYou ZHANG��c%�BRAPedro VENISS��b3�USAJessica SPRINGSTEEN��a1�SYRAhmad Saber HAMCHO��`#�NZLUma O'NEILL��_#�ISRTeddy VLOCK��^%�NZLBruce GOODIN��]'�CHNXingjia ZHANG��\#�USAMcLain WARD�%�[?�BRALuiz Francisco DE AZEVEDO��Z'�MARAli AL AHRACH��Y'�ARGMartin DOPAZO��X%�GERAndre THIEME��W'�TPEShao-Man CHEN�#�V;�BRAMarlon MODOLO ZANOTELLI��U-�UKROleksandr PRODAN��T)�FRAMathieu BILLOT�"�S9�DOMHector FLORENTINO ROCA��R)�ARGFabian SEJANES�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}    ���{`E%�����]D$����zV8�����_? ����jO6
�
�
�
�
�
f
I
,
	�	�	�	�	}	c	G		 ����kK&����iN(����sP7 ����sW>����yZ?$���{Y8�����aG%	����sW4        #�R;�ITAEyob GHEBREHIWET FANIEL� �Q5�NORSondre Nordstad MOEN��P'�BRNShumi DECHASA��O%�ISRHaimro ALAME��N!�USAGalen RUPP��M'�ETHLelisa DESISA� �L5�GBRChristopher THOMPSON� �K5�ERIYohanes GHEBREGERGIS��J'�DENThijs NIJHUIS��I3�BRNEl Hassan ELABBASSI��H#�ISRMaru TEFERI�"�G9�UKRBohdan-Ivan HORODYSKYY��F)�RSAStephen MOKOKA��E+�USAAbdi ABDIRAHMAN��D)�NZLZane ROBERTSON��C'�ESTTiidrek NURME��B1�FRASidi-Hassan CHAHDI��A)�NEDBart VAN NUNEN��@1�HONIvan ZARCO ALVAREZ��?3�BRAPaulo Roberto PAULA�!�>7�NAMTomas Hilifa RAINHOLD�)�=G�BRADaniel FERREIRA DO NASCIMENTO��<#�USAJacob RILEY� �;5�MEXJesus Arturo ESPARZA��:'�ARGEulalio MUNOZ��9%�ESPDaniel MATEO��8%�NEDAbdi NAGEEYE��7-�KENLawrence CHERONO� �65�UKROleksandr SITKOVSKIY��5/�BDIOlivier IRABARUTA��4)�FRAMorhad AMDOUNI��3+�FRANicolas NAVARRO�"�29�MARMohamed Reda EL AARABY��13�TANGabriel Gerald GEAY��0!�GBRBen CONNOR��/'�ESPJavier GUERRA��.%�KORJungsub SHIM��-%�KENAmos KIPRUTO��,)�KENEliud KIPCHOGE��+3�ITAYassine EL FATHAOUI��*�KORJoohan OH��)'�GERAmanal PETROS��(%�JPNYuma HATTORI��'!�BELKoen NAERT� �&5�TANAlphonce Felix SIMBU��%#�ESTRoman FOSTI�!�$7�LESKhoarahlane SEUTLOALI��#/�MAROthmane EL GOUMRI��"%�ARGJoaquin ARBE��!-�MGLSer-Od BAT-OCHIR�� )�ITAYassine RACHIK�#�;�MGLByambajav TSEVEENRAVDAN��%�JPNSuguru OSAKO��)�JPNShogo NAKAMURA��-�UGAFilex CHEMONGESI�!�7�EORTachlowini Gabriyesos��)�AUSBrett ROBINSON��/�ITANadia BATTOCLETTI��/�USAKarissa SCHWEIZER�"�9�KENLilian Kasait RENGERUK��/�KENAgnes Jebet TIROP� �5�KENHellen Onsando OBIRI��%�USAElise CRANNY��)�ETHSenbere TEFERI��%�ETHGudaf TSEGAY��-�CANAndrea SECCAFIEN��-�ISRSelamawit TEFERI�%�?�NORKaroline Bjerkeli GROVDAL��'�ETHEjgayehu TAYE��#�TURYasemin CAN��+�JPNRirika HIRONAKA��+�GERMalaika MIHAMBO��
+�AUSBrooke STRATTON��	#�UKRMaryna BEKH��+�GBRAbigail IROZURU��)�GBRJazmin SAWYERS��)�IVBChantel MALONE��)�SRBIvana SPANOVIC��)�USABrittney REESE��!�USATara DAVIS��'�SWEKhaddi SAGNIA��%�TTOTyra GITTENS�� �NGREse BRUME���ITAZane WEIR��~#BIHMesud PEZER��}!~USAJoe KOVACS��|!}NZLJacko GILL��{%|USARyan CROUSER��z1{EGYMostafa Amr HASSAN��y-zSRBArmin SINANCEVIC��x'yBRADarlan ROMANI�!�w7xNGRChukwuebuka ENEKWECHI��v'wRSAKyle BLIGNAUT��u#vNZLTomas WALSH��t-uUSAPayton OTTERDAHL��s/tAUSGenevieve GREGSON��r3sBRNWinfred Mutile YAVI��q/rCANGenevieve LALONDE��p1qKENBeatrice CHEPKOECH��o'pSLOMarusa MISMAS��n'oETHMekides ABEBE��m/nUSACourtney FRERICHS��l+mUGAPeruth CHEMUTAI��k+lESPCarolina ROBLES�!�j7kGERGesa Felicitas KRAUSE��i-jUSAValerie CONSTIEN��h)iGBRElizabeth BIRD��g#hUSAEmma COBURN��f/gETHZerfe WONDEMAGEGN��e%fKENHyvin KIYENG��d!eALBLuiza GEGA��c/dPORPedro P. PICHARDO��b!cCHNYaming ZHU� �a5bBURFabrice ZANGO HUGUES��`+aITAEmanuel IHEMEJE��_-`CUBCristian NAPOLES��^%_ALGYasser TRIKI��]'^FRAMelvin RAFFIN��\]TURNecati ER��[!\USAWill CLAYE��Z/[ITAAndrea DALLAVALLE��Y%ZUSADonald SCOTT��X%YCHNYaoqing FANG��W!XGBRLaura MUIR��V%WAUSJessica HULL�%�U?VUSAElinor PURRIER ST. PIERRE�&�TAUKENFaith Chepngetich KIPYEGON�   �( ���{aC!�����bG,����~_D*����pV4�����mO.
�
�
�
�
�
f
J
1
	�	�	�	�	z	[	B	#	����x^8����~`C%	����lP5����nM2�����eF"����mR;�����gH.�����cB(                              �S#TMEXIsaac PALMA��R1SECUClaudio VILLANUEVA��Q)RAUSRhydian COWLEY��P1QCOLJorge Armando RUIZ��O)PGUAErick BARRONDO��N'OUKRIvan BANZERUK��M!NSVKMatej TOTH��L+MROUMarius COCIORAN��K)LJPNHayato KATSUKI��J#KNZLQuentin REW��I-JLTUArtur MASTIANICA��H#ICANEvan DUNFEE��G1HGUALuis Angel SANCHEZ��F'GITAMarco DE LUCA��E'FECUAndres CHOCHO��D+ENORHavard HAUKENES��C1DITATeodorico CAPORASO��B3CFINVeli-Matti PARTANEN��ABCHNQin WANG��@%AFINAleksi OJALA��?+@FINJarkko KINNUNEN��>)?INDGurpreet SINGH��=!>CZEVit HLAVAC��<#=PORJoao VIEIRA�#�;;<GUABernardo Uriel BARRONDO��:1;ESPJesus Angel GARCIA�!�97:COLJose Leonardo MONTANA��8-9LATArnis RUMBENIEKS��7%8RSAMarc MUNDELL�(�6E7ECUJhonatan Javier AMORES CARUA��5%6POLDawid TOMALA��4'5IRLBrendan BOYCE��3'4JPNSatoshi MARUO��2#3CZELukas GDULA��1#2IRLAlex WRIGHT��0%1MEXHoracio NAVA��/10BLRAliaksei KATKAVETS��.+/GERJohannes VETTER��-+.BLRPavel MIALESHKA��,+-FINLassi ETELATALO��+),CZEJakub VADLEJCH��*++MDAAndrian MARDARE��)'*INDNeeraj CHOPRA��()SWEKim AMB��'%(GERJulian WEBER��&''PAKArshad NADEEM��%-&CZEVitezslav VESELY�#�$;%ROUAlexandru Mihaita NOVAC��##$JAMTajay GAYLE��"3#GREMiltiadis TENTOGLOU��!'"GERFabian HEINLE�� '!JPNYuki HASHIOKA��+ ESPEusebio CACERES��)FINKristian PULLI��+SWEThobias MONTLER��%CUBMaykel MASSO��+CHNChangzhou HUANG�"�9CUBJuan Miguel ECHEVARRIA��/USAJuvaughn HARRISON��-ITAFilippo RANDAZZO��)USAGrant HOLLOWAY�#�;FRAPascal MARTINOT-LAGARDE��#USADevon ALLEN��-JAMHansle PARCHMENT��#JAMRonald LEVY��#FRAAurel MANGA��%GBRAndrew POZZI��)ESPAsier MARTINEZ��/LTULiveta JASIUNAITE��-POLMaria ANDREJCZYK��!CHNHuihui LYU��-GERChristin HUSSONG��-AUSMackenzie LITTLE��
#CHNShiying LIU��	1
AUSKelsey-Lee ROBERTS��-	AUSKathryn MITCHELL��-JPNHaruka KITAGUCHI��-LATMadara PALAMEIKA��!TUREda TUGSUZ��'USAMaggie MALONE��%POLAdam NOWICKI��'NZLMalcolm HICKS��%CHNGuojian DONG�� )CANCameron LEVINS��) RSAPheeha MOKGOBO��~-�GERHendrik PFEIFFER��})�UKRMykola NYZHNYK��|1�ERIOqbe Kibrom RUESOM��{+�AUTLemawork KETEMA��z%�CANBen PREISNER��y+�RWAJohn HAKIZIMANA��x#�ETHSisay LEMMA��w+�CANTrevor HOFBAUER��v+�DENAbdi Hakin ULAD��u%�PARDerlys AYALA��t)�GERRichard RINGER��s3�TURPolat Kemboi ARIKAN��r#�MARHamza SAHLI��q%�MEXJuan PACHECO��p%�BRNAlemu BEKELE�#�o;�MEXJose Luis SANTANA MARIN��n)�BELDieter KERSTEN�#�m;�COLJeison Alexander SUAREZ��l%�AUTPeter HERZOG��k#�UGAFred MUSOBO��j%�ETHShura KITATA��i-�IRLStephen SCULLION��h'�IRLKevin SEAWARD��g%�CHNJianhua PENG��f)�GBRCallum HAWKINS��e-�POLMarcin CHABOWSKI��d%�RSAElroy GELANT��c/�PERCristhian PACHECO��b%�CHNShaohui YANG��a%�TURYavuz AGRALI��`+�SUITadesse ABRAHAM��_%�ISRGirmaw AMARE��^%�ERIGoitom KIFLE��]#�AUSJack RAYNER��\)�ESPAyad LAMDASSEM��[!�AUSLiam ADAMS��Z%�IRLPaul POLLOCK��Y3�COLIvan Dario GONZALEZ��X+�NEDKhalid CHOUKOUD��W#�BELBashir ABDI��V+�BRADaniel DA SILVA�#�U;�POLArkadiusz GARDZIELEWSKI��T1�PANJorge CASTELBLANCO��S/�UGAStephen KIPROTICH�    ����kL+����{`;�����oV6�����mP*����}_@
�
�
�
�
�
j
N
.
	�	�	�	�	{	\	@	$����dE����~X;�����nO+
����}b7�����qP5�����eG,����mR3�����bF*           �R!�ESPElena LOYO��Q'�PERGladys TEJEDA��P'�KENBrigid KOSGEI�"�O9�ARGMarcela Cristina GOMEZ��N'�GBRJess PIASECKI��M%�AUSSinead DIVER��L'�POLAngelika MACH��K)�CROBojana BJELJAC��J)�MEXDaniela TORRES��I-�UKRDarya MYKHAYLOVA��H-�BELHanne VERBRUGGEN��G%�ISRMaor TIYOURI��F3�IRLFionnuala MCCORMACK��E#�BRNTejitu DABA��D/�SWECarolina WIKSTROM� �C5�UKRYevheniya PROKOFYEVA��B3�POLAleksandra LISOWSKA��A+�CZETereza HROCHOVA��@%�JPNMao ICHIYAMA��?+�TANFailuna MATANGA��>%�PORSara MOREIRA��=1�GERDeborah SCHONEBORN��<!�CHNZhixuan LI��;3�CROMatea PARLOV KOSTRO��:'�ETHZeineba YIMER��9-�MDALilia FISIKOWICI��8+�GBRStephanie TWELL��7%�CHNDeshun ZHANG��61�GERMelat Yisak KEJETA��5)�UGAJuliet CHEKWEL��4�KORSeulki AN��33�UGAImmaculate CHEMUTAI��2#�IRLAoife COOKE��1)�CANMalindi ELMORE��0%�ERINazret WELDU��/)�SUIMartina STRAHL�(�.E�USAAliphine Chepkerker TULIAMUK��-%�JPNAyuko SUZUKI��,#�ECURosa CHACHA��++�RSAIrvette VAN ZYL�*%�JPNHonami MAEDA��)'�KGZDarya MASLOVA��(/�POLKarolina NADOLSKA��'1�PORCarla Salome ROCHA�!�&7�CZEEva VRABCOVA NYVLTOVA��%-�CANDayna PIDHORESKY��$+�CZEMarcela JOGLOVA��##�ETHRoza DEREJE��")�BELMieke GORISSEN��!)�LESNeheng KHATALA�� '�KORKyungsun CHOI��3�AUSLisa Jane WEIGHTMAN��)�TURMeryem ERDOGAN��)�ETHBirhane DIBABA�#�;�MEXUrsula Patricia SANCHEZ��)�SOLSharon FIRISUA��+�GBRStephanie DAVIS� �5�ECUAndrea Paola BONILLA��1�KAZZhanna MAMAZHANOVA��3�UKRViktoriia KALIUZHNA�#�;�USASally Jepkosgei KIPYEGO��-�PORCatarina RIBEIRO��%�ESPLaura MENDEZ�"�9�ISRLonah Chemtai SALPETER��)�ESPMarta GALIMANY��)�MARRkia EL MOUKIM��'�AUSEllie PASHLEY�'�C�MEXAndrea Soraya RAMIREZ LIMON��'�ITAGiovanna EPIS��'�CANNatasha WODAK��-�NAMHelalia JOHANNES��/�SUIFabienne SCHLUMPF��
+�NEDAndrea DEELSTRA��	/�PERJovana DE LA CRUZ��3�GERKatharina STEINRUCK��+�BLRVolha MAZURONAK���CHNLi BAI��/�KENPeres JEPCHIRCHIR��'�FRASusan JEPTOOO��#�BLRNina SAVINA��%�GBRDaryll NEITA��)�SUIAjla DEL PONTE�� )�USATeahna DANIELS��/�SUIMujinga KAMBUNDJI�#�~;JAMShelly-Ann FRASER-PRYCE��}1~CIVMarie-Josee TA LOU��|-}JAMShericka JACKSON��{+|JAMElaine THOMPSON��z){JAMCandice MCLEOD��y/zDOMMarileidy PAULINO��x'yUSAQuanera HAYES��w'xUSAAllyson FELIX��v)wGBRJodie WILLIAMS��u%vCUBRoxana GOMEZ�#�t;uJAMStephenie Ann MCPHERSON��s)tBAHShaunae MILLER��r+sTTOJereem RICHARDS��q+rCANAndre DE GRASSE��p-qUSAKenneth BEDNAREK��o!pUSANoah LYLES��n'oJAMRasheed DWYER��m-nUSAErriyon KNIGHTON��l#mCANAaron BROWN��k/lLBRJoseph FAHNBULLEH��j!kCHNYadong LUO��i#jMEXJose LEYVER��hiESPMarc TUR��g-hHUNBence VENYERCSAN��f3gUKRMaryan ZAKALNYTSKYY��e+fHUNMate HELEBRANDT��d)ePOLRafal AUGUSTYN��c-dGERNathaniel SEILER�"�b9cGREAlexandros PAPAMICHAIL��a%bFRAYohann DINIZ��`+aBLRDzmitry DZIUBIN��_#`CHNTongda BIAN� �^5_ESPLuis Manuel CORCHETE��]%^COLDiego PINZON��\%]GERCarl DOHMANN��[-\UKRValeriy LITANIUK��Z1[LATRuslans SMOLONSKIS��Y-ZPOLArtur BRZOZOWSKI��X)YITAAndrea AGRUSTI��W-XCANMathieu BILODEAU��V-WGERJonathan HILBERT��U'VSVKMichal MORVAY��T+UJPNMasatora KAWANO�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        {zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIH

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  IHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ���������������������������������������������������������   � ���~aE*����oP*�����g?'����|a?"	����{dD'
�
�
�
�
y
_
C
'
	�	�	�	�	{	U	&	����lO3�����dD(����qW;����qZ8����oN/����z]<����xY7�����lJ.        �S+TUSAKendra HARRISON�R'SNEDNadine VISSER��Q3RUSAGabriele CUNNINGHAM��P%QUSADeanna PRICE��O!PUSAGwen BERRY��N+ONZLJulia RATCLIFFE��M!NCHNZheng WANG��L%MITASara FANTINI��K)LPOLMalwina KOPRON�%�J?KROUBianca Florentina GHELBER��I3JFRAAlexandra TAVERNIER��H-IPOLAnita WLODARCZYK��G+HPOLJoanna FIODOROW��F'GCANCamryn ROGERS��E+FUSABrooke ANDERSEN��DECHNHuiqin XU��C#DFINWilma MURTO��B)CUSAKatie NAGEOTTE��A)BUKRMaryna KYLYPKO��@1AROCAnzhelika SIDOROVA��?)@GBRHolly BRADSHAW��>)?CUBYarisley SILVA��='>USAMorgan LELEUX��<!=SLOTina SUTEJ��;3<GREEkaterini STEFANIDI�"�:9;GRENikoleta KYRIAKOPOULOU��9':CANAnicka NEWELL��8-9VENRobeilys PEINADO��718SWEAngelica BENGTSSON��6!7BLRIryna ZHUK��5!6IND. PRIYANKA�"�495BLRViktoryia RASHCHUPKINA��3/4HUNViktoria MADARASZ��2%3JPNKumiko OKADA��1'2JPNKaori KAWAZOE��0%1JPNNanako FUJII��/30ITAValentina TRAPLETTI��.!/TUREvin DEMIR�--.ROCElvira KHASANOVA��,%-PERLeydi GUERRA��+3,UKRLyudmila OLYANOVSKA��*#+ECUPaola PEREZ��))*ECUGlenda MOREJON��(#)GUAMayra PEREZ��')(CHNShijie QIEYANG��&''BRAErica DE SENA��%#&GUAMirna ORTIZ��$%CHNHong LIU��#'$CRCNoelia VARGAS��"+#ESPRaquel GONZALEZ�!�!7"BLRAnastasiya RAROVSKAYA�� /!ESPLaura GARCIA-CARO��3 GREKiriaki FILITISAKOU��'USARobyn STEVENS��/CZETereza DURDIAKOVA��+UKRMariia SAKHARUK��+ITAEleonora GIORGI��)PERMary Luz ANDIA��'MEXIlse GUERRERO��3ITAAntonella PALMISANO��+MEXAlegna GONZALEZ��#TURAyse TEKDAL��'AUSJemima MONTAG��)HUNBarbara KOVACS��%KAZAiman RATOVA��/BLRAnna TERLYUKEVICH��1POLKatarzyna ZDZIEBLO��'HKGSiu Nga CHING�!�7GREPanayiota TSINOPOULOU��+PERKimberly GARCIA�,�MECUKarla Johana JARAMILLO NAVARRETE�#�;MEXValeria ORTUNO MARTINEZ��%GERSaskia FEIGE��
!INDBhawna JAT��	'
BOLAngela CASTRO��/	ETHYehualeye BELETEW��'COLSandra GALVIS��/AUSRebecca HENDERSON��'PORAna CABECINHA��'AUSKatie HAYWARD��#ESPMaria PEREZ��'TURMeryem BEKMEZ��1GREAntigoni DRISBIOTI�� /LTUBrigita VIRBALYTE��! CHNJiayu YANG��~'�SVKMaria CZAKOVA��}'�COLSandra ARENAS��|)�UKRHanna SHEVCHUK��{/�BLRAliona DUBITSKAYA��z�CHNYang GAO��y)�PORAuriole DONGMO��x'�GERSara GAMBETTA��w)�USAJessica RAMSEY��v#�CHNLijiao GONG��u+�TTOPortious WARREN��t!�SWEFanny ROOS��s)�USARaven SAUNDERS��r3�NZLMaddison-Lee WESCHE��q%�CHNJiayuan SONG��p'�NZLValerie ADAMS��o)�USAClayton MURPHY��n!�BOTNijel AMOS��m�BIHAmel TUKA��l%�POLPatryk DOBEK�#�k;�KENEmmanuel Kipkurui KORIR��j�AUSPeter BOL�%�i?�KENFerguson Cheruiyot ROTICH��h%�FRAGabriel TUAL��g!�ESPAdrian BEN��f/�COLCaterine IBARGUEN��e#�DMAThea LAFOND��d%�USAKeturah ORJI��c'�ESPAna PELETEIRO��b+�PORPatricia MAMONA�#�a;�ISRHanna KNYAZYEVA-MINENKO��`-�FINKristiina MAKELA��_+�JAMShanieka THOMAS��^+�CUBLiadagmis POVEA��]'�FRARouguy DIALLO��\'�VENYulimar ROJAS��[/�JAMKimberly WILLIAMS�$�Z=�ERIKokob Tesfagaber SOLOMON��Y%�USAMolly SEIDEL��X'�COLAngie ORJUELA��W)�NEDJill HOLTERMAN��V#�RSAGerda STEYN��U-�KENRuth CHEPNGETICH�#�T;�BRNEunice Chebichii CHUMBA� �S5�MGLMunkhzaya BAYARTSOGT�   �. ���`A(����~cG(�����cG(
�����[="����dC(
�
�
�
�
�
e
D
*
	�	�	�	�	�	b	C	$	����y^G(����~[>!�����dF&
����_D*����e?$����{aE+����|[A'����jK.                                �V)�UKRAnna RYZHYKOVA��U-�USADalilah MUHAMMAD��T/�GREEmmanouil KARALIS� �S5�GERBo Kanda LITA BAEHRE��R'�GEROleg ZERNIKEL��Q/�FRARenaud LAVILLENIE��P-�AUSKurtis MARSCHALL��O-�SWEArmand Duplantis��N#�NEDMenno VLOON��M#�POLPiotr LISEK��L1�PHIErnest John OBIENA��K!�TURErsu SASMA��J%�USAKc LIGHTFOOT��I1�USAChristopher NILSEN��H'�GBRHarry COPPELL��G#�BRAThiago BRAZ�!�F7�ITALamont Marcell JACOBS��E#�CHNBingtian SU��D'�NGREnoch ADEGOKE��C#�USAFred KERLEY��B'�RSAAkani SIMBINE��A)�GBRZharnel HUGHES��@%�USARonnie BAKER��?)�AUSAshley MOLONEY��>%�GERKai KAZMIREK��=)�USASteven BASTIEN��<%�ESTJohannes ERM�#�;;�BELThomas VAN DER PLAETSEN��:#�FRAKevin MAYER��9!�NORMartin ROE�#�8;�CZEAdam Sebastian HELCELET��7#�ESTKarel TILGA��6#�GERNiklas Kaul��5#�ESTMaicel UIBO��4+�ROCIlya SHKURENYOV��3#�ESPJorge URENA��2%�BLRVitaliy ZHUK��1/�BRAFelipe DOS SANTOS��0'�CANPierce LEPAGE��/'�AUSCedric DUBLER��.)�USAZachery ZIEMEK��-#�CZEJiri SYKORA��,'�CANDamian WARNER��+'�GRNLindon VICTOR��*/�USAGarrett SCANTLING��)+�POLPawel WIESIOLEK��(-�GBRKeely HODGKINSON��'#�CHNChunyu WANG��&�USAAthing MU�%%�JAMNatoya GOULE��$'�ETHHabitam ALEMU��#'�USARaevyn ROGERS��"%�GBRJemma REEKIE��!)�GBRAlexandra BELL�� )�CANMatthew HUGHES� �5�ERIYemane HAILESELASSIE��%�ITAAla ZOGHLAMI��#�ETHGetnet WALE��'�ETHLamecha GIRMA��1�MARSoufiane ELBAKKALI��+�KENAbraham KIBIWOT��#�JPNRyuji MIURA��-�ITAAhmed ABDELWAHED���CANJohn GAY��%�USABenard KETER��)�KENBenjamin KIGEN��'�FINTopi RAITANEN��-�MARMohamed TINDOUFT��'�FRAAlexis PHELUT��%�USARudy WINKLER��'�FRAQuentin BIGOT��-�NOREivind HENRIKSEN��-�POLWojciech NOWICKI��-�MDASerghei MARGHIEV��/�ESPJavier CIENFUEGOS��+�ROCValeriy PRONKIN��
+�UKRMykhaylo KOKHAN�	%�USADaniel HAUGH��!�TUREsref APAK��%�POLPawel FAJDEK��#�GBRNick MILLER��1�BRNKalkidan GEZAHEGNE��-�KENSheila CHELANGAT��'�NEDSusan KUIJKEN��+�RSADominique SCOTT��%�USAEmily SISSON�� #�SWESarah LAHTI��#�SWEMeraf BAHTA��~%GBRJessica JUDD��}%~ERIDolshi TESFU��|1}ETHTsigie GEBRESELAMA��{)|ETHTsehay GEMECHU��z'{USAAlicia MONSON��y3zUGAMercyline CHELANGAT� �x5yKENIrene Chepet CHEPTAI��w1xBDIFrancine NIYONSABA��v-wETHLetesenbet GIDEY��u%vJPNHitomi NIIYA��t+uGBREilish MCCOLGAN�#�s;tGERKonstanze KLOSTERHALFEN��rsJPNYuka ANDO��q+rNZLCamille BUSCOMB��p+qJAMShadae LAWRENCE��o%pITADaisy OSAKUE��n#oCUBYaime PEREZ��m+nCROSandra PERKOVIC��l-mBRAIzabela DA SILVA��k'lGERClaudine VITA��j/kGERMarike STEINACKER��i)jGERKristin PUDENZ��h+iINDKamalpreet KAUR��ghCHNYang CHEN��f)gUSAValarie ALLMAN��e!fPORLiliana CA��d'eUSAShelby MCEWEN��c-dROCMikhail AKIMENKO��b'cKORSanghyeok WOO��a%bROCIlya IVANYUK��`'aAUSBrandon STARC��_/`ITAGianmarco TAMBERI��^_GBRTom GALE��]'^CANDjango LOVETT��\#]NZLHamish KERR��[1\QATMutaz Essa BARSHIM��Z![JPNNaoto TOBE��Y-ZBLRMaksim NEDASEKAU��X-YJAMBritany ANDERSON��W-XBAHDevynne CHARLTON��V%WJAMMegan TAPPER�!�U7VPURJasmine CAMACHO-QUINN� �T5UNGROluwatobiloba AMUSAN�   �! ����nP7����tX=�����kM.�����dF+����w]>#
�
�
�
�
q
V
5
	�	�	�	�	~	_	A	'	
����aA# ����lL/�����aG1����kQ/����~^=����~\7����yaF#�����_B!                         �V1WJAMChristopher TAYLOR��U)VUSAMichael NORMAN��T3UNEDLiemarvin BONEVACIA��S'TBOTIsaac MAKWALA��R'SUSANick CHRISTIE��Q#RCHNKaihua WANG��P'QINDSandeep KUMAR��OPCHNZelin CAI��N'OESPAlvaro MARTIN� �M5NINDIrfan KOLOTHUM THODI��L%MRSAWayne SNYMAN��KLAUSKyle SWAN��J%KGBRTom BOSWORTH��I'JAUSDeclan TINGAY��H'IGERNils BREMBACH��G'HITAMassimo STANO��F#GIRLDavid KENNY��E'FECUBrian PINTADO��D!EMEXJesus VEGA�"�C9DMEXNoel Ali CHAMA ALMAZAN��B3CJPNToshikazu YAMANISHI��A'BECUDavid HURTADO��@!AUKRIvan LOSEV��?%@ESPDiego GARCIA�'�>C?MEXAndres Eduardo OLIVAS NUNEZ��=+>TURSahin SENODUNCU�$�<==COLJhon Alexander CASTANEDA��;1<ESPMiguel Angel LOPEZ��:/;SWEPerseus KARLSTROM��9/:GERChristopher LINKE��8-9KORByeongkwang CHOE��7+8TURAbdulselam IMUK��6+7FRAGabriel BORDIER��5!6GUAJose ORTIZ��4)5BRAMatheus CORREA��334ITAFrancesco FORTUNATO��2#3BRALucas MAZZO��1'2FRAKevin CAMPION��031COLManuel Esteban SOTO�'�/C0ECUJordy Rafael JIMENEZ ARROBO��.//UKREduard ZABUZHENKO��--.SVKMiroslav URADNIK��,--GBRCallum WILKINSON��+,IND. RAHUL��*#+BRACaio BONFIM��)1*GUAJose Oswaldo CALEL��(/)PERLuis Henry CAMPOS�!�'7(BLRAliaksandr LIAKHOVICH��&'GERLeo KOPP��%)&JPNEiki TAKAHASHI��$'%LTUMarius ZIUKAS��#!$JPNKoki IKEDA��")#KAZGeorgiy SHEIKO��!/"POLLukasz NIEDZIALEK�� !CHNJun ZHANG��' TURSalih KORKMAZ��'COLEider AREVALO��+ROCVasiliy MIZINOV�#�;GUAJose Alejandro BARRONDO� �5ITAFederico TONTODONATI��+PERCesar RODRIGUEZ��/AUSEleanor PATTERSON��/ROCMariya LASITSKENE�&�AGERMarie-Laurence JUNGFLEISCH��1UKRIryna GERASHCHENKO��-AUSNicola MCDERMOTT��/USAVashti CUNNINGHAM��)MNEMarija VUKOVIC��#GBRMorgan LAKE��+BULMirela DEMIREVA��-UKRYuliia LEVCHENKO��+POLKamila LICWINKO��%SWEMaja NILSSON��3UKRYaroslava MAHUCHIKH�1UZBSafina SADULLAYEVA��-USAGabrielle THOMAS��
+NAMChristine MBOMA��	1
NAMBeatrice MASILINGI��%	SWEDaniel STAHL��+GERDaniel JASINSKI� �5AUTLukas WEISSHAIDINGER��+COLMauricio ORTEGA��!USASam MATTIS��+LTUAndrius GUDZIUS��'AUSMatthew DENNY��%SLOKristjan CEH�� -NOROla STUNES ISENE��# JAMChad WRIGHT��~)�GERClemens PRUFER��}-�SWESimon PETTERSSON��|)�IVBKyron MCMASTER��{#�ESTRasmus MAGI��z1�ITAAlessandro SIBILIO��y/�BRAAlison DOS SANTOS��x%�USARai BENJAMIN��w+�TURYasmani COPELLO��v+�NORKarsten WARHOLM��u1�QATAbderrahaman SAMBA��t+�AUSPatrick TIERNAN��s%�USAGrant FISHER��r)�CANMohammed AHMED��q#�ESPCarlos MAYO��p%�JPNAkira AIZAWA��o-�THAKieran TUNTIVATE��n+�USAWilliam KINCAID��m'�UGAStephen KISSA��l)�ETHSelemon BAREGA��k)�SUIJulien WANDERS��j'�KENWeldon LANGAT��i�GBRSam ATKIN�#�h;�UGAJoshua Kiprui CHEPTEGEI��g3�ITAYemaneberhan CRIPPA��f%�BELIsaac KIMELI��e'�UGAJacob KIPLIMO��d)�KENRodgers KWEMOI��c#�USAJoe KLECKER��b)�ETHBerihu AREGAWI��a)�KENRhonex KIPRUTO��`)�ETHYomif KEJELCHA��_!�GBRMarc SCOTT��^'�JPNTatsuhiko ITO��]!�ERIAron KIFLE��\+�JAMJanieve RUSSELL��['�USAAnna COCKRELL��Z+�PANGianna WOODRUFF��Y/�USASydney MCLAUGHLIN��X�NEDFemke BOL��W/�UKRViktoriya TKACHUK�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        ������������������������������������������������������������������������������������������������������{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{�����������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJI   � ����rT; ����jJ,����z^C"����z^A%����xZ>$
�
�
�
�
f
J
+
	�	�	�	�	�	c	G	(	����z_D"	����u\@%	����~a?#����zW7�����xa? ����w[;�����`E'	����sU7            �Y)�HUNKatinka HOSSZU��X+�ESPMireia BELMONTE��W+�ITAIlaria CUSINATO��V!�JPNYui OHASHI��U#�USAEmma WEYANT�&�TA�HUNViktoria MIHALYVARI-FARKAS��S-�BRALeonardo DE DEUS��R%�JPNTomoru HONDA��Q+�HUNTamas KENDERESI��P/�ITAFederico BURDISSO�O%�USAGunnar BENTZ�!�N7�POLKrzysztof Chmielewski��M'�HUNKristof Milak��L%�RSAChad LE CLOS��K'�USAJake MITCHELL��J)�ITAGabriele DETTI�&�IA�GERHenning Bennet MUHLLEITNER��H+�AUSJack MCLOUGHLIN��G/�AUSElijah WINNINGTON��F'�AUTFelix AUBOECK��E%�USAKieran SMITH��D)�TUNAhmed HAFNAOUI�C)�USAErica SULLIVAN��B#�AUSMaddy GOUGH��A'�AUSEmily SEEBOHM��@%�USAPhoebe BACON�!�?7�USARhyan Elizabeth WHITE��>3�CANTaylor Madison RUCK��=!�CHNXuwei PENG�<�CHNYaxin LIU��;)�AUSKaylee MCKEOWN�:#�CANKylie MASSE��9�CHNLiyan YU��8+�USAHali FLICKINGER��7)�HUNBoglarka KAPAS��6/�ROCSvetlana CHIMROVA��5/�AUSBrianna THROSSELL� �45�GBRAlys Margaret THOMAS��3#�USARegan SMITH��2#�CHNYufei ZHANG��1)�DENPernille BLUME��0#�AUSEmma MCKEON��/-�POLKatarzyna WASICK��.-�SWESarah SJOESTROEM��-'�AUSCate CAMPBELL��,3�NEDRanomi KROMOWIDJOJO��+)�USAAbbey WEITZEIL��*#�CHNQingfeng WU� �)5�AUSIzaac STUBBLETY-COOK��(#�GBRJames WILBY��'�USANic FINK��&)�FINMatti MATTSSON��%'�NEDArno KAMMINGA��$%�SWEErik PERSSON��#'�ROCAnton CHUPKOV��"!�JPNRyuya MURA��!)�ROCYuliya EFIMOVA�� +�ITAMartina CARRARO��1�ROCEvgeniia CHIKUNOVA��)�IRLMona MC SHARRY�)�SWESophie HANSSON��!�USALilly KING��3�RSATatjana SCHOENMAKER��%�USALydia JACOBY��%�USAKatie GRIMES��)�AUSAriarne Titmus��'�USAKatie LEDECKY��/�ITASimona QUADARELLA��%�GERSarah KOHLER��)�AUSKiah MELVERTON��)�CHNJianjiahe WANG��-�ITAAlberto RAZZETTI��'�AUSBrendon SMITH��)�USAJay LITHERLAND��+�NZLLewis CLAREBURT��%�USAChase KALISZ��'�FRALeon MARCHAND��)�GBRMax LITCHFIELD��+�HUNDavid VERRASZTO��
%�BRNDawit FIKADU��	-�ETHMilkesa MENGESHA��'�GUALuis GRIJALVA��)�FRAJimmy GRESSIER�$�=�KENNicholas Kipkorir KIMELI��+�GBRAndrew BUTCHART�!�7�USAPaul Kipkemoi CHELIMO��'�CANJustyn KNIGHT��'�ESPMohamed KATIR��'�UGAOscar CHELIMO� '�BRNBirhanu BALEW��+�AUSStewart MCSWEYN��~/KENTimothy CHERUIYOT��}%~ESPAdel MECHAAL��|1}NORJakob INGEBRIGTSEN��{|GBRJosh KERR��z%{AUSOliver HOARE��y+zLUXCharles GRETHEN��x'yPOLMichal ROZMYS��w)xESPIgnacio FONTES��v'wGBRJake WIGHTMAN��u%vKENAbel KIPSANG��t#uUSACole HOCKER��s%tGBRJake HEYWARD��r)sCOLEvelis AGUILAR��q-rUSAKendell WILLIAMS��p'qHUNXenia KRIZSAN��o1pUZBEkaterina VORONINA��n%oNEDAnouk VETTER��m'nGERVanessa GRIMM��l'mUSAErica BOUGARD�%�k?lGBRKatarina JOHNSON-THOMPSON��j-kBELNafissatou THIAM��i'jESPMaria VICENTE�h#iAUTIvona DADIC��g%hCHNNinali ZHENG��f+gNEDNadine BROERSEN��e/fCANGeorgia ELLENWOOD��d)ePOLAdrianna SULEK��c-dNEDEmma OOSTERWEGEL��b/cBENOdile AHOUANWANOU��a#bAUTVerena MAYR��`1aCUBYorgelis RODRIGUEZ��_-`FINMaria HUNTINGTON��^%_BURMarthe KOALA��]!^BELNoor VIDTS��\+]GERCarolin SCHAFER��[!\USAAnnie KUNZ��Z)[USAMichael CHERRY��Y%ZGRNKirani JAMES��X-YCOLAnthony ZAMBRANO��W+XBAHSteven GARDINER�   �$ ����kP4�����lN1�����fK4�����sK0�����kN%
�
�
�
�
y
X
;
"
 	�	�	�	�	m	Q	;	�����qR6�����uW9����x^E-
�����iO-�����gJ,����yT5�����oQ1�����uX>$                  �^#_KORSungmin CHO��]#^KORGunwoo PARK��\)]ROCDenis GRIBANOV��['\ROCPavel SOZYKIN��Z%[FRAJeremie MION��Y)ZFRAKevin PEPONNET��X!YTURAtes CINAR��W#XTURDeniz CINAR��V%WUSAStuart MCNAY��U#VUSADave HUGHES��T/UGREPanagiotis MANTIS��S+TGREPavlos KAGIALIS��R+SJPNJumpei HOKAZONO��Q#RJPNKeiju OKADA��P+QITAGiacomo FERRARI��O)PITAGiulio CALABRO��N'OGBRLuke PATIENCE��M#NGBRChris GRUBE��L)MNZLDaniel WILLCOX��K-LNZLPaul SNOW-HANSEN�"�J9KESPJordi XAMMAR HERNANDEZ�(�IEJESPNicolas RODRIGUEZ GARCIA-PAZ��H)ISWEAnton DAHLBERG��G/HSWEFredrik BERGSTROM��FGAUSWill RYAN��E)FAUSMathew BELCHER��DECHNHe CHEN��C+DNEDNicholas HEINER��B)CHUNZsombor BERECZ� �A5BARGFacundo OLEZZA BAZAN��@#AGBRGiles SCOTT��?!@MEXJuan PEREZ��>#?USALuke MULLER��=#>NZLJosh JUNIOR��<+=NORAnders PEDERSEN��;+<GREIoannis MITAKIS��:3;ESPJoan CARDONA MENDEZ��9#:CANTom RAMSHAW��8%9SWEMax SALMINEN��7#8AUSJake LILLEY��67RSALeo DAVIS��5#6BRAJorge ZARIF��4'5TURAlican KAYNAR��3+4JPNKazumasa SEGAWA� �253VENAndres LAGE DE ARMAS��12CHNYiting YU��0!1USAAlex WALSH��/'0USAKate DOUGLASS�.)/CANSydney PICKREM��-'.GBRAlicia WILSON��,-CHNShun WANG��+1,SUIJeremy DESPLANCHES��*!+JPNDaiya SETO��)'*JPNKosuke HAGINO��(#)HUNLaszlo CSEH��'+(CANSummer MCINTOSH��&/'NZLErika FAIRWEATHER�%%&USAPaige MADDEN��$!%CHNMuhan TANG��##$GERIsabel GOSE��"!#CHNBingjie LI��!3"ESPNicolas GARCIA SAIZ�� )!GBRLuke GREENBANK��% HUNAdam TELEGDY��'USABryce MEFFORD��-POLRadoslaw KAWECKI��%JPNRyosuke IRIE��)SWELouise HANSSON��3BLRAnastasiya SHKURDAI�#USATorri HUSKE��%FRAMarie WATTEL��-CANMargaret MACNEIL��+BULJosif MILADINOV��SUINoe PONTI�'GUALuis MARTINEZ��)ROCAndrei MINAKOV��)AUSMatthew TEMPLE��)POLJakub MAJERSKI�+BRAGuilherme Costa��/CZEBarbora SEEMANOVA��3ITAFederica PELLEGRINI��%CHNJunxuan YANG�)AUSMadison WILSON��1ROCKirill MARTYNYCHEV��
%USARobert FINKE��	'
GBRDaniel JERVIS��'	UKRSerhii FROLOV��1UKRMykhailo ROMANCHUK��#GBRAnna HOPKIN��+NEDFemke HEEMSKERK�&�AHKGSiobhan Bernadette HAUGHEY��)CANPenny OLEKSIAK��CHNZibei YAN��!GBRAdam PEATY�� 1ITANicolo MARTINENGHI��' USAAndrew WILSON��~-�BLRIlya SHYMANOVICH��}#�USARyan MURPHY��|+�AUSMitchell LARKIN��{%�ROCEvgeny RYLOV�%�z?�ESPHugo GONZALEZ DE OLIVEIRA��y'�ROURobert GLINTA��x�CHNJiayu XU��w'�ITAThomas CECCON�v%�LTUDanas RAPSYS��u+�ROCMartin MALYUTIN��t%�GBRDuncan SCOTT��s/�BRAFernando SCHEFFER��r�GBRTom DEAN��q)�USAMichael ANDREW�p%�BRABruno FRATUS��o+�ITALorenzo ZAZZERI��n-�FRAFlorent MANAUDOU��m1�GREKristian GKOLOMEEV��l%�NEDThom DE BOER��k�GBRBen PROUD��j1�ISRAnastasya GORBENKO�i)�NEDKira TOUSSAINT��h+�GBRKathleen DAWSON��g!�GBRAbbie WOOD��f#�USAAnnie LAZOR��e)�BELFanny LECLUYSE��d'�GBRMolly RENSHAW��c+�RSAKaylene CORBETT��b)�ROUDavid POPOVICI��a1�ROCKliment KOLESNIKOV��`'�HUNNandor NEMETH��_%�KORSunwoo HWANG��^'�AUSKyle CHALMERS��]1�ITAAlessandro MIRESSI��\)�USACaeleb DRESSEL��[+�FRAMaxime GROUSSET��Z)�GBRAimee WILLMOTT�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        GFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  �������������������������������������������������������������

		  �����������������������������������������������������������������������������������������������������������������������������������������������������������������    ����x[:����iJ-����sQ8 ����hN+����fM1
�
�
�
�
�
c
G
$
	�	�	�	�	x	^	D	(		����eB%�����pR7����qS8���iA�����xW;����z[@�����rT9����jN-           �]'�AUTLorena ABICHT��\1�CANAlexandra TEN HOVE��['�CANMariah MILLEN��Z%�POLKinga LOBODA��Y3�POLAleksandra MELZACKA�(�XE�BELIsaura MAENHAUT VAN LEMBERGE��W%�BELAnouk GEURTS��V!�AUSTess LLOYD��U!�AUSJaime RYAN��T#�NZLMolly MEECH��S%�NZLAlex MALONEY��R+�USAStephanie ROBLE��Q#�USAMaggie SHEA��P#�SGPCecilia LOW��O%�SGPKimberly LIM��N'�FRAAlbane DUBOIS��M#�FRALili SEBESI�"�L9�DENIda Marie Baad NIELSEN�!�K7�DENMarie Thusgaard OLSEN��J%�NORHelene NAESS��I-�NORMarie ROENNINGEN��H%�GBRSaskia TIDEY��G-�GBRCharlotte DOBSON��F#�ARGMaria BRANZ��E1�ARGVictoria TRAVASCIO�&�DA�ESPTamara ECHEGOYEN DOMINGUEZ� �C5�ESPPaula BARCELO MARTIN��B'�NEDAnnette DUETZ��A1�NEDAnnemiek BEKKERING��@�GERTina LUTZ��?'�GERSusann BEUCKE��>'�BRAMartine GRAEL��=%�BRAKahena KUNZE��<%�TUNRania RAHALI��;%�TUNMehdi GHARBI�%�:?�NORNicholas Fadler MARTINSEN�%�9?�NORMartine Steller MORTENSEN�*�8I�URUDominique KNUPPEL ARTAGAVEYTIA� �75�URUPablo DEFAZIO ABELLA�"�69�PURGretchen ORTIZ PACHECO�#�5;�PUREnrique FIGUEROA SUAREZ��4#�CHNXuezhe YANG��3#�CHNXiaoxiao HU��2%�JPNEri HATAYAMA��1+�JPNShibuki IITSUKA��0+�SWECecilia JONSSON��/#�SWEEmil JARUDD��.+�FINAkseli KESKINEN��-'�FINSinem KURTBAY��,+�NZLMicah WILKINSON��+%�NZLErica DAWSON��*%�AUTThomas ZAJAC��)%�AUTBarbara MATZ��(+�BRASamuel ALBRECHT��'/�BRAGabriela NICOLINO��&#�USARiley GIBBS��%�USAAnna WEIS��$1�FRAQuentin DELAPIERRE��#'�FRAManon AUDINET�#�";�ARGCecilia CARRANZA SAROLI��!)�ARGSantiago LANGE� � 5�ESPFlorian TRITTEL PAUL�'�C�ESPTara PACHECO VAN RIJNSOEVER��'�AUSLisa DARMANIN��-�AUSJason WATERHOUSE�"�9�DENChristian Peter LUBECK��#�DENLin CENHOLT��-�GERAlica STUHLEMMER��'�GERPaul KOHLHOFF��#�GBRJohn GIMSON��#�GBRAnna BURNET��%�ITARuggero TITA��)�ITACaterina BANTI��-�BELEmma PLASSCHAERT��'�CANSarah DOUGLAS��'�ANTJalese GORDON��)�INDNethra KUMANAN� �5�GREVasileia KARACHALIOU��'�PNGRose-Lee NUMA��/�ROCEkaterina ZYUZINA��)�CROElena VOROBEVA��)�MOZDeizy NHAQUILE��'�MEXElena OETLING��
'�PORCarolina JOAO��	)�ITASilvia ZENNARO��-�THAKamolwan CHANYIM��'�ARGLucia FALASCA��!�HUNMaria ERDI��3�ESPCristina PUJOL BAJO��%�GERSvenja WEGER�%�?�MASNur Shazrin MOHAMAD LATIF��/�DENAnne-Marie RINDOM�!�7�FIJSophia Frances MORGAN�� '�AUSMara STRANSKY� �5�BLRTatiana DROZDOVSKAYA��~#FRAMarie BOLOU��}!~JPNManami DOI�$�|=}PERPaloma SCHMIDT GUTIERREZ��{+|NORLine FLEM HOEST��z-{HKGStephanie NORTON��y%zUSAPaige RAILEY��x%yGBRAlison YOUNG��w)xEGYKhouloud MANSY��v!wISRShay KAKON��u3vLTUViktorija ANDRULYTE�%�t?uURUDolores MOREIRA FRASCHINI��s+tIRLAnnalise MURPHY��r)sSWEJosefin OLSSON��q-rLCAStephanie LOVELL��p!qSUIMaud JAYET��o-pCHNDongshuang ZHANG��n)oFINTuula TENKANEN��m-nPOLMagdalena KWASNA��l!mTUREcem GUZEL��k)lCYPMarilena MAKRI��j/kNEDMarit BOUWMEESTER�"�i9jGUAIsabella MAEGLI AGUERO��h+iANGMatias MONTINHO��g'hANGPaixao AFONSO��f'gASAAdrian HOESCH��e1fASATyler Justus PAIGE��d)eCANJacob SAUNDERS��c#dCANOliver BONE��b+cBRAHenrique HADDAD��a'bBRABruno BETHLEM��`#aPORDiogo COSTA��_#`PORPedro COSTA�     �����_7�����fC"����rR4�����hJ-����vM+
�
�
�
�
x
[
>
#
	�	�	�	�	p	R	9	$	����tX*
����oP5����nT6����v\="����lQ1�����fG+����zU4�����g?                           �\-]AUSMonique DE VRIES�%�[?\GREAriadne Paraskevi SPANAKI��Z)[GREEmilia TSOULFA��Y+ZSWELovisa KARLSSON��X-YSWEOlivia BERGSTROM��W'XITABianca CARUSO��V#WITAElena BERTA��U'VUSANikole BARNES��T1UUSALara DALLMAN-WEISS��S1TESPSilvia MAS DEPARES�"�R9SESPPatricia CANTERO REINA��Q+RNEDAfrodite ZEGERS��P)QNEDLobke BERKHOUT��O/PBRAFernanda OLIVEIRA��N3OBRAAna Luiza BARBACHAN��M#NISRNoya BAR-AM��L#MISRShahar TIBI��K'LJPNMiho YOSHIOKA��J-KJPNAi KONDO YOSHIDA��I/JGERAnastasiya WINKEL��H%IGERLuise WANSER��GHSLOTina MRAK��F-GSLOVeronika MACAROL��E/FSUIMaja SIEGENTHALER��D%ESUILinda FAHRNI��C+DFRAAloise RETORNAZ��B/CFRACamille LECOINTRE��A%BPOLJolanta OGAR� �@5APOLAgnieszka SKRZYPULEC��?%@GBRHannah MILLS��>+?GBREilidh MCINTYRE��='>HUNSara CHOLNOKY��<)=ESPBlanca MANCHON��;1<FINTuuli PETAJA-SIREN��:%;TURDilara URALP��9-:BRAPatricia FREITAS��8#9USAFarrah HALL��7)8ISRKaty SPYCHAKOV��6#7JPNYuki SUNAGA��56CHNYunxiu LU��4-5HKGHei Man H V CHAN��3)4NEDLilian DE GEUS��23SGPAmanda NG��1)2POLZofia KLEPACKA��0+1ALGNadjet BERRICHI��/#0GBREmma WILSON��.)/ITAMarta MAGGETTI��-'.ESTIngrid PUUSTA�"�,9-THASiripon KAEWDUANG-NGAM�"�+9,ARGMaria TEJERINA MACKERN� �*5+MEXDemita VEGA DE LILLE��)1*DENLaerke BUHL-HANSEN��(%)CANNikola GIRKE��'-(PERMaria Belen BAZO��&)'FRACharline PICON��%/&GREAikaterini DIVARI�$+%ROCAnna KHVORIKOVA��#%$CYPNatasa LAPPA�$�"=#HKGChun Leung Michael CHENG��!/"ROCAleksandr ASKEROV�+� K!ARGFrancisco Cruz SAUBIDET BIRKNER��' FRAThomas GOYARD��%POLPiotr MYSZKA�$�=THANatthaphong PHONOPPHARAT��'CZEKarel LAVICKY��+SUIMateo SANZ LANZ��%NEDKiran BADLOE��!KORWonwoo CHO��CHNKun BI��!ISRYoav COHEN��+LTUJuozas BERNOTAS��-GREVyron KOKKALANIS��+JPNMakoto TOMIZAWA��#GBRTom SQUIRES�$�=CYPAndreas Pheobus CARIOLOU��!TUROnur BIRIZ��'USAPedro PASCUAL��%ALGHamza BOURAS��)ITAMattia CAMBONI��)BLRMikita TSIRKUN��+NOREndre FUNNEMARK��1ESPAngel GRANDA ROQUE��
/MEXIgnacio BERENGUER��	+
SEYRodney GOVINDEN��#	JPNKenji NANRI��'GBRElliot HANSON��3GUAJuan Ignacio MAEGLI�&�AARGFrancisco GUARAGNA RIGONAT��%SAMEroni LEILUA��%TTOAndrew LEWIS�'�CESAEnrique Jose ARATHOON PACAS� �5FRAJean Baptiste BERNAZ�� !AUSMatt WEARN��% GERPhilipp BUHL��~)�SLOZan Luka ZELKO��}+�CYPPavlos KONTIDES��|�NZLSam MEECH��{�KORJeemin HA��z'�MNEMilivoj DUKIC��y+�BELWannes VAN LAER�#�x;�LCALuc Franck Leo CHEVRIER��w'�FINKaarle TAPPER��v/�PERStefano PESCHIERA��u+�CHIClemente SEGUEL��t/�ROCSergei KOMISSAROV��s/�ESTKarl-Martin RAMMO�$�r=�MASKhairulnizam MOHD AFENDY��q!�EGYAly BADAWY��p�SGPRyan LO��o%�PNGTeariki NUMA��n-�CROTonci STIPANOVIC��m1�USACharlie BUCKINGHAM� �l5�ESPJoel RODRIGUEZ PEREZ��k1�NORHermann TOMASGAARD��j+�HUNBenjamin VADNAI��i)�BRARobert SCHEIDT��h+�SWEJesper STALHEIM��g-�INDVishnu SARAVANAN��f%�TUNEya GUEZGUEZ��e)�TUNSarra GUEZGUEZ�%�d?�PERMaria Pia VAN OORDT LOPEZ��c3�PERDiana TUDELA BALLON��b�CHNYe JIN��a#�CHNShasha CHEN��`#�JPNSena TAKANO��_'�JPNAnna YAMAZAKI��^#�AUTTanja FRANK�   �  ����z\5����z^E-����sX?&����sW; ����nU8
�
�
�
�
r
V
:
!
	�	�	�	�	n	Q	3	�����]E+����qL3�����eI/�����tQ3����}]A����c@$�����pM1����v[=                       �])�NZLHannah OSBORNE��\+�NZLBrooke DONOGHUE��[%�ROUSimona RADIS��Z'�ROUAncuta BODNAR�&�YA�MEXJose Gerardo ULLOA AREVALO��X-�AUSDaniel MCCONNELL��W-�POLBartlomiej WAWAK��V)�JPNKohei YAMAMOTO��U%�ROUVlad DASCALU��T'�ROCAnton SINTSOV� �S5�ESPJofre CULLELL ESTAPE��R%�CANPeter DISERA��Q+�SUIFilippo COLOMBO��P)�GBRThomas PIDCOCK��O%�GERManuel FUMIC��N%�NZLAnton COOPER�%�M?�DENSebastian Fini CARSTENSEN��L'�FRAJordan SARROU� �K5�NEDMathieu VAN DER POEL�"�J=�CHIMartin VIDAURRE KOSSMANN�I#�CZEOndrej CINK�!�H7�BRALuiz Henrique COCUZZI��G-�AUTMaximilian FOIDL��F)�GREPeriklis ILIAS��E'�RSAAlan HATHERLY� �D5�ESPDavid VALERO SERRANO��C'�NORErik HAEGSTAD��B/�GERMaximilian BRANDL��A/�BRAHenrique AVANCINI��@%�ITALuca BRAIDOT��?+�FRAVictor KORETZKY��>1�SUIMathias FLUECKIGER��=3�USAChristopher BLEVINS��<#�NAMAlex MILLER��;+�ITANadir COLLEDANI� �:5�ITAGerhard KERSCHBAUMER��9!�CHNPeng ZHANG��8%�ISRShlomi HAIMY��7%�HUNAndras PARTI��6'�SUINino SCHURTER��5+�BELJens SCHUERMANS��4#�NEDMilan VADER��3�USAErin HUCK��2'�AUTLaura STIGGER�1'�NEDAnne TERPSTRA��0-�BRAJaqueline MOURAO��//�GERElisabeth BRANDAU��./�AUSRebecca MCCONNELL��-#�NEDAnne TAUBER��,)�UKRYana BELOMOYNA��+'�GBREvie RICHARDS��*'�FRALoana LECOMTE��)!�CHNBianwa YAO�"�(9�FRAPauline FERRAND PREVOT��'-�NAMMichelle VORSTER��&%�USAHaley BATTEN��%#�ESTJanika LOIV��$/�POLMaja WLOSZCZOWSKA�)�#G�MEXDaniela CAMPUZANO CHAVEZ PEON��"#�DENMalene DEGN��!#�CANHaley SMITH�� �SUISina FREI�!�7�ARGSofia GOMEZ VILLAFANE��%�RSACandice LILL��#�ITAEva LECHNER�*�I�ESPRocio del Alba GARCIA MARTINEZ��%�SUIJolanda NEFF��)�PORRaquel QUEIROS���JPNMiho IMAI��+�SUILinda INDERGAND��)�BELGitha MICHIELS��1�ROCViktoria KIRSANOVA��%�SLOTanja ZAKELJ��+�CZEJitka CABELICKA��/�CANCatharine PENDREL��)�SWEJenny RISSVEDS��'�DENCaroline BOHE��!�GERRonja EIBL��+�HUNKata Blanka VAS�'�USAKate COURTNEY��'�CANWilliam JONES��#�CANEvan DEPAUL��+�RSABenjamin DANIEL��
#�RSAAlex BURGER��	3�INDGanapathy KELAPANDA��'�INDVarun THAKKAR��#�BRAMarco GRAEL��)�BRAGabriel BORGES��!�FRALucas RUAL��%�FRAEmile AMOROS��3�SUISebastien SCHNEITER��'�SUILucien CUJEAN��)�IRLRobert DICKSON�� )�IRLSean WADDILOVE��-�AUSWilliam PHILLIPS��~%AUSSam PHILLIPS��}'~JPNIbuki KOIZUMI��|'}JPNLeo TAKAHASHI��{#|AUTDavid HUSSL��z1{AUTBenjamin BILDSTEIN��y-zPOLLukasz PRZYBYTEK��x/yPOLPawel KOLODZINSKI��w%xCROSime FANTELA��v+wCROMihovil FANTELA��u!vPORJorge LIMA��t!uPORJose COSTA��s%tNEDPim VAN VUGT��r'sNEDBart LAMBRIEX��q3rDENJakob Precht JENSEN��p%qDENJonas WARRER��o-pESPIago LOPEZ MARRA�!�n7oESPDiego BOTIN LE CHEVER��m+nGERThomas PLOESSEL��lmGERErik HEIL��k!lNZLBlair TUKE��j'kNZLPeter BURLING� �i5jGBRDylan FLETCHER-SCOTT��h)iGBRStuart BITHELL��g+hMOZDenise PARRUQUE��f'gMOZMaria MACHAVA��e3fARGMaria Belen TAVELLA��d-eARGLourdes HARTKOPF�$�c=dMASJuni Karimah NOOR JAMALI��b+cMASNuraisyah JAMIL��a!bCHNMengxi WEI��`!aCHNHaiyan GAO��_)`TUROkyanus ARIKAN��^)_TURBeste KAYNAKCI��]#^AUSNia JERWOOD�
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8@80(  ������������������������������xph`�xpXPhH@        ����h�����px�����������P��������������������� ��������������������������������������� h��������������������������GFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{zyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHG{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     � ����hL.����rV9�����cE+�����aC'
����x^C(
�
�
�
�
k
N
3
	�	�	�	�	�	d	F	)	����x^<����z[C(
����yX7�����b@#����mR5�����`A#����rT=����}cE*     �])^NAMMaike DIEKMANN��\%]SRBJovana ARSIC��[+\SUIJeannine GMELIN��Z#[NGREsther TOKO��Y)ZIRLSanita PUSPURE��X/YGBRVictoria THORNLEY��W'XSUDEsraa KHOGALI��V3WHKGWing Yan Winne HUNG��U)VUGAKathleen NOBLE�%�T?UNCAEvidelia GONZALEZ JARQUIN��STSGPJoan POH��R+SSWELovisa CLAESSON��Q#RUSAKara KOHLER��P)QKORHyejeong JEONG��O3PPURVeronica TORO ARANA��N1OBLRTatsiana KLIMOVICH��MNCHNYan JIANG��L-MAUTMagdalena LOBNIG��K+LMARSarah FRAINCART��J-KPARAlejandra ALONSO�"�I9JTOGAkossiwa Claire AYIVON� �H5IMEXKenia LECHUGA ALANIS��G#HCHNJinchao LIU��F'GCHNKaifeng HUANG��E#FITAAisha ROCEK��D-EITAKiri TONTODONATI��C+DIRLMonika DUKARSKA��B)CIRLAileen CROWLEY��A%BUSATracy EISSER��@%AUSAMegan KALMOE��?'@ROUIuliana BUHUS��>-?ROUAdriana AILINCAI��=/>DENFie Udby ERICHSEN��<-=DENHedvig RASMUSSEN��;1<AUSAnnabelle MCINTYRE��:-;AUSJessica MORRISON�93:ESPVirginia DIAZ RIVAS� �859ESPAina CID I CENTELLES�#�7?8GREChristina Ioanna BOURMPOU�6'7GREMaria KYRIDOU�5#6GBRPolly SWANN��4%5GBRHelen GLOVER��3-4CANHillary JANSSENS��2+3CANCaileigh FILMER��112ROCElena ORIABINSKAIA��011ROCVasilisa STEPANOVA��/%0NZLKerri GOWLER��.//NZLGrace PRENDERGAST��-/.RSAJake Milton GREEN��,#-RSALuc DAFFARN��+',NZLStephen JONES��*++NZLBrook ROBERTSON��)%*AUSJoshua HICKS��()AUSSam HARDY��'-(FRAGuillaume TURLAN��&)'FRAThibaud TURLAN��%-&BLRSiarhei VALADZKO��$)%BLRDzmitry FURMAN�!�#7$NEDGuillaume KROMMENHOEK��"1#NEDNicolas VAN SPRANG�!�!7"ESPJavier GARSIA ORDONEZ�� 3!ESPJaime CANAEJO PAZOS��# SRBMilos VASIC��+SRBMartin MACKOVIC��'CANConlin MCCABE��)CANKai LANGERFELD��)DENJoachim SUTTON��/DENFrederic VYSTAVEL��)ROUCiprian TUDOSA��)ROUMarius COZMIUC��+CROValent SINKOVIC��+CROMartin SINKOVIC��/GUAJennieffer ZUNIGA��%GUAYulisa LOPEZ��%INAMelani PUTRI��'INAMutiara PUTRI��'TUNKhadija KRIMI� �5TUNNour Elhouda ETTAIEB��%VIEThi Hao DINH��)VIEThi Thao LUONG��/AUTLouisa ALTENHUBER��1AUTValentina CAVALLAR�$�=ARGEvelyn Maricel SILVESTRO��
'ARGMilka KRALJEV��	+
CANJennifer CASSON��%	CANJill MOFFATT��%BLRAlena FURMAN��%BLRIna NIKULINA��#JPNAyami OISHI��'JPNChiaki TOMITA��)ROCMaria BOTALOVA��1ROCAnastasia LEBEDEVA��+IRLMargaret CREMEN�� #IRLAoife CASEY��) SUIFrederique ROL��~'�SUIPatricia MERZ��}+�ROUGianina BELEAGA��|3�ROUIonela-Livia LEHACI��{-�USAMichelle SECHSER��z'�USAMary RECKFORD��y%�GBRImogen GRANT��x#�GBREmily CRAIG��w#�NEDIlse PAULIS��v+�NEDMarieke KEIJSER��u#�FRAClaire BOVE��t+�FRALaura TARANTOLA��s/�ITAFederica CESARINI��r-�ITAValentina RODINI��q#�CHNXiaoxin LIU��p)�CHNShuangmei SHEN��o'�GERLeonie MENZEL��n/�GERAnnekatrin THIELE�!�m7�CZEKristyna FLEISSNEROVA��l)�CZELenka ANTOSOVA��k'�ITAChiara ONDOLI��j1�ITAAlessandra PATELLI�&�iA�FRAElodie RAVERA-SCARAMOZZINO��h+�FRAHelene LEFEBVRE��g#�AUSTara RIGNEY��f)�AUSAmanda BATEMAN��e)�CANJessica SEVICK��d+�CANGabrielle SMITH��c'�USAGenevra STONE��b+�USAKristina WAGNER��a/�LTUMilda VALCIUKAITE��`1�LTUDonata VISTARTAITE��_+�NEDLisa SCHEENAARD��^%�NEDRoos DE JONG�    ����kR4�����hM3����sQ2����}aF(����|c@
�
�
�
�
�
g
I
+
	�	�	�	�	�	f	I	,	�����fH/����mJ-�����_?"����iP0����qU.����iO6����eJ1����{T7                       �\#�CHNXiaoyan YIN��[)�MARBtissam SADINI�$�Z=�VENClaudymar GARCES SEQUERA��Y#�EGYGiana LOTFY��X'�JPNKen NISHIMURA�#�W;�HUNKaroly Gabor HARSPATAKI��V+�AUSTsuneari YAHIRO��U)�AZERafael AGHAYEV��T-�UKRStanislav HORUNA��S!�ITALuigi BUSA��R%�USAThomas SCOTT��Q#�GERNoah BITSCH��P/�EGYAbdalla ABDELAZIZ��O1�KAZNurkanat AZHIKANOV��N)�IRISara BAHMANYAR��M'�BULIvet GORANOVA��L1�UKRAnzhelika TERLIUGA��K'�JPNMiho MIYAHARA��J!�TPETzuyun WEN��I#�EGYRadwa SAYED�"�H9�TURSerap OZCELIK ARAPOGLU��G'�AUTBettina PLANK��F1�KAZMoldir ZHANGBYRBAY�!�E7�DOMIgnacio VASQUEZ JORGE��D3�ROCAlexander VYAZOVKIN��C)�BENPrivel HINKATI�$�B=�ITAGennaro Alberto DI MAURO��A'�JPNRyuta ARAKAWA��@3�IRQMohammed AL-KHAFAJI��?%�CANTrevor JONES��>%�NZLJordan PARRY��=%�CIVFranck N'DRI�-�<O�ZIMPeter Sean Richard PURCELL-GILPIN��;'�PHICris NIEVAREZ��:/�LBAAlhussein GAMBOUR��9!�VANRiilio RII��8%�NORKjetil BORCH��7'�BERDara ALIZADEH��63�LTUMindaugas GRISKONIS� �55�KUWAbdulrahman ALFADHEL��41�MONQuentin ANTOGNELLI��3'�CZEJan FLEISSNER��2)�GEROliver ZEIDLER��1/�GREStefanos NTOUSKOS��01�KAZVladislav YAKOVLEV�"�/9�BRALuca VERTHEIN FERREIRA��.)�KSAHusein ALIREZA��-%�NEDFinn FLORIJN��,%�CRODamir MARTIN��+#�NCAFelix POTOY��*%�TUROnat KAZAKLI��))�DENSverri NIELSEN� �(5�PERAlvaro TORRES MASIAS�%�'?�HUNBendeguz PETERVARI-MOLNAR��&3�EGYAbdelkhalek ELBANNA��%'�CZEJan CINCIBUCH��$)�CZEJakub PODRAZIL��#3�LTUAurimas ADOMAVICIUS��")�LTUSaulius RITTER��!!�GERMarc WEBER�� +�GERStephan KRUEGER��%�IRLPhilip DOYLE��#�IRLRonan BYRNE��'�ROUMarian ENACHE��)�ROUIoan PRUNDEANU��1�NZLChristopher HARRIS��!�NZLJack LOPAS��+�ROCAndrey POTAPKIN��)�ROCIlya KONDRATEV��)�POLMateusz BISKUP��1�POLMiroslaw ZIETARSKI��)�SUIRoman ROEOESLI��+�SUIBarnabe DELARZE��%�GBRJohn COLLINS��'�GBRGraeme THOMAS��#�CHNLiang ZHANG���CHNZhiyu LIU��+�NEDStefan BROENINK��+�NEDMelvin TWELLAAR��1�FRAMatthieu ANDRODIAS��)�FRAHugo BOUCHERON��)�THANawamin DEENOI��
-�THASiwakorn WONGPIN��	+�ALGSid Ali BOUDINA��+�ALGKamel AIT DAOUD� �5�UZBSobirjon SAFAROLIYEV� �5�UZBShakhboz KHOLMURZAEV��!�VENJose GUIPE�"�9�VENCesar AMARIS FERNANDEZ��'�CHIEber SANHUEZA��%�CHICesar ABAROA��%�PORAfonso COSTA�� #�PORPedro FRAGA��%�NORAre STRANDLI��~+NORKristoffer BRUN��}%~INDArvind SINGH��|'}INDArjun LAL JAT��{-|CANMaxwell LATTIMER��z'{CANPatrick KEANE��y/zUKRStanislav KOVALOV��x#yUKRIgor KHMARA� �w5xPOLArtur MIKOLAJCZEWSKI��v)wPOLJerzy KOWALSKI��u-vESPManel BALASTEGUI��t3uESPCaetano HORTA POMBO�"�s9tURUFelipe KLUVER FERREIRA�"�r9sURUBruno CETRARO BERRIOLO��qrBELTim BRYS��p3qBELNiels VAN ZANDWEGHE��o3pCZEMiroslav VRASTIL JR��n%oCZEJiri SIMANEK��m#nITAPietro RUTA��l%mITAStefano OPPO��k'lGERJason OSBORNE��j3kGERJonathan ROMMELMANN��i'jIRLPaul ODONOVAN��h-iIRLFintan MC CARTHY��g'hTPEYi-Ting HUANG��f#gTTOFelice CHOW��e)fIRINazanin MALAEI��d+eROCHanna PRAKATSEN��c!dNZLEmma TWIGG��b)cGREAnneta KYRIDOU��a'bQATTala ABUJBARA��`'aNEDSophie SOUWER��_)`CANCarling ZEEMAN� �^5_CUBMilena VENEGA CANCIO�   } ����bD(����y^? ����fJ.����mP5 ����hO0
�
�
�
�
�
a
5
	�	�	�	�	�	g	J	+	����uY<����}]@$ ���e@%����|b8���z^A'�����jI+����v[:����tV<                             �Y)ZBRAAlison CERUTTI��X#YLATEdgars TOCS��W+XLATMartins PLAVINS��V#WQATAhmed TIJAN��U-VQATCherif YOUNOUSSE��T/UROCOleg STOYANOVSKIY�"�S9TROCViacheslav KRASILNIKOV�#�R;SNORChristian Sandlie SORUM��Q3RNORAnders Berntsen MOL��P1QNEDMadelein MEPPELINK��O%PNEDSanne KEIZER��N3OKENBrackcides KHADAMBI��M/NKENGaudencia MAKOKHA��L1MITAViktoria ORSI TOTH��K+LITAMarta MENEGATTI��J%KGERKarla BORGER��I!JGERJulia SUDE��H+ICZEMarketa SLUKOVA��G1HCZEBarbora HERMANNOVA��F-GARGFernanda PEREYRA��E!FARGAna GALLAY��D%ENEDRaisa SCHOON�C!DNEDKatja STAM��B+CJPNMegumi MURAKAMI��A!BJPNMiki ISHII��@'AUSASarah SPONCIL��?#@USAKelly CLAES��>)?SUINina BETSCHART��='>SUITanja HUBERLI��<1=ROCSvetlana KHOLOMINA��;3<ROCNadezda MAKROGUZOVA�#�:;;ESPElsa BAQUERIZO MCMILLAN�%�9?:ESPLiliana FERNANDEZ STEINER�*�8I9CUBLeila Consuelo MARTINEZ ORTEGA�'�7C8CUBLidianny ECHEVARRIA BENITEZ��6#7CHNXinxin WANG��56CHNChen XUE��45CHNXinyi XIA��34CHNFan WANG�!�273BRAEduarda SANTOS LISBOA��1/2BRAAgatha BEDNARCZUK��0-1GERMargareta KOZUCH��/%0GERLaura LUDWIG�"�.9/CANMelissa HUMANA-PAREDES��-#.CANSarah PAVAN��,/-CANBrandie WILKERSON��++,CANHeather BANSLEY��*'+BRARebecca SILVA�$�)=*BRAAna Patricia SILVA RAMOS�!�(7)LATAnastasija KRAVCENOKA��''(LATTina GRAUDINA��&)'SUIJoana HEIDRICH��%/&SUIAnouk VERGE-DEPRE��$)%AUSTaliqua CLANCY�%�#?$AUSMariafe ARTACHO DEL SOLAR��"1#USAAlexandra KLINEMAN��!!"USAApril ROSS�� 1!ITAMilena BALDASSARRI��- BLRAnastasiia SALOS��)ISRNicol ZELIKMAN��'ROCArina AVERINA��7UKRKhrystyna POHRANYCHNA�%ISRLinoy ASHRAM��%ROCDina AVERINA�!�7UKRViktoriia ONOPRIIENKO��)BLRAlina HARNASKO��)BULBoryana KALEYN��-ITAAngelo CRESCENZO��)LATKalvis KALNINS��+FRASteven DA COSTA��/KAZDarkhan ASSADILOV��!EGYAli ELSAWY��3AZEFirdovsi FARZALIYEV��!JPNNaoto SAGO��#TUREray SAMDAN��3EORHamoon Derafshipour�)�GVENAndres Eduardo MADERA DELGADO�"�9JORAbdel Rahman ALMASATFA��/KAZDaniyar YULDASHEV��
%KSATareg HAMEDI��	'
JPNRyutaro ARAGA��)	GERJonathan HORNE��+IRISajad GANJZADEH��USABrian IRR��-CANDaniel GAYSINSKY��!TURUgur AKTAS��)GEOGogita ARKANIA��#CROIvan KVESIC��!EORWael Shueb�'� CVENAntonio Jose DIAZ FERNANDEZ��+ ESPDamian QUINTERO��~'�ITAMattia BUSATO��}!�JPNRyo KIYUNA��|%�TURAli SOFUOGLU��{)�GERIlja SMORGUNER�#�z;�KUWSayed Mohammed ALMOSAWI��y!�TPEYi-Ta WANG�"�x9�USAAriel TORRES GUTIERREZ��w#�KORHeejun PARK� �v5�ESPSandra SANCHEZ JAIME��u/�FRAAlexandra FERACCI��t'�NZLAndrea ANACAN��s'�JPNKiyou SHIMIZU��r%�TURDilara BOZAN��q+�GERJasmin JUETTNER��p+�ITAViviana BOTTARO��o3�HKGMo Sheung Grace LAU�!�n7�MKDPuliksenija JOVANOSKA��m)�USASakura KOKUMAI��l-�EGYFeryal ABDELAZIZ��k-�KAZSofya BERULTSEVA��j%�JPNAyumi UEKUSA��i+�ITASilvia SEMERARO��h%�ALGLamya MATOUB��g-�IRIHamideh ABBASALI��f�CHNLi GONG��e)�AZEIryna ZARETSKA�!�d7�TURMeltem HOCAOGLU AKYOL��c'�SUIElena QUIRICI��b+�FRALeila HEURTAULT�*�aI�PERAlexandra Vanessa GRANDE RISCO��`'�JPNMayumi SOMEYA��_#�TURMerve COBAN��^+�SRBJovana PREKOVIC��])�UKRAnita SEROGINA�
82� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  �����`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@8        �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  �������������������������������������������������������������  �yxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGF���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{   � ����nR1����e<�����mO1����~]?"���z\=!
�
�
�
�
�
g
K
/
	�	�	�	�	|	c	D	*	�����t\D'����{U4����{aC)�����fN2�����mM2�����qYA(����rU1�����w`E+ �^#�USAKen ERIKSEN�]'�USASusan ENQUIST�\)�USAChip ENGELLAND�[!�HUNGabor ELEK�Z'�EGYNour ELAFANDI�Y'�EGYNour ELAFANDI�X)�JPNAtsushi EITOKU�W%�IREAnthony EDDY�V-�VENManuel ECHEZURIA�U)�AUSTrisha DYKSTRA�T'�VENFernando DURO!�S;�BRA de GALARZA Jorge DUENA�R-�SLODragisa DROBNJAK�Q#�CANKarine DORE�P'�USAHoward DOBSON�O+�ESPNatalia DIDENKO�N7�DOMNestor DIAZ HENRIQUEZ&�ME�ESPJenaro Manuel DIAZ FERNANDEZ�L-�KAZZhanna DEMCHENKO�K%�NZLMike DELANEY�J#�CHIFabian DAZA�I#�AUSJeremy DAVY�H/�ROCTatiana DANCHENKO�G#�IRESean DANCER�F+�BRARenan DAL ZOTTO�E#�ANGFilipe CRUZ �D9�COLMargalida CRESPI JAUME�C)�FRADavid COURTEIX�B%�BELAdam COMMENS�A)�FRAVincent COLLET�@3�INDGregg CLARK STEPHEN�?%�PRKJooweon CHUN�>#�PRKIl Eon CHOI�='�SMRSimona CHIARI�<1�GRENatalia CHERNETSKA�;1�GRENatalia CHERNETSKA�:/�EGYAnastasiya CHEPAK�9/�EGYAnastasiya CHEPAK�8+�AUSCheryl CHAMBERS�7#�CHIAlex CASTRO�6/�JPNMary Lucy CASAREZ�5#�MEXCarlos CARO�43�ITAAlessandro CAMPAGNA�3!�NEDMax CALDAS!�2;�ARGManuel CADENAS MONTANES�1!�CANMick BYRNE�0)�GERAxel BUSENKELL�/'�ROCSergio BUSATO�./�ITAGiovanna BURLANDO�-'�NZLAllan BUNTING�,'�AUTAristide BRUN�+'�NGRMichael BROWN�*#�USAChris BROWN�)+�AUSSandy BRONDELLO�(/�BRAWilliam BRODERICK�''�NORMarit BREIVIK�&%�NGRAlice BOLTON�%5�ITAGianlorenzo BLENGINI#�$?�ISRSvetlana BLECHER SIDOROVA�##�HUNAttila BIRO �"9�INDAnkitha BILLAVA SURESH�!+�NORChristian BERGE� !�USALaura BERG�%�SRBFilip BENCIC"�=�PURGerardo BATISTA SANTIAGO�-�ARGFernando BATISTA�#�AUSColin BATCH�#�GBRPaola BASSO�#�CANMel BASILIO�%�ROCPawel BARYLA�!�CHNZhuang BAO�-�POLWojciech BANBULA�'�ROUHoratiu BACIU�1�FIJGareth Colin BABER�#�SWETomas AXNER�'�AUSGraham ARNOLD�1�JPNXavier ARNAU CREUS�%�NEDAlyson ANNAN�/�USAVlatko ANDONOVSKI�-�ESPPablo AMO AGUADO�3�PURFabian AMAYA GAITAN��EGYKamal ALY�'�KSASaad ALSHEHRI%�C�ESPManuel Angel ALLER CARBALLO�
+�ROCAlexey ALEKSEEV�	+�IRIVladimir ALEKNO�'�CANLonni ALAMEDA�'�GERKais AL SAADI#�?�JPNSiegfried Gottlieb AIKMAN�!�JPNYuya AGEBA�%�CIVCherif ADAMA�'�JPNKatsuhiko ABE��JPNJunya ABE�+�EGYWael ABDELMAGID� -�MARZouheir ELGRAOUI��+�MARMohammed ABICHA��~3JPNKatsuhiro SHIRATORI��}+~JPNYusuke ISHIJIMA�,�|M}ITAAdrian Ignacio CARAMBULA RAURICH��{%|ITAEnrico ROSSI��z+{CZEDavid SCHWEINER��y)zCZEOndrej PERUSIC��x+yAUSDamien SCHUMANN��w1xAUSChristopher MCHUGH��v1wARGJulian Amado AZAAD��u1vARGNicolas CAPOGROSSO��t%uSUIMirco GERSON��s+tSUIAdrian HEIDRICH��r)sPOLBartosz LOSIAK��q%rPOLPiotr KANTOR��p+qUSANicholas LUCENA��o+pUSAPhil DALHAUSSER��n!oUSATri BOURNE��m!nUSAJacob GIBB��l-mPOLGrzegorz FIJALEK��k#lPOLMichal BRYL��j+kNEDRobert MEEUWSEN��i/jNEDAlexander BROUWER�#�h;iMEXJose Luis RUBIO CAMARGO�&�gAhMEXJosue Gaston GAXIOLA LEYVA�!�f7gESPAdrian GAVIRA COLLADO��e7fESPPablo HERRERA ALLEPUZ�d+eCHIEsteban GRIMALT��c'dCHIMarco GRIMALT��b'cBRABruno SCHMIDT�-�aObBRAEvandro GONCALVES OLIVEIRA JUNIOR��`1aROCKonstantin SEMENOV��_'`ROCIlya LESHUKOV��^%_ITADaniele LUPO��]'^ITAPaolo NICOLAI��\+]GERClemens WICKLER��[%\GERJulius THOLE��Z3[BRAAlvaro MORAIS FILHO�   �) ����wY?%�����jO/�����nM1����{_A!����jL0
�
�
�
�
�
]
A
*
	�	�	�	�	�	v	]	G	*	����x\E*	�����fE,�����rX?$�����tZ;����rS5������gG-����x_H����{cH)                 �f1gCHIFernando MARINELLI�e)fINDSjoerd MARIJNE�d#eHUNTamas MARCZ�c/dVENAndres MANZANILLO�b%cAUSJohn MANENTI�a-bSRBMarina MALJKOVIC�`#aJPNHare MAKIRI�_/`RSASibusiso MAHLANGU�^#_JPNKenzo MAEDA(�]I^CHNEuan Michael Gordon MACKINTOSH�\!]SLOAnze MACEK�[%\MEXJaime LOZANO�Z#[NGRLuke LOUCKS�Y3ZARGMonica Susana LOPEZ�X5YDOMMelvyn LOPEZ GUILLEN�W7XKENLeonard LOPES BARBOSA�V)WMEXAdriana LOFTUS�U1VESPAdrian Mayner LOCK�T'UCHIJose LETELIER�S3TESPJesus LAZARO CORRAL�R-SPRKStefano LAVARINI�QRCHNPing LANG�P#QJPNJulio LAMAS�O'PNZLClark LAIDLAW�N%ODOMMarcos KWIEK�M%NROCAndrey KUZIN�L%MGERStefan KUNTZ�K/LCANKatarzyna KULESZA�J/KFRAOlivier KRUMBHOLZ�I1JBRNAron KRIST JANSSON�H)IUSAAdam KRIKORIAN�G+HSRBSvetlana KONTIC�F5GROCAleksei KONSTANTINOV�E'FCIVAnthony KOFFI�D-EKAZNemanja KNEZEVIC�C+DNEDAuke KLARENBEEK�B/CJPNKenji KITABAYASHI�A1BAUSAndrew KIRKPATRICK�@'AJPNUlrik KIRKELY�?%@USAKarch KIRALY�>!?PRKHagbum KIM�=#>PRKChanbin KIM�<#=GBRDanny KERRY�;)<GERFlorian KELLER�:+;JPNTakafumi KAZAMA�9%:JPNAsaki KAWASE�8)9ZAMBergin KANUNGO�7%8PRKJae Won KANG�6'7JPNMakoto KANEKO�5'6BELPierre KAISER�4%5AUSNathan JONES�3#4CANChris JONES�2)3USAVickie JOHNSON�172ESPCecilia JIMENEZ NIETO�0#1CHNXiuquan JIA�/'0CIVEssapa JEROME�.%/AUSDee JENNINGS�-5.NEDEsther JAUMA CAYUELA�,'-BRAAndre JARDINE�+-,DENNikolaj JACOBSEN�*-+JPNKensuke IWABUCHI�)%*JPNMasayo IMURA�(+)NGROtis HUGHLEY JR�''(USADaniel HUGHES�&5'JPNThomas Wayne HOVASSE�%)&HUNZoltan HOLANEK�$!%CANGlenn HOAG�#+$JPNNorikazu HIROSE�"%#POLVital HEYNEN�!-"ARGSergio HERNANDEZ'� G!ESPJose Ignacio HERNANDEZ FRAILE�1 NORThorir HERGEIRSSON�'CANAndre HENNING�%GERClaas HENKEL�-CAMThon Ponloeu HEM�NZLDanny HAY�%NEDArno HAVENGA�%USALaura HARVEY�%AUSLaing HARROW�'USAWilliam HARDY�'NGRDarvin de HAM�'NEDRhett HALKETT�!DENSimon HALD�-CIVSoualiho HAIDARA�!GBRMark HAGER�+AUSTony GUSTAVSSON �9BRAJose Roberto GUIMARAES�)VENRonald GUILLEN�/TURGiovanni GUIDETTI�-MEXRolando GUERRERO�-MEXRolando GUERRERO�5ESPJulen GUERRERO LOPEZ�
+ROCElena GRYZUNOVA�	+
GERArne GRESKOWIAK�/	ITAGianluca GRAZIOSI�/GRECristina GRAUPERA�'IREAdam GRAINGER#�?ESPJuan David GORDO MANSILLA�)AUSBrian GOORJIAN�7ESPAngel GONZALEZ JARENO�+MEXAnibal GONZALEZ�3ARGSantiago GOMEZ CORA� /MNEVladimir GOJKOVIC�+ GERAlfred GISLASON�~)�CZERonen GINZBURG�}+�FRAGuillaume GILLE�|7�ITAPatrizia GIALLOMBARDO�{7�ITAPatrizia GIALLOMBARDO�z-�TUNAntonio GIACOBBE�y/�SWEPeter GERHARDSSON�x+�FRAValerie GARNIER�w5�COLPaula GARCIA PIZARRO�v'�DOMNestor GARCIA�u7�DOMManuel GARCIA HERRERA�t1�ROCAleksandr GAIDUKOV�s'�CANPasha GADEMAN�r#�FIJSaiasi FULI�q'�ESPMayuko FUJIKI�p'�ESPMayuko FUJIKI�o3�USAMatthew FUERBRINGER�n)�USAAndrea FUENTES�m#�USAMike FRIDAY�l'�GBRScott FORREST�k+�FRALaurent FOIREST�j)�USATairia FLOWERS�i#�ISRNathan FISH�h)�ARGHernan FERRARO�g1�UKRTetiana FEDIUSHYNA�f'�VENPablo FAVAREL�e'�AUSElvis FATOVIC�d/�ITARoberta FARINELLI�c/�ITARoberta FARINELLI�b'�HONMiguel FALERO�a3�EGYYasmine FAHMY LATIF�`#�FRAJulie FABRE�_%�RSAGareth EWING   � ����sY:����dE*����~fK.����{\D,�����oM5
�
�
�
�
u
^
C
(
	�	�	�	�	{	a	F	+	�����dB"����sZ?#	�����lM5�����y]A(�����sZ9�����~eH+�����x]A(����iN5     �o�AUSTim WALSH�n%�USAMichael WALL�m)�ROCElena VORONOVA�l/�GRETheodoros VLACHOS#�k?�ESPCarlos Enrique VIVER ARZA#�j?�KEN de SOUZA Marcelo VITORIN�i-�VENOrlando VILLEGAS�h/�ESPAnna VEGA HERRERO�g'�VENDiego VASQUEZ�f%�JPNReika UTSUGI�e+�UKRVolodymyr UTKIN�d)�USADejan UDOVICIC�c�USAIme UDOKA�b%�NZLGlenn TURNER�a#�CROIvica TUCAK�`-�ITAYumiko TOMOMATSU�_)�FRALaurent TILLIE�^)�CANLisa THOMAIDIS�]%�SRBZoran TERZIC�\-�GREAna TARRES CAMPA�[-�GREAna TARRES CAMPA�Z%�USAHeather TARR�Y'�JPNRisako TAKITA�X)�JPNAsako TAKAKURA�W%�CHIGerman TAGLE�V%�SLONora SZAUDER�U'�CANGabor SZAUDER�T'�CANGabor SZAUDER�S3�BLRAliona SVETLICHNAYA�R5�BRAPia Mariane SUNDHAGE�Q%�BELJacques STAS�P+�AUSDave STANIFORTH�O#�USADawn STALEY�N-�GBRStefania SPERONI�M#�USAJohn SPERAW�L)�ESPFrederic SOYEZ�K'�SWEGlenn SOLBERG�J!�CANMark SMITH�I%�NZLDarren SMITH�H+�INDShivendra SINGH�G+�KENInnocent SIMIYU�F-�JPNDagur SIGURDSSON�E'�EGYZaghloul SIAM�D'�EGYGharib SHAWKY�C#�NZLGraham SHAW�B-�AUTShahbaz SHAHNAZI�A-�IRIMehran SHAHINTAB�@%�NZLTom SERMANNI�?#�PRKChun Oh SEO�>1�SLOAleksander SEKULIC�=+�NGRApril SCHILLING�<+�ESPSergio SCARIOLO�;!�MNEMaja SAVIC�:#�SRBDejan SAVIC�9%�VENRonald SARTI�8-�ROCTuomas SAMMELVUO�7'�EGYMohamed SALAM�6+�ITARomeo SACCHETTI�5)�GBRAnthony ROQUES�4%�GERHenrik ROEDL"�3=�ARGEduardo Rafael RODRIGUEZ�2)�FRASylvain RIPOLL�1#�AUSJohn RILLIE�0!�GBRHege RIISE�/3�ESPJordi RIBERA ROMANS�.3�ARGCarlos Jose RETEGUI�-3�ARGCarlos Jose RETEGUI�,7�ESPJudit REQUENA PERICAS�+7�ESPJudit REQUENA PERICAS�*-�INDGraham John REID�)-�GERXavier RECKINGER�(#�ROUMirel RADOI�''�CANBev PRIESTMAN�&5�ESPJoaquin PRADO BRANAS�%#�RSANeil POWELL�$)�AUSKatrina POWELL�#)�AUSAnthony POTTER�"'�CHNPetar POROBIC�!)�USAGregg POPOVICH� 1�ITAFederico PIZZOLINI�3�ROCEkaterina PISKAREVA�+�ITARossella PIBIRI�!�VENJose PEREZ�3�PORPaulo Jorge PEREIRA�)�MEXOfelia PEDRERO�)�SMRIsabella PECCI�!�CANHenry PAUL�-�EGYRoberto PARRONDO�)�CANDavid PARADELO�)�VENHernan PANTOJA�-�ITAGiovanna PALERMI�7�PURAngel PAGAN CRISTOBAL�!�JPNYoji OMOTO�!�KENFelix OLOO�#�NGROgoh ODAUDU�7�ESPMiguel Angel OCA GAIA�'�RSADavid NOTOANE�)�JPNTakumi NISHIDA�-�CIVChristophe NEVES�+�RSAMthandazo NCUBE�/�JPNYuichi NAKAGAICHI�
#�JPNKumi NAKADA�	%�RSATaren NAIDOO�#�JPNShoji NAGAE�#�ZAMBruce MWAPE�1�MEXNoe de Jesus MUNOZ�/�CHNAdilijiang MULATI�/�JPNMakihiro MOTOMIYA�+�JPNHajime MORIYASU�-�AUSLoredana MONTICO�-�AUSLoredana MONTICO� 5�ESPLucas MONDELO GARCIA�-�NGRSilifat MOHAMMED�~)KSASayeda MOHAMED�}#~EGYMai MOHAMED�|-}AUTAlbena MLADENOVA�{'|JPNMiya MIYAKAWA�z#{JPNKeiko MIURA�y3zESPDaniel MIRET GARCIA�x/yCZEMichal MIREJOVSKY�w1xAUSPredrag MIHAILOVIC�v)wFRARachid MEZIANE�u1vUKRValeriia MEZHENINA�t+uBELPhilip MESTDAGH#�s?tDOM del ROSARIO Jose MERCEDE�r+sRSADelaine MENTOOR�q3rESPGemma MENGUAL CIVIL �p9qARGMarcelo Rodolfo MENDEZ�o%pNGRBobby MEDINA�n+oITADavide MAZZANTI�m1nNEDEmmanuel MAYONNADE�l'mUSAElena MAYBURY�k1lJPNYasushi MATSUODANI�j/kJPNYoshiyuki MATSUNO�i#jRSAMario MASHA�h#iRSAPaul MARTIN�g3hESPDavid MARTIN LOZANO
  UX ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`X                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  �������������������������������������������������������������������������������������������������������������������������������������������������������������������    �����qL3����yZ?(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                �'RSANkuliso ZONDI�!NEDSimon ZIJP� )CHNXiaohuan ZHANG�1 LIEFrancesca ZAMPIERI �~9�ESPJavier ZAMORA PEDREIRA�}+�UKROlesia ZAITSEVA�|'�ROCSergey YURKIN�{#�CHNLingxi YUAN�z'�JPNNoriko YAMAJI�y�CHNLimin XU�x'�USAJerold WRIGHT�w%�POLPawel WOICKI"�v=�ARGRoberto Osvaldo WOELFLIN�u#�CHIOscar WIRTH�t)�NEDSarina WIEGMAN�s+�USAJerry WEINSTEIN�r�CHNYang WANG�q�CHNJie WANG�p�CHNJie WANG   #.    ����������������������|vpjd^XRLF@:4.�������nZF3������}iUA-
�
�
�
�
�
�
u
_
K
8
$
	�	�	�	�	�	�	~	j	V	B	.		������zgP:&�������o[E2
������}jWD1
������oYD. �����~hR<&������xbM7!������q[F0������                    �3! �Tokyo 2020�2! �Tokyo 2020�1 �Rio 2016�0! �Tokyo 2020�/! �Tokyo 2020�. �Rio 2016�-! �Tokyo 2020�,! �Tokyo 2020�+! �Tokyo 2020�* �Rio 2016�)! �Tokyo 2020�(! �Tokyo 2020�'! �Tokyo 2020�&! �Tokyo 2020�%! �Tokyo 2020�$! �Tokyo 2020�#! �Tokyo 2020�"! �Tokyo 2020�!!	 �Tokyo 2020� ! �Tokyo 2020�! �Tokyo 2020� �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020� �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020� �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�	 �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020� �Rio 2016�
!	 �Tokyo 2020�	# �London 2012�!	 �Tokyo 2020� �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020� % �Beijing 2008!Tokyo 2020~~Rio 2016}!}Tokyo 2020||Rio 2016{{Rio 2016zzRio 2016y	yRio 2016x!xTokyo 2020w%		wBeijing 2008v!vTokyo 2020uuRio 2016t!	tTokyo 2020s!sTokyo 2020rrRio 2016q!qTokyo 2020p!pTokyo 2020o	oRio 2016n#	nSydney 2000m!mTokyo 2020l#lAthens 2004k!kTokyo 2020j!jTokyo 2020iiRio 2016h!hTokyo 2020ggRio 2016f!fTokyo 2020e%eBeijing 2008d!dTokyo 2020c!cTokyo 2020b#bSydney 2000a%aBeijing 2008``Rio 2016_#_London 2012^!	^Tokyo 2020]!]Tokyo 2020\!\Tokyo 2020[!	[Tokyo 2020Z!ZTokyo 2020Y!YTokyo 2020XXRio 2016WWRio 2016V!VTokyo 2020U!UTokyo 2020T!TTokyo 2020S!STokyo 2020RRRio 2016Q#QLondon 2012P%PBeijing 2008O!OTokyo 2020N%NBeijing 2008M!MTokyo 2020L!LTokyo 2020KKRio 2016J!JTokyo 2020IIRio 2016H!HTokyo 2020G#	GLondon 2012F	FRio 2016E!ETokyo 2020D%	DBeijing 2008C!CTokyo 2020B!BTokyo 2020A!ATokyo 2020@!@Tokyo 2020?!?Tokyo 2020>#	>Athens 2004=!=Tokyo 2020<!<Tokyo 2020;!;Tokyo 2020:!:Tokyo 20209#9London 20128!	8Tokyo 20207!7Tokyo 20206!6Tokyo 20205!5Tokyo 20204!4Tokyo 20203!3Tokyo 20202!2Tokyo 20201!1Tokyo 202000Rio 2016/!/Tokyo 2020.!.Tokyo 2020-!-Tokyo 2020,,Rio 2016+!+Tokyo 2020*!*Tokyo 2020)!)Tokyo 2020(#(London 2012'!'Tokyo 2020&&Rio 2016%%Rio 2016$!		$Tokyo 2020#!#Tokyo 2020"!"Tokyo 2020!!!Tokyo 2020  Rio 2016!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020!	Tokyo 2020!Tokyo 2020#	London 2012#		Sydney 2000!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020Rio 2016!Tokyo 2020Rio 2016Rio 2016!Tokyo 2020!Tokyo 2020
!   ��   ��n   ��E   ��   ��u   ��M   ��$   �z   }�Q   |�*   z�   y�Z   w�5   v�   t�e   s�;   r�   p�g   o�<   m�   l�j   j�A   i�   g�p   f�I   d�    c�x   a�P   `�'   _�}   ]�S   \�+   Y�   X�Z   W�3   @    �����������|pdXL@���~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xp    ������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""   �HG   �   ���   ~IH   {��   x}|   u   q��   nKJ   k	�	�   h~~   e   b��   ^LL   [��   Z��   �� ������jS=)������xdP:$�������q]I5!�������nZF3������}iUA-
�
�
�
�
�
�
u
_
K
8
$
	�	�	�	�	�	�	~	j	V	B	.		������zgP:&�������o[E2
������}jWD1
������oYD. �����~hR<&������xbM7!������q[F0������                    �3! �Tokyo 2020�2! �Tokyo 2020�1 �Rio 2016�0! �Tokyo 2020�/! �Tokyo 2020�. �Rio 2016�-! �Tokyo 2020�,! �Tokyo 2020�+! �Tokyo 2020�* �Rio 2016�)! �Tokyo 2020�(! �Tokyo 2020�'! �Tokyo 2020�&! �Tokyo 2020�%! �Tokyo 2020�$! �Tokyo 2020�#! �Tokyo 2020�"! �Tokyo 2020�!!	 �Tokyo 2020� ! �Tokyo 2020�! �Tokyo 2020� �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020� �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020� �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�	 �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020� �Rio 2016�
!	 �Tokyo 2020�	# �London 2012�!	 �Tokyo 2020� �Rio 2016�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020�! �Tokyo 2020� % �Beijing 2008!Tokyo 2020~~Rio 2016}!}Tokyo 2020||Rio 2016{{Rio 2016zzRio 2016y	yRio 2016x!xTokyo 2020w%		wBeijing 2008v!vTokyo 2020uuRio 2016t!	tTokyo 2020s!sTokyo 2020rrRio 2016q!qTokyo 2020p!pTokyo 2020o	oRio 2016n#	nSydney 2000m!mTokyo 2020l#lAthens 2004k!kTokyo 2020j!jTokyo 2020iiRio 2016h!hTokyo 2020ggRio 2016f!fTokyo 2020e%eBeijing 2008d!dTokyo 2020c!cTokyo 2020b#bSydney 2000a%aBeijing 2008``Rio 2016_#_London 2012^!	^Tokyo 2020]!]Tokyo 2020\!\Tokyo 2020[!	[Tokyo 2020Z!ZTokyo 2020Y!YTokyo 2020XXRio 2016WWRio 2016V!VTokyo 2020U!UTokyo 2020T!TTokyo 2020S!STokyo 2020RRRio 2016Q#QLondon 2012P%PBeijing 2008O!OTokyo 2020N%NBeijing 2008M!MTokyo 2020L!LTokyo 2020KKRio 2016J!JTokyo 2020IIRio 2016H!HTokyo 2020G#	GLondon 2012F	FRio 2016E!ETokyo 2020D%	DBeijing 2008C!CTokyo 2020B!BTokyo 2020A!ATokyo 2020@!@Tokyo 2020?!?Tokyo 2020>#	>Athens 2004=!=Tokyo 2020<!<Tokyo 2020;!;Tokyo 2020:!:Tokyo 20209#9London 20128!	8Tokyo 20207!7Tokyo 20206!6Tokyo 20205!5Tokyo 20204!4Tokyo 20203!3Tokyo 20202!2Tokyo 20201!1Tokyo 202000Rio 2016/!/Tokyo 2020.!.Tokyo 2020-!-Tokyo 2020,,Rio 2016+!+Tokyo 2020*!*Tokyo 2020)!)Tokyo 2020(#(London 2012'!'Tokyo 2020&&Rio 2016%%Rio 2016$!		$Tokyo 2020#!#Tokyo 2020"!"Tokyo 2020!!!Tokyo 2020  Rio 2016!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020!	Tokyo 2020!Tokyo 2020#	London 2012#		Sydney 2000!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020!Tokyo 2020Rio 2016!Tokyo 2020Rio 2016Rio 2016!Tokyo 2020!Tokyo 2020
!
Tokyo 2020	#	Sydney 2000%Beijing 2008%Beijing 2008!Tokyo 2020!Tokyo 2020!Tokyo 2020#London 2012%Beijing 2008	#London 2012   �Z �����vaL4������jT>(������zeO9#������qX?'������u`G1
�
�
�
�
�
�
m
X
A
+
	�	�	�	�	�	�	t	_	I	3		�����iS='������t_I1�����~iS='������sZD.������s[F0�����x_I3������lV@*������rZ    �Z#ZLondon 2012�Y!YTokyo 2020�X!XTokyo 2020�W%WBeijing 2008�V!VTokyo 2020�U#ULondon 2012�T#TLondon 2012�S!STokyo 2020�R!RTokyo 2020�Q!QTokyo 2020�P!PTokyo 2020�O!OTokyo 2020�NNRio 2016�M#MAthens 2004�L%LAtlanta 1996�K!KTokyo 2020�JJRio 2016�IIRio 2016�H!HTokyo 2020�G	GRio 2016�F!FTokyo 2020�E!ETokyo 2020�D!DTokyo 2020�C%CBeijing 2008�B%		BBeijing 2008�A%ABeijing 2008�@!@Tokyo 2020�?!	?Tokyo 2020�>!>Tokyo 2020�=!=Tokyo 2020�<!<Tokyo 2020�;#;London 2012�:!:Tokyo 2020�99Rio 2016�8#8London 2012�7!7Tokyo 2020�6!6Tokyo 2020�5%5Beijing 2008�4#		4London 2012�3%3Beijing 2008�2!2Tokyo 2020�11Rio 2016�0#0Athens 2004�/!	/Tokyo 2020�.!.Tokyo 2020�-%-Beijing 2008�,!,Tokyo 2020�+	+Rio 2016�*#*Athens 2004�)!)Tokyo 2020�(!	(Tokyo 2020�'#'London 2012�&#&London 2012�%%Rio 2016�$!$Tokyo 2020�#!#Tokyo 2020�"!"Tokyo 2020�!!Rio 2016� ! Tokyo 2020�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�#Sydney 2000�Rio 2016�#London 2012�!Tokyo 2020�Rio 2016�!Tokyo 2020�!	Tokyo 2020�!			Seoul 1988	�!Tokyo 2020�Rio 2016�%	Atlanta 1996�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
!
Tokyo 2020�	!		Tokyo 2020�!Tokyo 2020�#London 2012�#	London 2012�!Tokyo 2020�		Rio 2016�#	London 2012�Rio 2016�!Tokyo 2020� ! Tokyo 2020� �Rio 2016�~! �Tokyo 2020�}# �London 2012�|! �Tokyo 2020�{#	 �Athens 2004�z! �Tokyo 2020�y! �Tokyo 2020�x# �London 2012�w! �Tokyo 2020�v! �Tokyo 2020�u! �Tokyo 2020�t �Rio 2016�s	 �Rio 2016�r! �Tokyo 2020�q �Rio 2016�p! �Tokyo 2020�o! �Tokyo 2020�n! �Tokyo 2020�m	 �Rio 2016�l# �London 2012�k! �Tokyo 2020�j! �Tokyo 2020�i%	 �Beijing 2008�h	 �Rio 2016�g! �Tokyo 2020�f# �London 2012�e! �Tokyo 2020�d! �Tokyo 2020�c! �Tokyo 2020�b! �Tokyo 2020�a! �Tokyo 2020�`! �Tokyo 2020�_# �London 2012�^%	 �Beijing 2008�]% �Beijing 2008�\! �Tokyo 2020�[	 �Rio 2016�Z#		 �Athens 2004�Y �Rio 2016�X �Rio 2016�W! �Tokyo 2020�V% �Beijing 2008�U! �Tokyo 2020�T! �Tokyo 2020�S! �Tokyo 2020�R! �Tokyo 2020�Q �Rio 2016�P �Rio 2016�O! �Tokyo 2020�N! �Tokyo 2020�M! �Tokyo 2020�L! �Tokyo 2020�K! �Tokyo 2020�J! �Tokyo 2020�I �Rio 2016�H! �Tokyo 2020�G! �Tokyo 2020�F! �Tokyo 2020�E! �Tokyo 2020�D! �Tokyo 2020�C �Rio 2016�B! �Tokyo 2020�A! �Tokyo 2020�@%	 �Atlanta 1996�?# �London 2012�>! �Tokyo 2020�=! �Tokyo 2020�<# �London 2012�; �Rio 2016�: �Rio 2016�9 �Rio 2016�8! �Tokyo 2020�7! �Tokyo 2020�6# �London 2012�5%	 �Beijing 2008�4# �Sydney 2000   �c �����|fN6 
������kV='������s]G2������lV<&������r\F0
�
�
�
�
�
�
k
U
?
*
	�	�	�	�	�	�	x	c	M	7	"	������mWB*������u_I3������nX?'������waI3������lWA, �����v^F0������kU?)������yc           �!Tokyo 2020�!Tokyo 2020� ! Tokyo 2020�!�Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!	�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o�Rio 2016�n!�Tokyo 2020�m!�Tokyo 2020�l#	�London 2012�k#�London 2012�j!�Tokyo 2020�i�Rio 2016�h%�Beijing 2008�g#�London 2012�f!�Tokyo 2020�e#�London 2012�d!�Tokyo 2020�c!�Tokyo 2020�b�Rio 2016�a!�Tokyo 2020�`�Rio 2016�_�Rio 2016�^!�Tokyo 2020�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W#	�London 2012�V!	�Tokyo 2020�U#�London 2012�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K#�London 2012�J%	�Beijing 2008�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!�Tokyo 2020�E�Rio 2016�D�Rio 2016�C!�Tokyo 2020�B#	�London 2012�A�Rio 2016�@!�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<%�Beijing 2008�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7�Rio 2016�6!�Tokyo 2020�5%		�Beijing 2008�4#�Sydney 2000�3�Rio 2016�2!�Tokyo 2020�1�Rio 2016�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-%�Beijing 2008�,#	�London 2012�+!�Tokyo 2020�*!�Tokyo 2020�)�Rio 2016�(!�Tokyo 2020�'!�Tokyo 2020�&�Rio 2016�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!#�Athens 2004� !�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�!�Tokyo 2020��Rio 2016��Rio 2016�!	�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�
#�London 2012�	!�Tokyo 2020��Rio 2016�#	�London 2012�!�Tokyo 2020�%�Beijing 2008�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020� !�Tokyo 2020�Rio 2016�~!~Tokyo 2020�}!}Tokyo 2020�|#|London 2012�{{Rio 2016�zzRio 2016�y!yTokyo 2020�x!xTokyo 2020�w%	wBeijing 2008�v!vTokyo 2020�uuRio 2016�ttRio 2016�s#	sLondon 2012�r#		rLondon 2012�q	qRio 2016�ppRio 2016�o!oTokyo 2020�n%nAtlanta 1996�mmRio 2016�l!lTokyo 2020�k%kBeijing 2008�j!	jTokyo 2020�i%		iBeijing 2008�h	hRio 2016�g!gTokyo 2020�f!	fTokyo 2020�e!eTokyo 2020�d!dTokyo 2020�c#cLondon 2012�b#bLondon 2012�a!aTokyo 2020�`#`London 2012�_!_Tokyo 2020�^!^Tokyo 2020�]]Rio 2016�\\Rio 2016�[![Tokyo 2020
   ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xp    ������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

				
�e@ ����������������xph`XPH@80(  ����������������xph	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@����������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�`XPH@80(  ����������������xph`XPH@80(  ������        ~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������   �` �����|fP:$������q\F0�����{eO9#������t_J5	�����jT>&
�
�
�
�
�
�
x
b
L
6
 

	�	�	�	�	�	�	s	Z	B	,		 �����|fN8"������oYC-�����}hR<&������u`K2������jT?)������|gR<$������q\F0�����x`      �+#�London 2012�*!�Tokyo 2020�)#	�London 2012�(#�London 2012�'!�Tokyo 2020�&!	�Tokyo 2020�%!	�Tokyo 2020�$#�London 2012�#!�Tokyo 2020�"!�Tokyo 2020�!!	�Tokyo 2020� �Rio 2016�!�Tokyo 2020�#	�London 2012�#�London 2012�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�#�London 2012�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016�!	�Tokyo 2020�
�Rio 2016�	!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020��Rio 2016�	�Rio 2016�!	�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� %�Beijing 2008�%Beijing 2008�~~Rio 2016�}}Rio 2016�|!|Tokyo 2020�{{Rio 2016�z%	zBeijing 2008�yyRio 2016�xxRio 2016�w!wTokyo 2020�v!vTokyo 2020�u!uTokyo 2020�t!tTokyo 2020�s!sTokyo 2020�r!	rTokyo 2020�qqRio 2016�p!pTokyo 2020�o!	oTokyo 2020�n#	nLondon 2012�m!mTokyo 2020�llRio 2016�kkRio 2016�j!jTokyo 2020�iiRio 2016�h!hTokyo 2020�g!gTokyo 2020�f!fTokyo 2020�e!eTokyo 2020�d#dAthens 2004�ccRio 2016�bbRio 2016�a!	aTokyo 2020�`%`Beijing 2008�_!_Tokyo 2020�^!	^Tokyo 2020�]!]Tokyo 2020�\!\Tokyo 2020�[#[Sydney 2000�Z!ZTokyo 2020�YYRio 2016�X!XTokyo 2020�W	WRio 2016�V!VTokyo 2020�U#	ULondon 2012�T!TTokyo 2020�S!STokyo 2020�R!RTokyo 2020�Q!QTokyo 2020�P#PLondon 2012�O%OBeijing 2008�N!NTokyo 2020�M!MTokyo 2020�LLRio 2016�K!KTokyo 2020�J!JTokyo 2020�IIRio 2016�HHRio 2016�G!GTokyo 2020�F!FTokyo 2020�E!ETokyo 2020�D!DTokyo 2020�C!	CTokyo 2020�B!	BTokyo 2020�A!ATokyo 2020�@	@Rio 2016�?!?Tokyo 2020�>!>Tokyo 2020�=!	=Tokyo 2020�<!<Tokyo 2020�;;Rio 2016�:#:London 2012�9!9Tokyo 2020�8!8Tokyo 2020�77Rio 2016�6!6Tokyo 2020�5!	5Tokyo 2020�4#	4London 2012�3!3Tokyo 2020�2%		2Beijing 2008�1!1Tokyo 2020�0!0Tokyo 2020�/!/Tokyo 2020�..Rio 2016�-	-Rio 2016�,,Rio 2016�+!+Tokyo 2020�*!	*Tokyo 2020�)!)Tokyo 2020�(!(Tokyo 2020�''Rio 2016�&!&Tokyo 2020�%!	%Tokyo 2020�$!$Tokyo 2020�#!#Tokyo 2020�"!"Tokyo 2020�!!!Tokyo 2020� ! Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�	Rio 2016�!Tokyo 2020�!Tokyo 2020�#London 2012�!	Tokyo 2020�!Tokyo 2020�Rio 2016�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
!
Tokyo 2020�	!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020   �f �����xbL6 �����~hS;%������q\F.�����|fP:$������pZB-
�
�
�
�
�
x
b
L
7
!
	�	�	�	�	�	�	r	\	G	2		������lV@+ �����zaK5	������r\F.�����|bL7������mWA+������ycM7!������pXB-�����|f              �S!STokyo 2020�R!RTokyo 2020�Q!QTokyo 2020�P!PTokyo 2020�O!OTokyo 2020�N#NAthens 2004�M!MTokyo 2020�L!LTokyo 2020�KKRio 2016�JJRio 2016�I!ITokyo 2020�H#HLondon 2012�G!GTokyo 2020�F!FTokyo 2020�E!ETokyo 2020�D!DTokyo 2020�C!CTokyo 2020�B#BLondon 2012�AARio 2016�@!@Tokyo 2020�?!?Tokyo 2020�>!>Tokyo 2020�=!=Tokyo 2020�<!<Tokyo 2020�;!;Tokyo 2020�:!:Tokyo 2020�99Rio 2016�8!8Tokyo 2020�7!7Tokyo 2020�6%	6Beijing 2008�5!5Tokyo 2020�4!4Tokyo 2020�3!3Tokyo 2020�2!2Tokyo 2020�1!1Tokyo 2020�0!0Tokyo 2020�/!/Tokyo 2020�.!.Tokyo 2020�-!-Tokyo 2020�,!,Tokyo 2020�+	+Rio 2016�*!*Tokyo 2020�)%)Beijing 2008�(#(London 2012�''Rio 2016�&!&Tokyo 2020�%%%Beijing 2008�$!$Tokyo 2020�##Rio 2016�""Rio 2016�!#!London 2012� # London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#	London 2012�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�	Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�%Beijing 2008�#London 2012�!Tokyo 2020�!Tokyo 2020�
!
Tokyo 2020�	!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020� ! Tokyo 2020�!�Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|�Rio 2016�{�Rio 2016�z!�Tokyo 2020�y�Rio 2016�x�Rio 2016�w!�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t		�Rio 2016�s!�Tokyo 2020�r!�Tokyo 2020�q!	�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m�Rio 2016�l!�Tokyo 2020�k!�Tokyo 2020�j#�London 2012�i!�Tokyo 2020�h#	�London 2012�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b�Rio 2016�a#�London 2012�`!�Tokyo 2020�_!�Tokyo 2020�^�Rio 2016�]!�Tokyo 2020�\	�Rio 2016�[!�Tokyo 2020�Z#	�London 2012�Y#�London 2012�X#�London 2012�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!�Tokyo 2020�R%�Beijing 2008�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N		�Rio 2016�M�Rio 2016�L!�Tokyo 2020�K#�Athens 2004�J!�Tokyo 2020�I�Rio 2016�H!	�Tokyo 2020�G�Rio 2016�F!�Tokyo 2020�E�Rio 2016�D!�Tokyo 2020�C#	�London 2012�B#	�London 2012�A#			�London 2012�@!�Tokyo 2020�?#�London 2012�>�Rio 2016�=!�Tokyo 2020�<�Rio 2016�;!�Tokyo 2020�:!	�Tokyo 2020�9!�Tokyo 2020�8%	�Beijing 2008�7#�London 2012�6#�London 2012�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1#�London 2012�0!�Tokyo 2020�/#�London 2012�.!�Tokyo 2020�-!�Tokyo 2020�,!�Tokyo 2020
he@ 0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�`XPH@80(  ����������������xph`XPH@80(  ������	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@����������xph`XPH@80(  ����������������xph`XPH@8����������������xph`XPH@80(  ����������������xph        

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMM

		  ��������������������������������������������������KKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  LLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!    �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLL   �^ �����~hR<&������pZE/�����iS=(������waK6 ������q[E,
�
�
�
�
�
}
g
Q
<
&
	�	�	�	�	�	�	t	^	H	2		������nXB, �����|fP:$������t^H3������mWA+������ycM7!������q\F0�����~hR<#������t^  �}!�Tokyo 2020�|!�Tokyo 2020�{�Rio 2016�z!�Tokyo 2020�y!�Tokyo 2020�x!	�Tokyo 2020�w!�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t#�London 2012�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m%�Beijing 2008�l�Rio 2016�k!�Tokyo 2020�j!	�Tokyo 2020�i!	�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f	�Rio 2016�e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b!	�Tokyo 2020�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!	�Tokyo 2020�]!	�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!�Tokyo 2020�R#�London 2012�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!	�Tokyo 2020�E�Rio 2016�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@!	�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!	�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6!�Tokyo 2020�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,!�Tokyo 2020�+�Rio 2016�*!�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'!�Tokyo 2020�&�Rio 2016�%!�Tokyo 2020�$!�Tokyo 2020�#!	�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�%		�Beijing 2008�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�	�Rio 2016�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�%�Beijing 2008�
!�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016� !�Tokyo 2020�Rio 2016�~!~Tokyo 2020�}!}Tokyo 2020�|!	|Tokyo 2020�{!{Tokyo 2020�zzRio 2016�y!	yTokyo 2020�x%	xBeijing 2008�wwRio 2016�v!vTokyo 2020�u!uTokyo 2020�ttRio 2016�s!sTokyo 2020�r!rTokyo 2020�q!qTokyo 2020�p!pTokyo 2020�o!oTokyo 2020�n!nTokyo 2020�m!mTokyo 2020�l!lTokyo 2020�k!kTokyo 2020�j!jTokyo 2020�i!iTokyo 2020�h!	hTokyo 2020�g	gRio 2016�f!fTokyo 2020�e#	eLondon 2012�d!dTokyo 2020�c!cTokyo 2020�b!bTokyo 2020�a!aTokyo 2020�`#`London 2012�_!_Tokyo 2020�^#^London 2012�]!]Tokyo 2020�\!\Tokyo 2020�[![Tokyo 2020�Z!ZTokyo 2020�YYRio 2016�X!XTokyo 2020�WWRio 2016�V!VTokyo 2020�U!	UTokyo 2020�T!TTokyo 2020   �j �����zeP:$������p[E/�����iS>(������zdN8"������s]G1
�
�
�
�
�
�
k
U
?
)
	�	�	�	�	�	�	y	c	M	8	"	������s]G1������jT>(������zdO7"������r\G1������jT>(������ycM7"������p[E/������j              �'!�Tokyo 2020�&�Rio 2016�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�
!	�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016� !�Tokyo 2020�#London 2012�~!~Tokyo 2020�}!}Tokyo 2020�|!|Tokyo 2020�{!{Tokyo 2020�z	zRio 2016�y!yTokyo 2020�x!xTokyo 2020�w!wTokyo 2020�v!vTokyo 2020�u!uTokyo 2020�t!tTokyo 2020�s!	sTokyo 2020�r!rTokyo 2020�q!qTokyo 2020�ppRio 2016�o#oLondon 2012�nnRio 2016�m!mTokyo 2020�l!lTokyo 2020�k	kRio 2016�j	jRio 2016�i!iTokyo 2020�h!hTokyo 2020�g!gTokyo 2020�f!fTokyo 2020�e!eTokyo 2020�d!dTokyo 2020�c!cTokyo 2020�b!bTokyo 2020�a!aTokyo 2020�`	`Rio 2016�_!_Tokyo 2020�^!	^Tokyo 2020�]!]Tokyo 2020�\!\Tokyo 2020�[#	[London 2012�Z!ZTokyo 2020�Y!YTokyo 2020�X!XTokyo 2020�W!WTokyo 2020�V!VTokyo 2020�U!UTokyo 2020�T!TTokyo 2020�S!STokyo 2020�RRRio 2016�Q!QTokyo 2020�P!PTokyo 2020�O!OTokyo 2020�N!NTokyo 2020�M!MTokyo 2020�LLRio 2016�K!KTokyo 2020�J!JTokyo 2020�I!ITokyo 2020�H!HTokyo 2020�G!GTokyo 2020�F!FTokyo 2020�E!ETokyo 2020�D!	DTokyo 2020�C!CTokyo 2020�B!BTokyo 2020�A!ATokyo 2020�@!@Tokyo 2020�?!?Tokyo 2020�>!>Tokyo 2020�=!=Tokyo 2020�<!<Tokyo 2020�;!;Tokyo 2020�:!	:Tokyo 2020�9!9Tokyo 2020�8!8Tokyo 2020�7!7Tokyo 2020�6!6Tokyo 2020�5!5Tokyo 2020�4!4Tokyo 2020�3!3Tokyo 2020�2	2Rio 2016�1!1Tokyo 2020�0!0Tokyo 2020�/!/Tokyo 2020�.!.Tokyo 2020�-!	-Tokyo 2020�,!,Tokyo 2020�+!+Tokyo 2020�*!*Tokyo 2020�)!)Tokyo 2020�(!(Tokyo 2020�'!'Tokyo 2020�&!&Tokyo 2020�%!%Tokyo 2020�$!$Tokyo 2020�#!#Tokyo 2020�"!	"Tokyo 2020�!	!Rio 2016�  Rio 2016�!Tokyo 2020�!Tokyo 2020�	Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�#London 2012�!Tokyo 2020�!Tokyo 2020�	Rio 2016�!Tokyo 2020�
!
Tokyo 2020�	!	Tokyo 2020�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� ! Tokyo 2020�!�Tokyo 2020�~#�London 2012   �i �����}dO:%������kV='������|fP:$������s]G1������pZD.
�
�
�
�
�
�
k
S
=
'
	�	�	�	�	�	�	y	a	I	4		�����~hR=(������ycM7!������r\F. �����zeL6 
������oYD. �����ycN8"
������oYC.�����i               �P!PTokyo 2020�O!OTokyo 2020�N!	NTokyo 2020�M!MTokyo 2020�L!LTokyo 2020�K!KTokyo 2020�J!	JTokyo 2020�I!ITokyo 2020�HHRio 2016�GGRio 2016�F!FTokyo 2020�E!ETokyo 2020�D!DTokyo 2020�C!CTokyo 2020�B#		BAthens 2004�A!ATokyo 2020�@!@Tokyo 2020�?	?Rio 2016�>!>Tokyo 2020�=#	=London 2012�<!<Tokyo 2020�;!	;Tokyo 2020�:	:Rio 2016�9!9Tokyo 2020�8!8Tokyo 2020�7!	7Tokyo 2020�6#6London 2012�5!5Tokyo 2020�44Rio 2016�3#3London 2012�2!2Tokyo 2020�1#1London 2012�0!0Tokyo 2020�//Rio 2016�.!.Tokyo 2020�-!-Tokyo 2020�,!,Tokyo 2020�+!+Tokyo 2020�**Rio 2016�)%)Beijing 2008�(!	(Tokyo 2020�''Rio 2016�&!&Tokyo 2020�%!%Tokyo 2020�$!$Tokyo 2020�#%#Beijing 2008�""Rio 2016�!#!London 2012� # London 2012�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�%Beijing 2008�Rio 2016�#London 2012�!	Tokyo 2020�!	Tokyo 2020�Rio 2016�!Tokyo 2020�!		Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�
!
Tokyo 2020�	!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�Rio 2016� ! Tokyo 2020�!�Tokyo 2020�~�Rio 2016�}!�Tokyo 2020�|#	�London 2012�{!�Tokyo 2020�z#�London 2012�y!	�Tokyo 2020�x!�Tokyo 2020�w#�London 2012�v�Rio 2016�u#	�London 2012�t#�London 2012�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n�Rio 2016�m!�Tokyo 2020�l	�Rio 2016�k!�Tokyo 2020�j!	�Tokyo 2020�i#�London 2012�h�Rio 2016�g#�London 2012�f!�Tokyo 2020�e�Rio 2016�d!�Tokyo 2020�c�Rio 2016�b�Rio 2016�a�Rio 2016�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]!�Tokyo 2020�\�Rio 2016�[�Rio 2016�Z!�Tokyo 2020�Y!�Tokyo 2020�X�Rio 2016�W�Rio 2016�V!�Tokyo 2020�U!�Tokyo 2020�T�Rio 2016�S!	�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!	�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M�Rio 2016�L!�Tokyo 2020�K#�London 2012�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!�Tokyo 2020�E!�Tokyo 2020�D!�Tokyo 2020�C!�Tokyo 2020�B�Rio 2016�A�Rio 2016�@�Rio 2016�?�Rio 2016�>�Rio 2016�=!�Tokyo 2020�<!�Tokyo 2020�;#�London 2012�:	�Rio 2016�9!	�Tokyo 2020�8#�London 2012�7%�Beijing 2008�6%�Beijing 2008�5�Rio 2016�4!�Tokyo 2020�3�Rio 2016�2�Rio 2016�1	�Rio 2016�0�Rio 2016�/�Rio 2016�.%�Beijing 2008�-�Rio 2016�,!�Tokyo 2020�+!�Tokyo 2020�*!�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        ������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMM   �c �����{fQ;%������t_I4	������nYC+������xbL6 
������pZD.
�
�
�
�
�

g
O
6

	�	�	�	�	�	�	h	P	:	!	������nXB-�����}dN6!������t^H2�����zbI.������~iT?* �����|dN8#������s^I1�����yc           �x!�Tokyo 2020�w�Rio 2016�v#�Athens 2004�u%�Beijing 2008�t!�Tokyo 2020�s%�Beijing 2008�r�Rio 2016�q#�Athens 2004�p!	�Tokyo 2020�o#�London 2012�n�Rio 2016�m�Rio 2016�l!	�Tokyo 2020�k!�Tokyo 2020�j�Rio 2016�i�Rio 2016�h%�Beijing 2008�g!	�Tokyo 2020�f�Rio 2016�e!�Tokyo 2020�d�Rio 2016�c!�Tokyo 2020�b!�Tokyo 2020�a#�London 2012�`!�Tokyo 2020�_�Rio 2016�^%�Beijing 2008�]!�Tokyo 2020�\�Rio 2016�[�Rio 2016�Z�Rio 2016�Y�Rio 2016�X�Rio 2016�W�Rio 2016�V�Rio 2016�U	�Rio 2016�T	�Rio 2016�S!	�Tokyo 2020�R!�Tokyo 2020�Q�Rio 2016�P	�Rio 2016�O�Rio 2016�N		�Rio 2016�M%	�Beijing 2008�L%�Beijing 2008�K%�Beijing 2008�J#�London 2012�I!�Tokyo 2020�H%�Beijing 2008�G#		�London 2012�F#�London 2012�E�Rio 2016�D�Rio 2016�C%�Beijing 2008�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?!�Tokyo 2020�>�Rio 2016�=�Rio 2016�<!�Tokyo 2020�;!�Tokyo 2020�:!	�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7�Rio 2016�6�Rio 2016�5#�Athens 2004�4!�Tokyo 2020�3%�Beijing 2008�2!�Tokyo 2020�1�Rio 2016�0!�Tokyo 2020�/�Rio 2016�.%�Beijing 2008�-!�Tokyo 2020�,!�Tokyo 2020�+�Rio 2016�*�Rio 2016�)!�Tokyo 2020�(!	�Tokyo 2020�'#�London 2012�&�Rio 2016�%#�Athens 2004�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!!	�Tokyo 2020� !�Tokyo 2020�%�Beijing 2008�!�Tokyo 2020�#�London 2012�%�Beijing 2008��Rio 2016�!	�Tokyo 2020�#�Sydney 2000��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�%�Beijing 2008�#�London 2012�#�London 2012�!�Tokyo 2020�#�Athens 2004��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� !�Tokyo 2020�!Tokyo 2020�~!~Tokyo 2020�}!}Tokyo 2020�|!	|Tokyo 2020�{!{Tokyo 2020�z!zTokyo 2020�y!yTokyo 2020�x!xTokyo 2020�w!wTokyo 2020�v!vTokyo 2020�u%	uBeijing 2008�t!tTokyo 2020�s!	sTokyo 2020�r!rTokyo 2020�q#qLondon 2012�p!pTokyo 2020�ooRio 2016�n!nTokyo 2020�m!mTokyo 2020�l#lLondon 2012�k!kTokyo 2020�j!	jTokyo 2020�i!iTokyo 2020�h	hRio 2016�g!gTokyo 2020�ffRio 2016�e	eRio 2016�d!dTokyo 2020�ccRio 2016�b#bLondon 2012�aaRio 2016�`!`Tokyo 2020�_#			_London 2012�^!^Tokyo 2020�]]Rio 2016�\!\Tokyo 2020�[[Rio 2016�Z!	ZTokyo 2020�Y!YTokyo 2020�XXRio 2016�WWRio 2016�VVRio 2016�U!UTokyo 2020�T!TTokyo 2020�S!STokyo 2020�R!RTokyo 2020�Q#	QLondon 2012   �e �����zdN5	������jT<&������q[E,������zeM7"������nXB,
�
�
�
�
�

i
Q
8
"
	�	�	�	�	�	�	r	\	F	1		������jQ;%������xbL6�����|cM7!������s]H0�����~hR:$������lWB, �����waL6 
������ze             � �Rio 2016�!�Tokyo 2020�!�Tokyo 2020	���!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�	�Rio 2016�!�Tokyo 2020�-�Mexico City 1968�	�Rio 2016��Rio 2016�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
�Rio 2016�	�Rio 2016�#	�London 2012�!�Tokyo 2020�%�Beijing 2008�!�Tokyo 2020�#�London 2012�	�Rio 2016�!�Tokyo 2020�#�London 2012� !�Tokyo 2020�#London 2012�~!~Tokyo 2020�}!	}Tokyo 2020�|!|Tokyo 2020�{#{London 2012�z#zSydney 2000�yyRio 2016�x!xTokyo 2020�w!wTokyo 2020�vvRio 2016�u!uTokyo 2020�t#	tLondon 2012�ssRio 2016�r!rTokyo 2020�qqRio 2016�ppRio 2016�o#oLondon 2012�n!nTokyo 2020�mmRio 2016�l	lRio 2016�k!kTokyo 2020�j!jTokyo 2020�i!iTokyo 2020�h!hTokyo 2020�g!gTokyo 2020�f%fBeijing 2008�e!eTokyo 2020�d!dTokyo 2020�c!cTokyo 2020�b#	bLondon 2012�a%	aBeijing 2008�`#`London 2012�_!_Tokyo 2020�^%^Beijing 2008�]!]Tokyo 2020�\!\Tokyo 2020�[!	[Tokyo 2020�Z!ZTokyo 2020�Y!YTokyo 2020�X!XTokyo 2020�WWRio 2016�VVRio 2016�U!UTokyo 2020�T!TTokyo 2020�SSRio 2016�R!RTokyo 2020�Q!QTokyo 2020�P%		PBeijing 2008�O!OTokyo 2020�NNRio 2016�M!MTokyo 2020�L!LTokyo 2020�K!KTokyo 2020�J!JTokyo 2020�I!	ITokyo 2020�H!HTokyo 2020�G#		GLondon 2012�FFRio 2016�E!ETokyo 2020�D!DTokyo 2020�C!CTokyo 2020�B!BTokyo 2020�A!ATokyo 2020�@!@Tokyo 2020�?!?Tokyo 2020�>!>Tokyo 2020�=!	=Tokyo 2020�<!<Tokyo 2020�;!;Tokyo 2020�:%	:Beijing 2008�9#9London 2012�8!8Tokyo 2020�7!7Tokyo 2020�66Rio 2016�5!5Tokyo 2020�4!4Tokyo 2020�3!3Tokyo 2020�22Rio 2016�1	1Rio 2016�0!0Tokyo 2020�/!/Tokyo 2020�.!.Tokyo 2020�-!-Tokyo 2020�,!,Tokyo 2020�+#+London 2012�**Rio 2016�)!)Tokyo 2020�(!(Tokyo 2020�'!'Tokyo 2020�&%	&Beijing 2008�%!%Tokyo 2020�$$Rio 2016�#!#Tokyo 2020�"#	"London 2012�!!Rio 2016�  Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016�%	Beijing 2008�#London 2012�Rio 2016�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�#	London 2012�!Tokyo 2020�#Sydney 2000�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�
#
Sydney 2000�	!	Tokyo 2020�!Tokyo 2020�#London 2012�#Sydney 2000�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�%Beijing 2008� !	 Tokyo 2020�!�Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|	�Rio 2016�{!�Tokyo 2020�z%�Beijing 2008�y!�Tokyo 2020
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        JJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ������������������������������������������������������

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������   �] �����|gQ;%������pVA)������zdN8"������t^I3������pZD,
�
�
�
�
�
}
g
R
<
'
	�	�	�	�	�	�	y	d	L	7	!	������q[E/�����zbK6 
������nXB)������zdL6 	������oY?)������ycN8#������lV>(������u]   �I#	ILondon 2012�H!HTokyo 2020�G!GTokyo 2020�F!FTokyo 2020�E!ETokyo 2020�D!DTokyo 2020�C#CLondon 2012�B#BLondon 2012�AARio 2016�@!@Tokyo 2020�?#?London 2012�>!>Tokyo 2020�=!=Tokyo 2020�<!<Tokyo 2020�;!;Tokyo 2020�:#:Athens 2004�9!9Tokyo 2020�8!	8Tokyo 2020�7)	7Vancouver 2010�6!6Tokyo 2020�5	5Rio 2016�4!4Tokyo 2020�3	3Rio 2016�2!2Tokyo 2020�1!1Tokyo 2020�0!0Tokyo 2020�/!/Tokyo 2020�.!.Tokyo 2020�-!-Tokyo 2020�,!,Tokyo 2020�+!+Tokyo 2020�*!*Tokyo 2020�)!)Tokyo 2020�(%(Beijing 2008�'!'Tokyo 2020�&!&Tokyo 2020�%!%Tokyo 2020�$!$Tokyo 2020�#!#Tokyo 2020�"!"Tokyo 2020�!!	!Tokyo 2020� ! Tokyo 2020�!Seoul 1988�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
!
Tokyo 2020�	!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�	Rio 2016�!Tokyo 2020�#	London 2012�#	London 2012�!Tokyo 2020�#		London 2012� ! Tokyo 2020�!�Tokyo 2020�~�Rio 2016�}#	�London 2012�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!	�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o	�Rio 2016�n#	�London 2012�m	�Rio 2016�l!�Tokyo 2020�k�Rio 2016�j�Rio 2016�i!�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d�Rio 2016�c!�Tokyo 2020�b�Rio 2016�a!�Tokyo 2020�`	�Rio 2016�_!�Tokyo 2020�^#	�London 2012�]!�Tokyo 2020�\!�Tokyo 2020�[�Rio 2016�Z!�Tokyo 2020�Y�Rio 2016�X#�London 2012�W!�Tokyo 2020�V!�Tokyo 2020�U	�Rio 2016�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q	�Rio 2016�P!�Tokyo 2020�O�Rio 2016�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K�Rio 2016�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F�Rio 2016�E!�Tokyo 2020�D!�Tokyo 2020�C!�Tokyo 2020�B�Rio 2016�A!�Tokyo 2020�@!�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<	�Rio 2016�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6!�Tokyo 2020�5#		�London 2012�4�Rio 2016�3%�Beijing 2008�2!	�Tokyo 2020�1	�Rio 2016�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,%			�Beijing 2008�+%	�Beijing 2008�*!	�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'�Rio 2016�&!�Tokyo 2020�%�Rio 2016�$!�Tokyo 2020�#�Rio 2016�"!�Tokyo 2020�!#	�London 2012   �e �����{fP7!������gM7!������t\G1������mW?)������vaK6 

�
�
�
�
�

j
T
>
%
	�	�	�	�	�	�	r	]	G	2		������kU@(������t^H2������iS='������w_G.�����{bL4�����xbM8"
������rZB*������{e               �p!		�Tokyo 2020�o!	�Tokyo 2020�n!	�Tokyo 2020�m!�Tokyo 2020�l!	�Tokyo 2020�k�Rio 2016�j!	�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g#	�London 2012�f#�London 2012�e#		�Athens 2004�d	�Rio 2016�c!	�Tokyo 2020�b!�Tokyo 2020�a	�Rio 2016�`!	�Tokyo 2020�_!	�Tokyo 2020�^!�Tokyo 2020�]#	�London 2012�\!�Tokyo 2020�[�Rio 2016�Z	�Rio 2016�Y!�Tokyo 2020�X!�Tokyo 2020�W#�London 2012�V!�Tokyo 2020�U!�Tokyo 2020�T%	�Beijing 2008�S#�London 2012�R#	�London 2012�Q#�London 2012�P#		�London 2012�O!	�Tokyo 2020�N%�Beijing 2008�M!�Tokyo 2020�L!	�Tokyo 2020�K�Rio 2016�J		�Rio 2016�I#�London 2012�H#	�London 2012�G!�Tokyo 2020�F!	�Tokyo 2020�E%	�Beijing 2008�D#			�London 2012�C#�London 2012�B!�Tokyo 2020�A#	�London 2012�@�Rio 2016�?!�Tokyo 2020�>!�Tokyo 2020�=!	�Tokyo 2020�<�Rio 2016�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7#�London 2012�6!�Tokyo 2020�5�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1#�London 2012�0!�Tokyo 2020�/!�Tokyo 2020�.!		�Tokyo 2020�-!	�Tokyo 2020�,!�Tokyo 2020�+#	�London 2012�*!	�Tokyo 2020�)!	�Tokyo 2020�(#	�London 2012�'#		�London 2012�&!�Tokyo 2020�%		�Rio 2016�$!�Tokyo 2020�##	�London 2012�"�Rio 2016�!!�Tokyo 2020� !�Tokyo 2020�	�Rio 2016�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!	�Tokyo 2020��Rio 2016�!�Tokyo 2020�%	�Beijing 2008�!�Tokyo 2020�#	�London 2012�!�Tokyo 2020�!�Tokyo 2020�		�Rio 2016��Rio 2016�%�Beijing 2008�!		�Tokyo 2020�
!�Tokyo 2020�			�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�%�Beijing 2008�#�London 2012�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� �Rio 2016�!	Tokyo 2020�~		~Rio 2016�}!}Tokyo 2020�|!	|Tokyo 2020�{{Rio 2016�z!zTokyo 2020�y		yRio 2016�x#xLondon 2012�w!	wTokyo 2020�v#	vLondon 2012�u!uTokyo 2020�t#	tLondon 2012�s!sTokyo 2020�r!rTokyo 2020�q!qTokyo 2020�p		pRio 2016�o!oTokyo 2020�n!nTokyo 2020�m!mTokyo 2020�l	lRio 2016�k!	kTokyo 2020�j!jTokyo 2020�i!iTokyo 2020�h		hRio 2016�g#gLondon 2012�f!fTokyo 2020�eeRio 2016�d!	dTokyo 2020�c!cTokyo 2020�bbRio 2016�a	aRio 2016�`!	`Tokyo 2020�_!_Tokyo 2020�^!^Tokyo 2020�]!]Tokyo 2020�\%	\Beijing 2008�[%[Beijing 2008�Z!	ZTokyo 2020�Y	YRio 2016�X%	XBeijing 2008�W!	WTokyo 2020�V%	VBeijing 2008�U!UTokyo 2020�T!	TTokyo 2020�S!STokyo 2020�R%RBeijing 2008�Q!QTokyo 2020�PPRio 2016�O!OTokyo 2020�N!NTokyo 2020�M!MTokyo 2020�L#LLondon 2012�KKRio 2016�J!	JTokyo 2020
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        ��������������������������������������������������������������������������������������������������~~JJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKK~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     �m �����|fN8"������lV@*������pZE-������}gN6�����}gQ7"
�
�
�
�
�
�
q
Y
C
-
	�	�	�	�	�	�	y	a	K	5		
������mWA+������|fQ;&������{fP:$������lV>(������u`K5	������oW>(������ycM7!������m                       �!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�%	�Beijing 2008�#�London 2012� !�Tokyo 2020�!	Tokyo 2020�~!~Tokyo 2020�}!}Tokyo 2020�|!|Tokyo 2020�{!{Tokyo 2020�z!zTokyo 2020�y!yTokyo 2020�x!xTokyo 2020�w!wTokyo 2020�vvRio 2016�uuRio 2016�t	tRio 2016�s#	sLondon 2012�r!	rTokyo 2020�q!qTokyo 2020�p!pTokyo 2020�o!oTokyo 2020�n#nLondon 2012�m!mTokyo 2020�l!lTokyo 2020�k#kLondon 2012�j!	jTokyo 2020�i	iRio 2016�h%		hBeijing 2008�g!gTokyo 2020�f	fRio 2016�e!eTokyo 2020�d!dTokyo 2020�c#cAthens 2004�b#bLondon 2012�a!	aTokyo 2020�`!`Tokyo 2020�_!_Tokyo 2020�^	^Rio 2016�]!]Tokyo 2020�\%\Beijing 2008�[#		[London 2012�ZZRio 2016�YYRio 2016	�XX�W!	WTokyo 2020�V!VTokyo 2020�U	URio 2016�T!		TTokyo 2020�S	SRio 2016�R!RTokyo 2020�Q!QTokyo 2020�P!PTokyo 2020�O!	OTokyo 2020�N	NRio 2016�M!MTokyo 2020�L!	LTokyo 2020�K!KTokyo 2020�J!JTokyo 2020�I!ITokyo 2020�H!HTokyo 2020�G!GTokyo 2020�F#	FLondon 2012�E%EBeijing 2008�D!DTokyo 2020�C!	CTokyo 2020�BBRio 2016�A	ARio 2016�@!@Tokyo 2020�?	?Rio 2016�>!	>Tokyo 2020�=!=Tokyo 2020�<!<Tokyo 2020�;#	;London 2012�:!:Tokyo 2020�9!9Tokyo 2020�8!8Tokyo 2020�7!7Tokyo 2020�6		6Rio 2016�5%	5Beijing 2008�4!4Tokyo 2020�3#3London 2012�2!2Tokyo 2020�1!1Tokyo 2020�0#		0London 2012�/!/Tokyo 2020�.!.Tokyo 2020�--Rio 2016�,!	,Tokyo 2020�+!+Tokyo 2020�*!*Tokyo 2020�)#	)London 2012�((Rio 2016�''Rio 2016�&%	&Beijing 2008�%!%Tokyo 2020�$!	$Tokyo 2020�#!	#Tokyo 2020�"!		"Tokyo 2020�!#!London 2012� !	 Tokyo 2020�%	Beijing 2008�#London 2012�!Tokyo 2020�#	London 2012�#London 2012�#London 2012�!	Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�#London 2012�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�%		Beijing 2008�
#	
London 2012�			Rio 2016�Rio 2016�%Beijing 2008�#	Athens 2004�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#	London 2012�  Rio 2016�#		�London 2012�~#�London 2012�}!	�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x#�London 2012�w!	�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t#	�Athens 2004�s�Rio 2016�r�Rio 2016�q!		�Tokyo 2020   �\ �����zdN8#������u_I4������kU?)������{cN9#������pZD.
�
�
�
�
�
~
i
P
7

	�	�	�	�	�	�	m	W	A	+		 �����~hP:$������pZD/�����{fP:$������u`J2�����~hS='������xbV@*������zdN8"������r\�A!	ATokyo 2020�@!	@Tokyo 2020�?!	?Tokyo 2020�>!	>Tokyo 2020�=!	=Tokyo 2020�<!	<Tokyo 2020�;!	;Tokyo 2020�:!	:Tokyo 2020�9!	9Tokyo 2020�8!	8Tokyo 2020�7!	7Tokyo 2020�6!		6Tokyo 2020�5!	5Tokyo 2020�4!	4Tokyo 2020�3!	3Tokyo 2020�2!	2Tokyo 2020�1!	1Tokyo 2020�0!	0Tokyo 2020�/!	/Tokyo 2020�.!	.Tokyo 2020�-!	-Tokyo 2020�,!		,Tokyo 2020�+!		+Tokyo 2020	�*	*�)!	)Tokyo 2020�(!	(Tokyo 2020�'!	'Tokyo 2020�&!	&Tokyo 2020�%	%Rio 2016�$!	$Tokyo 2020�#!	#Tokyo 2020�"!	"Tokyo 2020�!!	!Tokyo 2020� !		 Tokyo 2020�!	Tokyo 2020�	Rio 2016�!	Tokyo 2020�!	Tokyo 2020�#	London 2012�!	Tokyo 2020�!	Tokyo 2020�!		Tokyo 2020�!	Tokyo 2020�!	Tokyo 2020�#	London 2012�#	London 2012�!	Tokyo 2020�	Rio 2016�!	Tokyo 2020�!	Tokyo 2020�!	Tokyo 2020�#	London 2012�		Rio 2016�!	Tokyo 2020�	Rio 2016�
	
Rio 2016�	!		Tokyo 2020�!	Tokyo 2020�!	Tokyo 2020�		Rio 2016�!	Tokyo 2020�#	London 2012�!	Tokyo 2020�!	Tokyo 2020�!	Tokyo 2020� !	 Tokyo 2020�!	�Tokyo 2020�~#�London 2012�}	�Rio 2016�|!�Tokyo 2020�{!�Tokyo 2020�z#�London 2012�y!�Tokyo 2020�x!�Tokyo 2020�w!�Tokyo 2020�v�Rio 2016�u!�Tokyo 2020�t%�Beijing 2008�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p#		�London 2012�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l�Rio 2016�k�Rio 2016�j!�Tokyo 2020�i!�Tokyo 2020�h�Rio 2016�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d!�Tokyo 2020�c#�London 2012�b�Rio 2016�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]!	�Tokyo 2020�\!�Tokyo 2020�[%�Beijing 2008�Z%�Beijing 2008�Y%�Beijing 2008�X�Rio 2016�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!	�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I#	�London 2012�H#	�London 2012�G!�Tokyo 2020�F�Rio 2016�E!�Tokyo 2020�D!�Tokyo 2020�C�Rio 2016�B	�Rio 2016�A#�London 2012�@!�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:�Rio 2016�9�Rio 2016�8!�Tokyo 2020�7!�Tokyo 2020�6!�Tokyo 2020�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2%�Beijing 2008�1!�Tokyo 2020�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,�Rio 2016�+!�Tokyo 2020�*!�Tokyo 2020�)�Rio 2016�(!�Tokyo 2020�'!�Tokyo 2020�&!�Tokyo 2020�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"	�Rio 2016�!�Rio 2016� !�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        




























	
	
















 
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�			~	~	}	}	|	|	{	{	z	z	y	y	x	x	w	w	v	v	u	u	t	t	s	s	r	r	q	q	p	p	o	o	n	n	m	m	l	l	k	k	j	j	i	i	h	h	g	g	f	f	e	e	d	d	c	c	b	b	a	a	`	`	_	_	^	^	]	]	\	\	[	[	Z	Z	Y	Y	X	X	W	W	V	V	U	U	T	T	S	S	R	R	Q	Q	P	P	O	O	N	N	M	M	L	L	K	K	J	J	I	I	H	H	G	G	F	F	E	E	D	D	C	C	B	B	A	A	@	@	?	?	>	>	=	=	<	<	;	;	:	:	9	9	8	8	7	7	6	6	5	5	4	4	3	3	2	2	1	1	0	0	/	/	.	.	-	-	,	,	+	+	*	*	)	)	(	(	'	'	&	&	%	%	$	$	#	#	"	"	!	!	 	 																																											
	
																					 	 ������������������������������������������������������	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   �] �����|fP:$������t^H2������oYC+������v`J4	������jT>(
�
�
�
�
�
�
w
a
K
5
 

	�	�	�	�	�	�	l	V	@	'	������xbL6 
������lWA+������zdN8������lV@'������u_I4	������jU?)������zdN9#������s]   �j!	�Tokyo 2020�i!	�Tokyo 2020�h!	�Tokyo 2020�g!	�Tokyo 2020�f!	�Tokyo 2020�e!	�Tokyo 2020�d!	�Tokyo 2020�c!	�Tokyo 2020�b!	�Tokyo 2020�a!	�Tokyo 2020�`	�Rio 2016�_!	�Tokyo 2020�^!	�Tokyo 2020�]!	�Tokyo 2020�\!	�Tokyo 2020�[!		�Tokyo 2020�Z!	�Tokyo 2020�Y	�Rio 2016�X!	�Tokyo 2020�W!	�Tokyo 2020�V!	�Tokyo 2020�U!	�Tokyo 2020�T!	�Tokyo 2020�S		�Rio 2016�R%		�Beijing 2008�Q!	�Tokyo 2020�P!	�Tokyo 2020�O#	�London 2012�N!	�Tokyo 2020�M!	�Tokyo 2020�L	�Rio 2016�K	�Rio 2016�J!	�Tokyo 2020�I	�Rio 2016�H!	�Tokyo 2020�G!	�Tokyo 2020�F		�Rio 2016�E%		�Beijing 2008�D!	�Tokyo 2020�C!	�Tokyo 2020�B	�Rio 2016�A!	�Tokyo 2020�@#		�London 2012�?	�Rio 2016�>%		�Beijing 2008�=!		�Tokyo 2020�<!	�Tokyo 2020�;!	�Tokyo 2020�:!	�Tokyo 2020�9#	�London 2012�8!	�Tokyo 2020�7!	�Tokyo 2020�6!	�Tokyo 2020�5!	�Tokyo 2020�4	�Rio 2016�3)	�Vancouver 2010�2!	�Tokyo 2020�1!	�Tokyo 2020�0!	�Tokyo 2020�/!	�Tokyo 2020�.#	�London 2012�-		�Rio 2016�,!	�Tokyo 2020�+!	�Tokyo 2020�*!	�Tokyo 2020�)!	�Tokyo 2020�(!	�Tokyo 2020�'!	�Tokyo 2020�&!	�Tokyo 2020�%	�Rio 2016�$!	�Tokyo 2020�#!	�Tokyo 2020�"#	�London 2012�!!		�Tokyo 2020� !	�Tokyo 2020�#	�London 2012�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�	�Rio 2016�%	�Beijing 2008�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�%	�Beijing 2008�
#	�London 2012�	!	�Tokyo 2020�		�Rio 2016�!	�Tokyo 2020�!	�Tokyo 2020�	�Rio 2016�!		�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020� !	�Tokyo 2020�	Rio 2016�~!	~Tokyo 2020�}!	}Tokyo 2020�|#			|London 2012�{!	{Tokyo 2020�z!	zTokyo 2020�y!	yTokyo 2020�x!	xTokyo 2020�w!	wTokyo 2020�v!		vTokyo 2020�u%	uBeijing 2008�t!	tTokyo 2020�s!	sTokyo 2020�r!	rTokyo 2020�q#		qLondon 2012�p!	pTokyo 2020�o!	oTokyo 2020�n	nRio 2016�m!	mTokyo 2020�l!	lTokyo 2020�k!	kTokyo 2020�j%	jBeijing 2008�i!	iTokyo 2020�h!	hTokyo 2020�g	gRio 2016�f!	fTokyo 2020�e!		eTokyo 2020�d%		dBeijing 2008�c!		cTokyo 2020�b#	bLondon 2012�a!	aTokyo 2020�`!	`Tokyo 2020�_!	_Tokyo 2020�^!		^Tokyo 2020�]!	]Tokyo 2020�\!	\Tokyo 2020�[	[Rio 2016�Z	ZRio 2016�Y	YRio 2016�X!	XTokyo 2020�W!	WTokyo 2020�V!	VTokyo 2020�U!	UTokyo 2020�T!	TTokyo 2020�S!	STokyo 2020�R!	RTokyo 2020�Q!	QTokyo 2020�P!	PTokyo 2020�O!		OTokyo 2020�N!	NTokyo 2020�M!		MTokyo 2020�L!	LTokyo 2020�K!	KTokyo 2020�J!	JTokyo 2020�I!	ITokyo 2020�H!		HTokyo 2020�G!	GTokyo 2020�F!	FTokyo 2020�E!	ETokyo 2020�D!		DTokyo 2020�C!	CTokyo 2020�B!	BTokyo 2020   �i �����{fQ<&������x`K5
������jT>)������zbM8#������u_I3
�
�
�
�
�
�
l
V
>
(
	�	�	�	�	�	�	v	`	J	5			������q\F0������jT<$������pX@*������{eO:$������u`J1�����iT>(������wbJ5	�����~i               �
�Rio 2016�#
�Athens 2004�!
�Tokyo 2020�%
�Beijing 2008�!
�Tokyo 2020�!
�Tokyo 2020�#
�London 2012�!
�Tokyo 2020�!
�Tokyo 2020�

�Rio 2016�	#
�London 2012�	
�Rio 2016�	
�Rio 2016�#
�London 2012�!
�Tokyo 2020�
�Rio 2016�!
�Tokyo 2020�!
�Tokyo 2020�
�Rio 2016� #
�London 2012�!
Tokyo 2020�~!
~Tokyo 2020�}
}Rio 2016�|!
|Tokyo 2020�{!
{Tokyo 2020�z!
zTokyo 2020�y!
yTokyo 2020�x%	
xBeijing 2008�w!
wTokyo 2020�v
vRio 2016�u!
uTokyo 2020�t!
tTokyo 2020�s%	
sBeijing 2008�r!
rTokyo 2020�q
qRio 2016�p!
pTokyo 2020�o	
oRio 2016�n!	
nTokyo 2020�m!
mTokyo 2020�l	
lRio 2016�k
kRio 2016�j
jRio 2016�i%
iBeijing 2008�h!
hTokyo 2020�g	
gRio 2016�f!
fTokyo 2020�e!
eTokyo 2020�d!
dTokyo 2020�c!
cTokyo 2020�b!
bTokyo 2020�a!
aTokyo 2020�`
`Rio 2016�_!
_Tokyo 2020�^!	
^Tokyo 2020�]!
]Tokyo 2020�\!
\Tokyo 2020�[#
[London 2012�Z#
ZLondon 2012�Y%
YBeijing 2008�X
XRio 2016�W!
WTokyo 2020�V!
VTokyo 2020�U
URio 2016�T!
TTokyo 2020�S%	
SBeijing 2008�R!
RTokyo 2020�Q#
QLondon 2012�P#
PLondon 2012�O!
OTokyo 2020�N!
NTokyo 2020�M!
MTokyo 2020�L!	
LTokyo 2020�K!
KTokyo 2020�J!
JTokyo 2020�I
IRio 2016�H!
HTokyo 2020�G#	
GLondon 2012�F	
FRio 2016�E!
ETokyo 2020�D!
DTokyo 2020�C
CRio 2016�B!	
BTokyo 2020�A
ARio 2016�@!
@Tokyo 2020�?!
?Tokyo 2020�>!
>Tokyo 2020�=!
=Tokyo 2020�<
<Rio 2016�;!
;Tokyo 2020�:!
:Tokyo 2020�9	
9Rio 2016�8!
8Tokyo 2020�7!
7Tokyo 2020�6!
6Tokyo 2020�5!
5Tokyo 2020�4!
4Tokyo 2020�3	
3Rio 2016�2!
2Tokyo 2020�1!	
1Tokyo 2020�0!
0Tokyo 2020�/%
/Beijing 2008�.!
.Tokyo 2020�-#	
-London 2012�,!
,Tokyo 2020�+#
+London 2012�*!
*Tokyo 2020�)!
)Tokyo 2020�(!
(Tokyo 2020�'!
'Tokyo 2020�&!
&Tokyo 2020�%!
%Tokyo 2020�$!
$Tokyo 2020�#
#Rio 2016�"!
"Tokyo 2020�!!
!Tokyo 2020� !
 Tokyo 2020�!
Tokyo 2020�	
Rio 2016�!
Tokyo 2020�!
Tokyo 2020�	
Rio 2016�!
Tokyo 2020�!
Tokyo 2020�!
Tokyo 2020�
Rio 2016�
Rio 2016�
Rio 2016�#
London 2012�!
Tokyo 2020�!
Tokyo 2020�!
Tokyo 2020�!
Tokyo 2020�!
Tokyo 2020�!
Tokyo 2020�
Rio 2016�!
Tokyo 2020�
Rio 2016�
!

Tokyo 2020�	!
	Tokyo 2020�#
London 2012�!
Tokyo 2020�	
Rio 2016�#
Athens 2004�%		
Beijing 2008�
Rio 2016�!
Tokyo 2020�
Rio 2016� !
 Tokyo 2020�!	�Tokyo 2020�~	�Rio 2016�}#	�Athens 2004�|!	�Tokyo 2020�{	�Rio 2016�z	�Rio 2016�y#	�London 2012�x	�Rio 2016�w!	�Tokyo 2020�v!	�Tokyo 2020�u	�Rio 2016�t!	�Tokyo 2020�s		�Rio 2016�r	�Rio 2016�q		�Rio 2016�p!	�Tokyo 2020�o!	�Tokyo 2020�n		�Rio 2016�m!	�Tokyo 2020�l!	�Tokyo 2020�k#	�London 2012
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        }||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJ

		  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�


~
~
}
}
|
|
{
{
z
z
y
y
x
x
w
w
v
v
u
u
t
t
s
s
r
r
q
q
p
p
o
o
n
n
m
m
l
l
k
k
j
j
i
i
h
h
g
g
f
f
e
e
d
d
c
c
b
b
a
a
`
`
_
_
^
^
]
]
\
\
[
[
Z
Z
Y
Y
X
X
W
W
V
V
U
U
T
T
S
S
R
R
Q
Q
P
P
O
O
N
N
M
M
L
L
K
KJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  
J
J
I
I
H
H
G
G
F
F
E
E
D
D
C
C
B
B
A
A
@
@
?
?
>
>
=
=
<
<
;
;
:
:
9
9
8
8
7
7
6
6
5
5
4
4
3
3
2
2
1
1
0
0
/
/
.
.
-
-
,
,
+
+
*
*
)
)
(
(
'
'
&
&
%
%
$
$
#
#
"
"
!
!
 
 














































	
	
















 
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�   �e �����~hR<&������r\C-�����~iS='������u_G/������nXB,
�
�
�
�
�
y
c
M
5


	�	�	�	�	�	�	m	W	?	)	������s]G1������iS>(������v]H/������kU?*������}gQ<'������v`J5�����iT?*������{e           �<!=Tokyo 2020�;!<Tokyo 2020�:!;Tokyo 2020�9!	:Tokyo 2020�8!	9Tokyo 2020�7!8Tokyo 2020�6!	7Tokyo 2020�5!	6Tokyo 2020�45Rio 2016�34Rio 2016�2		3Rio 2016�12Rio 2016�0!1Tokyo 2020�/!0Tokyo 2020�.!	/Tokyo 2020�-!.Tokyo 2020�,!	-Tokyo 2020�+!,Tokyo 2020�*%+Beijing 2008�)!*Tokyo 2020�(%)Beijing 2008�'(Rio 2016�&!'Tokyo 2020�%!&Tokyo 2020�$!%Tokyo 2020�#!$Tokyo 2020�"!#Tokyo 2020�!%"Beijing 2008� !Rio 2016�! Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�Rio 2016�!	Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�
!Tokyo 2020�	
Rio 2016�#	London 2012�!	Tokyo 2020�Rio 2016�Rio 2016�%Beijing 2008�Rio 2016�%Beijing 2008�Rio 2016� !Tokyo 2020�! Tokyo 2020�~!
�Tokyo 2020�}!
�Tokyo 2020�|%
�Beijing 2008�{!
�Tokyo 2020�z!
�Tokyo 2020�y!
�Tokyo 2020�x
�Rio 2016�w!
�Tokyo 2020�v%	
�Beijing 2008�u!
�Tokyo 2020�t!
�Tokyo 2020�s
�Rio 2016�r!
�Tokyo 2020�q!
�Tokyo 2020�p!
�Tokyo 2020�o!
�Tokyo 2020�n!
�Tokyo 2020�m!
�Tokyo 2020�l!
�Tokyo 2020�k!	
�Tokyo 2020�j!
�Tokyo 2020�i#
�London 2012�h!
�Tokyo 2020�g#
�Athens 2004�f!
�Tokyo 2020�e!
�Tokyo 2020�d#
�London 2012�c!
�Tokyo 2020�b!	
�Tokyo 2020�a#
�London 2012�`!
�Tokyo 2020�_!
�Tokyo 2020�^!
�Tokyo 2020�]!
�Tokyo 2020�\!
�Tokyo 2020�[!
�Tokyo 2020�Z%
�Beijing 2008�Y!
�Tokyo 2020�X
�Rio 2016�W!
�Tokyo 2020�V#
�London 2012�U!
�Tokyo 2020�T!
�Tokyo 2020�S!
�Tokyo 2020�R%	
�Beijing 2008�Q
�Rio 2016�P#
�London 2012�O!
�Tokyo 2020�N
�Rio 2016�M
�Rio 2016�L!	
�Tokyo 2020�K!
�Tokyo 2020�J!
�Tokyo 2020�I!	
�Tokyo 2020�H%
�Beijing 2008�G!
�Tokyo 2020	�F
��E!
�Tokyo 2020�D!
�Tokyo 2020�C
�Rio 2016�B%	
�Beijing 2008�A!
�Tokyo 2020�@!
�Tokyo 2020�?#
�London 2012�>#
�London 2012�=!
�Tokyo 2020�<!
�Tokyo 2020�;!
�Tokyo 2020�:!	
�Tokyo 2020�9!
�Tokyo 2020�8!
�Tokyo 2020�7
�Rio 2016�6%
�Beijing 2008�5!
�Tokyo 2020�4!
�Tokyo 2020�3!
�Tokyo 2020�2!
�Tokyo 2020�1
�Rio 2016�0!
�Tokyo 2020�/!
�Tokyo 2020�.!
�Tokyo 2020�-
�Rio 2016�,!
�Tokyo 2020�+!
�Tokyo 2020�*!
�Tokyo 2020�)!
�Tokyo 2020�(!
�Tokyo 2020�'%
�Beijing 2008�&!	
�Tokyo 2020�%!
�Tokyo 2020�$!
�Tokyo 2020�##
�Athens 2004�"!
�Tokyo 2020�!!
�Tokyo 2020� #
�London 2012�!
�Tokyo 2020�!	
�Tokyo 2020�!
�Tokyo 2020�!
�Tokyo 2020�!
�Tokyo 2020�!
�Tokyo 2020�!
�Tokyo 2020�!
�Tokyo 2020�!
�Tokyo 2020�!
�Tokyo 2020�
�Rio 2016�
�Rio 2016   �i �����jT<'������v`J4	������nV>(������{eO9$
������jT<#
�
�
�
�
�
�
w
a
L
6
!
	�	�	�	�	�	�	r	\	G	2		������q\G1������pZD.������jU?*������~hR='������zdO9#������s]G1������lWA+ �����i           �g!	�Tokyo 2020�f�Rio 2016�e!�Tokyo 2020�d!�Tokyo 2020�c�Rio 2016�b!�Tokyo 2020�a�Rio 2016�`!�Tokyo 2020�_�Rio 2016�^!�Tokyo 2020�]!�Tokyo 2020�\�Rio 2016�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X�Rio 2016�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!	�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!�Tokyo 2020�E�Rio 2016�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?�Rio 2016�>!�Tokyo 2020�=�Rio 2016�<�Rio 2016�;!�Tokyo 2020�:	�Rio 2016�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6�Rio 2016�5�Rio 2016�4	�Rio 2016�3!�Tokyo 2020�2!�Tokyo 2020�1�Rio 2016�0!�Tokyo 2020�/�Rio 2016�.!�Tokyo 2020�-�Rio 2016�,!	�Tokyo 2020�+!�Tokyo 2020�*!�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'!�Tokyo 2020�&!�Tokyo 2020�%�Rio 2016�$�Rio 2016�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016�	�Rio 2016�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020��Rio 2016�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�
�Rio 2016�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�	�Rio 2016�!�Tokyo 2020�#		�London 2012�	�Rio 2016� �Rio 2016�!�Tokyo 2020�~Rio 2016�}!~Tokyo 2020�|}Rio 2016�{!|Tokyo 2020�z!	{Tokyo 2020�yzRio 2016�x	yRio 2016�w	xRio 2016�v!wTokyo 2020�u!	vTokyo 2020�t%uBeijing 2008�s#tLondon 2012�r!sTokyo 2020�q!rTokyo 2020�p#	qLondon 2012�o!pTokyo 2020�n!oTokyo 2020�m#			nLondon 2012�l!mTokyo 2020�k!	lTokyo 2020�j#kLondon 2012�ijRio 2016�h!iTokyo 2020�g!hTokyo 2020�f!gTokyo 2020�e!fTokyo 2020�deRio 2016�c!dTokyo 2020�bcRio 2016�a!bTokyo 2020�`!aTokyo 2020�_`Rio 2016�^!_Tokyo 2020�]!	^Tokyo 2020�\#]London 2012�[#\London 2012�Z[Rio 2016�Y#	ZLondon 2012�X!	YTokyo 2020�W!XTokyo 2020�V!WTokyo 2020�U!VTokyo 2020�T!	UTokyo 2020�S		TRio 2016�RSRio 2016�Q!RTokyo 2020�P!QTokyo 2020�O!	PTokyo 2020�N!OTokyo 2020�M#NLondon 2012�L		MRio 2016�K!LTokyo 2020�J!KTokyo 2020�I!		JTokyo 2020�H!ITokyo 2020�G!		HTokyo 2020�FGRio 2016�E#FLondon 2012�D!	ETokyo 2020�CDRio 2016�B!	CTokyo 2020�ABRio 2016�@!ATokyo 2020�?@Rio 2016�>?Rio 2016�=!	>Tokyo 2020
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        ������������������������������������������������������������������������������������������������������}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}���������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLK   �^ �����}gQ;%������v`J4������nXB, �����yaK6 ������mWA+
�
�
�
�
�
�
{
b
I
4

	�	�	�	�	�	�	k	U	?	)	������u_I4������r\F0�����iS='������waK6 
������q[E/������lVA+������}gQ;#������t^  �!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
�Rio 2016�	!�Tokyo 2020�#	�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020��Rio 2016�!�Tokyo 2020� !�Tokyo 2020��Rio 2016�~!	Tokyo 2020�}!~Tokyo 2020�|!	}Tokyo 2020�{|Rio 2016�z!{Tokyo 2020�y!zTokyo 2020�xyRio 2016�wxRio 2016�vwRio 2016�u!vTokyo 2020�t!uTokyo 2020�s!		tTokyo 2020�r!sTokyo 2020�q!rTokyo 2020�p!qTokyo 2020�o!pTokyo 2020�n!oTokyo 2020�m!	nTokyo 2020�lmRio 2016�k!lTokyo 2020�j!	kTokyo 2020�i!jTokyo 2020�h!iTokyo 2020�g!	hTokyo 2020�f!	gTokyo 2020�e!	fTokyo 2020�deRio 2016�c!dTokyo 2020�b!cTokyo 2020�a!bTokyo 2020�`!aTokyo 2020�_!`Tokyo 2020�^_Rio 2016�]#^London 2012�\]Rio 2016�[!\Tokyo 2020�Z!	[Tokyo 2020�Y!ZTokyo 2020�X!YTokyo 2020�W!XTokyo 2020�V!WTokyo 2020�U!VTokyo 2020�TURio 2016�S!TTokyo 2020�R!	STokyo 2020�Q!RTokyo 2020�P!	QTokyo 2020�O#PLondon 2012�N!OTokyo 2020�M!NTokyo 2020�L!MTokyo 2020�K!LTokyo 2020�JKRio 2016�IJRio 2016�HIRio 2016�G!	HTokyo 2020�F!GTokyo 2020�EFRio 2016�D!ETokyo 2020�C!DTokyo 2020�B!	CTokyo 2020�ABRio 2016�@!ATokyo 2020�?!@Tokyo 2020�>?Rio 2016�=	>Rio 2016�<!=Tokyo 2020�;#<London 2012�:!;Tokyo 2020�9#:London 2012�8!9Tokyo 2020�7#8London 2012�6!7Tokyo 2020�5!6Tokyo 2020�4!5Tokyo 2020�3!	4Tokyo 2020�2!3Tokyo 2020�1#2London 2012�0!	1Tokyo 2020�/!0Tokyo 2020�./Rio 2016�-!.Tokyo 2020�,#	-London 2012�+!,Tokyo 2020�*+Rio 2016�)%*Beijing 2008�(%			)Beijing 2008�'!(Tokyo 2020�&'Rio 2016�%!&Tokyo 2020�$!%Tokyo 2020�#$Rio 2016�"##London 2012�!!"Tokyo 2020� !!Tokyo 2020�!	 Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�#	Athens 2004�!	Tokyo 2020�Rio 2016�!	Tokyo 2020�#	London 2012�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� !Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w�Rio 2016�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l�Rio 2016�k!�Tokyo 2020�j!�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020   �o �����|fP;%������waK3������pZD/�����~hS='������|fQ;%
�
�
�
�
�
�
s
^
H
2

	�	�	�	�	�	�	n	X	B	,	������zdN8#������nXB,������nYC-������kU@* �����~hR<&������ycK5	������oZD.������o                   �;!<Tokyo 2020�:;Rio 2016�9:Rio 2016�8!		9Tokyo 2020�78Rio 2016�6	7Rio 2016�56Rio 2016�45Rio 2016�34Rio 2016�2!3Tokyo 2020�1!2Tokyo 2020�0	1Rio 2016�/0Rio 2016�./Rio 2016�-.Rio 2016�,%-Beijing 2008�+!,Tokyo 2020�*!+Tokyo 2020�)!*Tokyo 2020�(!)Tokyo 2020�'!	(Tokyo 2020�&!'Tokyo 2020�%#&London 2012�$!%Tokyo 2020�#!$Tokyo 2020�"!#Tokyo 2020�!"Rio 2016� !	!Tokyo 2020�! Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�Rio 2016�#London 2012�	Rio 2016�Rio 2016�Rio 2016�!	Tokyo 2020�	Rio 2016�Rio 2016�!Tokyo 2020�Rio 2016�!	Tokyo 2020�Rio 2016�Rio 2016�
!Tokyo 2020�	!	
Tokyo 2020�	Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016� %Beijing 2008� Rio 2016�~#	�London 2012�}#�London 2012�|!�Tokyo 2020�{%	�Beijing 2008�z!�Tokyo 2020�y#�London 2012�x!�Tokyo 2020�w�Rio 2016�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r#�London 2012�q!�Tokyo 2020�p%	�Beijing 2008�o!�Tokyo 2020�n!�Tokyo 2020�m�Rio 2016�l!�Tokyo 2020�k!�Tokyo 2020�j!�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f!	�Tokyo 2020�e	�Rio 2016�d!�Tokyo 2020�c!�Tokyo 2020�b%		�Beijing 2008�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]	�Rio 2016�\�Rio 2016�[!	�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S	�Rio 2016�R#�London 2012�Q�Rio 2016�P�Rio 2016�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!	�Tokyo 2020�K#		�London 2012�J!�Tokyo 2020�I!�Tokyo 2020�H�Rio 2016�G!�Tokyo 2020�F	�Rio 2016�E�Rio 2016�D�Rio 2016�C!�Tokyo 2020�B�Rio 2016�A�Rio 2016�@!	�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<		�Rio 2016�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6�Rio 2016�5!�Tokyo 2020�4#�London 2012�3!�Tokyo 2020�2�Rio 2016�1!�Tokyo 2020�0!�Tokyo 2020�/	�Rio 2016�.�Rio 2016�-	�Rio 2016�,!�Tokyo 2020�+!�Tokyo 2020�*!	�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'!�Tokyo 2020�&#�London 2012�%!	�Tokyo 2020�$!�Tokyo 2020�#�Rio 2016�"�Rio 2016�!!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�	�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�%�Beijing 2008��Rio 2016�		�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�	�Rio 2016   �c �����ycM5������nYC-������lVA,�����xbL7"������s]G1
�
�
�
�
�
�
n
Y
C
-

	�	�	�	�	�	}	e	O	9	#	������q\G1�����iS='������waK5	������oYC-�����{eO9#������s]G1������kU?)������yc       �e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b!�Tokyo 2020�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!	�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!	�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!�Tokyo 2020�E!�Tokyo 2020�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?!	�Tokyo 2020�>!�Tokyo 2020�=!�Sochi 2014�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6!�Tokyo 2020�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,!�Tokyo 2020�+!�Tokyo 2020�*!�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'!�Tokyo 2020�&!�Tokyo 2020�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�#	�London 2012�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�#�London 2012�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�#	�London 2012�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�!�Tokyo 2020� �Rio 2016�!�Tokyo 2020�~!Tokyo 2020�}~Rio 2016�|!}Tokyo 2020�{	|Rio 2016�z{Rio 2016�y!zTokyo 2020�x!	yTokyo 2020�w		xRio 2016�v!	wTokyo 2020�u!vTokyo 2020�t!uTokyo 2020�s!tTokyo 2020�r!	sTokyo 2020�q!rTokyo 2020�p!qTokyo 2020�o!pTokyo 2020�n!	oTokyo 2020�m!nTokyo 2020�l!mTokyo 2020�k!lTokyo 2020�j	kRio 2016�i!jTokyo 2020�hiRio 2016�ghRio 2016�f!gTokyo 2020�e!fTokyo 2020�d%	eBeijing 2008�c!	dTokyo 2020�b!cTokyo 2020�a!bTokyo 2020�`#aLondon 2012�_!`Tokyo 2020�^!_Tokyo 2020�]	^Rio 2016�\	]Rio 2016�[	\Rio 2016�Z![Tokyo 2020�Y!ZTokyo 2020�XYRio 2016�W!XTokyo 2020�VWRio 2016�UVRio 2016�TURio 2016�S!TTokyo 2020�R!STokyo 2020�QRRio 2016�P!QTokyo 2020�O!PTokyo 2020�N	ORio 2016�M!NTokyo 2020�LMRio 2016�K!LTokyo 2020�J!KTokyo 2020�I!	JTokyo 2020�H!ITokyo 2020�G!HTokyo 2020�F!GTokyo 2020�E#FLondon 2012�D#ELondon 2012�C!DTokyo 2020�B!CTokyo 2020�A#BLondon 2012�@!ATokyo 2020�?@Rio 2016�>!	?Tokyo 2020�=!	>Tokyo 2020�<#	=London 2012
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        IHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ���������������������������������������������������������

		  �������������������������������������������������������������������������������������������������������������������������������������������������������������   �^ �����{fQ;%������xbL6 �����{eM6 
������mU@*������w^H2
�
�
�
�
�
�
k
U
?
)
	�	�	�	�	�	�	u	^	H	0		�����y_I3�����iS>)������v`K5 ������kV@(������mWA'������ycJ2�����~hR<&������s^        �	�Rio 2016�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�'�Helsinki 1952�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�~!Tokyo 2020�}#~London 2012�|!}Tokyo 2020�{#|London 2012�z!{Tokyo 2020�y!zTokyo 2020�x!yTokyo 2020�w#xLondon 2012�v%	wBeijing 2008�u!	vTokyo 2020�t!	uTokyo 2020�s!tTokyo 2020�r!sTokyo 2020�qrRio 2016�p!qTokyo 2020�o!pTokyo 2020�noRio 2016�m!nTokyo 2020�l%	mBeijing 2008�k!lTokyo 2020�j!	kTokyo 2020�i!jTokyo 2020�h-iLos Angeles 1984�ghRio 2016�f)gBarcelona 1992�e#fLondon 2012�deRio 2016�c!dTokyo 2020�bcRio 2016�a#bLondon 2012�`!aTokyo 2020�_`Rio 2016�^!_Tokyo 2020�]!^Tokyo 2020�\#]London 2012�[\Rio 2016�Z![Tokyo 2020�Y!	ZTokyo 2020�X#		YAthens 2004�W#	XLondon 2012�V	WRio 2016�U!	VTokyo 2020�TURio 2016�S!	TTokyo 2020�R!	STokyo 2020�QRRio 2016�P!		QTokyo 2020�O#PAthens 2004�N#OAthens 2004�M!NTokyo 2020�L!MTokyo 2020�K!LTokyo 2020�JKRio 2016�IJRio 2016�H!ITokyo 2020�G!HTokyo 2020�F%	GBeijing 2008�E!	FTokyo 2020�D	ERio 2016�C!DTokyo 2020�B#CLondon 2012�A!BTokyo 2020�@!ATokyo 2020�?!@Tokyo 2020�>!?Tokyo 2020�=!>Tokyo 2020�<%	=Beijing 2008�;!<Tokyo 2020�:#;Athens 2004�9#	:London 2012�8!9Tokyo 2020�7%		8Beijing 2008�6!	7Tokyo 2020�5!6Tokyo 2020�4!	5Tokyo 2020�3#4London 2012�2!	3Tokyo 2020�1!2Tokyo 2020�0!1Tokyo 2020�/0Rio 2016�.!/Tokyo 2020�-!.Tokyo 2020�,%-Beijing 2008�+,Rio 2016�*!+Tokyo 2020�)#	*London 2012�(!	)Tokyo 2020�'!(Tokyo 2020�&!	'Tokyo 2020�%&Rio 2016�$%Rio 2016�#!	$Tokyo 2020�"!#Tokyo 2020�!#"London 2012� !Rio 2016�!		 Tokyo 2020�#Athens 2004�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�#London 2012�!Tokyo 2020�#London 2012�#London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016�#London 2012�Rio 2016�!Tokyo 2020�#London 2012�!	Tokyo 2020�
!Tokyo 2020�	!	
Tokyo 2020�#	London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#	London 2012�!Tokyo 2020�%	Beijing 2008�!Tokyo 2020� #London 2012�#	 London 2012�~#�Sydney 2000�}!	�Tokyo 2020�|#	�London 2012�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!�Tokyo 2020�v�Rio 2016�u�Rio 2016�t!�Tokyo 2020�s!�Tokyo 2020�r�Rio 2016�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m	�Rio 2016�l�Rio 2016�k!�Tokyo 2020�j#	�London 2012�i		�Rio 2016�h!		�Tokyo 2020�g!�Tokyo 2020�f!�Tokyo 2020   �g �����|fM7!������oYC+������}gO9$������rZD.������iT?)
�
�
�
�
�
�
v
`
G
2

	�	�	�	�	�	�	m	W	A	+	������{eO:$������s]G/������nXB, �����}hR<&������waK5	������lV@+������u_I1�����g             �5#		6Sydney 2000�45Rio 2016�3	4Rio 2016�2!	3Tokyo 2020�1#	2London 2012�0		1Rio 2016�/!	0Tokyo 2020�.!	/Tokyo 2020�-#.London 2012�,#	-London 2012�+!	,Tokyo 2020�*!	+Tokyo 2020�)!		*Tokyo 2020�(!	)Tokyo 2020�'!		(Tokyo 2020�&#'Sydney 2000�%!	&Tokyo 2020�$!	%Tokyo 2020�##$London 2012�"#			#Sydney 2000�!"Rio 2016� !	!Tokyo 2020�!	 Tokyo 2020�!		Tokyo 2020�#	Athens 2004�!Tokyo 2020�Rio 2016�#Athens 2004�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�	Rio 2016�#London 2012�Rio 2016�!Tokyo 2020�!Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�!	Tokyo 2020�Rio 2016�	Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� !Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{�Rio 2016�z�Rio 2016�y�Rio 2016�x!�Tokyo 2020�w�Rio 2016�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s�Rio 2016�r#�London 2012�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m�Rio 2016�l#�Sydney 2000�k!�Tokyo 2020�j!	�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f�Rio 2016�e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b�Rio 2016�a!�Tokyo 2020�`!�Tokyo 2020�_	�Rio 2016�^!�Tokyo 2020�]!�Tokyo 2020�\#�London 2012�[!	�Tokyo 2020�Z!	�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!	�Tokyo 2020�S!	�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P�Rio 2016�O�Rio 2016�N%�Beijing 2008�M!�Tokyo 2020�L!�Tokyo 2020�K�Rio 2016�J#	�London 2012�I!�Tokyo 2020�H!�Tokyo 2020�G#�London 2012�F!�Tokyo 2020�E!�Tokyo 2020�D!	�Tokyo 2020�C�Rio 2016�B�Rio 2016�A#�Athens 2004�@!�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<�Rio 2016�;�Rio 2016�:�Rio 2016�9!	�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6#�London 2012�5	�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0%			�Beijing 2008�/!�Tokyo 2020�.!�Tokyo 2020�-�Rio 2016�,!�Tokyo 2020�+#�London 2012�*!�Tokyo 2020�)�Rio 2016�(�Rio 2016�'!�Tokyo 2020�&!�Tokyo 2020�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!#	�London 2012� !�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#		�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�%�Beijing 2008�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�#�London 2012��Rio 2016��Rio 2016
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        �����������������������������������������������������������������������������������������������~~}}|IHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}|{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJI}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     �i �����qW>(������x_I3�����zdN8#������lWA+ �����y`K5	
�
�
�
�
�
�
k
N
6

	�	�	�	�	�	~	h	R	<	&	������kU@*������{eP;%������sXC-������x`J4�����gQ;&������lV@(������r\F1�����i                       �Z!	�Tokyo 2020�Y#�Sydney 2000�X!	�Tokyo 2020�W!	�Tokyo 2020�V!	�Tokyo 2020�U!	�Tokyo 2020�T!	�Tokyo 2020�S!	�Tokyo 2020�R!	�Tokyo 2020�Q�Rio 2016�P!	�Tokyo 2020�O!	�Tokyo 2020�N!	�Tokyo 2020�M!	�Tokyo 2020�L!	�Tokyo 2020�K%�Beijing 2008�J#	�London 2012�I�Rio 2016�H�Rio 2016�G%�Beijing 2008�F#�London 2012�E!	�Tokyo 2020�D!	�Tokyo 2020�C!	�Tokyo 2020�B!	�Tokyo 2020�A%�Beijing 2008�@!	�Tokyo 2020�?!	�Tokyo 2020�>%�Beijing 2008�=#		�Sydney 2000�<#�Athens 2004�;�Rio 2016�:!	�Tokyo 2020�9!	�Tokyo 2020�8#		�Athens 2004�7�Rio 2016�6�Rio 2016�5!	�Tokyo 2020�4!	�Tokyo 2020�3!	�Tokyo 2020�2!	�Tokyo 2020�1!	�Tokyo 2020�0)	�Barcelona 1992�/!	�Tokyo 2020�.!	�Tokyo 2020�-#�London 2012�,!	�Tokyo 2020�+%�Beijing 2008�*!	�Tokyo 2020�)!	�Tokyo 2020�(!	�Tokyo 2020�'!	�Tokyo 2020�&!	�Tokyo 2020�%#�Athens 2004�$!	�Tokyo 2020�#�Rio 2016�")			�Barcelona 1992�!!	�Tokyo 2020� !	�Tokyo 2020��Rio 2016�!	�Tokyo 2020�#		�London 2012�!	�Tokyo 2020�!	�Tokyo 2020�!		�Tokyo 2020�!	�Tokyo 2020��Rio 2016��Rio 2016�!	�Tokyo 2020��Rio 2016�!	�Tokyo 2020�!	�Tokyo 2020�!		�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020��Rio 2016�!	�Tokyo 2020�
%	�Beijing 2008�	!	�Tokyo 2020�%�Atlanta 1996�#	�London 2012�!	�Tokyo 2020�!	�Tokyo 2020�%		�Atlanta 1996�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020� !	�Tokyo 2020�!		�Tokyo 2020�~!	Tokyo 2020�}!	~Tokyo 2020�|!	}Tokyo 2020�{|Rio 2016�z#{London 2012�y!	zTokyo 2020�x%yAtlanta 1996�w%	xAtlanta 1996�v#	wLondon 2012�u)vBarcelona 1992�t!	uTokyo 2020�s#tAthens 2004�r!	sTokyo 2020�q#	rLondon 2012�p!	qTokyo 2020�o!	pTokyo 2020�noRio 2016�m!	nTokyo 2020�l!	mTokyo 2020�k!		lTokyo 2020�jkRio 2016�i%jBeijing 2008�h!	iTokyo 2020�g%hBeijing 2008�f#		gLondon 2012�e!	fTokyo 2020�deRio 2016�cdRio 2016�b!	cTokyo 2020�abRio 2016�`!		aTokyo 2020�_!	`Tokyo 2020�^_Rio 2016�]#			^London 2012�\%	]Atlanta 1996�[!	\Tokyo 2020�Z!	[Tokyo 2020�Y!	ZTokyo 2020�X#YAthens 2004�WXRio 2016�V!		WTokyo 2020�UVRio 2016�T!		UTokyo 2020�S!	TTokyo 2020�R!	STokyo 2020�Q#RLondon 2012�P!	QTokyo 2020�O%PBeijing 2008�N!	OTokyo 2020�M%NBeijing 2008�LMRio 2016�K#LLondon 2012�J!	KTokyo 2020�I!	JTokyo 2020�H!	ITokyo 2020�G%HBeijing 2008�F!	GTokyo 2020�E!	FTokyo 2020�D!	ETokyo 2020�C!	DTokyo 2020�BCRio 2016�ABRio 2016�@#ALondon 2012�?!	@Tokyo 2020�>!	?Tokyo 2020�=%>Beijing 2008�<%	=Beijing 2008�;-<Los Angeles 1984�:!	;Tokyo 2020�9!	:Tokyo 2020�8!	9Tokyo 2020�7!	8Tokyo 2020�6#7Sydney 2000   �l �����s[E,������t_F*������s]D'������mXB,������ycN8"
�
�
�
�
�
�
u
]
G
/

	�	�	�	�	�	z	d	N	8	"	������r\D. �����|gQ;%������u_G2������p[C-�����{eO9#������s[E0������nXB-������l                      �!�Tokyo 2020� �Rio 2016�!�Tokyo 2020�~Rio 2016�}	~Rio 2016�|}Rio 2016�{	|Rio 2016�z!{Tokyo 2020�y!zTokyo 2020�xyRio 2016�w!xTokyo 2020�v!wTokyo 2020�u	vRio 2016�t!uTokyo 2020�s!tTokyo 2020�r!sTokyo 2020�qrRio 2016�pqRio 2016�o!pTokyo 2020�n!oTokyo 2020�mnRio 2016�lmRio 2016�k!lTokyo 2020�j#kLondon 2012�i!jTokyo 2020�h!iTokyo 2020�g#	hLondon 2012�f!gTokyo 2020�e!fTokyo 2020�deRio 2016�cdRio 2016�b!cTokyo 2020�a!bTokyo 2020�`!aTokyo 2020�_!`Tokyo 2020�^!_Tokyo 2020�]!^Tokyo 2020�\!	]Tokyo 2020�[#	\London 2012�Z![Tokyo 2020�Y!ZTokyo 2020�X!YTokyo 2020�WXRio 2016�V!WTokyo 2020�U!VTokyo 2020�T#	ULondon 2012�STRio 2016�R!	STokyo 2020�Q!RTokyo 2020�P!QTokyo 2020�O!PTokyo 2020�NORio 2016�MNRio 2016�LMRio 2016�K!LTokyo 2020�JKRio 2016�IJRio 2016�H#ILondon 2012�G!HTokyo 2020�FGRio 2016�E!FTokyo 2020�D!ETokyo 2020�C#DLondon 2012�B!CTokyo 2020�A!	BTokyo 2020�@ARio 2016�?!@Tokyo 2020�>!	?Tokyo 2020�=!>Tokyo 2020�<!=Tokyo 2020�;<Rio 2016�:;Rio 2016�9#:London 2012�89Rio 2016�7!8Tokyo 2020�6!7Tokyo 2020�5!6Tokyo 2020�4#5London 2012�3!	4Tokyo 2020�2!3Tokyo 2020�1#	2London 2012�0!1Tokyo 2020�/!0Tokyo 2020�.!/Tokyo 2020�-.Rio 2016�,!-Tokyo 2020�+,Rio 2016�*%	+Beijing 2008�)!*Tokyo 2020�()Rio 2016�'!(Tokyo 2020�&!'Tokyo 2020�%!&Tokyo 2020�$!%Tokyo 2020�#$Rio 2016�"%	#Beijing 2008�!#	"London 2012� #!London 2012�! Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�#London 2012�Rome 1960�#London 2012�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
#London 2012�	
Rio 2016�!	Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�%Beijing 2008� #	Athens 2004�!	 Tokyo 2020�~#	�London 2012�}%�Beijing 2008�|!		�Tokyo 2020�{!	�Tokyo 2020�z!	�Tokyo 2020�y-�Los Angeles 1984�x%		�Atlanta 1996�w!	�Tokyo 2020�v%	�Beijing 2008�u%�Atlanta 1996�t!	�Tokyo 2020�s!	�Tokyo 2020�r	�Rio 2016�q#	�London 2012�p!	�Tokyo 2020�o!	�Tokyo 2020�n)	�Barcelona 1992�m%	�Beijing 2008�l	�Rio 2016�k!	�Tokyo 2020�j!	�Tokyo 2020�i#	�London 2012�h#	�London 2012�g�Rio 2016�f#�Athens 2004�e%	�Atlanta 1996�d!	�Tokyo 2020�c%�Beijing 2008�b!		�Tokyo 2020�a#�London 2012�`!	�Tokyo 2020�_!	�Tokyo 2020�^)�Barcelona 1992�]!	�Tokyo 2020�\#�Athens 2004�[!	�Tokyo 2020
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}   �f �����xbM8#������u_G1������nXB, �����iQ;&������pZE/
�
�
�
�
�
}
g
N
9
!
		�	�	�	�	�	�	o	V	@	*	������{eP;"������v`K5 
������q[E-������jT>(������s[F1�����iQ<'������rZD/�����|f            �*!+Tokyo 2020�)!*Tokyo 2020�(#)London 2012�'(Rio 2016�&!'Tokyo 2020�%%	&Beijing 2008�$!%Tokyo 2020�#!$Tokyo 2020�"#Rio 2016�!"Rio 2016� !!Tokyo 2020�# London 2012�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�-Los Angeles 1984�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�#	London 2012�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�Rio 2016�#London 2012�Rio 2016�!Tokyo 2020�
Rio 2016�	
Rio 2016�#	London 2012�!Tokyo 2020�#London 2012�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�#London 2012� #London 2012�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!�Tokyo 2020�v�Rio 2016�u�Rio 2016�t�Rio 2016�s#�London 2012�r!�Tokyo 2020�q!�Tokyo 2020�p�Rio 2016�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l!�Tokyo 2020�k!�Tokyo 2020�j!	�Tokyo 2020�i!�Tokyo 2020�h�Rio 2016�g!�Tokyo 2020�f�Rio 2016�e!�Tokyo 2020�d�Rio 2016�c�Rio 2016�b!�Tokyo 2020�a!�Tokyo 2020�`�Rio 2016�_!�Tokyo 2020�^�Rio 2016�]!�Tokyo 2020�\%�Beijing 2008�[�Rio 2016�Z�Rio 2016�Y!�Tokyo 2020�X!	�Tokyo 2020�W�Rio 2016�V!�Tokyo 2020�U!�Tokyo 2020�T�Rio 2016�S#	�London 2012�R!�Tokyo 2020�Q�Rio 2016�P!�Tokyo 2020�O!�Tokyo 2020�N%		�Beijing 2008�M!�Tokyo 2020�L#�London 2012�K!�Tokyo 2020�J!�Tokyo 2020�I�Rio 2016�H�Rio 2016�G!�Tokyo 2020�F#�London 2012�E#�Sydney 2000�D�Rio 2016�C%�Beijing 2008�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?#�London 2012�>!�Tokyo 2020�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8�Rio 2016�7!�Tokyo 2020�6!�Tokyo 2020�5#�London 2012�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!	�Tokyo 2020�0!�Tokyo 2020�/'�Montreal 1976�.�Rio 2016�-!�Tokyo 2020�,#			�Athens 2004�+!�Tokyo 2020�*!�Tokyo 2020�)!	�Tokyo 2020�(!�Tokyo 2020�'�Rio 2016�&�Rio 2016�%�Rio 2016�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#	�London 2012�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020�#�London 2012�!�Tokyo 2020��Rio 2016�!�Tokyo 2020��Rio 2016�
�Rio 2016�	�Rio 2016�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�%	�Beijing 2008�%		�Beijing 2008�!�Tokyo 2020��Rio 2016   �` �����xcN8 �����|dN8
������jU@(������v^H2������kU?&
�
�
�
�
�
�
o
Y
C
*
	�	�	�	�	�	�	y	d	O	5			�����iT>$������w^I3������kU?)������xbL6
������nXB*������ycM7!������lS>(������x`          �Q#�London 2012�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G�Rio 2016�F%�Beijing 2008�E#�London 2012�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?!�Tokyo 2020�>%�Beijing 2008�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9�Rio 2016�8%�Beijing 2008�7!�Tokyo 2020�6!�Tokyo 2020�5�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1#�Athens 2004�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-�Rio 2016�,#�London 2012�+!�Tokyo 2020�*!	�Tokyo 2020�)�Rio 2016�(#�London 2012�'�Rio 2016�&!�Turin 2006�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020�%�Beijing 2008��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#	�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�%�Beijing 2008��Rio 2016�
�Rio 2016�	�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�'	�Helsinki 1952��Rio 2016��Rio 2016� !	�Tokyo 2020�#�London 2012�~%	Beijing 2008�}~Rio 2016�|		}Rio 2016�{	|Rio 2016�z!	{Tokyo 2020�y!	zTokyo 2020�x!	yTokyo 2020�w#xAthens 2004�vwRio 2016�uvRio 2016�t	uRio 2016�s#	tLondon 2012�r!sTokyo 2020�q	rRio 2016�p!qTokyo 2020�o!pTokyo 2020�n!oTokyo 2020�m!nTokyo 2020�l#mLondon 2012�k!lTokyo 2020�j!kTokyo 2020�i!jTokyo 2020�h!iTokyo 2020�g!hTokyo 2020�f!gTokyo 2020�e#fLondon 2012�d%eBeijing 2008�c!dTokyo 2020�b#cLondon 2012�a%bBeijing 2008�`!aTokyo 2020�_!`Tokyo 2020�^!_Tokyo 2020�]!^Tokyo 2020�\]Rio 2016�[!\Tokyo 2020�Z!	[Tokyo 2020�Y%ZBeijing 2008�X!YTokyo 2020�WXRio 2016�V!WTokyo 2020�U!VTokyo 2020�T!UTokyo 2020�S#TLondon 2012�RSRio 2016�QRRio 2016�PQRio 2016�O#	PLondon 2012�NORio 2016�M#	NAthens 2004�L#MLondon 2012�K!LTokyo 2020�J#KLondon 2012�IJRio 2016�HIRio 2016�G%HAtlanta 1996�F%GBeijing 2008�E%FBeijing 2008�DERio 2016�CDRio 2016�BCRio 2016�A!BTokyo 2020�@ARio 2016�?%@Beijing 2008�>!?Tokyo 2020�=!>Tokyo 2020�<#=Sydney 2000�;!<Tokyo 2020�:);Barcelona 1992�9:Rio 2016�8#9London 2012�7#8London 2012�6!7Tokyo 2020�5#6London 2012�4#5London 2012�3!4Tokyo 2020�23Rio 2016�12Rio 2016�0%1Beijing 2008�/!0Tokyo 2020�./Rio 2016�-!.Tokyo 2020�,!-Tokyo 2020�+#,London 2012
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        {zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIH

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  IHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ���������������������������������������������������������   �Z �����|gQ;#������s^I1������nU?)������ydN6������jU@+
�
�
�
�
�
�
}
g
Q
<
&
	�	�	�	�	�	�	u	_	I	3		�����~hP:$������s]G/�����waL6!������mW>(������}gQ;%������r\F0�����~fP;%������pZ�z!{Tokyo 2020�y!zTokyo 2020�x!yTokyo 2020�w#	xLondon 2012�v!wTokyo 2020�u#vLondon 2012�t#uLondon 2012�stRio 2016�r!sTokyo 2020�q!rTokyo 2020�pqRio 2016�o!pTokyo 2020�n#oLondon 2012�m#nLondon 2012�l!mTokyo 2020�k!lTokyo 2020�j!kTokyo 2020�i!jTokyo 2020�h!iTokyo 2020�ghRio 2016�f!gTokyo 2020�e!fTokyo 2020�d!eTokyo 2020�c!dTokyo 2020�bcRio 2016�a!bTokyo 2020�`aRio 2016�_#`London 2012�^!_Tokyo 2020�]!^Tokyo 2020�\!]Tokyo 2020�[#\London 2012�Z![Tokyo 2020�Y!ZTokyo 2020�X!YTokyo 2020�W!	XTokyo 2020�V!WTokyo 2020�UVRio 2016�TURio 2016�S!TTokyo 2020�RSRio 2016�Q!RTokyo 2020�PQRio 2016�OPRio 2016�N!OTokyo 2020�M%NBeijing 2008�L!MTokyo 2020�KLRio 2016�J!KTokyo 2020�IJRio 2016�H%IBeijing 2008�G#HLondon 2012�F!	GTokyo 2020�E!FTokyo 2020�D!ETokyo 2020�CDRio 2016�B!CTokyo 2020�ABRio 2016�@!ATokyo 2020�?#@London 2012�>%	?Beijing 2008�=!>Tokyo 2020�<#=London 2012�;#	<London 2012�:!;Tokyo 2020�9:Rio 2016�8!	9Tokyo 2020�7#8London 2012�6!7Tokyo 2020�5!6Tokyo 2020�4!5Tokyo 2020�3#4London 2012�23Rio 2016�1!2Tokyo 2020�0!1Tokyo 2020�/!0Tokyo 2020�.!/Tokyo 2020�-!.Tokyo 2020�,!-Tokyo 2020�+!,Tokyo 2020�*#+London 2012�)!*Tokyo 2020�(!)Tokyo 2020�'#	(London 2012�&'Rio 2016�%#&London 2012�$%		%Beijing 2008�#!$Tokyo 2020�"#Rio 2016�!!"Tokyo 2020� !!Tokyo 2020�! Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�
!Tokyo 2020�	
Rio 2016�	Rio 2016�Rio 2016�!Tokyo 2020�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016� #London 2012�! Tokyo 2020�~#�London 2012�}#�London 2012�|!�Tokyo 2020�{�Rio 2016�z�Rio 2016�y!	�Tokyo 2020�x�Rio 2016�w!�Tokyo 2020�v%		�Beijing 2008�u!�Tokyo 2020�t!�Tokyo 2020�s�Rio 2016�r!�Tokyo 2020�q!	�Tokyo 2020�p#	�Athens 2004�o	�Rio 2016�n#	�London 2012�m�Rio 2016�l�Rio 2016�k!�Tokyo 2020�j�Rio 2016�i�Rio 2016�h!�Tokyo 2020�g!�Tokyo 2020�f#		�Athens 2004�e�Rio 2016�d�Rio 2016�c!�Tokyo 2020�b#�London 2012�a#�London 2012�`�Rio 2016�_�Rio 2016�^�Rio 2016�]!�Tokyo 2020�\	�Rio 2016�[#�London 2012�Z!�Tokyo 2020�Y!�Tokyo 2020�X�Rio 2016�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020   �n �����~hS>(������s[F. �����|fP:%������wbM7"������t^H2
�
�
�
�
�
�
m
W
A
,

 	�	�	�	�	�	{	e	O	9	#	������s]G1������oYC-�����iS='������vaH2������jU@* �����~hR=(������}hO9#������n                  �$%%Beijing 2008�#!$Tokyo 2020�"!#Tokyo 2020�!!"Tokyo 2020� !!Tokyo 2020�! Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�%Atlanta 1996�Rio 2016�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�	Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�	Rio 2016�	Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�Rio 2016�Rio 2016�!	Tokyo 2020� !Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{#�London 2012�z!�Tokyo 2020�y!�Tokyo 2020�x!	�Tokyo 2020�w%	�Beijing 2008�v�Rio 2016�u!�Tokyo 2020�t�Rio 2016�s!�Tokyo 2020�r#�London 2012�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l!�Tokyo 2020�k!�Tokyo 2020�j!�Tokyo 2020�i!�Tokyo 2020�h�Rio 2016�g!�Tokyo 2020�f!�Tokyo 2020�e�Rio 2016�d!�Tokyo 2020�c!�Tokyo 2020�b!�Tokyo 2020�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]�Rio 2016�\	�Rio 2016�[!�Tokyo 2020�Z!�Tokyo 2020�Y	�Rio 2016�X!�Tokyo 2020�W�Rio 2016�V!�Tokyo 2020�U�Rio 2016�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q#		�London 2012�P�Rio 2016�O!�Tokyo 2020�N!�Tokyo 2020�M�Rio 2016�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!	�Tokyo 2020�E#�London 2012�D!�Tokyo 2020�C!�Tokyo 2020�B�Rio 2016�A!	�Tokyo 2020�@!�Tokyo 2020�?!�Tokyo 2020�>�Rio 2016�=!�Tokyo 2020�<!�Tokyo 2020�;�Rio 2016�:#	�London 2012�9!�Tokyo 2020�8�Rio 2016�7!�Tokyo 2020�6!�Tokyo 2020�5�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0!�Tokyo 2020�/�Rio 2016�.!�Tokyo 2020�-�Rio 2016�,#	�London 2012�+�Rio 2016�*!�Tokyo 2020�)�Rio 2016�(!�Tokyo 2020�'�Rio 2016�&!	�Tokyo 2020�%�Rio 2016�$�Rio 2016�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� �Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�#�London 2012�	�Rio 2016�#�London 2012�#�London 2012�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�#�Athens 2004�#�London 2012��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020� �Rio 2016��Rio 2016�~!Tokyo 2020�}!	~Tokyo 2020�|!	}Tokyo 2020�{!|Tokyo 2020
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8�����������xph`XPH@80(  ����������������xph`XPH@        ������������������������������������������������������������������������������������������������������{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{�����������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJI   �] �����|fP:$������v`K3������jT>)������zbJ5	������kU?*
�
�
�
�
�
�
w
a
I
3

	�	�	�	�	�	�	m	X	C	-		�����~hS='������zdN8 ������s]H2�����iT:$������t^D)������vaH3������iS='������s]   �M!	�Tokyo 2020�L#	�London 2012�K!�Tokyo 2020�J#�London 2012�I!�Tokyo 2020�H�Rio 2016�G!	�Tokyo 2020�F�Rio 2016�E!�Tokyo 2020�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A%�Beijing 2008�@!�Tokyo 2020�?!	�Tokyo 2020�>	�Rio 2016�=!�Tokyo 2020�<�Rio 2016�;!		�Tokyo 2020�:�Rio 2016�9!�Tokyo 2020�8�Rio 2016�7%	�Beijing 2008�6�Rio 2016�5	�Rio 2016�4!�Tokyo 2020�3!	�Tokyo 2020�2		�Rio 2016�1#		�London 2012�0�Rio 2016�/!�Tokyo 2020�.!�Tokyo 2020�-%	�Beijing 2008�,%	�Beijing 2008�+		�Rio 2016�*!�Tokyo 2020�)!	�Tokyo 2020�(!	�Tokyo 2020�'!�Tokyo 2020�&#�London 2012�%!�Tokyo 2020�$�Rio 2016�#	�Rio 2016�"!�Tokyo 2020�!%	�Beijing 2008� �Rio 2016�!�Tokyo 2020�!	�Tokyo 2020��Rio 2016�	�Rio 2016�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�#�London 2012�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�	�Rio 2016�!�Tokyo 2020��Rio 2016�#�London 2012�
!�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�	�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� �Rio 2016�!�Tokyo 2020�~!Tokyo 2020�}~Rio 2016�|!}Tokyo 2020�{!|Tokyo 2020�z!{Tokyo 2020�yzRio 2016�x!yTokyo 2020�w!xTokyo 2020�v!wTokyo 2020�u!vTokyo 2020�t!uTokyo 2020�s!tTokyo 2020�rsRio 2016�qrRio 2016�pqRio 2016�opRio 2016�noRio 2016�m!nTokyo 2020�l!mTokyo 2020�k#lLondon 2012�j	kRio 2016�i!jTokyo 2020�h#iLondon 2012�g!hTokyo 2020�f#gLondon 2012�e!	fTokyo 2020�d!eTokyo 2020�c!dTokyo 2020�b#cLondon 2012�a!bTokyo 2020�`aRio 2016�_!`Tokyo 2020�^#_London 2012�]!^Tokyo 2020�\]Rio 2016�[!\Tokyo 2020�Z!	[Tokyo 2020�Y#		ZLondon 2012�XYRio 2016�W	XRio 2016�V!WTokyo 2020�U!	VTokyo 2020�T#	ULondon 2012�S#	TLondon 2012�R!	STokyo 2020�Q!RTokyo 2020�PQRio 2016�O#	PLondon 2012�N#OLondon 2012�M#NLondon 2012�LMRio 2016�K!	LTokyo 2020�JKRio 2016�I!JTokyo 2020�HIRio 2016�G!HTokyo 2020�F!GTokyo 2020�EFRio 2016�D!ETokyo 2020�C!DTokyo 2020�B!CTokyo 2020�A!BTokyo 2020�@#ALondon 2012�?!@Tokyo 2020�>!?Tokyo 2020�=!>Tokyo 2020�<!=Tokyo 2020�;#<London 2012�:;Rio 2016�9#:London 2012�89Rio 2016�7!8Tokyo 2020�6!7Tokyo 2020�5!6Tokyo 2020�4!5Tokyo 2020�3!4Tokyo 2020�2!3Tokyo 2020�12Rio 2016�01Rio 2016�/!0Tokyo 2020�.!/Tokyo 2020�-!.Tokyo 2020�,!-Tokyo 2020�+!,Tokyo 2020�*#+London 2012�)!*Tokyo 2020�()Rio 2016�'!(Tokyo 2020�&!'Tokyo 2020�%&Rio 2016   �b �����|fP:$
������kU?)������ydN6������lV=(������wbK6
�
�
�
�
�
�
n
V
A
+
	�	�	�	�	�	�	|	f	P	;	!		������pZD.������xbL6 ������lVA+ �����ydK5 ������nYD/������waK5 ������qYC-������xb          �u!vTokyo 2020�tuRio 2016�s#	tLondon 2012�r#sLondon 2012�qrRio 2016�p!qTokyo 2020�o!pTokyo 2020�n%oBeijing 2008�m!nTokyo 2020�l!mTokyo 2020�k!lTokyo 2020�j#		kLondon 2012�i!jTokyo 2020�hiRio 2016�ghRio 2016�f!gTokyo 2020�e!fTokyo 2020�deRio 2016�c%dBeijing 2008�bcRio 2016�abRio 2016�`!aTokyo 2020�_!`Tokyo 2020�^!_Tokyo 2020�]#^London 2012�\]Rio 2016�[\Rio 2016�Z[Rio 2016�Y!ZTokyo 2020�X%YBeijing 2008�W%XBeijing 2008�V%WBeijing 2008�UVRio 2016�T	URio 2016�S	TRio 2016�R!STokyo 2020�Q!RTokyo 2020�P!QTokyo 2020�O!PTokyo 2020�N#	OLondon 2012�MNRio 2016�LMRio 2016�K#LLondon 2012�JKRio 2016�I!JTokyo 2020�H%IBeijing 2008�GHRio 2016�F	GRio 2016�E#		FLondon 2012�D!ETokyo 2020�C!DTokyo 2020�B%CBeijing 2008�ABRio 2016�@	ARio 2016�?!@Tokyo 2020�>!?Tokyo 2020�=>Rio 2016�<!=Tokyo 2020�;!<Tokyo 2020�:!;Tokyo 2020�9:Rio 2016�8#	9London 2012�78Rio 2016�6!7Tokyo 2020�5#6London 2012�4#5London 2012�3!4Tokyo 2020�2!3Tokyo 2020�1!2Tokyo 2020�0!1Tokyo 2020�/!0Tokyo 2020�.	/Rio 2016�-!.Tokyo 2020�,#	-London 2012�+,Rio 2016�*	+Rio 2016�)#		*London 2012�(#)Athens 2004�'!(Tokyo 2020�&!	'Tokyo 2020�%!	&Tokyo 2020�$!	%Tokyo 2020�#!$Tokyo 2020�"!	#Tokyo 2020�!!"Tokyo 2020� !		!Tokyo 2020� Rio 2016�!Tokyo 2020�#London 2012�%	Beijing 2008�Rio 2016�!Tokyo 2020�!	Tokyo 2020�Rio 2016�!		Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�#		Athens 2004�!		Tokyo 2020�		Rio 2016�!Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�!	Tokyo 2020�Rio 2016�!	Tokyo 2020�%		Beijing 2008�Rio 2016�	Rio 2016�	Rio 2016�Rio 2016� !	Tokyo 2020�!	 Tokyo 2020�~!�Tokyo 2020�}�Rio 2016�|#		�London 2012�{		�Rio 2016�z�Rio 2016�y�Rio 2016�x#�London 2012�w!		�Tokyo 2020�v�Rio 2016�u!	�Tokyo 2020�t	�Rio 2016�s!�Tokyo 2020�r!	�Tokyo 2020�q!	�Tokyo 2020�p#�London 2012�o!	�Tokyo 2020�n#	�London 2012�m#�London 2012�l!�Tokyo 2020�k�Rio 2016�j!�Tokyo 2020�i�Rio 2016�h!	�Tokyo 2020�g!�Tokyo 2020�f!�Tokyo 2020�e#�London 2012�d�Rio 2016�c!�Tokyo 2020�b!�Tokyo 2020�a!	�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^	�Rio 2016�]!		�Tokyo 2020�\�Rio 2016�[!�Tokyo 2020�Z#�London 2012�Y#	�Athens 2004�X%		�Beijing 2008�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S#�London 2012�R!�Tokyo 2020�Q	�Rio 2016�P!	�Tokyo 2020�O	�Rio 2016�N!�Tokyo 2020
  e� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������xph`XPH@80(  ����������������xph`XPH@8@80(  ������������������������������xph`�xpXPhH@        zyyxh�wvvupxrqqppoonnm�Phggffeeddccbbaa``__^� UTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCB� h.--,,++**))((''&&%%$$##""!���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  �������������������������������������������������������������

		  �����������������������������������������������������������������������������������������������������������������������������������������������������������������   �d �����x_G1�����jU@*������zdN8#������w_I1�����{fP:$
�
�
�
�
�
�
t
^
I
3

	�	�	�	�	�	�	p	[	E	-		������kU?)������|fP:$������v`J4������jT<$������p[B,�����v`J5	������r\C+������yd          �Rio 2016�Rio 2016�#London 2012�Rio 2016�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�#London 2012�%Beijing 2008�!Tokyo 2020�#Athens 2004�Rio 2016�Rio 2016�Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�
!	Tokyo 2020�	
Rio 2016�!		Tokyo 2020�!Tokyo 2020�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�#London 2012�Rio 2016�%Beijing 2008� !Tokyo 2020� Rio 2016�~!�Tokyo 2020�}%	�Beijing 2008�|	�Rio 2016�{%�Beijing 2008�z#�London 2012�y#�London 2012�x!�Tokyo 2020�w�Rio 2016�v�Rio 2016�u!�Tokyo 2020�t�Rio 2016�s#�London 2012�r#�London 2012�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n#	�London 2012�m�Rio 2016�l!�Tokyo 2020�k!�Tokyo 2020�j�Rio 2016�i%	�Atlanta 1996�h�Rio 2016�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b!�Tokyo 2020�a!�Tokyo 2020�`�Rio 2016�_!�Tokyo 2020�^	�Rio 2016�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U�Rio 2016�T	�Rio 2016�S	�Rio 2016�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H�Rio 2016�G�Rio 2016�F�Rio 2016�E�Rio 2016�D#	�London 2012�C!�Tokyo 2020�B�Rio 2016�A�Rio 2016�@!�Tokyo 2020�?!�Tokyo 2020�>	�Rio 2016�=	�Rio 2016�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7�Rio 2016�6!�Tokyo 2020�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,!�Tokyo 2020�+!�Tokyo 2020�*	�Rio 2016�)!�Tokyo 2020�(%�Beijing 2008�'!�Tokyo 2020�&!�Tokyo 2020�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"%	�Beijing 2008�!!	�Seoul 1988� !�Tokyo 2020�#�London 2012�	�Rio 2016�	�Rio 2016��Rio 2016�!	�Tokyo 2020�!	�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
!�Tokyo 2020�	�Rio 2016��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�#	�London 2012�!�Tokyo 2020� !�Tokyo 2020�#�Sydney 2000�~!Tokyo 2020�}#~London 2012�|%}Beijing 2008�{!|Tokyo 2020�z!{Tokyo 2020�y#zLondon 2012�x#yLondon 2012�w!xTokyo 2020�v!	wTokyo 2020   �o �����}gO9!������oWB-�����t\G1�����|dN8
������jT>(
�
�
�
�
�
�
v
`
J
4

	�	�	�	�	�	�	m	T	<	'	������x_I0 �����|fP;&������xbL6 
������mXB,������xcJ4	������kU=(������t\F0������o                         �E�Rio 2016�D�Rio 2016�C!�Tokyo 2020�B!	�Tokyo 2020�A�Rio 2016�@�Rio 2016�?�Rio 2016�>!�Tokyo 2020�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:#�London 2012�9!�Tokyo 2020�8�Rio 2016�7%�Beijing 2008�6%			�Beijing 2008�5�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1�Rio 2016�0#�Athens 2004�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,#�London 2012�+!�Tokyo 2020�*!�Tokyo 2020�)!	�Tokyo 2020�(#�London 2012�'�Rio 2016�&!�Tokyo 2020�%!�Tokyo 2020�$#�Athens 2004�#�Rio 2016�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�%�Beijing 2008�#�Athens 2004��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�#�London 2012�!�Tokyo 2020�%	�Beijing 2008�	�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�~!Tokyo 2020�}!~Tokyo 2020�|!}Tokyo 2020�{!|Tokyo 2020�z!{Tokyo 2020�y#zLondon 2012�x#yLondon 2012�w%	xBeijing 2008�v!wTokyo 2020�u%vBeijing 2008�tuRio 2016�s!tTokyo 2020�r!sTokyo 2020�q!rTokyo 2020�p%	qBeijing 2008�opRio 2016�noRio 2016�m	nRio 2016�l	mRio 2016�k#		lLondon 2012�j%		kBeijing 2008�ijRio 2016�h#	iLondon 2012�g!hTokyo 2020�f!gTokyo 2020�e!fTokyo 2020�d!eTokyo 2020�c!dTokyo 2020�b!cTokyo 2020�a!bTokyo 2020�`!	aTokyo 2020�_!`Tokyo 2020�^!_Tokyo 2020�]!^Tokyo 2020�\!]Tokyo 2020�[!\Tokyo 2020�Z%	[Atlanta 1996�Y!ZTokyo 2020�X!YTokyo 2020�W!XTokyo 2020�VWRio 2016�U!VTokyo 2020�T!	UTokyo 2020�S!TTokyo 2020�R!	STokyo 2020�QRRio 2016�P%		QBeijing 2008�O#	PSydney 2000�N#OLondon 2012�M!NTokyo 2020�L!	MTokyo 2020�KLRio 2016�J%KBeijing 2008�I!JTokyo 2020�H!ITokyo 2020�G#HLondon 2012�FGRio 2016�EFRio 2016�DERio 2016�C!DTokyo 2020�B#	CLondon 2012�A#BLondon 2012�@#ALondon 2012�?#		@London 2012�>!?Tokyo 2020�=>Rio 2016�<#=Athens 2004�;%	<Beijing 2008�:;Rio 2016�9%:Beijing 2008�8#9London 2012�7!8Tokyo 2020�6#7London 2012�5!6Tokyo 2020�4!5Tokyo 2020�34Rio 2016�23Rio 2016�1#	2Athens 2004�0!	1Tokyo 2020�/!0Tokyo 2020�.!/Tokyo 2020�-#.London 2012�,-Rio 2016�+,Rio 2016�*%+Beijing 2008�)*Rio 2016�(#)Athens 2004�'!	(Tokyo 2020�&#	'London 2012�%!	&Tokyo 2020�$!%Tokyo 2020�#!$Tokyo 2020�"#Rio 2016�!!"Tokyo 2020� !!Tokyo 2020�! Tokyo 2020
82� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������0(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  �����`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@8        zyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{  �

		  ���������������������������������������������������������������{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     �l �����xbL6������lS='������v^H2������jT>(������zdN9$
�
�
�
�
�
�
v
a
L
6
 
	�	�	�	�	�	�	p	Z	D	.		 �����yaK3������mWB-������hS='������w^I3������oZE/�����}gO7!������t[E/������l                  �n!oTokyo 2020�m#nLondon 2012�lmRio 2016�klRio 2016�j!kTokyo 2020�i	jRio 2016�h!iTokyo 2020�ghRio 2016�fgRio 2016�e!	fTokyo 2020�d!eTokyo 2020�c%dBeijing 2008�b!	cTokyo 2020�a!bTokyo 2020�`aRio 2016�_`Rio 2016�^!_Tokyo 2020�]!^Tokyo 2020�\!]Tokyo 2020�[\Rio 2016�Z![Tokyo 2020�Y#ZLondon 2012�X#	YLondon 2012�W!XTokyo 2020�V!WTokyo 2020�U!VTokyo 2020�T!UTokyo 2020�S!TTokyo 2020�R!STokyo 2020�Q#	RLondon 2012�P!QTokyo 2020�O!PTokyo 2020�N!	OTokyo 2020�MNRio 2016�LMRio 2016�K!LTokyo 2020�J!KTokyo 2020�IJRio 2016�HIRio 2016�G!HTokyo 2020�F!GTokyo 2020�E!FTokyo 2020�D!ETokyo 2020�C!	DTokyo 2020�B!CTokyo 2020�ABRio 2016�@%	ABeijing 2008�?!	@Tokyo 2020�>!?Tokyo 2020�=#	>London 2012�<	=Rio 2016�;!	<Tokyo 2020�:!		;Tokyo 2020�9!:Tokyo 2020�89Rio 2016�7!8Tokyo 2020�6!7Tokyo 2020�5	6Rio 2016�4#5London 2012�3!4Tokyo 2020�23Rio 2016�1!2Tokyo 2020�0!1Tokyo 2020�/	0Rio 2016�.	/Rio 2016�-.Rio 2016�,!-Tokyo 2020�+,Rio 2016�*+Rio 2016�)!*Tokyo 2020�(!)Tokyo 2020�'!(Tokyo 2020�&!'Tokyo 2020�%!&Tokyo 2020�$!%Tokyo 2020�#!$Tokyo 2020�"!#Tokyo 2020�!!"Tokyo 2020� !!Tokyo 2020�# London 2012�!Tokyo 2020�#	London 2012�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�#		London 2012�#		London 2012�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
#Athens 2004�	!	
Tokyo 2020�!	Tokyo 2020�Rio 2016�Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� !	Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}�Rio 2016�|�Rio 2016�{!�Tokyo 2020�z!	�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w	�Rio 2016�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r�Rio 2016�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n%	�Beijing 2008�m�Rio 2016�l#�London 2012�k!�Tokyo 2020�j�Rio 2016�i�Rio 2016�h�Rio 2016�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d!�Tokyo 2020�c#	�London 2012�b!�Tokyo 2020�a	�Rio 2016�`#	�London 2012�_!�Tokyo 2020�^!�Tokyo 2020�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X%�Beijing 2008�W!�Tokyo 2020�V%�Beijing 2008�U!�Tokyo 2020�T�Rio 2016�S!�Tokyo 2020�R!�Tokyo 2020�Q!	�Tokyo 2020�P!�Tokyo 2020�O#�Athens 2004�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I#�London 2012�H!�Tokyo 2020�G!�Tokyo 2020�F#�London 2012   �h �����zdN9#������mWA+������zeM7!������t^H2�����}hP:%
�
�
�
�
�
�
s
]
E
0

	�	�	�	�	�	{	e	O	9	#	������t^H2������lV@*������zdN8"������r\F0������jT>(������xbL6 
������pZD.�����~h              �!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� !Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l!�Tokyo 2020�k!�Tokyo 2020�j!�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b!�Tokyo 2020�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!�Tokyo 2020�E!�Tokyo 2020�D!	�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@�Rio 2016�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8#	�London 2012�7!�Tokyo 2020�6%	�Beijing 2008�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2!	�Tokyo 2020�1�Rio 2016�0#�London 2012�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,#�London 2012�+!�Tokyo 2020�*!�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'�Rio 2016�&�Rio 2016�%!�Tokyo 2020�$#�London 2012�#�Rio 2016�"#	�London 2012�!!�Tokyo 2020� %�Beijing 2008�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012��Rio 2016�!�Tokyo 2020�
!	�Tokyo 2020�	�Rio 2016�%�Beijing 2008�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� %�Beijing 2008�#	�London 2012�~#	London 2012�}!~Tokyo 2020�|!}Tokyo 2020�{|Rio 2016�z!{Tokyo 2020�y!zTokyo 2020�x!yTokyo 2020�wxRio 2016�vwRome 1960�u!vTokyo 2020�t!uTokyo 2020�s!tTokyo 2020�r!	sTokyo 2020�q!rTokyo 2020�p!qTokyo 2020�o#pLondon 2012
  98 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ���~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIH   i� �����|fP:"������s]H2������iS='������s]G1�����}gQ;#
�
�
�
�
�
�
o
Y
A
+
	�	�	�	�	�	�	w	b	M	7			������lS>)������zdN9 ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � !�Tokyo 2020�!�Tokyo 2020�~%Beijing 2008�}%~Beijing 2008�|}Rio 2016�{!|Tokyo 2020�z!{Tokyo 2020�y!zTokyo 2020�x!yTokyo 2020�w!xTokyo 2020�v!wTokyo 2020�u!vTokyo 2020�t!uTokyo 2020�s!tTokyo 2020�rsRio 2016�qrRio 2016�pqRio 2016�o%	pBeijing 2008�n!oTokyo 2020�m%nBeijing 2008�l#mLondon 2012�k!lTokyo 2020�j	kRio 2016�i	jRio 2016�h!	iTokyo 2020�g!hTokyo 2020�f#gLondon 2012�e!fTokyo 2020�deRio 2016�cdRio 2016�b	cRio 2016�abRio 2016�`#aLondon 2012�_!`Tokyo 2020�^#	_London 2012�]#	^London 2012�\!]Tokyo 2020�[!\Tokyo 2020�Z![Tokyo 2020�Y#		ZLondon 2012�X!YTokyo 2020�W%	XBeijing 2008�V!WTokyo 2020�U!VTokyo 2020�T!UTokyo 2020�STRio 2016�R!STokyo 2020�Q!RTokyo 2020�P#QLondon 2012�O#PLondon 2012�N!	OTokyo 2020�M!NTokyo 2020�L!MTokyo 2020�K#LLondon 2012�JKRio 2016�I!JTokyo 2020�H#ILondon 2012�GHRio 2016�F!GTokyo 2020�E#FLondon 2012�D!ETokyo 2020�C!DTokyo 2020�B!CTokyo 2020�A!BTokyo 2020�@!ATokyo 2020�?!@Tokyo 2020�>!?Tokyo 2020�=!>Tokyo 2020�<!=Tokyo 2020�;!	<Tokyo 2020�:#;London 2012�9#:London 2012�8!9Tokyo 2020�7!8Tokyo 2020�6!7Tokyo 2020�5%	6Beijing 2008�4!5Tokyo 2020�34Rio 2016�2!3Tokyo 2020�1	2Rio 2016�0!1Tokyo 2020�/%	0Beijing 2008�.!/Tokyo 2020�-.Rio 2016�,!-Tokyo 2020�+,Rio 2016�*!+Tokyo 2020�)%*Beijing 2008�(!)Tokyo 2020�'!(Tokyo 2020�&'Rio 2016�%&Rio 2016�$%Rio 2016�#$Rio 2016�"!#Tokyo 2020�!#		"London 2012� !!Tokyo 2020�! Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020  �� ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,& ���������������������~xrlf`ZTNHB<60*$�������������������zsle^WPIB;4-&
������������������~wpib[TMF?81*# 
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
{
t
m
f
_
X
Q
J
C
<
5
.
'
 



	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�		x	q	j	c	\	U	N	G	@	9	2	+	$					������������������|ung`YRKD=6/(!�������������������yrkd]VOHA:3,%	������������������}vohaZSLE>70)"���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ��� � �~��}��|��{��z��y��x��w��v��u��t��s��r��q��p��o��n��m��l��k��j��i��h��g��f��e��d��c��b��a��`��_��^��]��\��[��Z��Y��X��W��V��U��T��S��R��Q��P��O��N��M��L��K��J��I��H��G��F��E��D��C��B��A��@��?��>��=��<��;��:��9��8��7��6��5��4��3��2��1��0��/��.��-��,��+��*��)��(��'��&��%��$��#��"��!�� ��������������������������������������������
��	������������������ ����~�}~�|}�{|�z{�yz�xy�wx�vw�uv�tu�st�rs�qr�pq�op�no�mn�lm�kl�jk�ij�hi�gh�fg�ef�de�cd�bc�ab�`a�_`�^_�]^�\]�[\�Z[�YZ�XY�WX�VW�UV�TU�ST�RS�QR�PQ�OP�NO�MN�LM�KL�JK�IJ�HI�GH�FG�EF�DE�CD�BC�AB�@A�?@�>?�=>�<=�;<�:;�9:�89�78�67�56�45�34�23�12�01�/0�./�-.�,-�+,�*+�)*�()�'(�&'�%&�$%�#$�"#�!"� !� ���������������������
�	
�	��������  ~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	���������
  �p ������������������|ung`YRKD=6/(!�������������������yrkd]VOHA:3,%	������������������}vohaZSLE>70)"�������������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xp                                                                                                                                                                                                                                                                                                                                                                    ��� �~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	��������� � � �~ �} �| �{ �z �y �x �w �v �u �t �s �r �q �p �o �n �m �l �k �j �i �h �g �f �e �d �c �b �a �` �_ �^ �] �\ �[ �Z �Y �X �W �V �U �T �S �R �Q �P �O �N �M �L �K �J �I �H �G �F �E �D �C �B �A �@ �? �> �= �< �; �: �9 �8 �7 �6 �5 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �% �$ �# �" �! �  � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � �~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	�������	�   �    ������fM4�����lS:#���������vgXI:+���������whYJ;,���������xiZK<- 
�
�
�
�
�
�
w
k
_
S
G
;
/
#

	�	�	�	�	�	�	�	�	�	�	�	�	y	n	c	X	M	B	7	*			����������tgZK<-��������{iWE3$��������o_SG7'�����������{ocWI;-������hM2$���������|nZF7(
���������p`P@0  ��  �k �Shooting�j �Shooting�i �Shooting�h �Shooting�g �Shooting�f �Shooting�e �Shooting�d �Shooting�c �Shooting�b �Shooting�a �Shooting�` �Shooting�_ �Shooting�^ �Sailing�] �Sailing�\ �Sailing�[ �Sailing�Z �Sailing�Y �Sailing�X �Sailing�W �Sailing�V �Sailing�U �Sailing�T% �Rugby Sevens�S% �Rugby Sevens�R �Rowing�Q �Rowing�P �Rowing�O �Rowing�N �Rowing�M �Rowing�L �Rowing�K �Rowing�J �Rowing�I �Rowing�H �Rowing�G �Rowing�F �Rowing�E �Rowing�D3 �Rhythmic Gymnastics�C3 �Rhythmic Gymnastics�B3 �Rhythmic Gymnastics�A/ �Modern Pentathlon�@/ �Modern Pentathlon�?/ �Marathon Swimming�>/ �Marathon Swimming�= �Karate�< �Karate�; �Karate�: �Karate�9 �Karate�8 �Karate�7 �Karate�6 �Karate	�5 �Judo	�4 �Judo	�3 �Judo	�2 �Judo	�1 �Judo	�0 �Judo	�/ �Judo	�. �Judo	�- �Judo	�, �Judo	�+ �Judo	�* �Judo	�) �Judo	�( �Judo	�' �Judo�& �Hockey�% �Hockey�$ �Handball�# �Handball	�" �Golf	�! �Golf�  �Football� �Football� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian� �Diving� �Diving�
 �Diving�	 �Diving� �Diving� �Diving� �Diving� �Diving� �Cycling� �Cycling� �Cycling� �Cycling�  �CyclingCycling~~Cycling}}Cycling||Cycling{{CyclingzzCyclingyyCyclingxxCyclingwwCyclingvvCyclinguuCyclingttCyclingssCyclingrrCyclingqqCyclingppCyclingooCycling	nnCanoe	mmCanoe	llCanoe	kkCanoe	jjCanoe	iiCanoe	hhCanoe	ggCanoe	ffCanoe	eeCanoe	ddCanoe	ccCanoe	bbCanoe	aaCanoe	``Canoe	__Canoe
^^Boxing
]]Boxing
\\Boxing
[[Boxing
ZZBoxing
YYBoxing
XXBoxing
WWBoxing
VVBoxing
UUBoxing
TTBoxing
SSBoxingR-RBeach VolleyballQ-QBeach VolleyballP!PBasketballO!OBasketballN/NBaseball/SoftballM/MBaseball/SoftballLLBadmintonKKBadmintonJJBadmintonIIBadmintonHHBadmintonGGAthleticsFFAthleticsEEAthleticsDDAthleticsCCAthleticsBBAthleticsAAAthletics@@Athletics??Athletics>>Athletics==Athletics<<Athletics;;Athletics::Athletics99Athletics88Athletics77Athletics66Athletics55Athletics44Athletics33Athletics22Athletics11Athletics00Athletics//Athletics..Athletics--Athletics,,Athletics++Athletics**Athletics))Athletics((Athletics''Athletics&&Athletics%%Athletics$$Athletics##Athletics""Athletics!!Athletics  AthleticsAthleticsAthleticsAthleticsAthleticsAthleticsAthleticsAthleticsAthletics/Artistic Swimming/Artistic Swimming3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics
3
Artistic Gymnastics	3	Artistic Gymnastics3Artistic GymnasticsArcheryArcheryArcheryArcheryArchery)3x3 Basketball	)3x3 Bask   ��k
  P� ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        PPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

				   �� �������fM4�����lS:#���������vgXI:+���������whYJ;,���������xiZK<- 
�
�
�
�
�
�
w
k
_
S
G
;
/
#

	�	�	�	�	�	�	�	�	�	�	�	�	y	n	c	X	M	B	7	*			����������tgZK<-��������{iWE3$��������o_SG7'�����������{ocWI;-������hM2$���������|nZF7(
���������p`P@0  ��  �k �Shooting�j �Shooting�i �Shooting�h �Shooting�g �Shooting�f �Shooting�e �Shooting�d �Shooting�c �Shooting�b �Shooting�a �Shooting�` �Shooting�_ �Shooting�^ �Sailing�] �Sailing�\ �Sailing�[ �Sailing�Z �Sailing�Y �Sailing�X �Sailing�W �Sailing�V �Sailing�U �Sailing�T% �Rugby Sevens�S% �Rugby Sevens�R �Rowing�Q �Rowing�P �Rowing�O �Rowing�N �Rowing�M �Rowing�L �Rowing�K �Rowing�J �Rowing�I �Rowing�H �Rowing�G �Rowing�F �Rowing�E �Rowing�D3 �Rhythmic Gymnastics�C3 �Rhythmic Gymnastics�B3 �Rhythmic Gymnastics�A/ �Modern Pentathlon�@/ �Modern Pentathlon�?/ �Marathon Swimming�>/ �Marathon Swimming�= �Karate�< �Karate�; �Karate�: �Karate�9 �Karate�8 �Karate�7 �Karate�6 �Karate	�5 �Judo	�4 �Judo	�3 �Judo	�2 �Judo	�1 �Judo	�0 �Judo	�/ �Judo	�. �Judo	�- �Judo	�, �Judo	�+ �Judo	�* �Judo	�) �Judo	�( �Judo	�' �Judo�& �Hockey�% �Hockey�$ �Handball�# �Handball	�" �Golf	�! �Golf�  �Football� �Football� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian� �Diving� �Diving�
 �Diving�	 �Diving� �Diving� �Diving� �Diving� �Diving� �Cycling� �Cycling� �Cycling� �Cycling�  �CyclingCycling~~Cycling}}Cycling||Cycling{{CyclingzzCyclingyyCyclingxxCyclingwwCyclingvvCyclinguuCyclingttCyclingssCyclingrrCyclingqqCyclingppCyclingooCycling	nnCanoe	mmCanoe	llCanoe	kkCanoe	jjCanoe	iiCanoe	hhCanoe	ggCanoe	ffCanoe	eeCanoe	ddCanoe	ccCanoe	bbCanoe	aaCanoe	``Canoe	__Canoe
^^Boxing
]]Boxing
\\Boxing
[[Boxing
ZZBoxing
YYBoxing
XXBoxing
WWBoxing
VVBoxing
UUBoxing
TTBoxing
SSBoxingR-RBeach VolleyballQ-QBeach VolleyballP!PBasketballO!OBasketballN/NBaseball/SoftballM/MBaseball/SoftballLLBadmintonKKBadmintonJJBadmintonIIBadmintonHHBadmintonGGAthleticsFFAthleticsEEAthleticsDDAthleticsCCAthleticsBBAthleticsAAAthletics@@Athletics??Athletics>>Athletics==Athletics<<Athletics;;Athletics::Athletics99Athletics88Athletics77Athletics66Athletics55Athletics44Athletics33Athletics22Athletics11Athletics00Athletics//Athletics..Athletics--Athletics,,Athletics++Athletics**Athletics))Athletics((Athletics''Athletics&&Athletics%%Athletics$$Athletics##Athletics""Athletics!!Athletics  AthleticsAthleticsAthleticsAthleticsAthleticsAthleticsAthleticsAthleticsAthletics/Artistic Swimming/Artistic Swimming3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics3Artistic Gymnastics
3
Artistic Gymnastics	3	Artistic Gymnastics3Artistic GymnasticsArcheryArcheryArcheryArcheryArchery)3x3 Basketball	)3x3 Basketball   e	 ������v`QA1!��������qaQA1!��������qaQA1	�������xgVE7)�������n\J5 
�
�
�
�
�
�
x
c
N
9
(

	�	�	�	�	�	�	�	~	m	\	K	:	)		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     �PPWrestling�OOWrestling�NNWrestling�MMWrestling�LLWrestling�KKWrestling�JJWrestling�IIWrestling�HHWrestling�GGWrestling�FFWrestling�EEWrestling�DDWrestling�CCWrestling�BBWrestling�AAWrestling�@@Wrestling�??Wrestling�>'>Weightlifting�='=Weightlifting�<'<Weightlifting�;';Weightlifting�:':Weightlifting�9'9Weightlifting�8'8Weightlifting�7'7Weightlifting�6'6Weightlifting�5'5Weightlifting�4'4Weightlifting�3'3Weightlifting�2'2Weightlifting�1!1Water Polo�0!0Water Polo�/!/Volleyball�.!.Volleyball�--Triathlon�,,Triathlon�++Triathlon�*7*Trampoline Gymnastics�)7)Trampoline Gymnastics�((Tennis�''Tennis�&&Tennis�%%Tennis�$$Tennis�##Taekwondo�""Taekwondo�!!Taekwondo�  Taekwondo�Taekwondo�Taekwondo�Taekwondo�Taekwondo�%Table Tennis�%Table Tennis�%Table Tennis�%Table Tennis�%Table Tennis�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�

Swimming�		Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�  Swimming� �Swimming�~ �Swimming�} �Swimming�| �Swimming�{ �Swimming�z �Swimming�y �Swimming�x �Swimming�w �Swimming�v �Swimming�u �Swimming�t �Surfing�s) �Sport Climbing�r) �Sport Climbing�q' �Skateboarding�p' �Skateboarding�o' �Skateboarding�n' �Skateboarding�m �Shooting�l �Shooting   �    ��������������wof]TKB91) ���������������~vnf^VNE<4,$
���������������{skc[SKB90(  ���������������zqi`XOG?6.%��������������vlbYPG=4+"
�
�
�
�
�
�
�
�
�
�
�
�
�
�
w
n
e
\
S
J
A
8
.
%


	�	�	�	�	�	�	�	�	�	�	�	�	�	�	z	q	h	_	V	M	D	;	1	'				�������������{qh_VLB8.$��������������yoe[QG=3*!�������������|sjaXOF<3)�������������yoe[QG=4+!�������������}tkaWMD;1(�������������|si_UKA7-#���   �n� ��m� ��l� ��k� ��j� ��i� ��h� ��g�1�f� ��e� ��d� ��c� ��b� ��a� ��`��_��^�/�]�.�\� ��[ ��Z~P�Y~O�X}�W| ��V| ��U{ ��T{ ��Sz/�Rz.�QyN�Px�Ox�NwP�MwO�Lv.�Ku�JtN�Is ��Hr/�Gr.�Fq�Eq�Dp ��CoP�Bn ��Am0�@l ��?l ��>k ��=k ��<j ��;i ��:h/�9h.�8gM�7fP�6fO�5eP�4eO�3d1�2c�1c�0b ��/a ��.a ��-` ��,_ ��+_ ��*^ ��)] ��(\ ��'[ ��&Z�%Z�$YN�#X ��"W ��!V/� V.�U�T/�T.�S ��R ��Q ��Q ��P ��ON�N ��MP�MO�L�KP�KO�J�I/�H ��G ��FN�E ��
D ��	C ��C ��B�B�A ��A ��@/�? ��> �� =P�=O�~<P�}<O�|; ��{; ��z: ��y: ��x91�w8 ��v7 ��u7 ��t6�s5�r5�q4�p3/�o2/�n2.�m1 ��l0N�k/�j/�i. ��h-�g,N�f+ ��e+ ��d* ��c* ��b) ��a(/�`' ��_' ��^&P�]&O�\%�[$ ��Z$ ��Y# ��X"�W"�V!/�U!.�T  ��S�RP�QO�P�O ��N ��M ��L/�K�J�I/�H ��G ��FN�EN�DP�CO�B�A�@�?1�>.�= ��< ��; ��: ��9
P�8
O�7	P�6P�5O�4O�3 ��2�1�0 ��/ ��.�-�, ��+ P�* O�)�N�(�P�'�O�&�P�%�P�$�.�#�/�"�.�!�P� �O��M��N��N�� �����P��O�� ��� ���/��/��/��P��O��P��O��/��O������.�
�1�	�����P��P��P��O��P��O��P� �O� �~�/}�.|�.{�Pz�Oy�Px�Ow�Nv� �u� �t�Os�0r�q�p�0o�n� �m�l�.k� �j�Ni� �h� �g� �f� �e�d�c�b� �a�O`�_�^�]�M\�P[�OZ�Y�PX�OW�PV�OU� �T� �S� �R�PQ�OP�PO�ON�NM�NL�K�J�I� �H� �G� �F�OE� �D�C�B�A�P@�O?� �>�O=� �<� �;�:� �9�.8�7�6�5� �4� �3�O2�O1�P0�O/�P.�O-� �,�.+� �*� �)�(�'�&�%�P$�O#�"� �!� � � �� �� ��P�O�/�.��� �� �� ��.� �� ��N� �� �� ��O��P
�O	� �� �� �� ��M� �� ��P   ��n   �    ��������������������RJB:2*"
����������������zrjbZRJB:2*"
����������������zrjbZRJB:2*"
����������������zrjbZRJB:2*"
��������������zqh_VMD;2) 
�
�
�
�
�
�
�
�
�
�
�
�
�
�
~
u
l
c
Z
Q
H
?
6
-
$


	
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	y	p	g	^	U	L	C	:	1	(				��������������}tkbYPG>5,#��������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%��   �t � ��s � ��r � ��q � ��p � ��o � ��n � ��m � ��l � ��k � ��j � ��i � ��h � ��g � ��f � ��e � ��d � ��c � ��b � ��a � ��` � ��_ � ��^ � ��] � ��\ � ��[ � ��Z � ��Y � ��X � ��W � ��V � ��U � ��T � ��S � ��R � ��Q � ��P � ��O � ��N � ��M � ��L � ��K � ��J � ��I � ��H � ��G � ��F � ��E � ��D � ��C � ��B � ��A � ��@ � ��? � ��> � ��= � ��< � ��; � ��: � ��9 � ��8 � ��7 � ��6 � ��5 � ��4 � ��3 � ��2 � ��1 � ��0 � ��/ � ��. � ��- � ��, � ��+ � ��* � ��) � ��( � ��' � ��& � ��% � ��$ � ��# � ��" � ��! � ��  � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � ��
 � ��	 � �� � �� � �� � �� � �� � �� � �� � �� � ��  � �� � ��~ � ��} � ��| � ��{ � ��z ��y~ ��x} ��w| ��v| ��u{ ��tz ��sz ��ry ��qx ��pw ��ow ��nw ��mv ��lu ��kt ��js ��ir ��hr ��gq ��fp ��ep ��dp ��co ��bn ��am ��`l ��_l ��^l ��]k ��\k ��[j ��Zj ��Yi ��Xi ��Wh ��Vh ��Uh ��Tg ��Sf ��Rf ��Qe ��Pd ��Od ��Nc ��Mc ��Lc ��Kb ��Ja ��Ia ��H` ��G` ��F` ��E_ ��D_ ��C_ ��B^ ��A] ��@] ��?] ��>\ ��=[ ��<[ ��;[ ��:Z ��9Z ��8Y ��7X ��6X ��5X ��4W ��3W ��2V ��1V ��0U ��/U ��.U ��-T ��,T ��+S ��*R ��)R ��(R ��'Q ��&Q ��%Q ��$P ��#O ��"O ��!O �� N ��N ��N ��M ��M ��L ��K ��J ��J ��J ��I ��I ��I ��H ��H ��H ��G ��G ��F ��F ��E ��D ��
D ��	D ��C ��B ��B ��A ��A ��@ ��@ ��@ �� ? �? �~> �}> �|= �{= �z= �y< �x< �w< �v; �u; �t; �s: �r: �q: �p9 �o9 �n8 �m8 �l8 �k7 �j6 �i5 �h5 �g4 �f4 �e3 �d3 �c2 �b1 �a1 �`1 �_0 �^/ �]/ �\. �[. �Z. �Y- �X, �W, �V, �U+ �T+ �S+ �R* �Q* �P) �O) �N( �M( �L( �K' �J' �I' �H& �G& �F% �E% �D$ �C$ �B# �A# �@# �?" �>! �=  �<  �; �: �9 �8 �7 �6 �5 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �% �$ �# �" �! �  � � � � � � � � � � � �
 �
 �	 �	 � �   ��>   ��e   ��   ��2   ��?   ��L   ��w   ��   ��@   ��a   ��   ��3   ��S   ��p   ��   ��*   ��7   ��H   ��t  n� ���������������wof]TKB91) ���������������~vnf^VNE<4,$
���������������{skc[SKB90(  ���������������zqi`XOG?6.%��������������vlbYPG=4+"
�
�
�
�
�
�
�
�
�
�
�
�
�
�
w
n
e
\
S
J
A
8
.
%


	�	�	�	�	�	�	�	�	�	�	�	�	�	�	z	q	h	_	V	M	D	;	1	'				�������������{qh_VLB8.$��������������yoe[QG=3*!�������������|sjaXOF<3)�������������yoe[QG=4+!�������������}tkaWMD;1(�������������|si_UKA7-#���   �n� ��m� ��l� ��k� ��j� ��i� ��h� ��g�1�f� ��e� ��d� ��c� ��b� ��a� ��`��_��^�/�]�.�\� ��[ ��Z~P�Y~O�X}�W| ��V| ��U{ ��T{ ��Sz/�Rz.�QyN�Px�Ox�NwP�MwO�Lv.�Ku�JtN�Is ��Hr/�Gr.�Fq�Eq�Dp ��CoP�Bn ��Am0�@l ��?l ��>k ��=k ��<j ��;i ��:h/�9h.�8gM�7fP�6fO�5eP�4eO�3d1�2c�1c�0b ��/a ��.a ��-` ��,_ ��+_ ��*^ ��)] ��(\ ��'[ ��&Z�%Z�$YN�#X ��"W ��!V/� V.�U�T/�T.�S ��R ��Q ��Q ��P ��ON�N ��MP�MO�L�KP�KO�J�I/�H ��G ��FN�E ��
D ��	C ��C ��B�B�A ��A ��@/�? ��> �� =P�=O�~<P�}<O�|; ��{; ��z: ��y: ��x91�w8 ��v7 ��u7 ��t6�s5�r5�q4�p3/�o2/�n2.�m1 ��l0N�k/�j/�i. ��h-�g,N�f+ ��e+ ��d* ��c* ��b) ��a(/�`' ��_' ��^&P�]&O�\%�[$ ��Z$ ��Y# ��X"�W"�V!/�U!.�T  ��S�RP�QO�P�O ��N ��M ��L/�K�J�I/�H ��G ��FN�EN�DP�CO�B�A�@�?1�>.�= ��< ��; ��: ��9
P�8
O�7	P�6P�5O�4O�3 ��2�1�0 ��/ ��.�-�, ��+ P�* O�)�N�(�P�'�O�&�P�%�P�$�.�#�/�"�.�!�P� �O��M��N��N�� �����P��O�� ��� ���/��/��/��P��O��P��O��/��O������.�
�1�	�����P��P��P��O��P��O��P� �O� �~�/}�.|�.{�Pz�Oy�Px�Ow�Nv� �u� �t�Os�0r�q�p�0o�n� �m�l�.k� �j�Ni� �h� �g� �f� �e�d�c�b� �a�O`�_�^�]�M\�P[�OZ�Y�PX�OW�PV�OU� �T� �S� �R�PQ�OP�PO�ON�NM�NL�K�J�I� �H� �G� �F�OE� �D�C�B�A�P@�O?� �>�O=� �<� �;�:� �9�.8�7�6�5� �4� �3�O2�O1�P0�O/�P.�O-� �,�.+� �*� �)�(�'�&�%�P$�O#�"� �!� � � �� �� ��P�O�/�.��� �� �� ��.� �� ��N� �� �� ��O��P
�O	� �� �� �� ��M� �� ��P�N   �	� �������������vmd[RH>4*!�������������~tkbYPF<3*!��������������xndZPG>4+"�������������vmd[RH?5+!��������������vlbXND;2(
�
�
�
�
�
�
�
�
�
�
�
�
�
x
n
d
Z
P
F
<
2
(




 	�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            � �� �� �� �� ��
  ��	�/��.��.�� ��� ��� ��� ��� ��� �� �0�� ��~��}��|�M�{� ��z� ��y�0�x� ��w� ��v� ��u� ��t� ��s� ��r��q�0�p� ��o�P�n�O�m�/�l�.�k� ��j�1�i�/�h�.�g�1�f� ��e�.�d�0�c�0�b� ��a�N�`�P�_�P�^�O�]��\� ��[�P�Z�O�Y�P�X�O�W�0�V� ��U� ��T� ��S�M�R� ��Q��P��O��N��M��L��K�0�J�P�I�O�H�0�G�/�F�.�E�/�D�.�C��B� ��A�O�@� ��?� ��>� ��=�P�<�O�;�P�:�O�9� ��8��7�O�6� ��5� ��4� ��3� ��2�/�1�.�0� ��/� ��.� ��-�1�,� ��+�P�*�O�)�P�(�P�'�O�&�P�%�O�$��#��"�P�!�O� ���P��O��/��.����������/��.��/��.��O��P��O�� �����/��.�� ����
��	� ���0��P�� ���P��1�� ��� ��� �� ���P�~�O�}��|�1�{�P�z� ��y� ��x� ��w� ��v� ��u�/�t�.�s� ��r� ��q� ��p�N�o� �  t� ����������������zrjbZRJB:2*"
����������������zrjbZRJB:2*"
����������������zrjbZRJB:2*"
����������������zrjbZRJB:2*"
��������������zqh_VMD;2) 
�
�
�
�
�
�
�
�
�
�
�
�
�
�
~
u
l
c
Z
Q
H
?
6
-
$


	
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	y	p	g	^	U	L	C	:	1	(				��������������}tkbYPG>5,#��������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%��   �t � ��s � ��r � ��q � ��p � ��o � ��n � ��m � ��l � ��k � ��j � ��i � ��h � ��g � ��f � ��e � ��d � ��c � ��b � ��a � ��` � ��_ � ��^ � ��] � ��\ � ��[ � ��Z � ��Y � ��X � ��W � ��V � ��U � ��T � ��S � ��R � ��Q � ��P � ��O � ��N � ��M � ��L � ��K � ��J � ��I � ��H � ��G � ��F � ��E � ��D � ��C � ��B � ��A � ��@ � ��? � ��> � ��= � ��< � ��; � ��: � ��9 � ��8 � ��7 � ��6 � ��5 � ��4 � ��3 � ��2 � ��1 � ��0 � ��/ � ��. � ��- � ��, � ��+ � ��* � ��) � ��( � ��' � ��& � ��% � ��$ � ��# � ��" � ��! � ��  � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � ��
 � ��	 � �� � �� � �� � �� � �� � �� � �� � �� � ��  � �� � ��~ � ��} � ��| � ��{ � ��z ��y~ ��x} ��w| ��v| ��u{ ��tz ��sz ��ry ��qx ��pw ��ow ��nw ��mv ��lu ��kt ��js ��ir ��hr ��gq ��fp ��ep ��dp ��co ��bn ��am ��`l ��_l ��^l ��]k ��\k ��[j ��Zj ��Yi ��Xi ��Wh ��Vh ��Uh ��Tg ��Sf ��Rf ��Qe ��Pd ��Od ��Nc ��Mc ��Lc ��Kb ��Ja ��Ia ��H` ��G` ��F` ��E_ ��D_ ��C_ ��B^ ��A] ��@] ��?] ��>\ ��=[ ��<[ ��;[ ��:Z ��9Z ��8Y ��7X ��6X ��5X ��4W ��3W ��2V ��1V ��0U ��/U ��.U ��-T ��,T ��+S ��*R ��)R ��(R ��'Q ��&Q ��%Q ��$P ��#O ��"O ��!O �� N ��N ��N ��M ��M ��L ��K ��J ��J ��J ��I ��I ��I ��H ��H ��H ��G ��G ��F ��F ��E ��D ��
D ��	D ��C ��B ��B ��A ��A ��@ ��@ ��@ �� ? �? �~> �}> �|= �{= �z= �y< �x< �w< �v; �u; �t; �s: �r: �q: �p9 �o9 �n8 �m8 �l8 �k7 �j6 �i5 �h5 �g4 �f4 �e3 �d3 �c2 �b1 �a1 �`1 �_0 �^/ �]/ �\. �[. �Z. �Y- �X, �W, �V, �U+ �T+ �S+ �R* �Q* �P) �O) �N( �M( �L( �K' �J' �I' �H& �G& �F% �E% �D$ �C$ �B# �A# �@# �?" �>! �=  �<  �; �: �9 �8 �7 �6 �5 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �% �$ �# �" �! �  � � � � � � � � � � � �
 �
 �	 �	 � � � � � � �
 �	 � � � � � � �	 �	 �  T� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&��������        �H� ��G� ��F� ��E� ��D� ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j ��i ��h~ ��g} ��f} ��e| ��d{ ��cz ��bz ��az ��`y ��_x ��^w ��]w ��\v ��[v ��Zu ��Yu ��Xt ��Wt ��Vs ��Us ��Tr ��Sr ��Rq ��Qp ��Po ��Oo ��Nn ��Mn ��Lm ��Kl ��Jk ��Ij ��Hi ��Gi ��Fh ��Eg ��Dg ��Cf ��Bf ��Ae ��@e ��?d ��>c ��=b ��<a ��;` ��:_ ��9^ ��8] ��7\ ��6[ ��5Z ��4Y ��3X ��2W ��1V ��0U ��/T ��.S ��-R ��,Q ��+P ��*O ��)N ��(M ��'L ��&K ��%J ��$I ��#H ��"G ��!F �� E ��D ��C ��C ��B ��B ��A ��A ��@ ��@ ��? ��> ��> ��= ��< ��< ��; ��: ��: ��9 ��9 ��8 ��
7 ��	6 ��5 ��4 ��3 ��3 ��2 ��2 ��1 ��0 �� 0 ��/ ��~/ ��}. ��|. ��{- ��z, ��y+ ��x* ��w* ��v) ��u( ��t( ��s' ��r& ��q% ��p$ ��o# ��n" ��m! ��l  ��k ��j ��i ��h ��g ��f ��e ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��E ��D
 ��C
 ��B	 ��A	 ��@ ��? ��> ��= ��< ��; ��: ��9 ��8 ��7 ��6 ��5 ��4 ��3 ��2 ��1 ��0  ��/  ��. � ��- � ��, � ��+ � ��* � ��) � ��( � ��' � ��& � ��% � ��$ � ��# � ��" � ��! � ��  � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � ��
 � ��	 � �� � �� � �� � �� � �� � �� � �� � �� � ��  � �� � ��~ � ��} � ��| � ��{ � ��z � ��y � ��x � ��w � ��v � ��u � �  o� ������������~tj`VLB8.$�������������zpf\SJA8/&��������������{ri`WNE<3*!��������������vmd[RI@7.%
��������������zqh_VMD;2) 
�
�
�
�
�
�
�
�
�
�
�
�
�
�
~
u
l
c
Z
Q
H
?
6
-
$


	
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	y	p	g	^	U	L	C	:	1	(				��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"���������������wne\SJA8/&��������������{ri`WNE<3*!��������������vmd[RI@7.%
��         �7�~�6�v�5�x�4�v�3�v�2�h�1�h�0�h�/�h�.�h�-�h�,�h�+�h�*�h�)�h�(�h�'�h�&�h�%�h�$�h�#�h�"�h�!�h� �h��h��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l�
�l�	�g��h��g��g��g��g��g��g��g� �g��g�~�h�}�g�|�h�{�g�z�g�y�g�x�c�w�c�v�c�u�c�t�c�s�c�r�c�q�c�p�c�o�j�n�j�m�l�l�j�k�l�j�j�i�j�h�l�g�j�f�l�e�j�d�l�c�j�b�l�a�j�`�j�_�l�^�j�]�l�\�j�[�l�Z�j�Yl�Xj�W~l�V~j�U}l�T}j�S|j�R{l�Q{j�Pzl�Ozj�Nyl�Myj�Lxl�Kxj�Jwf�Ivf�Huf�Gtf�Fsf�Erf�Dqj�Cqi�Bpj�Api�@oi�?nl�>nj�=ni�<mi�;lj�:li�9kj�8ki�7jl�6ji�5ij�4ii�3hj�2hi�1gj�0gi�/fj�.fi�-el�,ei�+dj�*di�)ci�(bi�'ai�&`j�%`i�$_i�#^j�"^i�!]j� ]i�\i�[i�Zj�Zi�Yi�Xi�Wj�Wi�Vi�Uj�Ui�Tj�Ti�Sj�Si�Rj�Ri�Qi�Pj�Pi�Oh�
Oc�	Ok�Nh�Ng�Nk�Mg�Mk�Lg�Lk�Kk� Jk�Ik�~Hk�}Gg�|Gk�{Fk�zEk�yDg�xDk�wCk�vBk�uAg�tAk�s@g�r@k�q?k�p>k�o=g�n=k�m<k�l;k�k:k�j9k�i8k�h7g�g7k�f6k�e5k�d4g�c4k�b3g�a3k�`2k�_1g�^1k�]0g�\0k�[/c�Z/e�Y.c�X.e�W-e�V,c�U,e�T+e�S*c�R*e�Q)c�P)e�O(c�N(e�M'c�L'e�K&c�J&e�I%c�H%e�G$c�F$e�E#c�D#e�C"c�B"e�A!e�@ c�? e�>c�=e�<c�;e�:c�9e�8c�7e�6c�5e�4c�3e�2e�1c�0e�/c�.e�-c�,e�+c�*e�)e�(f�'d�&f�%d�$d�#f�"d�!f� d�d�d�f�d�f�d�
f�
d�	f�	d�f�d�f�d�d�f�d�f�d�f�d�
f�	d�f�d� f� d��f��d��f��d� �d��f�~�d�}�d�|�f�{�d�z�d�y�d�x�f�w�d�v�f�u�d�t�d�s�d�r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� �  s� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"���������������wne\SJA8/&
�
�
�
�
�
�
�
�
�
�
�
�
�
�
{
r
i
`
W
N
E
<
3
*
!


	�	�	�	�	�	�	�	�	�	�	�	�	�	�		v	m	d	[	R	I	@	7	.	%			
	��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"��       �*W�)S�(S�'S�&S�%S�$ S�#�S�"�S�!�S� �S��S��S��S��S��S��S��S��S��S��S��S��S��S��S��S��S��S��\��\��\��\�
�\�	�\��\��\��\��\��\��\��\��\� �\��\�~�\�}�\�|�\�{�\�z�\�y�\�x�\�w�\�v�\�u�\�t�\�s�\�r�\�q�\�p�\�o�\�n�\�m�\�l�\�k�\�j�\�i�\�h�\�g�Z�f�Z�e�Z�d�Z�c�Z�b�Z�a�Z�`�Z�_�Z�^�Z�]�Z�\�Z�[�Z�Z�Z�Y�Z�X�Z�W�Z�V�Z�U�Z�T�Z�S�Z�R�Z�Q�Z�P�Z�O�Z�N�]�M�]�L�]�K�]�J�]�I�]�H�]�G�]�F�]�E�]�D�]�C�]�B�]�A�]�@�]�?�]�>�]�=�]�<�]�;�]�:�]�9�]�8�]�7�u�6�u�5�u�4�u�3�u�2�u�1�u�0�u�/�u�.�u�-�u�,�u�+�u�*�u�)�u�(�u�'�u�&�u�%�u�$�u�#u�"~u�!}u� |u�{u�zu�yu�xu�wu�vu�uu�tu�su�ru�qu�pu�ou�nu�mu�lu�ku�ju�iu�hu�gu�
fu�	eu�du�cu�bu�au�`u�_u�^u�]u� \u�[u�~Zu�}Yu�|Xu�{Wu�zVu�yUu�xTu�wSu�vRu�uQu�tPu�sOu�rNu�qMu�pLu�oKu�nJu�mIu�lHu�kGu�jFu�iEu�hDu�gCu�fBu�eAu�d@u�c?u�b>{�a>u�`=u�_<u�^;u�]:u�\9u�[8u�Z7u�Y7w�X6u�W6w�V5u�U5w�T4u�S4w�R3u�Q3w�P2u�O2w�N1u�M1w�L0u�K0w�J/u�I/w�H.u�G.w�F-w�E,u�D,w�C+u�B+w�A*u�@*w�?)u�>)w�=(u�<(w�;'u�:'w�9&u�8&w�7%u�6%w�5$u�4$w�3#u�2#w�1"u�0"w�/!u�.!w�- u�, w�+u�*w�)u�(w�'u�&w�%w�$u�#w�"u�!w� u�w�u�w�u�w�u�w�w�u�w�u�w�u�w�u�w�x�x�x�v�v�
v�	
x�
v�	v�v�v�v�v�v�v� v�v�~ v�}�x�|�v�{�v�z�x�y�v�x�v�w�x�v�v�u�v�t�x�s�v�r�x�q�v�p�v�o�v�n�x�m�v�l�x�k�v�j�v�i�x�h�v�g�v�f�v�e�v�d�v�c�v�b�v�a�v�`�x�_�v�^�x�]�v�\�v�[�v�Z�x�Y�v�X�v�W�v�V�v�U�v�T�x�S�v�R�v�Q�v�P�x�O�v�N�v�M�x�L�v�K�v�J�x�I�v�H�x�G�v�F�v�E�v�D�x�C�v�B�x�A�v�@�v�?�x�>�v�=�v�<�v�;�v�:�v�9�x�8�v  j� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"���������������wne\SJA8/&
�
�
�
�
�
�
�
�
�
�
�
�
�
�
{
r
i
`
W
N
E
<
3
*
!


	�	�	�	�	�	�	�	�	�	�	�	�	�	�		v	m	d	[	R	I	@	7	.	%			
	��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 �������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"���          �n+�m+�l+�k+�j+�i+�h+�g+�f+�e+�
d+�	c+�b+�a+�`+�_+�^+�]+�\+�[+� Z+�Y+�~X+�}W+�|V+�{U+�zT+�yS+�xR+�wQ+�vP+�uO+�tN+�sM+�rL+�qK+�pJ+�oI+�nH+�mG+�lF+�kE+�jD-�iC-�hB-�gA-�f@-�e?-�d>-�c=-�b<-�a;-�`:-�_9-�^8-�]7-�\6-�[5-�Z4-�Y3-�X2-�W1-�V0-�U/-�T.-�S--�R,-�Q+-�P*-�O)-�N(-�M'-�L&-�K%-�J$-�I#-�H"-�G!-�F -�E-�D-�C-�B-�A-�@-�?-�>-�=-�<-�;-�:-�9-�8-�7-�6-�5-�4r�3r�2r�1r�0
r�/	r�.r�-r�,r�+r�*r�)r�(r�'r�& r�%�r�$�r�#�r�"�r�!�r� �r��r��r��r��q��q��q��q��q��q��q��q��q��q��q��q��q��q��q��q��q��q�
�q�	�q��q��q��q��q��������� ����~��}��|��{��z��y��x��w��v��u��t��s��r��q��p��o��n��m��l��k��j��i��h��g��f��e��d��c��b��a��`��_��^��]��\��[��Z��Y��X�Y�W�Y�V�Y�U�Y�T�Y�S�Y�R�Y�Q�Y�P�Y�O�Y�N�Y�M�Y�L�Y�K�Y�J�Y�I�Y�H�Y�G�Y�F�Y�E�Y�D�Y�C�Y�B�Y�A�Y�@�Y�?�Y�>�Y�=�Y�<�Y�;�T�:�T�9�T�8�T�7�T�6�T�5�T�4�T�3�T�2�T�1�T�0�T�/�T�.�T�-�T�,�T�+�T�*�T�)�T�(�T�'�T�&�V�%�V�$�V�#V�"~V�!}V� |V�{V�zV�yV�xV�wV�vV�uV�tV�sV�rV�qV�pV�oV�nV�mV�lV�kV�jV�iV�hV�gU�
fU�	eU�dU�cU�bU�aU�`U�_U�^U�]U� \U�[U�~ZU�}YU�|XU�{WU�zVU�yUU�xTU�wSU�vRU�uQU�tPU�sOU�rNU�qM^�pL^�oK^�nJ^�mI^�lH^�kG^�jF^�iE^�hD^�gC^�fB^�eA^�d@^�c?^�b>^�a=^�`<^�_;X�^:X�]9X�\8X�[7X�Z6X�Y5X�X4X�W3X�V2X�U1X�T0X�S/X�R.X�Q-X�P,X�O+X�N*X�M)X�L(X�K'X�J&[�I%[�H$[�G#[�F"[�E![�D [�C[�B[�A[�@[�?[�>[�=[�<[�;[�:W�9W�8W�7W�6W�5W�4W�3W�2W�1W�0W�/W�.
W�-	W�,W�+W  \� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXOF=4+"���������������wne\SJA8/&��������������{ri`WNE<3*!��������������vmd[RI@7.%�������������{qg]SI?5+!�������������wmcYOE;1'	�������   �p�)�o�)�n�)�m�)�l� ��k��j� ��i� ��h� ��g��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D� ��C ��B~ ��A} ��@| ��?{ ��>z ��=y ��<x ��;x�:x ��9w ��8v ��7u ��6t ��5s ��4r ��3q_�2p_�1o_�0n_�/m_�.l_�-k_�,j_�+i_�*h_�)g_�(f_�'e_�&d_�%c_�$b_�#a_�"`b�!_b� ^b�]b�\b�[b�Zb�Yb�Xb�Wb�Vb�Ub�Tb�Sb�Rb�Qb�Pb�Ob�Nb�M`�L`�K`�Jb�J`�
Ib�	I`�H`�Gb�G`�Fb�F`�E`�D`�C`� Bb�B`�~A`�}@`�|?`�{>`�z=`�y<b�x<`�w;`�v:b�u:`�t9b�s9`�r8`�q7a�p6a�o5a�n4a�m3a�l2a�k1a�j0a�i/a�h.a�g-a�f,a�e+a�d*a�c)a�b(a�a'a�`&a�_%a�^$_�]$a�\#a�["a�Z!a�Y a�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C
�B	�A�@�?�>�=�<�;�:�9 �8��7��6��5��4��3��2��1��0��/��.��-��,��+��*��)��(��'��&��%��$��#��"��!�� ��������������������������������������������
��	������������������ ����~��}��|��{��z��y��x��w��v��u��t��s��r��q��p��o��n��m��l��k��j��i��h��g��f��e��d��c��b��a��`��_��^��]��\��[��Z��Y��X��W��V��U��T��S��R��Q��P��O��N��M��L��K��J��I��H��G��F��E��D��C��B��A��@��?��>��=��<��;��:��9��8��7��6��5��4��3��2��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��% ��$~ ��#} ��"| ��!{ �� z ��y ��x ��w+�v+�u+�t+�s+�r+�q+�p+�o+  c� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
a
W
M
D
:
0
'




 	�	�	�	�	�	�	�	�	�	�	�	�	�	y	o	e	\	R	I	@	7	.	%			
	��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC90&
 �������������{rh_ULB9/&	 �������������vmd[RI@7.%
��������������zqh_VMD;2) ������ �S�~�R�~�Q�~�P�~�O�~�N�~�M�~�L�}�K�}�J�}�I�}�H�}�G�}�F�}�E�}�D�}�C�}�B�}�A�}�@�}�?�}�>�}�=�}�<�}�;�~�:�|�9�|�8�|�7�|�6�|�5�|�4�|�3�|�2�|�1�|�0�|�/�|�.�|�-�|�,�|�+�|�*�|�)�|�(�|�'�|�&�|�%�|�$�|�#�|�"�~�!�|� �|��|��~��|�~�|�~|�} ��| ��|z�{ ��{z�z ��zz�y ��yz�x ��xz�w ��wz�v ��vz�
u ��	uz�t ��tz�s ��sz�r ��rz�q ��qz� p ��pz�~o ��}oz�|n ��{nz�zm ��ymz�xl ��wlz�vk ��ukz�tj ��sjz�riy�qhy�pgy�ofy�ney�me�ldy�kd�jcy�ic�hby�gb�fay�ea�d`y�c`�b_y�a_�`^y�_^�^]�]\y�\\�[[y�Z[�YZy�XZ�WY�VXy�UX�TWy�SW�RVy�QV�PUy�OU�NTy�MT�LSy�KS�JRy�IR�HQy�GQ�FPy�EP�DOy�CO�BNy�AN�@My�?M�>Ly�=L�<K�;Jy�:J�9I�8Hy�7H�6G{�5F{�4E}�3E{�2E{�1E{�0D{�/D{�.D{�-C}�,C{�+C{�*C{�)C{�(C{�'C{�&C{�%B{�$B{�#B{�"B{�!B{� B{�B{�A}�A{�@ ��@z�@ ��? ��?z�? ��> ��>z�> ��= ��=z�= ��< ��<z�< ��; ��;z�; ��
: ��	:z�: ��9 ��9z�9 ��8 ��8z�8 ��7 �� 7z�7 ��~6�}5�|4�{3�z2�y1�x0�w/�v.�u-�t,�s+�r*�q)�p(�o'�n&�m% �l$ �k# �j" �i! �h  �g �f �e �d �c �b �a �` �_ �^ �]�\�[�Z�Y�X�W�V�U�T�S�R
�Q	�P�O�N�M�L!�K!�J!�I!�H !�G�!�F�!�E�!�D�!�C�!�B�!�A�!�@�!�?�!�>�!�=�!�<��;��:��9��8��7��6��5��4��3��2��1��0��/��.��-��,��+��*��)��(��'��&��%��$��#��"��!�� �������#��#��#��#��#��#��#��#��#��#��#��#��#��#��#��#��"��"��"�
�"�	�"��"��"��"��"��"��"��"��"� �"��"�~�"�}�"�|�*�{�*�z�*�y�*�x�*�w�*�v�*�u�*�t�)�s�)�r�)�q�)  `� �������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!�������������wmcYOE;1'	
�
�
�
�
�
�
�
�
�
�
�
�
�
}
s
i
_
U
K
A
7
-
#


	�	�	�	�	�	�	�	�	�	�	�	�	�	y	o	e	[	Q	G	=	3	)				������������ukaWMC9/%�������������{qg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"���������������wne\SJA8/&������    �3�K�2�K�1�K�0�K�/�K�.�K�-�K�,�K�+�K�*�K�)�K�(�K�'�K�&�K�%�K�$�K�#�K�"�K�!�K� �K��K��K��K��K��K��K��K��K��K��K��K��K��K��K��I��I��I��I��I��I��I�
�I�	�I��I��I��I��I��I��I��I��I� �I��I�~�I�}�I�|�I�{�I�z�I�y�I�x�J�w�J�v�I�u�J�t�J�s�J�r�J�q�J�p�J�o�J�n�L�m�I�l�J�k�J�j�J�i�J�h�J�g�I�f�J�e�J�d�J�c�I�b�J�a�J�`�J�_�J�^�J�]�J�\�J�[�J�Z�J�Y�J�X�J�W�J�V�J�U�J�T�J�S�H�R�H�Q�H�P�H�O�H�N�H�M�H�L�I�K�H�J�H�I�H�H�H�G�H�F�I�E�H�D�H�C�H�B�H�A�H�@�H�?�H�>�H�=�I�<�H�;�H�:�H�9�H�8�H�7�H�6�H�5H�4~H�3}H�2|H�1{H�0z ��/y ��.x ��-w ��,v ��+u ��*t ��)s ��(r ��'q ��&p ��%o ��$n ��#m ��"l ��!k �� j ��i ��h ��g ��f ��e ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��
T ��	S ��R ��Q ��P ��O ��N ��M ��L ��K �� J ��I ��~H ��}G ��|F ��{E ��zD ��yC ��xB ��wA ��v@ ��u? ��t> ��s= ��r< ��q; ��p: ��o9 ��n8 ��m7 ��l6 ��k5 ��j4 ��i3 ��h2 ��g1 ��f0 ��e/ ��d. ��c- ��b, ��a+ ��`* ��_) ��^( ��]' ��\& ��[% ��Z$ ��Y# ��X" ��W! ��V  ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��E ��D ��C ��B ��A ��@
 ��?	 ��> ��= ��< ��; ��: ��9 ��8 ��7 ��6  ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\�~�[�~�Z�~�Y�~�X�~�W�~�V�~�U�~�T�~  X� ��������������ypg^ULC:1(��������������}tkbYPG>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������          �
M?�

L?�	
K?�
J?�
I?�
H?�
G?�
F?�
E?�
D?�
C?� 
B?�
A?�~
@C�}
?C�|
>C�{
=C�z
<C�y
;C�x
:C�w
9C�v
8C�u
7C�t
6C�s
5C�r
4C�q
3C�p
2C�o
1C�n
0L�m
/L�l
.L�k
-L�j
,L�i
+L�h
*L�g
)L�f
(L�e
'L�d
&L�c
%L�b
$L�a
#L�`
"L�_
!L�^
 O�]
O�\
O�[
O�Z
O�Y
O�X
O�W
O�V
O�U
O�T
O�S
O�R
O�Q
O�P
O�O
O�N
K�M
K�L
K�K
K�J
K�I
K�H

K�G
	K�F
K�E
K�D
K�C
K�B
K�A
K�@
K�?
K�>
 H�=	�H�<	�H�;	�H�:	�H�9	�H�8	�H�7	�H�6	�H�5	�H�4	�H�3	�H�2	�H�1	�H�0	�H�/	�H�.	�M�-	�M�,	�M�+	�M�*	�M�)	�M�(	�M�'	�M�&	�M�%	�M�$	�M�#	�M�"	�M�!	�M� 	�M�	�M�	�M�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�@�	�F�	�F�	�F�
	�F�		�F�	�F�	�F�	�F�	�F�	�F�	�F�	�F�	�F� 	�F�	�F�~	�F�}	�N�|	�N�{	�N�z	�N�y	�N�x	�N�w	�N�v	�N�u	�N�t	�N�s	�N�r	�N�q	�N�p	�N�o	�N�n	�N�m	�I�l	�I�k	�I�j	�I�i	�I�h	�I�g	�I�f	�I�e	�I�d	�I�c	�I�b	�I�a	�I�`	�I�_	�I�^	�I�]	�E�\	�E�[	�E�Z	�E�Y	�E�X	�E�W	�E�V	�E�U	�E�T	�E�S	�E�R	�E�Q	�E�P	�E�O	�E�N	�E�M	�G�L	�G�K	�G�J	�G�I	�G�H	�G�G	�G�F	�G�E	�G�D	�G�C	�G�B	�G�A	�G�@	�G�?	�G�>	�G�=	P�<	~P�;	}P�:	|P�9	{P�8	zP�7	yP�6	xP�5	wP�4	vP�3	uP�2	tP�1	sP�0	rP�/	qP�.	pP�-	oA�,	nA�+	mA�*	lA�)	kA�(	jA�'	iA�&	hA�%	gA�$	fA�#	eA�"	dA�!	cA� 	bA�	aA�	`A�	_B�	^B�	]B�	\B�	[B�	ZB�	YB�	XB�	WB�	VB�	UB�	TB�	SB�	RB�	QB�	PB�	O ��	N ��	M ��
	L ��		K ��	J ��	I ��	H ��	G ��	F ��	E ��	D ��	C �� 	B ��	A ��~	@ ��}	? ��|	> ��{	= ��z	< ��y	; ��x	: ��w	9 ��v	8 ��u	7 ��t	6 ��s	5 ��r	4 ��q	3 ��p	2 ��o	1 ��n	0 ��m	/ ��l	. ��k	- ��j	, ��i	+ ��h	* ��g	) ��f	( ��e	'L�d	&L�c	%L�b	$L�a	#L�`	"L�_	!L�^	 L�]	L�\	L�[	L�Z	L�Y	L�X	L�W	L�V	L�U	L�T	L�S	L�R	L�Q	L�P	L�O	L�N	L�M	L�L	L�K	L�J	L�I	L�H	
L�G		L�F	L�E	L�D	L�C	L�B	L�A	L�@	L�?	L�>	 L�=�L�<�L�;�K�:�K�9�K�8�K�7�K�6�K�5�K�4�K  V� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������wne\SJA8/&��������      �a9�`9�_8�^7�]7�\6�[6�Z5�Y4�X3�W3�V3	�U3�T2�S2	�R2�Q1�P0�O0	�N0�M/�L.�K-&�J,&�I+&�H*&�G)&�F(&�E'&�D&&�C%&�B$&�A#&�@"&�?!&�> &�=&�<&�;&�:&�9&�8&�7&�6&�5&�4&�3&�2&�1&�0(�/&�.(�-&�,(�+&�*(�)(�((�'(�&&�%(�$&�#(�"&�!(� 
&�
(�	(�(�(�&�(�&�(�(�&�(�&�(�&�(� (�
�&�
�(�
�&�
�(�
�&�

�(�	
�(�
�(�
�(�
�&�
�(�
�(�
�(�
�&�
�(� 
�&�
�(�~
�&�}
�(�|
�&�{
�(�z
�&�y
�(�x
�&�w
�(�v
�&�u
�(�t
�(�s
�(�r
�(�q
�(�p
�(�o
�(�n
�(�m
�&�l
�(�k
�(�j
�&�i
�(�h
�(�g
�(�f
�(�e
�(�d
�&�c
�(�b
�&�a
�(�`
�$�_
�$�^
�$�]
�$�\
�$�[
�$�Z
�$�Y
�$�X
�$�W
�$�V
�$�U
�$�T
�$�S
�$�R
�$�Q
�$�P
�$�O
�$�N
�$�M
�$�L
�$�K
�$�J
�%�I
�'�H
�'�G
�'�F
�'�E
�$�D
�'�C
�$�B
�'�A
�'�@
�$�?
�'�>
�$�=
�'�<
�'�;
�'�:
�'�9
�'�8
�'�7
�'�6
�$�5
�'�4
�$�3
�'�2
�'�1
�$�0
�'�/
�'�.
�$�-
�'�,
�$�+
�'�*
�$�)
�'�(
�'�'
�$�&
�'�%
�$�$
�'�#
�$�"
�'�!
�$� 
�'�
�'�
�'�
�'�
�$�
�'�
�$�
�'�
�$�
�'�
�'�
�$�
�'�
�'�
�$�
�'�
�'�
�'�
�'�
�$�
�'�
�'�

�'�	
�'�
�'�
�'�
�$�
�'�
�'�
�$�
�'�
�'� 
�$�
�'�~
�$�}
�'�|
�'�{
�$�z
�'�y
�$�x
�'�w
�'�v
�$�u
�'�t
�%�s
�&�r
�&�q
�%�p
�$�o
�%�n
�(�m
�%�l
�$�k
�%�j
�(�i
�%�h
�$�g
�%�f
�&�e
�(�d
�%�c
�$�b
�%�a
�&�`
�%�_
�$�^
�%�]
�%�\
�$�[
�%�Z
�&�Y
�(�X
�%�W
�'�V
�%�U
�&�T
�%�S
�$�R
�%�Q
(�P
%�O
~$�N
~%�M
}&�L
}(�K
}%�J
|$�I
|%�H
{&�G
{%�F
z'�E
z%�D
y(�C
y%�B
x'�A
x%�@
w&�?
w(�>
w%�=
v$�<
v%�;
u&�:
u(�9
u%�8
t$�7
t'�6
t%�5
s(�4
s%�3
r$�2
r'�1
r%�0
q(�/
q%�.
pJ�-
oJ�,
nJ�+
mJ�*
lJ�)
kJ�(
jJ�'
iJ�&
hJ�%
gJ�$
fJ�#
eJ�"
dJ�!
cJ� 
bJ�
aJ�
`D�
_D�
^D�
]D�
\D�
[D�
ZD�
YD�
XD�
WD�
VD�
UD�
TD�
SD�
RD�
QD�
P?�
O?�
N?  _� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF<2(
 ������������~tj`VLB8.$
�
�
�
�
�
�
�
�
�
�
�
�
�
z
p
f
\
R
H
>
4
*
 


	�	�	�	�	�	�	�	�	�	�	�	�	�	v	l	b	X	N	D	:	0	&			�������������|rh^TJ@6,"�������������{ri`WNE<3*!�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������@z ��?y ��>x ��=w ��<v ��;u ��:t ��9s ��8r ��7q ��6p ��5o ��4n ��3m ��2l ��1k ��0j ��/i ��.h ��-g ��,f ��+e ��*d ��)c ��(b ��'a ��&` ��%_ ��$^ ��#] ��"\ ��![ �� Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��E ��
D ��	C ��B ��A ��@ ��? ��> ��= ��< ��; �� : ��9 ��~8 ��}7 ��|6 ��{5 ��z4 ��y3 ��x2 ��w1 ��v0 ��u/ ��t. ��s- ��r, ��q+ ��p* ��o) ��n( ��m' ��l& ��k% ��j$ ��i# ��h" ��g! ��f  ��e ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��Uo�To�So�Ro�Qo�P
o�O	o�No�Mo�Lp�Kp�Jp�Ip�Hp�Gp�F p�E�p�D�p�C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K��J��I��H��G��F��E�D~�C}�B|�A{�@z�?y�>y�=x�<w�;v�:u�9t�8s�7r�6q�5q�4p�3o�2n�1n�0m�/l�.k�-j�,i�+h�*g	�)f�(f	�'e	�&d�%d	�$c�#c	�"b	�!a	� `�`	�_	�^�^	�]�]	�\	�[	�Z	�Y�Y	�X	�W	�V	�U	�U
�T
�S
�R
�Q
�P�
P	�	P
�O	�O
�N
�M�M�M�M�L� K�J�~J�}I�|H�{H�zG�yF�xF�wE�vD�uD�tC�sC�rC�qB�pB�oA�nA�m@�l?�k?�j>�i=�h<�g<�f;�e;�d;�c:�b:  T� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&��������        �� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E ��D~ ��C} ��B| ��A{ ��@z ��?y ��>x ��=w ��<v ��;u ��:t ��9s ��8r ��7q ��6p ��5o ��4n ��3m ��2l ��1k ��0j ��/i ��.h ��-g ��,f ��+e ��*d ��)c ��(b ��'a ��&` ��%_ ��$^ ��#] ��"\ ��![ �� Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��E ��
D ��	C ��B ��A ��@ ��? ��> ��= ��< ��; �� : ��9 ��~8 ��}7 ��|6 ��{5 ��z4 ��y3 ��x2 ��w1 ��v0 ��u/ ��t. ��s- ��r, ��q+ ��p* ��o) ��n( ��m' ��l& ��k% ��j$ ��i# ��h" ��g! ��f  ��e ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P
 ��O	 ��N ��M ��L ��K ��J ��I ��H ��G ��F  ��E� ��D� ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E ��D~ ��C} ��B| ��A{ �  c� ������������~tj`VLB8.$��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'
�
�
�
�
�
�
�
�
�
�
�
�
�
�
|
s
j
a
X
O
F
=
4
+
"


	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	w	n	e	\	S	J	A	8	/	&				�������������ukaWMC9/%�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�����       �w�>�v�>�u�>�t�>�s�>�r�>�q�>�p�>�o�5�n�5�m�5�l�5�k�5�j�5�i�5�h�5�g�5�f�5�e�5�d�5�c�;�b�;�a�;�`�;�_�;�^�;�]�;�\�;�[�;�Z�;�Y�;�X�;�W�;�V�;�U�9�T�9�S�9�R�9�Q�9�P�9�O�9�N�9�M�9�L�9�K�9�J�9�I�9�H�7�G�7�F�7�E�7�D�7�C�7�B�7�A�7�@�7�?�7�>�7�=�7�<�7�;�2�:�2�9�2�8�2�7�2�6�2�5�2�4�2�3�2�2�2�1�2�0�2�/�3�.�3�-�3�,�3�+�3�*�3�)�3�(�3�'�3�&�3�%�3�$�3�#�3�"�3�!�3� �3��3��3��3��3��3��3��3��3��3��3��3��=��=��=��=��=��=��=��=��=��=�
�=�	�=��:��:��:��:��:��:��:��:� �:��:�~�:�}�:�|�6�{�6�z�6�y6�x~6�w}6�v|6�u{6�tz6�sy6�rx6�qw6�pv6�ou6�nt8�ms8�lr8�kq8�jp8�io8�hn8�gm8�fl8�ek8�dj8�ci8�bh8�ag�`g�_g�^f�]f�\e�[d�Zc�Yb�Xa�Wa�V`�U_�T_�S_�R_�Q_�P_�O_�N_�M_�L^�K]�J]�I\�H[�GZ�FY�EX�DW�CV�BU�AU�@U�?U�>U�=U�<T�;S�:R�9R�8Q�7P�6O�5N�4M�3L�2K�1J�0I�/H�.G�-F�,E�+D�*C�)B�(B�'A�&@�%@�$?�#>�"=�!<� ;�:�9�9�8�7�6�6�5�4�4�3�2�1�0�/�.�-�-�-�,�+�
*�	)�(�'�&�%�%�$�#�"� "�!�~ �}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V
�U	�T�S�R�Q�P�O�N�M�L�K�J �I��H��G��F��E��D��C��B��A��@��?��>��=��<��;��:��9��8��7��6��5��4��3��2��1��0��/��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �  U� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&���������   �LP�KO�JN�IN0�HN�GM�FL�EK ��DJ ��CI ��BH ��AG ��@F ��?E ��>D ��=C ��<B ��;A ��:@ ��9? ��8> ��7= ��6< ��5; ��4: ��39 ��28 ��17 ��06 ��/5 ��.4 ��-3 ��,2 ��+1 ��*0 ��)/ ��(. ��'- ��&, ��%+ ��$* ��#) ��"( ��!' �� & ��% ��$ ��# ��" ��! ��  �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
 ��	 �� �� �� �� ��
 ��	 �� �� ��  �� ��~ ��} ��| ��{ ��z  ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D� ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y ��x~ ��w} ��v| ��u{ ��tz ��sy ��rx ��qw ��pv ��ou ��nt ��ms ��lr ��kq ��jp ��io ��hn ��gm ��fl ��ek ��dj ��ci ��bh ��ag ��`f ��_e ��^d ��]c ��\b ��[a ��Z` ��Y_ ��X^ ��W] ��V\ ��U[ ��TZ ��SY ��RX ��QW ��PV ��OU ��NT ��MS ��LR ��KQ ��JP ��IO ��HN ��GM ��FL ��EK ��DJ ��CI ��BH ��AG ��@F ��?E ��>D ��=C ��<B ��;A ��:@ ��9? ��8> ��7= ��6< ��5; ��4: ��39 ��28 ��17 ��06 ��/5 ��.4 ��-3 ��,2 ��+1 ��*0 ��)/ ��(. ��'- ��&, ��%+ ��$* ��#) ��"( ��!' �� & ��% ��$ ��# ��" ��! ��  �� �� �� �� �� ��4�4�4�4�4�4�4�4�4�4�
4�	4�4�<�<�<�
<�	<�<�<� <�<�~<�}<�|>�{>�z >�y�>�x�>  s� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"���������������wne\SJA8/&
�
�
�
�
�
�
�
�
�
�
�
�
�
�
{
r
i
`
W
N
E
<
3
*
!


	�	�	�	�	�	�	�	�	�	�	�	�	�	�		v	m	d	[	R	I	@	7	.	%			
	��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"��       �?�A�>�A�=�A�<�A�;�A�:�A�9�A�8�A�7�A�6�A�5�A�4�A�3�A�2�A�1�A�0�A�/�A�.�A�-�A�,�A�+�A�*�A�)�A�(�A�'�A�&�A�%�A�$�A�#�A�"�A�!�A� �A��A��A��A��A��A��A��A��A��A��A��A��A��A��A��A��A��A��������!�
��	!��~!�~�}�|!�|�{,�z,� y,�x,�~w,�}v,�|u,�{t!�zt,�ys �xr�wr �vq �up �to �sn �rm �ql �pk1�oj1�ni1�mh1�lg1�kf1�je1�id1�hc1�gb1�fa1�e`1�d_1�c^1�b]1�a\1�`[1�_Z1�^Y1�]X1�\W1�[V1�ZU1�YT1�XS1�WR1�VQ1�UP1�TO1�SN1�RM1�QL1�PK1�OJ1�NI1�MH1�LG1�KF1�JE1�ID1�HC1�GB1�FA1�E@1�D?1�C>1�B=1�A<1�@;1�?:1�>91�=81�<71�;61�:51�941�831�721�611�50<�4/<�3.<�2-<�1,<�0+<�/*<�.)<�-(<�,'<�+&<�*%<�)$>�(#>�'">�&!>�% >�$>�#>�">�!>� >�:�>�>���������=�=�=�=�=�=�
=�	=�=�=�
=�	=�@�@�@�@� @��@��@��@� �@��@�~�@�}�@�|�@�{�@�z�@�y�@�x�@�w�@�v�@�u�@�t�@�s�@�r�@�q�@�p�@�o�@�n�@�m�@�l�@�k�@�j�@�i�@�h�@�g�@�f�@�e�@�d�@�c�@�b�@�a�@�`�@�_�@�^�@�]�@�\�@�[�@�Z�@�Y�@�X�@�W�@�V�@�U�@�T�@�S�@�R�@�Q�@�P�@�O�@�N�@�M�@�L�@�K�@�J�@�I�@�H�@�G�@�F�@�E�@�D�@�C�@�B�@�A�@�@�@�?�@�>�@�=�@�<�@�;�@�:�@�9��8�@�7�@�6�@�5�@�4�@�3�@�2�@�1�@�0�@�/�@�.�@�-�@�,�@�+�@�*�@�)�@�(�@�'�@�&�@�%�@�$�@�#�@�"�@�!�@� �@��@��@��0����0��0��0����0��0��0��0����0����0����0��0����0�
��	�0��?��?��?��?��?��?��?��?� �?��?�~�?�}�?�|�D�{D�z~D�y}D�x|D�w{D�vzD�uyD�txD�swD�rvD�quD�pt%�os%�nr%�mq%�lp%�ko%�jn%�im%�hl%�gk%�fj%�ei%�dh%�cg%�bf%�ae%�`dF�_cF�^bF�]aF�\`F�[_F�Z^F�Y]F�X\F�W[F�VZF�UYF�TX�SW�RV�QU�PT�OS�NR�MQ  s� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"���������������wne\SJA8/&
�
�
�
�
�
�
�
�
�
�
�
�
�
�
{
r
i
`
W
N
E
<
3
*
!


	�	�	�	�	�	�	�	�	�	�	�	�	�	�		v	m	d	[	R	I	@	7	.	%			
	��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"��       �2""�1!"�0 "�/"�."�-"�,"�+"�*;�);�(;�';�&;�%;�$;�#;�";�!;� ;�;�;�;�!�!�
!�	5�5�5�5�5�5�5�5�5� 5��5��5��-��-��-�
�-�	�-��-��-��-����/����/��� ����~��}�/�|��{��z��y��x��w��v�/�u��t��s��r�/�q��p��o��n��m��l��k��j��i��h�.�g�.�f�.�e�.�d�.�c�.�b�.�a�.�`�B�_�B�^�B�]�B�\�B�[�B�Z�B�Y�B�X�B�W�B�V�B�U�B�T�B�S�B�R��Q��P��O��N��M��L��K�4�J�4�I�4�H�4�G�4�F�4�E�4�D�4�C�4�B�4�A�4�@�4�?�4�>�4�=�4�<�4�;�4�:�4�9�4�8�4�7�4�6�4�5�4�4�3�3�3�2�3�1�3�0�3�/�3�.�3�-�3�,�$�+�$�*�$�)�$�(�$�'�$�&�$�%�$�$�$�#�$�"�$�!�$� �$��$��$��7��7��7��7��7��7��7��7��7��7��7��7���������������
�	~�}�|�{�z�y�x�w�v� u�t�~s�}r�|q6�{p6�zo6�yn6�xm6�wl6�vk6�uj6�ti6�sh6�rg6�qf6�pe:�od:�nc:�mb:�la:�k`:�j_:�i^:�h]:�g\:�f[:�eZ:�dY�cX�bW�aV�`U�_T�^S�]R�\Q8�[P8�ZO8�YN8�XM8�WL8�VK8�UJ8�TI8�SH8�RG8�QF8�PEC�ODC�NCC�MBC�LAC�K@C�J?C�I>C�H=C�G<C�F;C�E:C�D9C�C8C�B7C�A6#�@5#�?4#�>3#�=2#�<1#�;0#�:/#�9.#�8-#�7,#�6+#�5*#�4)#�3(#�2'#�1&#�0%#�/$#�.##�-"#�,!#�+ #�*#�)#�(#�'#�&#�%#�$#�##�"#�!#� #�#�#�#�#�#�#�#�#�#�#�
#�	#�#�#�#�#�#�#�#�#� #�
�#�	�#��#��E��E��E��E��E��E��E� �E��E�~�E�}�E�|�E�{�2�z�2�y�2�x�2�w�2�v�2�u�2�t�2�s�2�r�G�q�G�p�G�o�G�n�G�m�G�l�G�k�G�j�G�i�G�h�G�g�G�f�A�e�A�d�A�c�A�b�A�a�A�`�A�_�A�^�A�]�A�\�A�[�A�Z�A�Y�A�X�A�W�A�V�A�U�A�T�A�S�A�R�A�Q�A�P�A�O�A�N�A�M�A�L�A�K�A�J�A�I�A�H�A�G�A�F�A�E�A�D�A�C�A�B�A�A�A�@�A  ]� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOE;1'	�������������}si_UKA7-#
�
�
�
�
�
�
�
�
�
�
�
�
�
y
o
e
[
Q
G
=
3
)



	�	�	�	�	�	�	�	�	�	�	�	�		u	k	a	W	M	C	9	/	%			�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!������     �L ��K ��J ��I ��H ��
G ��	F ��E ��D ��C ��B ��A ��@ ��? ��> �� = ��< ��~; ��}: ��|9 ��{8 ��z7 ��y6 ��x5 ��w4 ��v3 ��u2�t1�s0�r/�q.�p-�o,�n+�m*�l)�k(�j'�i&�h%�g$�f#�e" ��d! ��c  ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T�S�R�Q�P�O ��N�M ��L
 ��K	�J	 ��I�H ��G ��F ��E�D ��C�B ��A ��@ ��? ��>  ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3��2��1��0��/��.��-��,� ��+��*��)��(��'��&��%��$� ��#� ��"� ��!�� ������������� ��� ��� ��� ����� ��� ��� ��� ����� ��� ����������
��	������������������ ��� ��~��}��|��{��z��y��x��w��v��u� ��t��s��r��q��p� ��o� ��n� ��m� �l� �k� ��j� �i� �h� �g� �f� ��e� �d� ��c� �b��a��`��_��^��]��\��[� ��Z��Y� ��X��W��V� ��U� ��T��S��R� ��Q� ��P��O� ��N��M��L� ��K��J��I��H� ��G��F��E��D� ��C��B��A��@��?� ��>� ��=��<� ��;� ��:� ��9��8� ��7��6� ��5� ��4��3��2��1��0��/��.� ��-��,� ��+��*� ��)��(� ��'��&� ��%��$��#��"��!�� �����������/��/��/��/��/��/��/��/��/��/��/����~�}�|�{�
z�	y�x�w�v�u�t�s9�r9�q9� p9�o9�~n9�}m9�|l9�{k9�zj9�yi9�xh9�wg9�vf9�ue9�td9�sc9�rb9�qa9�p`9�o_9�n^9�m]9�l\9�k[+�jZ+�iY+�hX+�gW+�fV+�eU+�dT+�cS"�bR"�aQ"�`P"�_O"�^N"�]M"�\L"�[K"�ZJ"�YI"�XH"�WG"�VF"�UE"�TD"�SC"�RB"�QA"�P@"�O?"�N>"�M="�L<"�K;"�J:"�I9"�H8"�G7"�F6"�E5"�D4"�C3"�B2"�A1"�@0"�?/"�>."�=-"�<,"�;+"�:*"�9)"�8("�7'"�6&"�5%"�4$"�3#"  V� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXOF=4+"���������  �e�t�d�t�c�t�b�t�a�t�`�t�_�t�^�t�]�t�\�t�[�t�Z�t�Y�t�X�t�W�t�V�t�U�t�T�t�S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D ��C~ ��B} ��A| ��@{ ��?z ��>y ��=x ��<w ��;v ��:u ��9t ��8s ��7r ��6q ��5p ��4o ��3n ��2m ��1l ��0k ��/j ��.i ��-h ��,g ��+f ��*e ��)d ��(c ��'b ��&a ��%` ��$_ ��#^ ��"] ��!\ �� [ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��
E ��	D ��C ��B ��A ��@ ��? ��> ��= ��< �� ; ��: ��~9 ��}8 ��|7 ��{6 ��z5 ��y4 ��x3 ��w2 ��v1 ��u0 ��t/ ��s. ��r- ��q, ��p+ ��o* ��n) ��m( ��l' ��k& ��j% ��i$ ��h# ��g" ��f! ��e  ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O
 ��N	 ��M ��L ��K ��J ��I ��H ��G ��F ��E  ��D� ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D ��C~ ��B} ��A| ��@{ ��?z ��>y ��=x ��<w ��;v ��:u ��9t ��8s ��7r ��6q ��5p ��4o ��3n ��2m ��1l ��0k ��/j ��.i ��-h ��,g ��+f ��*e ��)d ��(c ��'b ��&a ��%` ��$_ ��#^ ��"] ��!] �� \ ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M �  Y� ��������������ypg^ULC:1(��������������}tkbYPG>5,#�������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&
�
�
�
�
�
�
�
�
�
�
�
�
�
|
r
h
^
T
J
@
6
,
"


	�	�	�	�	�	�	�	�	�	�	�	�	�	x	n	d	Z	P	F	<	2	(			
	 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������      �>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H ��G~ ��F} ��E| ��D{ ��Cz ��By ��Ax ��@w ��?v ��>u ��=t ��<s ��;r ��:q ��9p ��8o ��7n ��6m ��5l ��4k ��3j ��2i ��1h ��0g ��/f ��.e ��-d ��,c ��+b ��*a ��)` ��(_ ��'^ ��&] ��%\ ��$[ ��#Z ��"Y ��!X �� W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��E ��D ��C ��B ��
A ��	@ ��? ��> ��= ��< ��; ��: ��9 ��8 �� 7 ��6 ��~5 ��}4 ��|3 ��{2 ��z1 ��y0 ��x/ ��w. ��v- ��u, ��t+ ��s* ��r* ��q) ��p) ��o( ��n' ��m& ��l% ��k$ ��j# ��i" ��h! ��g  ��f ��e ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q
 ��P	 ��O ��N ��M ��L ��K ��J ��I ��H ��G  ��F� ��E� ��D� ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ���s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s�
�s�	�s��s��s��s��s��s��s��s��s� �s��s�~�s�}�s�|�s�{�s�z�s�y�t�x�t�w�t�v�t�u�t�t�t�s�t�r�t�q�t�p�t�o�t�n�t�m�t�l�t�k�t�j�t�i�t�h�t�g�t�f�t   �
� ������������~tj`VLB8.$�������������zpf\RH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'
�
�
�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �J�Q�I�Q�HQ�G~Q�F}Q�E|Q�D{Q�CzQ�ByQ�AxQ�@wQ�?vQ�>uQ�=tQ�<sQ�;rQ�:qQ�9pQ�8oQ�7nQ�6mQ�5lQ�4kQ�3jQ�2iQ�1hQ�0gQ�/fQ�.eQ�-dQ�,cQ�+bQ�*aQ�)`Q�(_Q�'^Q�&]Q�%\Q�$[Q�#ZQ�"YQ�!XQ� WQ�VQ�UQ�TQ�SQ�RQ�QR�PR�OR�NR�MR�LR�KR�JR�IR�HR�GR�FR�ER�DR�CR�BR�
AR�	@R�?R�>R�=R�<R�;R�:R�9R�8R� 7R�6R�~5R�}4R�|3R�{2R�z1R�y0R�x/R�w.R�v-R�u,R�t+R�s*R�r)R�q(R�p'R�o&R�n%R�m$R�l#R�k"R�j! ��i  ��h ��g ��f ��e ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S
 ��R	 ��Q ��P ��O ��N ��M ��L ��K ��J ��I  ��H� ��G� ��F� ��E� ��D� ��C� ��B� ��A� ��@� ��?� �   �� ����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqibZRJB:2*"�����������������|tld\TLD<4,$
 ������������~tj`VLB8.$
�
�
�
�
�
�
�
�
�
�
�
�
�
z
p
f
\
R
H
>
4
*
 


	�	�	�	�	�	�	�	�	�	�	�	�	�	v	l	b	X	N	D	:	0	&			�������������|rh^TJ@6,"�������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �t ���s ���r ���q �z�p �z�o �w�n �w�m �u�l �z�k �z�j �w�i �w�h ���g ���f ���e ���d ���c ���b ���a ���` ���_ ���^ ���] ���\ ���[ ���Z ���Y ���X ���W ���V ���U ���T ���S ���R ���Q ���P ���O ���N ���M ���L �t�K �t�J ��I ��H ��G ��F ��E ���D ���C ���B ���A ���@ ���? ���> ���= �{�< �k�; ��: ���9 ���8 ��7 ��6 ���5 ���4 �~�3 ��2 ���1 ���0 �|�/ �H�. �J�- �K�, �g�+ �h�* �H�) �J�( �[�' �Y�& �K�% �g�$ �`�# �J�" �Y�! ���  ��� �� �� �Y� ��� ��� ��� ��� �%� �� �#� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���
 ���	 ��� ��� ��� ��� ��� ��� ��� �� ���  �~~�}}||�{{�zz�yy�xx�ww�vv�uu�tt�ss�rr�qq�pp	Koo	Knn	6mmllkk �jj �iiEhh&gg!ff �ee8dd �cc �bb �aa``__^	^]] �\\ �[[ZZ.YY �XX �WWIVVaUUWTTLSS �RR �QQ2PPdOO�NN�MM�LL�KK;JJ<II;HH<GG@FF�EE/DD7CC0BB8AA�@@k??l>>j==i<<�;;�::�99�88�77�66A55K44+33:221100//z..n--B,,n++n**n))r((s''r&&s%%$$##�""�!!�  ��7701��UV|�|

�		���v} �	
   �	` ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

				   �    ���K)���z\>����wY<���}[=����}`C%
�
�
�
�
o
M
+
		�	�	�	}	Z	9	����|]:����lI&����hE"����X:����hA����\=����uO0	���X9 �         !s!s� �ORSemifinal30/07/2021r!r� �ORHeats29/07/2021q!q� �WRFinal31/07/2021%p'!p	K �ORQualification04/08/2021o!o	K �WRFinal06/08/2021%n'!n	6 �ORQualification03/08/2021$m'!m �WRQualification29/07/2021l!l �ORFinal29/07/2021%k'!k � �WRQualification26/07/2021j!j � �ORFinal26/07/2021$i'!iE �ORQualification31/07/2021h!h& �ORFinal31/07/2021g!g! �ORFinal30/07/2021f!f � �ORFinal30/07/2021$e'!e8 �ORQualification24/07/2021d!d � �ORFinal24/07/2021%c'!c � �WRQualification25/07/2021b!b � �ORFinal25/07/2021$a'!a �ORQualification31/07/2021$`'!` �ORQualification31/07/2021$_'!_ �ORQualification31/07/2021#^	'!^ �ORQualification31/07/2021%]'!] � �WRQualification27/07/2021%\'!\ � �WRQualification27/07/2021%['![ �ORQualification27/07/2021%Z'!Z. �ORQualification27/07/2021Y!Y � �ORFinal29/07/2021X!X � �ORFinal29/07/2021%W'!WI �ORQualification26/07/2021%V'!Va �ORQualification26/07/2021U!UW �ORFinal26/07/2021T!TL �WRFinal02/08/2021%S'!S � �ORQualification25/07/2021R!R � �ORFinal25/07/2021Q!Q2 �ORFinal24/07/2021P!Pd �OBFinal30/07/2021!O!O� �WBSemifinal28/07/2021!N!N� �WBSemifinal28/07/2021!M!M� �WBSemifinal28/07/2021!L!L� �WBSemifinal28/07/2021K!K; �OBHeats24/07/2021J!J< �OBHeats24/07/2021I!I; �OBFinal28/07/2021H!H< �OBFinal28/07/2021!G!G@ �WBRepechage28/07/2021F!F� �OBFinal28/07/2021!E!E/ �WBSemifinal28/07/2021!D!D7 �WBSemifinal28/07/2021!C!C0 �WBSemifinal28/07/2021!B!B8 �WBSemifinal28/07/2021A!A� �OBFinal30/07/2021!@!@k �OBSemifinal28/07/2021!?!?l �OBSemifinal28/07/2021!>!>j �WBSemifinal28/07/2021!=!=i �WBSemifinal28/07/2021<!<� �OBHeats23/07/2021;!;� �OBHeats23/07/2021:!:� �OBHeats23/07/20219!9� �OBHeats23/07/20218!8� �OBFinal28/07/20217!7� �OBFinal28/07/2021 6!6A �ORSwimming06/08/20215!5K �OROverall06/08/2021!4!4+ �ORLaser run06/08/2021$3%!3: �ORFencing (BR)06/08/2021 2!2 �ORSwimming07/08/20211!1 �OROverall07/08/2021!0!0 �ORLaser run07/08/2021 /!/zlOBSemifinal03/08/2021 .!.nlOBSemifinal03/08/2021 -!-BlOBSemifinal03/08/2021,!,nlOBFinal03/08/2021 +!+niOBSemifinal03/08/2021*!*niOBFinal03/08/2021)!)reOBHeat06/08/2021(!(seOBHeat06/08/2021'!'reOBFinal07/08/2021&!&seOBFinal07/08/2021%!%dOBHeat04/08/2021$!$dOBHeat04/08/2021#!#�mOBHeat06/08/2021"!"�mOBHeat06/08/2021#!%!!�hOBQuarterfinal04/08/2021 ! �hOBHeat04/08/2021 !�gOBSemifinal03/08/2021 !7gOBSemifinal03/08/2021!7gOBFinal03/08/2021 !eOBSemifinal03/08/2021 !eOBSemifinal03/08/2021 !eOBSemifinal03/08/2021 !eOBSemifinal03/08/2021!eOBFinal03/08/2021!eOBFinal03/08/2021!0kOBHeat04/08/2021!1kOBHeat04/08/2021!�GWRFinal01/08/2021!�.WRFinal04/08/2021#!!WU20RSemifinal02/08/2021!!!WU20RRound 102/08/2021!!WU20RFinal03/08/2021!UORFinal06/08/2021 !VORSemifinal01/08/2021!|ORFinal31/07/2021!�)ORFinal31/07/2021!|DORFinal05/08/2021!
!
�4ODBLong jump04/08/2021*	1!	�4ODB110 metres hurdles05/08/2021"!!�4WDB100 metres04/08/2021!�-WRFinal03/08/2021 !vORSemifinal05/08/2021!}ORFinal07/08/2021$'!ORRanking round23/07/2021$'! ORRanking round23/07/2021$'!�ORRanking round23/07/2021#	'!ORRanking roun   ��a   �s
   �	` ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

				   s � ���iK)���z\>����wY<���}[=����}`C%
�
�
�
�
o
M
+
		�	�	�	}	Z	9	����|]:����lI&����hE"����X:����hA����\=����uO0	���X9 �         !s!s� �ORSemifinal30/07/2021r!r� �ORHeats29/07/2021q!q� �WRFinal31/07/2021%p'!p	K �ORQualification04/08/2021o!o	K �WRFinal06/08/2021%n'!n	6 �ORQualification03/08/2021$m'!m �WRQualification29/07/2021l!l �ORFinal29/07/2021%k'!k � �WRQualification26/07/2021j!j � �ORFinal26/07/2021$i'!iE �ORQualification31/07/2021h!h& �ORFinal31/07/2021g!g! �ORFinal30/07/2021f!f � �ORFinal30/07/2021$e'!e8 �ORQualification24/07/2021d!d � �ORFinal24/07/2021%c'!c � �WRQualification25/07/2021b!b � �ORFinal25/07/2021$a'!a �ORQualification31/07/2021$`'!` �ORQualification31/07/2021$_'!_ �ORQualification31/07/2021#^	'!^ �ORQualification31/07/2021%]'!] � �WRQualification27/07/2021%\'!\ � �WRQualification27/07/2021%['![ �ORQualification27/07/2021%Z'!Z. �ORQualification27/07/2021Y!Y � �ORFinal29/07/2021X!X � �ORFinal29/07/2021%W'!WI �ORQualification26/07/2021%V'!Va �ORQualification26/07/2021U!UW �ORFinal26/07/2021T!TL �WRFinal02/08/2021%S'!S � �ORQualification25/07/2021R!R � �ORFinal25/07/2021Q!Q2 �ORFinal24/07/2021P!Pd �OBFinal30/07/2021!O!O� �WBSemifinal28/07/2021!N!N� �WBSemifinal28/07/2021!M!M� �WBSemifinal28/07/2021!L!L� �WBSemifinal28/07/2021K!K; �OBHeats24/07/2021J!J< �OBHeats24/07/2021I!I; �OBFinal28/07/2021H!H< �OBFinal28/07/2021!G!G@ �WBRepechage28/07/2021F!F� �OBFinal28/07/2021!E!E/ �WBSemifinal28/07/2021!D!D7 �WBSemifinal28/07/2021!C!C0 �WBSemifinal28/07/2021!B!B8 �WBSemifinal28/07/2021A!A� �OBFinal30/07/2021!@!@k �OBSemifinal28/07/2021!?!?l �OBSemifinal28/07/2021!>!>j �WBSemifinal28/07/2021!=!=i �WBSemifinal28/07/2021<!<� �OBHeats23/07/2021;!;� �OBHeats23/07/2021:!:� �OBHeats23/07/20219!9� �OBHeats23/07/20218!8� �OBFinal28/07/20217!7� �OBFinal28/07/2021 6!6A �ORSwimming06/08/20215!5K �OROverall06/08/2021!4!4+ �ORLaser run06/08/2021$3%!3: �ORFencing (BR)06/08/2021 2!2 �ORSwimming07/08/20211!1 �OROverall07/08/2021!0!0 �ORLaser run07/08/2021 /!/zlOBSemifinal03/08/2021 .!.nlOBSemifinal03/08/2021 -!-BlOBSemifinal03/08/2021,!,nlOBFinal03/08/2021 +!+niOBSemifinal03/08/2021*!*niOBFinal03/08/2021)!)reOBHeat06/08/2021(!(seOBHeat06/08/2021'!'reOBFinal07/08/2021&!&seOBFinal07/08/2021%!%dOBHeat04/08/2021$!$dOBHeat04/08/2021#!#�mOBHeat06/08/2021"!"�mOBHeat06/08/2021#!%!!�hOBQuarterfinal04/08/2021 ! �hOBHeat04/08/2021 !�gOBSemifinal03/08/2021 !7gOBSemifinal03/08/2021!7gOBFinal03/08/2021 !eOBSemifinal03/08/2021 !eOBSemifinal03/08/2021 !eOBSemifinal03/08/2021 !eOBSemifinal03/08/2021!eOBFinal03/08/2021!eOBFinal03/08/2021!0kOBHeat04/08/2021!1kOBHeat04/08/2021!�GWRFinal01/08/2021!�.WRFinal04/08/2021#!!WU20RSemifinal02/08/2021!!!WU20RRound 102/08/2021!!WU20RFinal03/08/2021!UORFinal06/08/2021 !VORSemifinal01/08/2021!|ORFinal31/07/2021!�)ORFinal31/07/2021!|DORFinal05/08/2021!
!
�4ODBLong jump04/08/2021*	1!	�4ODB110 metres hurdles05/08/2021"!!�4WDB100 metres04/08/2021!�-WRFinal03/08/2021 !vORSemifinal05/08/2021!}ORFinal07/08/2021$'!ORRanking round23/07/2021$'! ORRanking round23/07/2021$'!�ORRanking round23/07/2021#	'!ORRanking round23/07/2021   n � ����aB#����gF%���|[:����tS2����lK*	
�
�
�
}
V
/
		�	�	�	y	R	+	���jD����oH!����`:���zX6����hG&����sK)���uS2���xV5 �        %�a%! ��5ORClean & Jerk24/07/2021�`! ��3ORTotal02/08/2021�_! ��3ORTotal02/08/2021�^! ��3ORSnatch02/08/2021%�]%! ��3ORClean & Jerk02/08/2021%�\%! ��3ORClean & Jerk02/08/2021�[! ��>ORTotal31/07/2021%�Z%! ��>ORClean & Jerk31/07/2021�Y! ��=ORTotal31/07/2021�X! ��=ORTotal31/07/2021�W! ��=ORSnatch31/07/2021%�V%! ��=ORClean & Jerk31/07/2021%�U%! ��=ORClean & Jerk31/07/2021�T! ��;WRTotal28/07/2021�S! ��;ORTotal28/07/2021�R! ��;ORSnatch28/07/2021�Q! ��;ORSnatch28/07/2021%�P%! ��;ORClean & Jerk28/07/2021�O! ��:ORTotal25/07/2021�N! ��:ORTotal25/07/2021%�M%! ��:ORClean & Jerk25/07/2021�L! �t8ORTotal25/07/2021%�K%! �t8ORClean & Jerk25/07/2021�J! �4ORTotal03/08/2021�I! �4ORTotal03/08/2021�H! �4ORTotal03/08/2021�G! �4ORSnatch03/08/2021%�F%! �4ORClean & Jerk03/08/2021�E! ��2WRTotal04/08/2021�D! ��2ORTotal04/08/2021�C! ��2ORTotal04/08/2021�B! ��2WRSnatch04/08/2021�A! ��2ORSnatch04/08/2021�@! ��2ORSnatch04/08/2021%�?%! ��2WRClean & Jerk04/08/2021%�>%! ��2ORClean & Jerk04/08/2021$�=#! �{ �WRFirst round02/08/2021$�<#! �k �WRFirst round02/08/2021#�;!! � �WRQualifying02/08/2021#�:!! �� �WRQualifying02/08/2021#�9!! �� �WRQualifying02/08/2021$�8#! � �WRFirst round03/08/2021$�7#! � �WRFirst round03/08/2021$�6#! �� �WRFirst round03/08/2021$�5#! �� �WRFirst round03/08/2021$�4#! �~ �WRFirst round03/08/2021�3! � �WRFinal03/08/2021�2! �� �WRFinal03/08/2021�1! �� �WRFinal03/08/2021#�0!! �| �ORQualifying06/08/2021#�/!! �H �ORQualifying03/08/2021#�.!! �J �ORQualifying03/08/2021#�-!! �K �ORQualifying03/08/2021#�,!! �g �ORQualifying03/08/2021#�+!! �h �ORQualifying03/08/2021$�*#! �H �ORFirst round03/08/2021$�)#! �J �ORFirst round03/08/2021$�(#! �[ �ORFirst round03/08/2021$�'#! �Y �ORFirst round03/08/2021$�&#! �K �ORFirst round03/08/2021$�%#! �g �ORFirst round03/08/2021$�$#! �` �ORFirst round03/08/2021�#! �J �ORFinal03/08/2021�"! �Y �ORFinal03/08/2021#�!!! �� �ORQualifying02/08/2021$� #! �� �ORFirst round03/08/2021$�#! � �WRFirst round03/08/2021�! � �WRFinal04/08/2021"�!! �YORQualifying04/08/2021"�! ��ORSemifinal31/07/2021�! ��ORHeats30/07/2021�! ��ORFinal01/08/2021�! ��WRFinal29/07/2021�! �%WRFinal29/07/2021�! �WRFinal29/07/2021�! �#WRFinal29/07/2021�! ��ORFinal01/08/2021�! ��ORFinal01/08/2021�! ��ORFinal01/08/2021�! ��
WRFinal25/07/2021�! ��
WRFinal25/07/2021�! ��
>ORFinal28/07/2021�! ��ORFinal29/07/2021�! ��ORHeats28/07/2021�! ��WRFinal30/07/2021�! �� �ORHeats26/07/2021�! �� �ORHeats28/07/2021�
! �� �ORFinal25/07/2021�	! �� �ORFinal30/07/2021�! �� �ORHeats25/07/2021"�! �� �ORSemifinal26/07/2021�! �� �ORHeats25/07/2021�! �� �ORHeats25/07/2021�! �� �ORHeats25/07/2021�! �� �ORFinal27/07/2021�! �ORHeats29/07/2021�! ��ORHeats29/07/2021� ! �WRFinal31/07/2021!WRFinal31/07/2021~!~�WRFinal31/07/2021}!}ORHeats27/07/2021|!|�ORFinal01/08/2021{!{�WRFinal01/08/2021z!z�WRFinal01/08/2021y!y�WRFinal01/08/2021x!x�ORFinal28/07/2021w!w�ORFinal29/07/2021v!v� �ORFinal30/07/2021u!u� �ORFinal29/07/2021!t!t� �ORSemifinal30/07/2021   X ���lK*	���iG&���yX                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          �t! ��7ORTotal27/07/2021�s! ��7ORSnatch27/07/2021%�r%! ��7ORClean & Jerk27/07/2021�q! �z6ORTotal26/07/2021�p! �z6ORTotal26/07/2021�o! �w6ORTotal26/07/2021�n! �w6ORTotal26/07/2021�m! �u6ORSnatch26/07/2021%�l%! �z6ORClean & Jerk26/07/2021%�k%! �z6ORClean & Jerk26/07/2021%�j%! �w6ORClean & Jerk26/07/2021%�i%! �w6ORClean & Jerk26/07/2021�h! ��5ORTotal24/07/2021�g! ��5ORTotal24/07/2021�f! ��5ORTotal24/07/2021�e! ��5ORSnatch24/07/2021�d! ��5ORSnatch24/07/2021%�c%! ��5ORClean & Jerk24/07/2021%�b%! ��5ORClean & Jerk24/07/2021   �    ���H���mJ�����mK+����Y1�����gO5
�
�
�
�
t
W
8
	�	�	�	�	~	`	@	$	����lH(
����d@�����gD"���{_A����iK+����pP.�����oW="�����kS9!           z �Judo(-70 kg)Womeny �Judo(-66 kg)Menx �Judo(-63 kg)Womenw �Judo(-60 kg)Menv �Judo(-57 kg)Womenu �Judo(-52 kg)Woment �Judo(-48 kg)Womens �Judo(-100 kg)Menr �Judo(+78 kg)Womenq �Judo(+100 kg)Menp# �GolfStroke PlayWomeno# �GolfStroke PlayMenn �FencingSabreWomenm �FencingSabreMenl �FencingFoilWomenk �FencingFoilMenj �Fencing�p�eWomeni �Fencing�p�eMenh! �EquestrianJumpingMixedg! �EquestrianEventingMixedf! �EquestrianDressageMixed e) �Diving3m SpringboardWomend) �Diving3m SpringboardMenc% �Diving10m PlatformWomenb% �Diving10m PlatformMena% �CyclingTrack SprintWomen`%CyclingTrack SprintMen_%~CyclingTrack OmniumWomen^%}CyclingTrack OmniumMen]%zCyclingTrack KeirinWomen\%yCyclingTrack KeirinMen![+xCyclingRoad Time TrialWomenZ+wCyclingRoad Time TrialMenYvCyclingRoad RaceWomenXuCyclingRoad RaceMen-WCtCyclingMountain Bike Cross-countryWomen+VCsCyclingMountain Bike Cross-countryMenU!rCyclingBMX RacingWomenT!qCyclingBMX RacingMenS'pCyclingBMX FreestyleWomenR'oCyclingBMX FreestyleMen!Q/jCanoeSprint Kayak 500mWomen!P/iCanoeSprint Kayak 200mWomenO/hCanoeSprint Kayak 200mMen N1gCanoeSprint Kayak 1000mMen!M/dCanoeSprint Canoe 200mWomen L1cCanoeSprint Canoe 1000mMenK%bCanoeSlalom KayakWomenJ%aCanoeSlalom KayakMenI%`CanoeSlalom CanoeWomenH#_CanoeSlalomCanoeMen!G-^BoxingWelter (64-69kg)WomenF-]BoxingWelter (63-69kg)Men"E3\BoxingSuper Heavy (+91kg)Men!D-[BoxingMiddle (69-75kg)WomenC-ZBoxingMiddle (69-75kg)MenB+YBoxingLight (57-63kg)Men A+XBoxingLight (57-60kg)Women@+WBoxingHeavy (81-91kg)Men?'VBoxingFly (48-52kg)Men>'UBoxingFly (48-51kg)Women"=/TBoxingFeather (54-57kg)Women </SBoxingFeather (52-57kg)Men;LBadmintonSinglesWomen:KBadmintonSinglesMen9#GAthleticsTriple JumpWomen8#FAthleticsTriple JumpMen7EAthleticsShot PutWomen6DAthleticsShot PutMen5!CAthleticsPole VaultWomen4!BAthleticsPole VaultMen3AAthleticsMarathonWomen2@AthleticsMarathonMen1?AthleticsLong JumpWomen0>AthleticsLong JumpMen!/'=AthleticsJavelin ThrowWomen.'<AthleticsJavelin ThrowMen-;AthleticsHigh JumpWomen,:AthleticsHigh JumpMen+!9AthleticsHeptathlonWomen *%8AthleticsHammer ThrowWomen)%7AthleticsHammer ThrowMen (%6AthleticsDiscus ThrowWomen'%5AthleticsDiscus ThrowMen&4AthleticsDecathlonMen%3Athletics800mWomen$2Athletics800mMen #)1Athletics50km Race WalkMen"0Athletics5000mWomen!/Athletics5000mMen  %.Athletics400m HurdlesWomen%-Athletics400m HurdlesMen,Athletics400mWomen+Athletics400mMen&1%Athletics3000m SteeplechaseWomen$1$Athletics3000m SteeplechaseMen")#Athletics20km Race WalkWomen )"Athletics20km Race WalkMen!Athletics200mWomen Athletics200mMenAthletics1500mWomenAthletics1500mMen%Athletics110m HurdlesMen %Athletics100m HurdlesWomenAthletics100mWomenAthletics100mMenAthletics10,000mWomenAthletics10,000mMen#3Artistic GymnasticsVaultWomen!3Artistic GymnasticsVaultMen)3#Artistic GymnasticsUneven BarsWomen!3Artistic GymnasticsRingsMen(
3%Artistic GymnasticsPommel HorseMen)	3'Artistic GymnasticsParallel BarsMen*3)Artistic GymnasticsHorizontal BarMen,3)Artistic GymnasticsFloor ExerciseWomen*3)Artistic GymnasticsFloor ExerciseMen*3%
Artistic GymnasticsBalance BeamWomen(3!	Artistic GymnasticsAll-AroundWomen&3!Artistic GymnasticsAll-AroundMen!ArcheryIndividualWomen!ArcheryIn   ��l   �z   �    ���y^C(�����dH,�����hL0�����lP4�����pT8 
�
�
�
�
t
X
<
 
	�	�	�	�	x	\	@	$	����|`D(�����dH,�����hL0�����lP3�����hK.�����cF)����{^A$����qS5 �!!13625/07/202107/08/2021�!!13525/07/202107/08/2021�!!13425/07/202107/08/2021�!!13325/07/202107/08/2021�!!13202/08/202108/08/2021�!!13102/08/202108/08/2021�!!13002/08/202108/08/2021� !!12902/08/202108/08/2021!!12802/08/202108/08/2021~!!12702/08/202108/08/2021}!!12602/08/202108/08/2021|!!12502/08/202108/08/2021{!!12402/08/202108/08/2021z!!12302/08/202108/08/2021y!!12202/08/202108/08/2021x!!12102/08/202108/08/2021w!!12024/07/202128/07/2021v!!11924/07/202128/07/2021u!!11824/07/202128/07/2021t!!11724/07/202128/07/2021s!!11625/07/202126/07/2021r!!11525/07/202126/07/2021q!!11429/07/202101/08/2021p!!11329/07/202101/08/2021o!!11229/07/202101/08/2021n!!11129/07/202101/08/2021m!!11002/08/202107/08/2021l!!10902/08/202107/08/2021k!!10802/08/202107/08/2021j!!10702/08/202107/08/2021i!!10602/08/202107/08/2021h!!10502/08/202107/08/2021g!!10402/08/202107/08/2021f!!10302/08/202107/08/2021e!!10202/08/202107/08/2021d!!10102/08/202107/08/2021c!!10002/08/202107/08/2021b!!9902/08/202107/08/2021a!!9825/07/202129/07/2021`!!9725/07/202129/07/2021_!!9625/07/202129/07/2021^!!9525/07/202129/07/2021]!!9425/07/202108/08/2021\!!9325/07/202108/08/2021[!!9225/07/202108/08/2021Z!!9125/07/202108/08/2021Y!!9025/07/202108/08/2021X!!8925/07/202108/08/2021W!!8825/07/202108/08/2021V!!8725/07/202108/08/2021U!!8625/07/202108/08/2021T!!8525/07/202108/08/2021S!!8425/07/202108/08/2021R!!8325/07/202108/08/2021Q!!8224/07/202107/08/2021P!!8124/07/202107/08/2021O!!8025/07/202108/08/2021N!!7925/07/202108/08/2021M!!7821/07/202107/08/2021L!!7721/07/202107/08/2021K!!7625/07/202102/08/2021J!!7525/07/202102/08/2021I!!7425/07/202102/08/2021H!!7325/07/202102/08/2021G!!7225/07/202102/08/2021F!!7130/07/202108/08/2021E!!7030/07/202108/08/2021D!!6930/07/202108/08/2021C!!6830/07/202108/08/2021B!!6730/07/202108/08/2021A!!6630/07/202108/08/2021@!!6530/07/202108/08/2021?!!6430/07/202108/08/2021>!!6330/07/202108/08/2021=!!6230/07/202108/08/2021<!!6130/07/202108/08/2021;!!6030/07/202108/08/2021:!!5930/07/202108/08/20219!!5830/07/202108/08/20218!!5730/07/202108/08/20217!!5630/07/202108/08/20216!!5530/07/202108/08/20215!!5430/07/202108/08/20214!!5330/07/202108/08/20213!!5230/07/202108/08/20212!!5130/07/202108/08/20211!!5030/07/202108/08/20210!!4930/07/202108/08/2021/!!4830/07/202108/08/2021.!!4730/07/202108/08/2021-!!4630/07/202108/08/2021,!!4530/07/202108/08/2021+!!4430/07/202108/08/2021*!!4330/07/202108/08/2021)!!4230/07/202108/08/2021(!!4130/07/202108/08/2021'!!4030/07/202108/08/2021&!!3930/07/202108/08/2021%!!3830/07/202108/08/2021$!!3730/07/202108/08/2021#!!3630/07/202108/08/2021"!!3530/07/202108/08/2021!!!3430/07/202108/08/2021 !!3330/07/202108/08/2021!!3230/07/202108/08/2021!!3130/07/202108/08/2021!!3030/07/202108/08/2021!!2930/07/202108/08/2021!!2830/07/202108/08/2021!!2730/07/202108/08/2021!!2630/07/202108/08/2021!!2530/07/202108/08/2021!!2430/07/202108/08/2021!!2302/08/202107/08/2021!!2202/08/202107/08/2021!!2124/07/202103/08/2021!!2024/07/202103/08/2021!!1924/07/202103/08/2021!!1824/07/202103/08/2021!!1724/07/202103/08/2021!!1624/07/202103/08/2021!!1524/07/202103/08/2021!!1424/07/202103/08/2021!!1324/07/202103/08/2021!!1224/07/202103/08/2021
!!1124/07/202103/08/2021	!!1024/07/202103/08/2021!!924/07/202103/08/2021!!824/07/202103/08/2021!!723/07/202131/07/2021!!623/07/202131/07/2021!!523/07/202131/07/2021!!423/07/202131/07/2021!!323/07/202131/07/2021!!225/07/20   ��   ��   z ���tH���mJ�����mK+����Y1�����gO5
�
�
�
�
t
W
8
	�	�	�	�	~	`	@	$	����lH(
����d@�����gD"���{_A����iK+����pP.�����oW="�����kS9!           z �Judo(-70 kg)Womeny �Judo(-66 kg)Menx �Judo(-63 kg)Womenw �Judo(-60 kg)Menv �Judo(-57 kg)Womenu �Judo(-52 kg)Woment �Judo(-48 kg)Womens �Judo(-100 kg)Menr �Judo(+78 kg)Womenq �Judo(+100 kg)Menp# �GolfStroke PlayWomeno# �GolfStroke PlayMenn �FencingSabreWomenm �FencingSabreMenl �FencingFoilWomenk �FencingFoilMenj �Fencing�p�eWomeni �Fencing�p�eMenh! �EquestrianJumpingMixedg! �EquestrianEventingMixedf! �EquestrianDressageMixed e) �Diving3m SpringboardWomend) �Diving3m SpringboardMenc% �Diving10m PlatformWomenb% �Diving10m PlatformMena% �CyclingTrack SprintWomen`%CyclingTrack SprintMen_%~CyclingTrack OmniumWomen^%}CyclingTrack OmniumMen]%zCyclingTrack KeirinWomen\%yCyclingTrack KeirinMen![+xCyclingRoad Time TrialWomenZ+wCyclingRoad Time TrialMenYvCyclingRoad RaceWomenXuCyclingRoad RaceMen-WCtCyclingMountain Bike Cross-countryWomen+VCsCyclingMountain Bike Cross-countryMenU!rCyclingBMX RacingWomenT!qCyclingBMX RacingMenS'pCyclingBMX FreestyleWomenR'oCyclingBMX FreestyleMen!Q/jCanoeSprint Kayak 500mWomen!P/iCanoeSprint Kayak 200mWomenO/hCanoeSprint Kayak 200mMen N1gCanoeSprint Kayak 1000mMen!M/dCanoeSprint Canoe 200mWomen L1cCanoeSprint Canoe 1000mMenK%bCanoeSlalom KayakWomenJ%aCanoeSlalom KayakMenI%`CanoeSlalom CanoeWomenH#_CanoeSlalomCanoeMen!G-^BoxingWelter (64-69kg)WomenF-]BoxingWelter (63-69kg)Men"E3\BoxingSuper Heavy (+91kg)Men!D-[BoxingMiddle (69-75kg)WomenC-ZBoxingMiddle (69-75kg)MenB+YBoxingLight (57-63kg)Men A+XBoxingLight (57-60kg)Women@+WBoxingHeavy (81-91kg)Men?'VBoxingFly (48-52kg)Men>'UBoxingFly (48-51kg)Women"=/TBoxingFeather (54-57kg)Women </SBoxingFeather (52-57kg)Men;LBadmintonSinglesWomen:KBadmintonSinglesMen9#GAthleticsTriple JumpWomen8#FAthleticsTriple JumpMen7EAthleticsShot PutWomen6DAthleticsShot PutMen5!CAthleticsPole VaultWomen4!BAthleticsPole VaultMen3AAthleticsMarathonWomen2@AthleticsMarathonMen1?AthleticsLong JumpWomen0>AthleticsLong JumpMen!/'=AthleticsJavelin ThrowWomen.'<AthleticsJavelin ThrowMen-;AthleticsHigh JumpWomen,:AthleticsHigh JumpMen+!9AthleticsHeptathlonWomen *%8AthleticsHammer ThrowWomen)%7AthleticsHammer ThrowMen (%6AthleticsDiscus ThrowWomen'%5AthleticsDiscus ThrowMen&4AthleticsDecathlonMen%3Athletics800mWomen$2Athletics800mMen #)1Athletics50km Race WalkMen"0Athletics5000mWomen!/Athletics5000mMen  %.Athletics400m HurdlesWomen%-Athletics400m HurdlesMen,Athletics400mWomen+Athletics400mMen&1%Athletics3000m SteeplechaseWomen$1$Athletics3000m SteeplechaseMen")#Athletics20km Race WalkWomen )"Athletics20km Race WalkMen!Athletics200mWomen Athletics200mMenAthletics1500mWomenAthletics1500mMen%Athletics110m HurdlesMen %Athletics100m HurdlesWomenAthletics100mWomenAthletics100mMenAthletics10,000mWomenAthletics10,000mMen#3Artistic GymnasticsVaultWomen!3Artistic GymnasticsVaultMen)3#Artistic GymnasticsUneven BarsWomen!3Artistic GymnasticsRingsMen(
3%Artistic GymnasticsPommel HorseMen)	3'Artistic GymnasticsParallel BarsMen*3)Artistic GymnasticsHorizontal BarMen,3)Artistic GymnasticsFloor ExerciseWomen*3)Artistic GymnasticsFloor ExerciseMen*3%
Artistic GymnasticsBalance BeamWomen(3!	Artistic GymnasticsAll-AroundWomen&3!Artistic GymnasticsAll-AroundMen!ArcheryIndividualWomen!ArcheryIndividualMen   _ ����]9����iE*����rT2	���f>����h=
�
�
�
t
P
4
	�	�	�	�	�	n	W	<	'	����v]G/����cH)�����dJ���n@����zaD+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        _!1Water PoloWomenWomen^!0Water PoloMenMen]!/VolleyballWomenWomen\!.VolleyballMenMen[,TriathlonRelayMixedZ&TennisDoublesWomenY%TennisDoublesMixedX$TennisDoublesMenW%Table TennisTeamWomenV%Table TennisTeamMenU%Table TennisDoublesMixed,T=Swimming4 x 200m Freestyle RelayWomen*S=Swimming4 x 200m Freestyle RelayMen)R7Swimming4 x 100m Medley RelayWomen)Q7Swimming4 x 100m Medley RelayMixed,P=
Swimming4 x 100m Freestyle RelayWomen*O=	Swimming4 x 100m Freestyle RelayMenN �ShootingTrapMixed!M' �Shooting10m Air RifleMixed"L) �Shooting10m Air PistolMixedK �SailingNacra 17MixedJ �Sailing49er FXWomenI �Sailing49erMenH �Sailing470WomenG �Sailing470MenF% �Rugby SevensWomenWomenE% �Rugby SevensMenMen"D- �RowingQuadruple ScullsWomen C- �RowingQuadruple ScullsMenB �RowingPairWomenA �RowingPairMen+@? �RowingLightweight Double ScullsWomen)?? �RowingLightweight Double ScullsMen> �RowingFourWomen= �RowingFourMen< �RowingEightWomen; �RowingEightMen:' �RowingDouble ScullsWomen9' �RowingDouble ScullsMen)83! �Rhythmic GymnasticsAll-AroundWomen7 �JudoTeamMixed6 �HockeyWomenWomen5 �HockeyMenMen4 �HandballWomenWomen3 �HandballMenMen2 �FootballWomenWomen1 �FootballMenMen0! �FencingSabre TeamWomen/! �FencingSabre TeamMen. �FencingFoil TeamWomen- �FencingFoil TeamMen, �Fencing�p�e TeamWomen+ �Fencing�p�e TeamMen"*!% �EquestrianJumping TeamMixed)! �EquestrianEventingMixed(! �EquestrianDressageMixed-'C �DivingSynchronised 3m SpringboardWomen+&C �DivingSynchronised 3m SpringboardMen+%? �DivingSynchronised 10m PlatformWomen)$? �DivingSynchronised 10m PlatformMen$#/ �CyclingTrack Team SprintWomen""/ �CyclingTrack Team SprintMen%!1 �CyclingTrack Team PursuitWomen# 1 �CyclingTrack Team PursuitMen'|CyclingTrack MadisonWomen'{CyclingTrack MadisonMen&9nCanoeSprint Kayak Four 500mWomen$9mCanoeSprint Kayak Four 500mMen(=lCanoeSprint Kayak Double 500mWomen'?kCanoeSprint Kayak Double 1000mMen(=fCanoeSprint Canoe Double 500mWomen'?eCanoeSprint Canoe Double 1000mMen -RBeach VolleyballWomenWomen-QBeach VolleyballMenMen!PBasketballWomenWomen!OBasketballMenMen$/NBaseball/SoftballSoftballWomen"/MBaseball/SoftballBaseballMenJBadmintonDoublesWomenIBadmintonDoublesMixedHBadmintonDoublesMen")*Athletics4 x 400m RelayWomen"))Athletics4 x 400m RelayMixed )(Athletics4 x 400m RelayMen")'Athletics4 x 100m RelayWomen 
)&Athletics4 x 100m RelayMen 	/Artistic SwimmingTeamWomen /Artistic SwimmingDuetWomen"3Artistic GymnasticsTeamWomen 3Artistic GymnasticsTeamMenArcheryTeamWomenArcheryTeamMixedArcheryTeamMen)3x3 BasketballWomenWomen	)3x3 BasketballMenMen   1
Z ���|cJ%�����mQ0�����cL3����jJ0�����jI*
�
�
�
�
|
Z���������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        PPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 1?1Tokyo International Forum� 0?0Tatsumi Water Polo Centre\/%/Ariake Arena:�.1.Ariake Tennis Park-)-Makuhari Messe'#,E,Tokyo Metropolitan GymnasiumX +?+Tsurigasaki Surfing Beachp*9*Aomi Urban Sports Park �)=)Ariake Urban Sports ParkX(5(Asaka Shooting Range�'9'Enoshima Yacht Harbour&'&Tokyo Stadium ��%3%Sea Forest Waterway>�#$E$Musashino Forest Sport Plaza #1#Odaiba Marine Park|")"Nippon Budokan*�!/!Oi Hockey Stadium:� ; Yoyogi National Stadium'� ?Kasumigaseki Country Cluba�&IInternational Stadium Yokohama@+Saitama Stadium ��;Ibaraki Kashima Stadium �@)Miyagi Stadium �h%Sapporo Dome �('Tokyo Stadium ��+Olympic Stadium	�)Makuhari Messe@&KSea Forest Cross-Country Course>�+Equestrian Park$T'Izu Velodrome"CFuji International SpeedwayU�5Musashinonomori Park)Izu MTB Course,�=Ariake Urban Sports Park�=Ariake Urban Sports Park�3Sea Forest Waterway2  ?Kasai Canoe Slalom CentreL+Kokugikan Arena�'Shiokaze Park.�
3
Saitama Super ArenaR!	?	Yokohama Baseball Stadium ��'MFukushima Azuma Baseball Stadium7�#EMusashino Forest Sport Plaza 1Sapporo Odori Park+Olympic Stadium	�7Tokyo Aquatics Centre:�=Ariake Gymnastics Centre.�%IYumenoshima Park Archery Field�	9Aomi Urban Sports Park�   B ���hB                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                #�q-PWrestlingGreco-Roman 97kgMen#�p-OWrestlingGreco-Roman 87kgMen#�o-NWrestlingGreco-Roman 77kgMen#�n-MWrestlingGreco-Roman 67kgMen#�m-LWrestlingGreco-Roman 60kgMen   r � �����oN/����iA����jQ/����oN$����dF&
�
�
�
�
]
7
	�	�	�	~	Y	5	���wT/���lG����aA ����iL/����uS0����sU7����jF ����fB �           $�l/KWrestlingGreco-Roman 130kgMen!�k)JWrestlingFreestyle 97kgMen!�j)IWrestlingFreestyle 86kgMen#�i)HWrestlingFreestyle 76kgWomen!�h)GWrestlingFreestyle 74kgMen#�g)FWrestlingFreestyle 68kgWomen!�f)EWrestlingFreestyle 65kgMen#�e)DWrestlingFreestyle 62kgWomen#�d)CWrestlingFreestyle 57kgWomen!�c)BWrestlingFreestyle 57kgMen#�b)AWrestlingFreestyle 53kgWomen#�a)@WrestlingFreestyle 50kgWomen"�`+?WrestlingFreestyle 125kgMen�_'>Weightlifting96kgMen�^'=Weightlifting81kgMen�]'<Weightlifting76kgWomen�\';Weightlifting73kgMen�[':Weightlifting67kgMen�Z'9Weightlifting64kgWomen�Y'8Weightlifting61kgMen�X'7Weightlifting59kgWomen�W'6Weightlifting55kgWomen�V'5Weightlifting49kgWomen�U'4Weightlifting109kgMen �T'3Weightlifting(+87kg)Women�S'2Weightlifting(+109kg)Men�R-TriathlonWomenWomen�Q+TriathlonMenMen&�P7*Trampoline GymnasticsWomenWomen"�O7)Trampoline GymnasticsMenMen�N(TennisSinglesWomen�M'TennisSinglesMen�L#Taekwondo(-80kg)Men�K"Taekwondo(-68kg)Men�J!Taekwondo(-67kg)Women�I Taekwondo(-58kg)Men�HTaekwondo(-57kg)Women�GTaekwondo(-49kg)Women�FTaekwondo(+80kg)Men�ETaekwondo(+67kg)Women�D%Table TennisSinglesWomen�C%Table TennisSinglesMen"�B)Swimming800m FreestyleWomen �A)Swimming800m FreestyleMen!�@'Swimming50m FreestyleWomen�?'Swimming50m FreestyleMen*�>9Swimming400m Individual MedleyWomen(�=9Swimming400m Individual MedleyMen"�<)Swimming400m FreestyleWomen �;)Swimming400m FreestyleMen*�:9Swimming200m Individual MedleyWomen(�99Swimming200m Individual MedleyMen"�8)Swimming200m FreestyleWomen �7)Swimming200m FreestyleMen"�6)Swimming200m ButterflyWomen �5)Swimming200m ButterflyMen%�4/Swimming200m BreaststrokeWomen#�3/Swimming200m BreaststrokeMen#�2+ Swimming200m BackstrokeWomen!�1+ �Swimming200m BackstrokeMen#�0+ �Swimming1500m FreestyleWomen!�/+ �Swimming1500m FreestyleMen"�.) �Swimming100m FreestyleWomen �-) �Swimming100m FreestyleMen"�,) �Swimming100m ButterflyWomen �+) �Swimming100m ButterflyMen%�*/ �Swimming100m BreaststrokeWomen#�)/ �Swimming100m BreaststrokeMen#�(+ �Swimming100m BackstrokeWomen!�'+ �Swimming100m BackstrokeMen�& �SurfingWomenWomen"�%) �Sport ClimbingCombinedWomen �$) �Sport ClimbingCombinedMen�#' �SkateboardingStreetWomen�"' �SkateboardingStreetMen�!' �SkateboardingParkWomen� ' �SkateboardingParkMen� �ShootingTrapWomen� �ShootingTrapMen� �ShootingSkeetWomen� �ShootingSkeetMen)�7 �Shooting50m Rifle 3 PositionsWomen'�7 �Shooting50m Rifle 3 PositionsMen'�7 �Shooting25m Rapid Fire PistolMen�! �Shooting25m PistolWomen!�' �Shooting10m Air RifleWomen�' �Shooting10m Air RifleMen"�) �Shooting10m Air PistolWomen �) �Shooting10m Air PistolMen� �SailingRS:XWomen� �SailingRS:XMen�% �SailingLaser RadialWomen� �SailingLaserMen� �SailingFinnMen�' �RowingSingle ScullsWomen�' �RowingSingle ScullsMen$�3! �Rhythmic GymnasticsAll-Around)�3! �Rhythmic GymnasticsAll-AroundWomen'�
/! �Modern PentathlonIndividualWomen%�	/! �Modern PentathlonIndividualMen!�/ �Marathon Swimming10kmWomen�/ �Marathon Swimming10kmMen�% �KarateKumite -75kgMen�% �KarateKumite -67kgMen�% �KarateKumite -61kgWomen�% �KarateKumite -55kgWomen�% �KarateKumite +75kgMen�% �KarateKumite +61kgWomen�  �KarateKataWomen �KarateKataMen~ �Judo(-90 kg)Men} �Judo(-81 kg)Men| �Judo(-78 kg)Women{ �Judo(-73 kg)Men   � ����y^C(�����dH,�����hL0�����lP4�����pT8 
�
�
�
�
t
X
<
 
	�	�	�	�	x	\	@	$	����|`D(�����dH,�����hL0�����lP3�����hK.�����cF)����{^A$����qS5 �!!13625/07/202107/08/2021�!!13525/07/202107/08/2021�!!13425/07/202107/08/2021�!!13325/07/202107/08/2021�!!13202/08/202108/08/2021�!!13102/08/202108/08/2021�!!13002/08/202108/08/2021� !!12902/08/202108/08/2021!!12802/08/202108/08/2021~!!12702/08/202108/08/2021}!!12602/08/202108/08/2021|!!12502/08/202108/08/2021{!!12402/08/202108/08/2021z!!12302/08/202108/08/2021y!!12202/08/202108/08/2021x!!12102/08/202108/08/2021w!!12024/07/202128/07/2021v!!11924/07/202128/07/2021u!!11824/07/202128/07/2021t!!11724/07/202128/07/2021s!!11625/07/202126/07/2021r!!11525/07/202126/07/2021q!!11429/07/202101/08/2021p!!11329/07/202101/08/2021o!!11229/07/202101/08/2021n!!11129/07/202101/08/2021m!!11002/08/202107/08/2021l!!10902/08/202107/08/2021k!!10802/08/202107/08/2021j!!10702/08/202107/08/2021i!!10602/08/202107/08/2021h!!10502/08/202107/08/2021g!!10402/08/202107/08/2021f!!10302/08/202107/08/2021e!!10202/08/202107/08/2021d!!10102/08/202107/08/2021c!!10002/08/202107/08/2021b!!9902/08/202107/08/2021a!!9825/07/202129/07/2021`!!9725/07/202129/07/2021_!!9625/07/202129/07/2021^!!9525/07/202129/07/2021]!!9425/07/202108/08/2021\!!9325/07/202108/08/2021[!!9225/07/202108/08/2021Z!!9125/07/202108/08/2021Y!!9025/07/202108/08/2021X!!8925/07/202108/08/2021W!!8825/07/202108/08/2021V!!8725/07/202108/08/2021U!!8625/07/202108/08/2021T!!8525/07/202108/08/2021S!!8425/07/202108/08/2021R!!8325/07/202108/08/2021Q!!8224/07/202107/08/2021P!!8124/07/202107/08/2021O!!8025/07/202108/08/2021N!!7925/07/202108/08/2021M!!7821/07/202107/08/2021L!!7721/07/202107/08/2021K!!7625/07/202102/08/2021J!!7525/07/202102/08/2021I!!7425/07/202102/08/2021H!!7325/07/202102/08/2021G!!7225/07/202102/08/2021F!!7130/07/202108/08/2021E!!7030/07/202108/08/2021D!!6930/07/202108/08/2021C!!6830/07/202108/08/2021B!!6730/07/202108/08/2021A!!6630/07/202108/08/2021@!!6530/07/202108/08/2021?!!6430/07/202108/08/2021>!!6330/07/202108/08/2021=!!6230/07/202108/08/2021<!!6130/07/202108/08/2021;!!6030/07/202108/08/2021:!!5930/07/202108/08/20219!!5830/07/202108/08/20218!!5730/07/202108/08/20217!!5630/07/202108/08/20216!!5530/07/202108/08/20215!!5430/07/202108/08/20214!!5330/07/202108/08/20213!!5230/07/202108/08/20212!!5130/07/202108/08/20211!!5030/07/202108/08/20210!!4930/07/202108/08/2021/!!4830/07/202108/08/2021.!!4730/07/202108/08/2021-!!4630/07/202108/08/2021,!!4530/07/202108/08/2021+!!4430/07/202108/08/2021*!!4330/07/202108/08/2021)!!4230/07/202108/08/2021(!!4130/07/202108/08/2021'!!4030/07/202108/08/2021&!!3930/07/202108/08/2021%!!3830/07/202108/08/2021$!!3730/07/202108/08/2021#!!3630/07/202108/08/2021"!!3530/07/202108/08/2021!!!3430/07/202108/08/2021 !!3330/07/202108/08/2021!!3230/07/202108/08/2021!!3130/07/202108/08/2021!!3030/07/202108/08/2021!!2930/07/202108/08/2021!!2830/07/202108/08/2021!!2730/07/202108/08/2021!!2630/07/202108/08/2021!!2530/07/202108/08/2021!!2430/07/202108/08/2021!!2302/08/202107/08/2021!!2202/08/202107/08/2021!!2124/07/202103/08/2021!!2024/07/202103/08/2021!!1924/07/202103/08/2021!!1824/07/202103/08/2021!!1724/07/202103/08/2021!!1624/07/202103/08/2021!!1524/07/202103/08/2021!!1424/07/202103/08/2021!!1324/07/202103/08/2021!!1224/07/202103/08/2021
!!1124/07/202103/08/2021	!!1024/07/202103/08/2021!!924/07/202103/08/2021!!824/07/202103/08/2021!!723/07/202131/07/2021!!623/07/202131/07/2021!!523/07/202131/07/2021!!423/07/202131/07/2021!!323/07/202131/07/2021!!225/07/202128/07/2021    ����jL.����z\> ����lN0����|^@"����nP2
�
�
�
�
~
`
B
$
	�	�	�	�	p	R	4	�����bD&����rT6�����dF(
����tV8�����fH*����vX:�����hJ,����xZ<                        �!!26324/07/202101/08/2021�!!26224/07/202101/08/2021�!!26124/07/202101/08/2021�!!26024/07/202101/08/2021�!!25924/07/202101/08/2021�!!25824/07/202101/08/2021� !!25724/07/202101/08/2021�!!25624/07/202101/08/2021�~!!25524/07/202101/08/2021�}!!25424/07/202101/08/2021�|!!25324/07/202101/08/2021�{!!25224/07/202101/08/2021�z!!25124/07/202101/08/2021�y!!25024/07/202101/08/2021�x!!24924/07/202101/08/2021�w!!24824/07/202101/08/2021�v!!24724/07/202101/08/2021�u!!24624/07/202101/08/2021�t!!24524/07/202101/08/2021�s!!24425/07/202127/08/2021�r!!24303/08/202106/08/2021�q!!24203/08/202106/08/2021�p!!24125/07/202105/08/2021�o!!24025/07/202105/08/2021�n!!23925/07/202105/08/2021�m!!23825/07/202105/08/2021�l!!23724/07/202102/08/2021�k!!23624/07/202102/08/2021�j!!23524/07/202102/08/2021�i!!23424/07/202102/08/2021�h!!23324/07/202102/08/2021�g!!23224/07/202102/08/2021�f!!23124/07/202102/08/2021�e!!23024/07/202102/08/2021�d!!22924/07/202102/08/2021�c!!22824/07/202102/08/2021�b!!22724/07/202102/08/2021�a!!22624/07/202102/08/2021�`!!22524/07/202102/08/2021�_!!22424/07/202102/08/2021�^!!22324/07/202102/08/2021�]!!22225/07/202104/08/2021�\!!22125/07/202104/08/2021�[!!22025/07/202104/08/2021�Z!!21925/07/202104/08/2021�Y!!21825/07/202104/08/2021�X!!21725/07/202104/08/2021�W!!21625/07/202104/08/2021�V!!21525/07/202104/08/2021�U!!21425/07/202104/08/2021�T!!21325/07/202104/08/2021�S!!21226/07/202131/07/2021�R!!21126/07/202131/07/2021�Q!!21023/07/202130/07/2021�P!!20923/07/202130/07/2021�O!!20823/07/202130/07/2021�N!!20723/07/202130/07/2021�M!!20623/07/202130/07/2021�L!!20523/07/202130/07/2021�K!!20423/07/202130/07/2021�J!!20323/07/202130/07/2021�I!!20223/07/202130/07/2021�H!!20123/07/202130/07/2021�G!!20023/07/202130/07/2021�F!!19923/07/202130/07/2021�E!!19823/07/202130/07/2021�D!!19723/07/202130/07/2021�C!!19606/08/202108/08/2021�B!!19506/08/202108/08/2021�A!!19406/08/202108/08/2021�@!!19305/08/202107/08/2021�?!!19205/08/202107/08/2021�>!!19104/08/202105/08/2021�=!!19004/08/202105/08/2021�<!!18905/08/202107/08/2021�;!!18805/08/202107/08/2021�:!!18705/08/202107/08/2021�9!!18605/08/202107/08/2021�8!!18505/08/202107/08/2021�7!!18405/08/202107/08/2021�6!!18305/08/202107/08/2021�5!!18205/08/202107/08/2021�4!!18124/07/202131/07/2021�3!!18024/07/202131/07/2021�2!!17924/07/202131/07/2021�1!!17824/07/202131/07/2021�0!!17724/07/202131/07/2021�/!!17624/07/202131/07/2021�.!!17524/07/202131/07/2021�-!!17424/07/202131/07/2021�,!!17324/07/202131/07/2021�+!!17224/07/202131/07/2021�*!!17124/07/202131/07/2021�)!!17024/07/202131/07/2021�(!!16924/07/202131/07/2021�'!!16824/07/202131/07/2021�&!!16724/07/202131/07/2021�%!!16624/07/202106/08/2021�$!!16524/07/202106/08/2021�#!!16424/07/202108/08/2021�"!!16324/07/202108/08/2021�!!!16229/07/202107/08/2021� !!16129/07/202107/08/2021�!!16021/07/202107/08/2021�!!15921/07/202107/08/2021�!!15824/07/202101/08/2021�!!15724/07/202101/08/2021�!!15624/07/202101/08/2021�!!15524/07/202101/08/2021�!!15424/07/202101/08/2021�!!15324/07/202101/08/2021�!!15224/07/202101/08/2021�!!15124/07/202101/08/2021�!!15024/07/202101/08/2021�!!14924/07/202101/08/2021�!!14824/07/202101/08/2021�!!14724/07/202101/08/2021�!!14625/07/202107/08/2021�!!14525/07/202107/08/2021�!!14425/07/202107/08/2021�!!14325/07/202107/08/2021�!!14225/07/202107/08/2021�!!14125/07/202107/08/2021�!!14025/07/202107/08/2021�
!!13925/07/202107/08/2021�	!!13825/07/202107/08/2021�!!13725/07/202107/08/2021   Ir ����jL.����z\> ����lN0����|^@"����nP2
�
�
�
�
~
`
B
$
	�	�	�	�	p	R	4	�����bD&����r                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �O!!33601/08/202107/08/2021�N!!33501/08/202107/08/2021�M!!33401/08/202107/08/2021�L!!33301/08/202107/08/2021�K!!33201/08/202107/08/2021�J!!33101/08/202107/08/2021�I!!33001/08/202107/08/2021�H!!32901/08/202107/08/2021�G!!32801/08/202107/08/2021�F!!32701/08/202107/08/2021�E!!32601/08/202107/08/2021�D!!32501/08/202107/08/2021�C!!32401/08/202107/08/2021�B!!32301/08/202107/08/2021�A!!32201/08/202107/08/2021�@!!32101/08/202107/08/2021�?!!32001/08/202107/08/2021�>!!31901/08/202107/08/2021�=!!31824/07/202104/08/2021�<!!31724/07/202104/08/2021�;!!31624/07/202104/08/2021�:!!31524/07/202104/08/2021�9!!31424/07/202104/08/2021�8!!31324/07/202104/08/2021�7!!31224/07/202104/08/2021�6!!31124/07/202104/08/2021�5!!31024/07/202104/08/2021�4!!30924/07/202104/08/2021�3!!30824/07/202104/08/2021�2!!30724/07/202104/08/2021�1!!30624/07/202104/08/2021�0!!30524/07/202108/08/2021�/!!30424/07/202108/08/2021�.!!30325/07/202108/08/2021�-!!30225/07/202108/08/2021�,!!30126/07/202131/07/2021�+!!30026/07/202131/07/2021�*!!29926/07/202131/07/2021�)!!29830/07/202131/07/2021�(!!29730/07/202131/07/2021�'!!29624/07/202101/08/2021�&!!29524/07/202101/08/2021�%!!29424/07/202101/08/2021�$!!29324/07/202101/08/2021�#!!29224/07/202101/08/2021�"!!29124/07/202127/07/2021�!!!29024/07/202127/07/2021� !!28924/07/202127/07/2021�!!28824/07/202127/07/2021�!!28724/07/202127/07/2021�!!28624/07/202127/07/2021�!!28524/07/202127/07/2021�!!28424/07/202127/07/2021�!!28324/07/202106/08/2021�!!28224/07/202106/08/2021�!!28124/07/202106/08/2021�!!28024/07/202106/08/2021�!!27924/07/202106/08/2021�!!27824/07/202101/08/2021�!!27724/07/202101/08/2021�!!27624/07/202101/08/2021�!!27524/07/202101/08/2021�!!27424/07/202101/08/2021�!!27324/07/202101/08/2021�!!27224/07/202101/08/2021�!!27124/07/202101/08/2021�!!27024/07/202101/08/2021�!!26924/07/202101/08/2021�!!26824/07/202101/08/2021�
!!26724/07/202101/08/2021�	!!26624/07/202101/08/2021�!!26524/07/202101/08/2021�!!26424/07/202101/08/2021  d� ������������������~wpib[TMF?81*# ������������������{tmf_XQJC<5.' ������������������xqjc\UNG@92+$������������������zrjbZQH?6-$	 ��������������ypg^ULC:1(
�
�
�
�
�
�
�
�
�
�
�
�
�
�
}
t
k
b
Y
P
G
>
5
,
#


	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	o	f	]	T	K	B	9	0	'				��������������|sjaXOF=4+"���������������wne\SJA8/&��������������{ri`WNE<3*!��������������vmd[RI@7.%
��������������                                                                                                                                                                                                                                                                                                                                                                                                                                                   �dP-�cO-�bN-�aM-�`L-�_K-�^J-�]I-�\H-�[G-�ZF-�YE-�XD-�WC-�VB-�UA-�T@-�S?-�R>1�Q=1�P<1�O;1�N:1�M91�L81�K71�J61�I51�H41�G31�F21�E10�D00�C//�B./�A-#�@,#�?+#�>*�=)�<(.�;'.�:&.�9%.�8$.�7#-�6"-�5!-�4 -�3-�2-�1-�0-�/,�.,�-,�,,�+,�*�)�(�'�&�%�$�#�"�!� ��
�	��������� � �� �� �� �� �� �� �� �� ��
 ��	 �� �+� �*� �*� �)� �)� �)� �)� �(�  �(� �(�~ �(�} �(�| �(�{ �(�z �(�y �(�x �(�w �(�v �(�u �(�t �(�s �(�r �'�q �'�p �'�o �'�n �'�m �'�l �'�k �'�j �'�i �'�h �&�g �&�f �%�e �%�d �%�c �%�b �%�a �%�` �%�_ �%�^ �%�] �%�\ �%�[ �%�Z �%�Y �%�X ��W ��V ��U ��T ��S �$�R �$�Q �#�P �#�O �"�N �"�M �"�L �"�K �"�J �"�I �"�H �"�G �"�F �"�E �"�D �"�C �"�B �"�A �"�@ �"�? �"�> �"�= �"�< �"�; �"�: �"�9 �"�8 �!�7 �!�6 � �5 � �4 ��3 ��2 ��1 ��0 ��/ ��. ��- ��, ��+ ��* ��) ��( ��' ��& ��% ��$ ��# ��" ��! ��  �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
 ��	 �� �� �� ���~�}�|�{� zy~x}w|v{uzxywxvwuvtustrsqrpqopnomnlmkljkijhighfgefdecdbcab`a_`^_]^\][\Z[YZXYWXVWUVTUSTRSQRP
QO
PN	OM	NNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

					P � O�>"
!	H	��	�������t�M& A�vv     �33�-tableCompetitionLocationCompetitionLocation �CREATE TABLE CompetitionLocation(idCompetition INT NOT NULL, idLocation INT NOT NULL,
FOREIGN KEY(idCompetition) REFERENCES Competition(idCompetition),
FOREIGN KEY(idLocation) REFERENCES Location(idLocation))� .##�tableCompetitionCompetition �CREATE 0C indexsqlite_autoindex_Location_1Location ��?    t##�-tableCompetitionCompetition �CREATE TABLE Competition(
  "1" TEXT,
  "25/07/2021" TEXT,
  "28/07/2021" TEXT
)��55�itableCollectiveDisciplineCollectiveDiscipline �CREATE TABLE CollectiveDiscipline(idSport INT NOT NULL, sportName TEXT NOT NULL, disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(sportName) REFERENCES Sport(sportName))�$55�itableIndividualDisciplineIndividualDiscipline �CREATE TABLE IndividualDiscipline(idSport INT NOT NULL, sportName TEXT NOT NULL, disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(sportName) REFERENCES Sport(sportName))�s�5tableRecordRecord �CREATE TABLE Record(idRecord INT PRIMARY KEY, idParticipant INT NOT NULL, idSport INT NOT NULL, recordType TEXT NOT NULL, round TEXT NOT NULL, date DATE NOT NULL,
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant)),? indexsqlite_autoindex_Record_1Record ��%%�tableBreaksRecordBreaksRecord �CREATE TABLE BreaksRecord(idRecord INT PRIMARY KEY, idParticipant INT NOT  NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idRecord) REFERENCES Record(idRecord))8K% indexsqlite_autoindex_BreaksRecord_1BreaksRecord �� �))�tableParticipatesInParticipatesIn �CREATE TABLE ParticipatesIn(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))�T�}tableCoachesCoaches �CREATE TABLE Coaches(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))\�tableSportSport �CREATE TABLE Sport(idSport INT PRIMARY KEY, sportName TEXT NOT NULL)*= indexsqlite_autoindex_Sport_1Sport ���utableCoachCoach �CREATE TABLE Coach( idParticipant INT PRIMARY KEY,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))*= indexsqlite_autoindex_Coach_1Coach ��	�tableAthleteAthleteUCREATE TABLE Athlete(idParticipant INT PRIMARY KEY, firstOlympicGames TEXT, gameParticipations INT, pastGOLDmedals INT NOT NULL, pastSILVERmedals INT NOT NULL, pastBRONZEmedals INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))-
A indexsqlite_autoindex_Athlete_1AthleteVa �))�YtableOlympicComitteOlympicComitte	CREATE TABLE OlympicComitte(
  "AFG" TEXT,
  "National Olympic Committee of the  Islamic Republic of Afghanistan" TEXT,
  "/logos/AFG.jpg" TEXT,
  "01/01/1936" TEXT
)�b##�tableParticipantParticipantCREATE TABLE Participant( idParticipant INT PRIMARY KEY, abbreviation CHAR(3) NOT NULL, name TEXT NOT NULL, birthYear INT,
FOREIGN KEY(abbreviation) REFERENCES OlympicCommittee(abbreviation))5I# indexsqlite_autoindex_Participant_1Participant� --�stableAttendesCeremonyAttendesCeremonyCREATE TABLE AttendesCeremony(OlympicCommitteeAbbreviation CHAR(3) NOT NULL,
idCeremony INT NOT NULL,
FOREIGN KEY(idCeremony) REFERENCES Ceremony(idCeremony),
FOREIGN KEY(OlympicCommitteeAbbreviation) REFERENCES OlympicCommittee(abbreviation))� �--�tableOlympicCommitteeOlympicCommitteeCREATE TABLE OlympicCommittee(abbreviation CHAR(3) PRIMARY KEY, name TEXT NOT NULL, logo TEXT NOT NULL, recognitionDate DATE)?S- indexsqlite_autoindex_OlympicCommittee_1OlympicCommitteev�?tableCeremonyCeremonyCREATE TABLE Ceremony(idCeremony INT PRIMARY KEY, date DATE NOT NULL, time TIME NOT NULL)/C indexsqlite_autoindex_Ceremony_1Ceremony       
   1� ���������������������~xrlf`ZTNHB<60*$ ������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  1100//..--,,++**))((''&&%%$$##""!!  

				� %&���f
?	8�O���%�9�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     �4$++�tableOlympicCommitteOlympicCommitte	CREATE TABLE OlympicCommitte(
  "AFG,National Olympic Committee of the  Islamic Republic of Afghanistan,/logos/AFG.jpg,01/01/1936" TEXT
�+"--�	tableOlympicCommitteeOlympicCommitteeCREATE TABLE OlympicCommittee(abbreviation CHAR(3) PRIMARY KEY, title TEXT NOT NULL, logo TEXT NOT NULL, recognitionDate DATE)g!//}tableAthleteEarnsMedalAthleteEarnsMedal �CREATE TABLE AthleteEarnsMedal(
  "1" TEXT,
  "5" TEXT
)�| 33�tableCommitteeEarnsMedalCommitteeEarnsMedal �CREATE TABLE CommitteeEarnsMedal(idMedal INT NOT NULL, abbreviation CHAR(3) NOT NULL,
FOREIGN KEY(abbreviation) REFERENCES OlympicComitte(abbreviation),
FOREIGN KEY(idMedal) REFERENCES Medal(idMedal))zz �""--�wtableOlympicCommitteeOlympicCommitteeCREATE TABLE OlympicCommittee(abbreviation CHAR(3) PRIMARY KEY, name TEXT NOT NULL, logo TEXT , recognitionDate DATE)?#S- indexsqlite_autoindex_OlympicCommittee_1OlympicCommittee     e�'tableMedalMedal �CREATE TABLE Medal(idMedal INT PRIMARY KEY, gold INT, silver INT, bronze INT)*= indexsqlite_autoindex_Medal_1Medal �       0C indexsqlite_autoindex_Location_1Location �q�3tableLocationLocation �CREATE TABLE Location(idLocation INT PRIMARY KEY, city TEXT NOT NULL, capacity INT)t##�-tableCompetitionCompetition �CREATE TABLE Competition(
  "1" TEXT,
  "25/07/2021" TEXT,
  "28/07/2021" TEXT
)�33�-tableCompetitionLocationCompetitionLocation �CREATE TABLE CompetitionLocation(idCompetition INT NOT NULL, idLocation INT NOT NULL,
FOREIGN KEY(idCompetition) REFERENCES Competition(idCompetition),
FOREIGN KEY(idLocation) REFERENCES Location(idLocation))�$55�itableCollectiveDisciplineCollectiveDiscipline �CREATE TABLE CollectiveDiscipline(idSport INT NOT NULL, sportName TEXT NOT NULL, disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(sportName) REFERENCES Sport(sportName))�$55�itableIndividualDisciplineIndividualDiscipline �CREATE TABLE IndividualDiscipline(idSport INT NOT NULL, sportName TEXT NOT NULL, disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(sportName) REFERENCES Sport(sportName)),? indexsqlite_autoindex_Record_1Record ��.�5tableRecordRecord �CREATE TABLE Record(idRecord INT PRIMARY KEY, idParticipant INT NOT NULL, idSport INT NOT NULL, recordType TEXT NOT NULL, round TEXT NOT NULL, date DATE NOT NULL,
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))8K% indexsqlite_autoindex_BreaksRecord_1BreaksRecord ��k%%�tableBreaksRecordBreaksRecord �CREATE TABLE BreaksRecord(idRecord INT PRIMARY KEY, idParticipant INT NOT  NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idRecord) REFERENCES Record(idRecord))�i))�tableParticipatesInParticipatesIn �CREATE TABLE ParticipatesIn(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))   �    ���������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	�������������}si_UKA7-#
�
�
�
�
�
�
�
�
�
�
�
�
�
y
o
e
[
Q
G
=
3
)



	�	�	�	�	�	�	�	�	�	�	�	�		u	k	a	W	M	C	9	/	%			�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!���           �i	i�h	h�g	g�f	f�e	e�d	d�c	c�b	b�a	a�`	`�_	_�^	^�]	]�\	\�[	[�Z	Z�Y	Y�X	X�W	W�V	V�U	U�T	T�S	S�R	R�Q	Q�P	P�O	O�N	N�M	M�L	L�K	K�J	J�I	I�H	H�G	G�F	F�E	E�D	D�C	C�B	B�A	A�@	@�?	?�>	>�=	=�<	<�;	;�:	:�9	9�8	8�7	7�6	6�5	5�4	4�3	3�2	2�1	1�0	0�/	/�.	.�-	-�,	,�+	+�*	*�)	)�(	(�'	'�&	&�%	%�$	$�#	#�"	"�!	!� 	 �	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
	
�			�	�	�	�	�	�	�	�	� 	 �	 ��~	 ��}	 ��|	 ��{	 ��z	 ��y	 ��x	 ��w	 ��v	 ��u	 ��t	 ��s	 ��r	 ��q	 ��p	 ��o	 ��n	 ��m	 ��l	 ��k	 ��j	 ��i	 ��h	 ��g	 ��f	 ��e	 ��d	 ��c	 ��b	 ��a	 ��`	 ��_	 ��^	 ��]	 ��\	 ��[	 ��Z	 ��Y	 ��X	 ��W	 ��V	 ��U	 ��T	 ��S	 ��R	 ��Q	 ��P	 ��O	 ��N	 ��M	 ��L	 ��K	 ��J	 ��I	 ��H	 ��G	 ��F	 ��E	 ��D	 ��C	 ��B	 ��A	 ��@	 ��?	 ��>	 ��=	 ��<	 ��;	 ��:	 ��9	 ��8	 ��7	 ��6	 ��5	 ��4	 ��3	 ��2	 ��1	 ��0	 ��/	 ��.	 ��-	 ��,	 ��+	 ��*	 ��)	 ��(	 ��'	 ��&	 ��%	 ��$	 ��#	 ��"	 ��!	 �� 	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��
	 ��		 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 �� 	 �	~	~}	}|	|{	{z	zy	yx	xw	wv	vu	ut	ts	sr	rq	qp	po	on	nm	ml	lk	kj	ji	ih	hg	gf	fe	ed	dc	cb	ba	a`	`_	_^	^]	]\	\[	[Z	ZY	YX	XW	WV	VU	UT	TS	SR	RQ	QP	PO	ON	NM	ML	LK	KJ	JI	IH	HG	GF	FE	ED	DC	CB	BA	A@	@?	?>	>=	=<	<;	;:	:9	98	87	76	65	54	43	32	21	10	0/	/.	.-	-,	,+	+*	*)	)(	('	'&	&%	%$	$#	#"	"!	! 	 																					
	
									   =   ��i   �    ��������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xp    ������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   ���   �MM  i� ����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	�������������}si_UKA7-#
�
�
�
�
�
�
�
�
�
�
�
�
�
y
o
e
[
Q
G
=
3
)



	�	�	�	�	�	�	�	�	�	�	�	�		u	k	a	W	M	C	9	/	%			�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!���           �i	i�h	h�g	g�f	f�e	e�d	d�c	c�b	b�a	a�`	`�_	_�^	^�]	]�\	\�[	[�Z	Z�Y	Y�X	X�W	W�V	V�U	U�T	T�S	S�R	R�Q	Q�P	P�O	O�N	N�M	M�L	L�K	K�J	J�I	I�H	H�G	G�F	F�E	E�D	D�C	C�B	B�A	A�@	@�?	?�>	>�=	=�<	<�;	;�:	:�9	9�8	8�7	7�6	6�5	5�4	4�3	3�2	2�1	1�0	0�/	/�.	.�-	-�,	,�+	+�*	*�)	)�(	(�'	'�&	&�%	%�$	$�#	#�"	"�!	!� 	 �	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
	
�			�	�	�	�	�	�	�	�	� 	 �	 ��~	 ��}	 ��|	 ��{	 ��z	 ��y	 ��x	 ��w	 ��v	 ��u	 ��t	 ��s	 ��r	 ��q	 ��p	 ��o	 ��n	 ��m	 ��l	 ��k	 ��j	 ��i	 ��h	 ��g	 ��f	 ��e	 ��d	 ��c	 ��b	 ��a	 ��`	 ��_	 ��^	 ��]	 ��\	 ��[	 ��Z	 ��Y	 ��X	 ��W	 ��V	 ��U	 ��T	 ��S	 ��R	 ��Q	 ��P	 ��O	 ��N	 ��M	 ��L	 ��K	 ��J	 ��I	 ��H	 ��G	 ��F	 ��E	 ��D	 ��C	 ��B	 ��A	 ��@	 ��?	 ��>	 ��=	 ��<	 ��;	 ��:	 ��9	 ��8	 ��7	 ��6	 ��5	 ��4	 ��3	 ��2	 ��1	 ��0	 ��/	 ��.	 ��-	 ��,	 ��+	 ��*	 ��)	 ��(	 ��'	 ��&	 ��%	 ��$	 ��#	 ��"	 ��!	 �� 	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��
	 ��		 ��	 ��	 ��	 ��	 ��	 ��	 ��	 ��	 �� 	 �	~	~}	}|	|{	{z	zy	yx	xw	wv	vu	ut	ts	sr	rq	qp	po	on	nm	ml	lk	kj	ji	ih	hg	gf	fe	ed	dc	cb	ba	a`	`_	_^	^]	]\	\[	[Z	ZY	YX	XW	WV	VU	UT	TS	SR	RQ	QP	PO	ON	NM	ML	LK	KJ	JI	IH	HG	GF	FE	ED	DC	CB	BA	A@	@?	?>	>=	=<	<;	;:	:9	98	87	76	65	54	43	32	21	10	0/	/.	.-	-,	,+	+*	*)	)(	('	'&	&%	%$	$#	#"	"!	! 	 																					
	
												  T� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&��������        �=	��<	��;	��:	��9	��8	��7	��6	��5	��4	��3	��2	��1	��0	��/	��.	��-	��,	��+	��*	��)	��(	��'	��&	��%	��$	��#	��"	��!	�� 	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��
	��		��	��	��	��	��	��	��	��	�� 	��	�~	~�}	}�|	|�{	{�z	z�y	y�x	x�w	w�v	v�u	u�t	t�s	s�r	r�q	q�p	p�o	o�n	n�m	m�l	l�k	k�j	j�i	i�h	h�g	g�f	f�e	e�d	d�c	c�b	b�a	a�`	`�_	_�^	^�]	]�\	\�[	[�Z	Z�Y	Y�X	X�W	W�V	V�U	U�T	T�S	S�R	R�Q	Q�P	P�O	O�N	N�M	M�L	L�K	K�J	J�I	I�H	H�G	G�F	F�E	E�D	D�C	C�B	B�A	A�@	@�?	?�>	>�=	=�<	<�;	;�:	:�9	9�8	8�7	7�6	6�5	5�4	4�3	3�2	2�1	1�0	0�/	/�.	.�-	-�,	,�+	+�*	*�)	)�(	(�'	'�&	&�%	%�$	$�#	#�"	"�!	!� 	 �	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
	
�			�	�	�	�	�	�	�	�	� 	 �	��~	��}	��|	��{	��z	��y	��x	��w	��v	��u	��t	��s	��r	��q	��p	��o	��n	��m	��l	��k	��j	��i	��h	��g	��f	��e	��d	��c	��b	��a	��`	��_	��^	��]	��\	��[	��Z	��Y	��X	��W	��V	��U	��T	��S	��R	��Q	��P	��O	��N	��M	��L	��K	��J	��I	��H	��G	��F	��E	��D	��C	��B	��A	��@	��?	��>	��=	��<	��;	��:	��9	��8	��7	��6	��5	��4	��3	��2	��1	��0	��/	��.	��-	��,	��+	��*	��)	��(	��'	��&	��%	��$	��#	��"	��!	�� 	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��
	��		��	��	��	��	��	��	��	��	�� 	��	�~	~�}	}�|	|�{	{�z	z�y	y�x	x�w	w�v	v�u	u�t	t�s	s�r	r�q	q�p	p�o	o�n	n�m	m�l	l�k	k�j	j
  L� ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
����������������������ztnhb\VPJD>82,&  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xp    ������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

				
	�2@ ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ������	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@����������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�        ~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������  0KKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONN  � ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 
�
�
�
�
�
�
�
�
�
�
�
�
~
t
j
`
V
L
B
8
.
$


	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    �X	��W	��V	��U	��T	��S	��R	��Q	��P	��O	��N	��M	��L	��K	��J	��I	��H	��G	��F	��E	��D	��C	��B	��A	��@	��?	��>	��=	��<	��;	��:	��9	��8	��7	��6	��5	��4	��3	��2	��1	��0	��/	��.	��-	��,	��+	��*	��)	��(	��'	��&	��%	��$	��#	��"	��!	�� 	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��
	��		��	��	��	��	��	��	��	��	�� 	��	�~	~�}	}�|	|�{	{�z	z�y	y�x	x�w	w�v	v�u	u�t	t�s	s�r	r�q	q�p	p�o	o�n	n�m	m�l	l�k	k�j	j�i	i�h	h�g	g�f	f�e	e�d	d�c	c�b	b�a	a�`	`�_	_�^	^�]	]�\	\�[	[�Z	Z�Y	Y�X	X�W	W�V	V�U	U�T	T�S	S�R	R�Q	Q�P	P�O	O�N	N�M	M�L	L�K	K�J	J�I	I�H	H�G	G�F	F�E	E�D	D�C	C�B	B�A	A�@	@�?	?�>	>�=	=�<	<�;	;�:	:�9	9�8	8�7	7�6	6�5	5�4	4�3	3�2	2�1	1�0	0�/	/�.	.�-	-�,	,�+	+�*	*�)	)�(	(�'	'�&	&�%	%�$	$�#	#�"	"�!	!� 	 �	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
	
�			�	�	�	�	�	�	�	�	� 	 �	��~	��}	��|	��{	��z	��y	��x	��w	��v	��u	��t	��s	��r	��q	��p	��o	��n	��m	��l	��k	��j	��i	��h	��g	��f	��e	��d	��c	��b	��a	��`	��_	��^	��]	��\	��[	��Z	��Y	��X	��W	��V	��U	��T	��S	��R	��Q	��P	��O	��N	��M	��L	��K	��J	��I	��H	��G	��F	��E	��D	��C	��B	��A	��@	��?	��>	�
  X@ ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
x
p
h
`
X
P
H
@
8
0
(
 



 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                      	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     �    �������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#��������������ti^SH=2'
�
�
�
�
�
�
�
�
�
�
�
�
w
l
a
V
K
@
5
*


		�	�	�	�	�	�	�	�	�	�	�	�	z	o	d	Y	N	C	8	-	"			�����������}rg\QF;0%������������uj_TI>3(������������xmbWLA6+ 
������������{peZOD9.#�����������~sh]RG<1&������������vk`UJ?4)��������� �NNSUI�MMBLR�LLKAZ�KKJOR�JJJPN�IITUR�HHTUR�GGUSA�FFITA�EEHKG�DDKAZ�CCCHN�BBTUR�AAEGY�@@HUN�??UKR�>>TPE�==AUT�<<CRO�;;CHN�::CHN�99ITA�88ITA�77AUT�66CAN�55CAN�44DEN�33DEN�22NED�11NED�00NED�//NED�..ESP�--SUI�,,GER�++GER�**FRA�))FRA�((GBR�''CHN�&&NOR�%%NED�$$NED�##GER�""GER�!!NED�  ESP�ESP�ESP�USA�SUI�CHN�GBR�SUI�CAN�ITA�BRA�BRA�USA�ITA�USA�AUS�DEN�AUS�FIN�ITA�GER�AUS�

USA�		GBR�NED�GRN�JPN�UKR�USA�AUT�BRA�UGA�  NED� �BRA�~ �AUS�} �USA�| �KEN�{ �POL�z �ETH�y �CUB�x �BLR�w �JAM�v �POL�u �GBR�t �CHN�s �NZL�r �POL�q �ESP�p �USA�o �JAM�n �USA�m �USA�l �CAN�k �CZE�j �CUB�i �JAM�h �AUS�g �BEL�f �ETH�e �NGR�d �NZL�c �KEN�b �BUR�a �HUN�` �KOR�_ �NED�^ �GBR�] �AUS�\ �LAT�[ �MEX�Z �GEO�Y �INA�X �INA�W �TPE�V �JPN�U �SYR�T �DOM�S �USA�R �ITA�Q �ITA�P �KAZ�O �KAZ�N �JPN�M �ITA�L �USA�K �GBR�J �USA�I �JPN�H �GBR�G �ITA�F �CAN�E �ITA�D �KAZ�C �FRA�B �ROC�A �POR�@ �UZB�? �HUN�> �ROC�= �FRA�< �MGL�; �UKR�: �MGL�9 �KOR�8 �KOR�7 �BRA�6 �AUT�5 �BEL�4 �GER�3 �BRA�2 �ROC�1 �NED�0 �AZE�/ �FRA�. �CAN�- �JPN�, �GBR�+ �SUI�* �TPE�) �NZL�( �GRE�' �TUR�& �ARM�% �JPN�$ �JPN�# �USA�" �KOR�! �BRA�  �UKR� �NZL� �NZL� �ESP� �BRA� �AUS� �AUS� �CUB� �ITA� �UKR� �BUL� �TUR� �IRI� �USA� �BUL� �ROC� �CHN� �GER� �SRB� �ROC� �TUR� �CHN�
 �TUR�	 �GER� �EGY� �USA� �AZE� �UKR� �KGZ� �JPN� �AZE� �SMR�  �ROCIND~~ROC}}UZB||USA{{IRIzzPOLyyBLRxxMGLwwKAZvvUSAuuJPNttAUTssINDrrINAqqJPNppKORooKORnnJPNmmMASllMASkkFRAjjUKRiiKORhhCZEggESTffROCeeITAddNEDccROCbbROCaaHKG``CAN__GBR^^SRB]]ISR\\KOR[[ROCZZTPEYYTURXXEGYWWCIVVVFRAUUGBRTTKORSSCUBRRCROQQEGYPPCHNOOTURNNGBRMMNZLLLAUSKKGERJJGERIIGERHHTPEGGGERFFTPEEEJPNDDNZLCCUSABBNEDAACOL@@UKR??UKR>>ARM==AUS<<GBR;;ITA::KAZ99JPN88TPE77JPN66IND55USA44FIN33THA22NED11ROC00NZL//BRA..GHA--CUB,,AZE++ROC**GBR))KAZ((ROC''PHI&&IRL%%ROC$$SLO##AUS""ITA!!NED  GBRHUNPORMDAHUNCZECZEGERGERCANAUSMEXMEXROCROCUSAGERGERGBRGERGERKUW

UKR		CHNUKRCHNCHNSRBROCGB   ЇB   υ   ΂N   �    �������������wmcYOE;1'	�������������}si_TI>3(������������xmbWLA6+ 
������������{peZOD9.#����������~rfZNB6*
�
�
�
�
�
�
�
�
�
�

r
e
X
K
>
1
$


	�	�	�	�	�	�	�	�	�	�	{	n	a	T	G	:	-	 		����������wj]PC6)����������sfYL?2%����������|obUH;.!����������xk^QD7*����������tgZM@3&����������}pcVI</"����������yl_R    
�#2925314
�"2915275
�!2905274
� 2895227
�2885195
�2875194
�2865179
�2855168
�2845164
�2835155
�2825153
�2815142
�2805124
�2795121
�2785108
�2775105
�2765095
�2755073
�2745062
�2735058
�2725042
�2715038
�2705031
�2695015
�2685014
�
2675010
�	2664997
�2654988
�2644964
�2634954
�2624931
�2614878
�2604876
�2594871
�2584858
� 2574838
�2564825
�~2554808
�}2544800
�|2534772
�{2524758
�z2514744
�y2504727
�x2494719
�w2484698
�v2474695
�u2464684
�t2454672
�s2444645
�r2434593
�q2424589
�p2414580
�o2404570
�n2394477
�m2384472
�l2374464
�k2364425
�j2354390
�i2344381
�h2334372
�g2324362
�f2314312
�e2304243
�d2294225
�c2284214
�b2274198
�a2264194
�`2254169
�_2244106
�^2234073
�]2223998
�\2213900
�[2203855
�Z2193850
�Y2183831
�X2173823
�W2163806
�V2153801
�U2143780
�T2133771
�S2123760
�R2113746
�Q2103729
�P2093716
�O2083704
�N2073691
�M2063673
�L2053599
�K2043550
�J2033528
�I2023516
�H2013490
�G2003475
�F1993452
�E1983432
�D1973423
�C1963407
�B1953399
�A1943396
�@1933384
�?1923363
�>1913345
�=1903325
�<1893324
�;1883315
�:1873305
�91863273
�81853255
�71843248
�61833242
�51823212
�41813197
�31803188
�21793187
�11783161
�01773140
�/1763128
�.1753124
�-1743106
�,1733093
�+1723086
�*1713077
�)1703044
�(1693003
�'1682946
�&1672938
�%1662932
�$1652924
�#1642912
�"1632900
�!1622862
� 1612838
�1602822
�1592766
�1582765
�1572731
�1562703
�1552678
�1542677
�1532665
�1522661
�1512646
�1502645
�1492631
�1482629
�1472611
�1462609
�1452600
�1442599
�1432590
�1422580
�1412566
�1402564
�
1392560
�	1382554
�1372539
�1362537
�1352527
�1342514
�1332508
�1322506
�1312491
�1302481
� 1292476
1282472
~1272457
}1262454
|1252437
{1242436
z1232430
y1222419
x1212411
w1202406
v1192394
u1182386
t1172367
s1162354
r1152310
q1142291
p1132239
o1122208
n1112207
m1102182
l1092176
k1082175
j1072164
i1062134
h1052089
g1042027
f1032019
e1021959
d1011937
c1001925	b991923	a981922	`971908	_961907	^951888	]941845	\931837	[921825	Z911818	Y901813	X891799	W881796	V871789	U861779	T851773	S841754	R831753	Q821747	P811737	O801724	N791719	M781713	L771703	K761655	J751634	I741611	H731570	G721489	F711484	E701467	D691408	C681374	B671338	A661291	@651260	?641210	>631209	=621197	<611182	;601166	:591164	9581148	8571142	7561124	6551114	5541101	4531085	3521074	2511073	1501057	0491052	/481043	.471033	-461013	,451012+44995*43989)42980(41977'40960&39948%38931$37928#36877"35796!34732 33718327053167830670296602863427565265642553724536235132245821428204271939418393173881637815377143701336212361
11337	103239290825172096121596   ̆J   ˄7   ʂ#  #R ��������������wmcYOE;1'	�������������}si_TI>3(������������xmbWLA6+ 
������������{peZOD9.#����������~rfZNB6*
�
�
�
�
�
�
�
�
�
�

r
e
X
K
>
1
$


	�	�	�	�	�	�	�	�	�	�	{	n	a	T	G	:	-	 		����������wj]PC6)����������sfYL?2%����������|obUH;.!����������xk^QD7*����������tgZM@3&����������}pcVI</"����������yl_R    
�#2925314
�"2915275
�!2905274
� 2895227
�2885195
�2875194
�2865179
�2855168
�2845164
�2835155
�2825153
�2815142
�2805124
�2795121
�2785108
�2775105
�2765095
�2755073
�2745062
�2735058
�2725042
�2715038
�2705031
�2695015
�2685014
�
2675010
�	2664997
�2654988
�2644964
�2634954
�2624931
�2614878
�2604876
�2594871
�2584858
� 2574838
�2564825
�~2554808
�}2544800
�|2534772
�{2524758
�z2514744
�y2504727
�x2494719
�w2484698
�v2474695
�u2464684
�t2454672
�s2444645
�r2434593
�q2424589
�p2414580
�o2404570
�n2394477
�m2384472
�l2374464
�k2364425
�j2354390
�i2344381
�h2334372
�g2324362
�f2314312
�e2304243
�d2294225
�c2284214
�b2274198
�a2264194
�`2254169
�_2244106
�^2234073
�]2223998
�\2213900
�[2203855
�Z2193850
�Y2183831
�X2173823
�W2163806
�V2153801
�U2143780
�T2133771
�S2123760
�R2113746
�Q2103729
�P2093716
�O2083704
�N2073691
�M2063673
�L2053599
�K2043550
�J2033528
�I2023516
�H2013490
�G2003475
�F1993452
�E1983432
�D1973423
�C1963407
�B1953399
�A1943396
�@1933384
�?1923363
�>1913345
�=1903325
�<1893324
�;1883315
�:1873305
�91863273
�81853255
�71843248
�61833242
�51823212
�41813197
�31803188
�21793187
�11783161
�01773140
�/1763128
�.1753124
�-1743106
�,1733093
�+1723086
�*1713077
�)1703044
�(1693003
�'1682946
�&1672938
�%1662932
�$1652924
�#1642912
�"1632900
�!1622862
� 1612838
�1602822
�1592766
�1582765
�1572731
�1562703
�1552678
�1542677
�1532665
�1522661
�1512646
�1502645
�1492631
�1482629
�1472611
�1462609
�1452600
�1442599
�1432590
�1422580
�1412566
�1402564
�
1392560
�	1382554
�1372539
�1362537
�1352527
�1342514
�1332508
�1322506
�1312491
�1302481
� 1292476
1282472
~1272457
}1262454
|1252437
{1242436
z1232430
y1222419
x1212411
w1202406
v1192394
u1182386
t1172367
s1162354
r1152310
q1142291
p1132239
o1122208
n1112207
m1102182
l1092176
k1082175
j1072164
i1062134
h1052089
g1042027
f1032019
e1021959
d1011937
c1001925	b991923	a981922	`971908	_961907	^951888	]941845	\931837	[921825	Z911818	Y901813	X891799	W881796	V871789	U861779	T851773	S841754	R831753	Q821747	P811737	O801724	N791719	M781713	L771703	K761655	J751634	I741611	H731570	G721489	F711484	E701467	D691408	C681374	B671338	A661291	@651260	?641210	>631209	=621197	<611182	;601166	:591164	9581148	8571142	7561124	6551114	5541101	4531085	3521074	2511073	1501057	0491052	/481043	.471033	-461013	,451012+44995*43989)42980(41977'40960&39948%38931$37928#36877"35796!34732 33718327053167830670296602863427565265642553724536235132245821428204271939418393173881637815377143701336212361
11337	10323929082517209612159643632026  8 ���������~qdWJ=0#	����������zm`SF9,����������xk^QG;/"����������reXK>1'�����������wk_SG;/#
�
�
�
�
�
�
�
�
�
�
�
{
o
c
W
K
>
1
$


	�	�	�	�	�	�	�	�	�	�	{	n	a	T	G	:	-	 		����������wj]PC6)����������sfYL?2%����������|obUH;.!����������xk^QD7*����������tgZM@3&����������}pcVI</"����������yl_RE8        
�75684673
�65674606
�55664596
�45654586
�35644579
�25634561
�15624479
�05614474
�/5604465
�.5594439
�-5584396
�,5574379
�+5564376
�*5554367
�)5544281
�(5534246
�'5524229
�&5514222
�%5504206
�$5494195
�#5484184
�"5474139
�!5464119
� 5454079
�5443958
�5433880
�5423856
�5413846
�5403842
�5393822
�5383817
�5373792
�5363786
�5353776
�5343757
�5333744
�5323738
�5313725
�5303706
�5293693
�5283640
�5273620
�5263553
�5253530
�5243501
�
5233481
�	5223469
�5213435
�5203418
�5193381
�5183368
�5173339
�5163316
�5153276
�5143251
� 5133203
�5123176
�~5113144
�}5103113
�|5093099
�{5083080
�z5073071
�y5063017
�x5052977
�w5042943
�v5032937
�u5022935
�t5012933
�s5002929
�r4992921
�q4982895
�p4972882
�o4962879
�n4952865
�m4942827
�l4932817
�k4922742
�j4912715
�i4902694
�h4892676
�g4882675
�f4872663
�e4862650
�d4852630
�c4842614
�b4832593
�a4822582
�`4812563
�_4802546
�^4792540
�]4782515
�\4772511
�[4762488
�Z4752477
�Y4742455
�X4732432
�W4722428
�V4712403
�U4702392
�T4692383
�S4682350
�R4672331
�Q4662288
�P4652238
�O4642237
�N4632206
�M4622205
�L4612174
�K4602173
�J4592140
�I4582105
�H4572096
�G4562057
�F4552021
�E4541992
�D4531956
�C4521928
�B4511921
�A4501920
�@4491902
�?4481881
�>4471878
�=4461856
�<4451841
�;4441829
�:4431797
�94421787
�84411767
�74401757
�64391736
�54381721
�44371712
�34361708
�24351696
�14341652
�04331637
�/4321616
�.4311598
�-4301578
�,4291553
�+4281488
�*4271487
�)4261434
�(4251407
�'4241358
�&4231303
�%4221274
�$4211254
�#4201208
�"4191207
�!4181184
� 4171158
�4161140
�4151121
�4141096
�4131070
�4121053
�4111031
�4101006	�409997	�408979	�407951	�406934	�405819	�404811	�403725	�402709	�401677	�400676	�399646	�398603	�397583	�396563	�
395562	�	394535	�393503	�392467	�391426	�390425	�389392	�388376	�387375	�386360	� 385359	�384355	�~383321	�}382318	�|381289	�{380280	�z379219	�y378192	�x377178	�w376153	�v375136	�u374110�t37370�s37269�r37158�q37025�p3694
�o3685041
�n3674174
�m3664466
�l3652896
�k3641866
�j3631699
�i3621607
�h3611486	�g360389	�f359322	�e358254	�d357139�c35638
�b3555128
�a3545118
�`3535090
�_3525044
�^3515021
�]3502874
�\3491697	�[348528	�Z347527�Y3463
�X3455049
�W3442893
�V3432867	�U342599
�T3415049
�S3402893
�R3392867	�Q338599
�P3375975
�O3365974
�N3355927
�M3345926
�L3335913
�K3325908
�J3315901
�I3305898
�H3295893
�G3285885
�F3275881
�E3265873
�D3255872
�C3245868
�B3235863
�A3225856
�@3215850
�?3205848
�>3195845
�=3185835
�<3175832
�;3165805
�:3155778
�93145777
�83135742
�73125741
�63115709
�53105684
�43095683
�33085660
�23075659
�13065624
�03055623
�/3045600
�.3035599
�-3025573
�,3015529
�+3005486
�*2995485
�)2985444
�(2975443
�'2965424
�&2955401
�%2945356
�$2935315  < ���������~qdWJ=0#	����������zm`SF9,����������vi\OB5(���������reXKA5)����������uh[NB6*
�
�
�
�
�
�
�
�
�
�
�
u
i
]
Q
E
9
-
!

		�	�	�	�	�	�	�	�	�	�	�	y	m	a	U	I	=	1	$		
����������{naTG:- ����������wj]PC6)����������sfYL?2%����������|obUH;.!����������xk^QD7*����������tgZM@3&����������}pcVI<              
�J8434236
�I8424220
�H8414205
�G8404196
�F8394181
�E8384171
�D8374111
�C8364087
�B8353987
�A8343892
�@8333864
�?8323848
�>8313835
�=8303819
�<8293808
�;8283803
�:8273787
�98263766
�88253762
�78243748
�68233737
�58223721
�48213703
�38203700
�28193669
�18183590
�08173560
�/8163531
�.8153502
�-8143497
�,8133473
�+8123448
�*8113420
�)8103385
�(8093370
�'8083327
�&8073301
�%8063261
�$8053231
�#8043222
�"8033179
�!8023153
� 8013121
�8003108
�7993087
�7983070
�7973065
�7963007
�7952949
�7942942
�7932939
�7922930
�7912923
�7902915
�7892897
�7882864
�7872837
�7862802
�7852764
�7842763
�7832758
�7822674
�7812673
�7802672
�
7792642
�	7782637
�7772617
�7762597
�7752587
�7742565
�7732555
�7722534
�7712517
�7702510
� 7692494
�7682467
�~7672459
�}7662439
�|7652416
�{7642405
�z7632387
�y7622365
�x7612346
�w7602328
�v7592301
�u7582236
�t7572235
�s7562204
�r7552203
�q7542172
�p7532171
�o7522136
�n7512109
�m7502086
�l7492034
�k7481994
�j7471987
�i7461957
�h7451931
�g7441919
�f7431918
�e7421901
�d7411883
�c7401848
�b7391843
�a7381824
�`7371801
�_7361781
�^7351774
�]7341751
�\7331742
�[7321720
�Z7311709
�Y7301702
�X7291670
�W7281647
�V7271618
�U7261585
�T7251520
�S7241485
�R7231428
�Q7221401
�P7211352
�O7201321
�N7191280
�M7181256
�L7171206
�K7161205
�J7151195
�I7141157
�H7131134
�G7121117
�F7111098
�E7101072
�D7091049
�C7081044
�B7071017	�A706998	�@705965	�?704943	�>703924	�=702879	�<701793	�;700759	�:699713	�9698650	�8697627	�7696626	�6695567	�5694561	�4693560	�3692539	�2691533	�1690532	�0689529	�/688442	�.687424	�-686390	�,685343	�+684306	�*683199	�)682182	�(681138	�'680111�&67976�%6787�$6772�#6761
�"6755017
�!6745016	� 673237
�6725070
�6715043
�6705020
�6694841
�6682866
�6672815	�666729	�665423	�664391	�663374	�662357
�6615125
�6605109
�6595051
�6585030	�657534
�6565125
�6555109
�6545051
�6535030	�652534
�
6515128
�	6505118
�6495090
�6485044
�6475021
�6462874
�6451697	�644528	�643527�6423
� 6415973
�6405972
�~6395925
�}6385924
�|6375915
�{6365904
�z6355899
�y6345888
�x6335876
�w6325862
�v6315853
�u6305846
�t6295837
�s6285817
�r6275776
�q6265775
�p6255740
�o6245739
�n6235733
�m6225682
�l6215681
�k6205658
�j6195657
�i6185622
�h6175621
�g6165598
�f6155597
�e6145567
�d6135537
�c6125484
�b6115483
�a6105442
�`6095441
�_6085415
�^6075408
�]6065359
�\6055313
�[6045312
�Z6035273
�Y6025272
�X6015235
�W6005193
�V5995192
�U5985187
�T5975169
�S5965103
�R5955087
�Q5945078
�P5935075
�O5925065
�N5915060
�M5905039
�L5895009
�K5884991
�J5874975
�I5864953
�H5854900
�G5844886
�F5834875
�E5824862
�D5814857
�C5804851
�B5794822
�A5784810
�@5774804
�?5764795
�>5754777
�=5744765
�<5734752
�;5724742
�:5714714
�95704692
�85694686   �� ���������~qdWJ=0#	����������zm`SF9,����������vi\OB5(���������reXK>1$
�����������tgZM@3&
�
�
�
�
�
�
�
�
�
�
x
k
^
Q
D
7
*


	�	�	�	�	�	�	�	�	�	�	x	k	^	R	E	8	,			��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
�W9845085	�V983622
�U9825085	�T981622
�S9805085	�R979622
�Q9785017
�P9775016	�O976237
�N9755017
�M9745016	�L973237
�K9725041
�J9714174
�I9705041
�H9694174
�G9685131
�F9675116
�E9665079
�D9655052
�C9644476
�B9632870	�A962373	�@961358	�?960162
�>9595131
�=9585116
�<9575079
�;9565052
�:9554476
�99542870	�8953373	�7952358	�6951162
�59505070
�49495043
�39485020
�29474841
�19462866
�09452815	�/944729	�.943423	�-942391	�,941374	�+940357
�*9394466
�)9382896
�(9371866
�'9361699
�&9351607
�%9341486	�$933389	�#932322	�"931254	�!930139� 92938
�9285971
�9275970
�9265923
�9255922
�9245916
�9235909
�9225896
�9215886
�9205879
�9195869
�9185855
�9175844
�9165838
�9155810
�9145774
�9135773
�9125738
�9115737
�9105732
�9095680
�9085679
�
9075656
�	9065655
�9055620
�9045619
�9035596
�9025595
�9015585
�9005532
�8995482
�8985481
� 8975440
�8965439
�~8955430
�}8945403
�|8935377
�{8925311
�z8915310
�y8905271
�x8895270
�w8885251
�v8875191
�u8865190
�t8855185
�s8845165
�r8835144
�q8825122
�p8815107
�o8805061
�n8795034
�m8785019
�l8775007
�k8764989
�j8754971
�i8744952
�h8734936
�g8724889
�f8714873
�e8704855
�d8694845
�c8684826
�b8674816
�a8664807
�`8654781
�_8644775
�^8634764
�]8624751
�\8614711
�[8604704
�Z8594700
�Y8584694
�X8574681
�W8564675
�V8554633
�U8544599
�T8534588
�S8524573
�R8514486
�Q8504468
�P8494406
�O8484394
�N8474387
�M8464373
�L8454363
�K8444269  N� ��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#��������������ti^SH=2'
�
�
�
�
�
�
�
�
�
�
�
�
w
l
a
V
K
@
5
*


		�	�	�	�	�	�	�	�	�	�	�	�	z	o	d	Y	N	C	8	-	"			�����������}rg\QF;0%������������uj_TI>3(������������xmbWLA6+ 
������������{peZOD9.#�����������~sh]RG<1&������������vk`UJ?4)��������� �NNSUI�MMBLR�LLKAZ�KKJOR�JJJPN�IITUR�HHTUR�GGUSA�FFITA�EEHKG�DDKAZ�CCCHN�BBTUR�AAEGY�@@HUN�??UKR�>>TPE�==AUT�<<CRO�;;CHN�::CHN�99ITA�88ITA�77AUT�66CAN�55CAN�44DEN�33DEN�22NED�11NED�00NED�//NED�..ESP�--SUI�,,GER�++GER�**FRA�))FRA�((GBR�''CHN�&&NOR�%%NED�$$NED�##GER�""GER�!!NED�  ESP�ESP�ESP�USA�SUI�CHN�GBR�SUI�CAN�ITA�BRA�BRA�USA�ITA�USA�AUS�DEN�AUS�FIN�ITA�GER�AUS�

USA�		GBR�NED�GRN�JPN�UKR�USA�AUT�BRA�UGA�  NED� �BRA�~ �AUS�} �USA�| �KEN�{ �POL�z �ETH�y �CUB�x �BLR�w �JAM�v �POL�u �GBR�t �CHN�s �NZL�r �POL�q �ESP�p �USA�o �JAM�n �USA�m �USA�l �CAN�k �CZE�j �CUB�i �JAM�h �AUS�g �BEL�f �ETH�e �NGR�d �NZL�c �KEN�b �BUR�a �HUN�` �KOR�_ �NED�^ �GBR�] �AUS�\ �LAT�[ �MEX�Z �GEO�Y �INA�X �INA�W �TPE�V �JPN�U �SYR�T �DOM�S �USA�R �ITA�Q �ITA�P �KAZ�O �KAZ�N �JPN�M �ITA�L �USA�K �GBR�J �USA�I �JPN�H �GBR�G �ITA�F �CAN�E �ITA�D �KAZ�C �FRA�B �ROC�A �POR�@ �UZB�? �HUN�> �ROC�= �FRA�< �MGL�; �UKR�: �MGL�9 �KOR�8 �KOR�7 �BRA�6 �AUT�5 �BEL�4 �GER�3 �BRA�2 �ROC�1 �NED�0 �AZE�/ �FRA�. �CAN�- �JPN�, �GBR�+ �SUI�* �TPE�) �NZL�( �GRE�' �TUR�& �ARM�% �JPN�$ �JPN�# �USA�" �KOR�! �BRA�  �UKR� �NZL� �NZL� �ESP� �BRA� �AUS� �AUS� �CUB� �ITA� �UKR� �BUL� �TUR� �IRI� �USA� �BUL� �ROC� �CHN� �GER� �SRB� �ROC� �TUR� �CHN�
 �TUR�	 �GER� �EGY� �USA� �AZE� �UKR� �KGZ� �JPN� �AZE� �SMR�  �ROCIND~~ROC}}UZB||USA{{IRIzzPOLyyBLRxxMGLwwKAZvvUSAuuJPNttAUTssINDrrINAqqJPNppKORooKORnnJPNmmMASllMASkkFRAjjUKRiiKORhhCZEggESTffROCeeITAddNEDccROCbbROCaaHKG``CAN__GBR^^SRB]]ISR\\KOR[[ROCZZTPEYYTURXXEGYWWCIVVVFRAUUGBRTTKORSSCUBRRCROQQEGYPPCHNOOTURNNGBRMMNZLLLAUSKKGERJJGERIIGERHHTPEGGGERFFTPEEEJPNDDNZLCCUSABBNEDAACOL@@UKR??UKR>>ARM==AUS<<GBR;;ITA::KAZ99JPN88TPE77JPN66IND55USA44FIN33THA22NED11ROC00NZL//BRA..GHA--CUB,,AZE++ROC**GBR))KAZ((ROC''PHI&&IRL%%ROC$$SLO##AUS""ITA!!NED  GBRHUNPORMDAHUNCZECZEGERGERCANAUSMEXMEXROCROCUSAGERGERGBRGERGERKUW

UKR		CHNUKRCHNCHNSRBROCGBRUSA	USA  :� �����������|qf[PE:/$�����������ti^SH=2'������������wlaVK@5*	������������zodYNC8-"�����������}rg\QF;0%
�
�
�
�
�
�
�
�
�
�
�
�
u
j
_
T
I
>
3
(


	�	�	�	�	�	�	�	�	�	�	�	�	x	m	b	W	L	A	6	+	 		
������������{peZOD9.#�����������~sh]RG<1&������������vk`UJ?4)������������yncXMB7,! �����������|qf[PE:/$�����������ti^SH=2'������������      ��USA��USA��CHN��ITA��CAN��UKR��SMR��ROC� �ROC�AUS�~~AUS�}}ROC�||TUR�{{KSA�zzESP�yyJPN�xxAZE�wwCHN�vvAZE�uuUKR�ttNOR�ssNED�rrNED�qqGER�ppGER�ooROC�nnROC�mmROC�llROU�kkROU�jjFRA�iiFRA�hhNZL�ggNZL�ffSUI�eeSUI�ddNZL�ccNZL�bbPOL�aaPOL�``FRA�__FRA�^^CRO�]]GER�\\GER�[[GBR�ZZGBR�YYSWE�XXSWE�WWSWE�VVHUN�UUUSA�TTFRA�SSAUS�RRUSA�QQJPN�PPAUS�OOUSA�NNSWE�MMUSA�LLKEN�KKNED�JJCOL�IIJPN�HHAUS�GGNAM�FFSWE�EEUSA�DDCAN�CCUSA�BBUSA�AAUSA�@@FRA�??GBR�>>ETH�==NOR�<<BRN�;;GER�::USA�99CHN�88ROC�77COL�66USA�55KEN�44POR�33KEN�22JAM�11DOM�00USA�//GER�..CZE�--CUB�,,USA�++POL�**NED�))KEN�((USA�''USA�&&USA�%%CHN�$$GBR�##LTU�""EGY�!!SWE�  GER�GBR�ARM�USA�VEN�IND�VEN�ITA�TKM�IRI�ECU�GBR�DOM�COL�CHN�INA�ITA�ROC�BRA�JPN�BRA�BRA�

FRA�		SLO�TPE�KOR�GER�GEO�JPN�GEO�GEO�MGL�  FRA��AUT�~�CUB�}�FRA�|�VEN�{�USA�z�SVK�y�JPN�x�ESP�w�CHN�v�ROC�u�ITA�t�ROC�s�CRO�r�CHN�q�GER�p�TPE�o�USA�n�CZE�m�SUI�l�CRO�k�ROC�j�CRO�i�ROC�h�ROC�g�USA�f�KGZ�e�GEO�d�BLR�c�JPN�b�HUN�a�GEO�`�USA�_�UKR�^�CHN�]�NGR�\�KGZ�[�IRI�Z�AZE�Y�BLR�X�ARM�W�CHN�V�IND�U�JPN�T�USA�S�TPE�R�CHN�Q�CHN�P�CHN�O�CHN�N�CHN�M�CHN�L�CHN�K�ROC�J�HUN�I�ITA�H�ITA�G�ROU�F�ROC�E�JPN�D�NZL�C�DEN�B�DEN�A�NZL�@�NED�?�MAS�>�UKR�=�ESP�<�TUN�;�ROC�:�GBR�9�KOR�8�MKD�7�JOR�6�GBR�5�CHN�4�CHN�3�HUN�2�NED�1�CZE�0�ESP�/�GBR�.�SVK�-�CHN�,�CHN�+�CHN�*�CHN�)�RSA�(�GBR�'�GBR�&�COL�%�GBR�$�CHN�#�CHN�"�USA�!�PHI� �PHI��TUR��CHN��BRA��CHN��ROC��USA��GBR��USA��UKR��GBR��BEL��NED��SUI��ITA��POL��POL��HUN��ESP��HUN��GER��GER�
�CHN�	�UKR��CHN��USA��USA��CHN��CAN��CAN��USA��USA� �DEN�SRB�~~ROC�}}KOR�||BUL�{{ITA�zzCZE�yyROC�xxUSA�wwCHN�vvCUB�uuROC�ttROC�ssUSA�rrUSA�qqSMR�ppAUS�ooNED�nnCAN�mmUSA�llNED�kkGER�jjAUS�iiJPN�hhGBR�ggCHN�ffCHN�eeCHN�ddSUI�ccUKR�bbUSA�aaROC�``USA�__USA�^^CHN�]]ITA�\\CAN�[[UKR�ZZSMR�YYUSA�XXROC�WWROC�VVDEN�UUUSA�TTROC�SSROC�RRDEN�QQQAT�PPQAT�OOSUI  :� �����������|qf[PE:/$�����������ti^SH=2'������������wlaVK@5*	������������zodYNC8-"�����������}rg\QF;0%
�
�
�
�
�
�
�
�
�
�
�
�
u
j
_
T
I
>
3
(


	�	�	�	�	�	�	�	�	�	�	�	�	x	m	b	W	L	A	6	+	 		
������������{peZOD9.#�����������~sh]RG<1&������������vk`UJ?4)������������yncXMB7,! �����������|qf[PE:/$�����������ti^SH=2'������������      �B�CHN�A�CHN�@�CHN�?�USA�>�ROC�=�JPN�<�AUS�;�JAM�:�JPN�9�CHN�8�CHN�7�CHN�6�HUN�5�CHN�4�RSA�3�UGA�2�BRA�1�SUI�0�NED�/�CHN�.�CHN�-�CHN�,�CHN�+�CAN�*�USA�)�NED�(�GER�'�AUS�&�JPN�%�GBR�$�CHN�#�CHN�"�CHN�!�SUI� �NOR��NOR��USA��USA��ISR��FRA��IRI��JPN��ESP��EGY��SRB��ITA��BUL��GRE��FRA��FRA��IRL��IRL��NZL��NZL��NZL��CRO�
�CRO�	�ITA��ITA��ROU��ROU��GBR��SUI��GBR��GBR��GBR� �GBR�CHN�~~NED�}}AUS�||BRA�{{BRA�zzITA�yyITA�xxDEN�wwAUS�vvAUS�uuGBR�ttCHN�ssCAN�rrGBR�qqGBR�ppTUN�ooAUS�nnUSA�mmUSA�llNOR�kkBEL�jjBAH�iiITA�hhROC�ggSWE�ffNOR�eeETH�ddUSA�ccSWE�bbITA�aaCAN�``USA�__MAR�^^POL�]]USA�\\ITA�[[QAT�ZZPUR�YYPOL�XXUSA�WWITA�VVCHN�UUKEN�TTVEN�SSKEN�RRBAH�QQPOL�PPIND�OOGRE�NNJAM�MMCHN�LLKEN�KKGER�JJUSA�IIUGA�HHPOR�GGKEN�FFGBR�EEGBR�DDGBR�CCGER�BBGER�AAUZB�@@ECU�??QAT�>>CHN�==CHN�<<CAN�;;TPE�::GEO�99CHN�88CHN�77CHN�66CHN�55PHI�44CHN�33TUR�22KOR�11JPN�00JPN�//AUS�..JPN�--JPN�,,FRA�++JPN�**JPN�))GEO�((CZE�''KOS�&&JPN�%%JPN�$$JPN�##JPN�""JPN�!!JPN�  KOS�AUS�GBR�USA�USA�CHN�ISR�CHN�KOR�GBR�BEL�CHN�USA�CZE�CZE�CRO�CRO�GER�ROC�ROC�ROC�JPN�

USA�		JPN�CUB�UKR�CUB�GER�IRI�JPN�USA�HUN�  USA��JPN�~�ROC�}�ROC�|�JPN�{�ROC�z�SLO�y�ESP�x�CHN�w�DEN�v�CHN�u�CHN�t�INA�s�INA�r�TPE�q�TPE�p�ROC�o�FRA�n�HUN�m�HKG�l�CHN�k�USA�j�USA�i�GBR�h�GBR�g�GBR�f�CAN�e�GBR�d�NED�c�THA�b�ITA�a�USA�`�CRO�_�SRB�^�ROC�]�ROC�\�UZB�[�CHN�Z�BLR�Y�BRA�X�SLO�W�GER�V�CZE�U�CHN�T�JPN�S�CHN�R�USA�Q�NOR�P�BER�O�GBR�N�NED�M�ROC�L�ROC�K�CUB�J�JPN�I�GBR�H�BUL�G�TUR�F�IRL�E�GBR�D�CUB�C�ROC�B�CUB�A�UZB�@�BRA�?�CUB�>�ECU�=�SLO�<�AUT�;�HUN�:�NZL�9�CHN�8�CHN�7�HUN�6�AUS�5�AUS�4�BRA�3�CUB�2�CUB�1�USA�0�CHN�/�CHN�.�GBR�-�USA�,�IRI�+�USA�*�CZE�)�USA�(�FRA�'�CHN�&�SVK�%�ESP�$�ESP�#�AUS�"�USA�!�ROC� �HUN��CHN��RSA��UGA��BRA��SUI��NED��CHN��CHN��CHN��CHN��HKG��GBR��CAN��NED��CHN��HKG��GBR��CAN��NED��CHN��UKR�
�USA�	�ROC    �����������|qf[PE:/$                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          �X�USA�W�NZL�V�USA�U�NZL�T�USA�S�NZL�R�AUS�Q�USA�P�ROC�O�AUS�N�USA�M�ROC�L�AUS�K�NED�J�AUS�I�NED�H�USA�G�ROC�F�JPN�E�AUS�D�JAM�C�JPN