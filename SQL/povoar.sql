SQLite format 3   @        �                                                             .	(   �     �����v
Db	�
		`-B,Rx�A��kD��                                                                                                                                                                ��mtableMedalMedalCREATE TABLE Medal(idMedal INT PRIMARY KEY, gold INT, silver INT, bronze INT,
CHECK(gold + silver + bronze = 1)))= indexsqlite_autoindex_Medal_1Medalp�3tableLocationLocationCREATE TABLE Location(idLocation INT PRIMARY KEY, name TEXT NOT NULL, capacity INT)/C indexsqlite_autoindex_Location_1Location�}33�!tableCompetitionLocationCompetitionLocationCREATE TABLE CompetitionLocation(idCompetition INT NOT NULL, idLocation INT NOT NULL,
FOREIGN KEY(idCompetition) REFERENCES Competition(idSport),
FOREIGN KEY(idLocation) REFERENCES Location(idLocation))�"##�tableCompetitionCompetitionCREATE TABLE Competition(idSport INT PRIMARY KEY, startDate DATE, endDate DATE,
FOREIGN KEY(idSport) REFERENCES Sport(idSport))5I# indexsqlite_autoindex_Competition_1Competition�W55�QtableCollectiveDisciplineCollectiveDisciplineCREATE TABLE CollectiveDiscipline(idSport INT NOT NULL,  disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))�W55�QtableIndividualDisciplineIndividualDisciplineCREATE TABLE IndividualDiscipline(idSport INT NOT NULL,  disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))��tableRecordRecordCREATE TABLE Record(idParticipant INT NOT NULL, idSport INT NOT NULL, recordType TEXT NOT NULL, round TEXT NOT NULL, date DATE NOT NULL,
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))�h))�tableParticipatesInParticipatesInCREATE TABLE ParticipatesIn(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))�S�}tableCoachesCoachesCREATE TABLE Coaches(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))[�tableSportSportCREATE TABLE Sport(idSport INT PRIMARY KEY, sportName TEXT NOT NULL))= indexsqlite_autoindex_Sport_1Sport��utableCoachCoachCREATE TABLE Coach( idParticipant INT PRIMARY KEY,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant)))= indexsqlite_autoindex_Coach_1Coach�
�tableAthleteAthleteCREATE TABLE Athlete(idParticipant INT PRIMARY KEY, firstOlympicGames TEXT, gameParticipations INT, pastGOLDmedals INT NOT NULL, pastSILVERmedals INT NOT NULL, pastBRONZEmedals INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))-A indexsqlite_autoindex_Athlete_1Athlete�b##�tableParticipantParticipant	CREATE TABLE Participant( idParticipant INT PRIMARY KEY, abbreviation CHAR(3) NOT NULL, name TEXT NOT NULL, birthYear INT,
FOREIGN KEY(abbreviation) REFERENCES OlympicCommittee(abbreviation))5	I# indexsqlite_autoindex_Participant_1Participant
� --�stableAttendesCeremonyAttendesCeremonyCREATE TABLE AttendesCeremony(idCeremony INT NOT NULL,
OlympicCommitteeAbbreviation CHAR(3) NOT NULL,
FOREIGN KEY(idCeremony) REFERENCES Ceremony(idCeremony),
FOREIGN KEY(OlympicCommitteeAbbreviation) REFERENCES OlympicCommittee(abbreviation))�9--�%tableOlympicCommitteeOlympicCommitteeCREATE TABLE OlympicCommittee(abbreviation CHAR(3) PRIMARY KEY, title TEXT NOT NULL UNIQUE, logo TEXT NOT NULL UNIQUE, recognitionDate DATE)?S- indexsqlite_autoindex_OlympicCommittee_3OlympicCommittee?S- indexsqlite_autoindex_OlympicCommittee_2OlympicCommittee?S- indexsqlite_autoindex_OlympicCommittee_1OlympicCommitteev�?tableCeremonyCeremonyCREATE TABLE Ceremony(idCeremony INT PRIMARY KEY, date DATE NOT NULL, time TIME NOT NULL)/C indexsqlite_autoindex_Ceremony_1Ceremony         � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   !2021-08-0812:00:00	!2021-07-2312:00:00
   � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          		   �    &���X��T�x?��.
�
�
E

	�	�	L		��I��k��a��O�w%��V��C�Y � �                                            ;9G)ECUComité Olímpico Ecuatoriano/logos/ECU.jpg1/1/195988A)DMADominica Olympic Committee/logos/DMA.jpg1/1/1993:7E)DOMComité Olímpico Dominicano/logos/DOM.jpg1/1/1954N6m)DJIComité National Olympique et Sportif Djiboutien/logos/DJI.jpg1/1/1984]5�	)DENNational Olympic Committee and Sports Confederation of Denmark/logos/DEN.jpg1/1/190594C)CODComité Olympique Congolais/logos/COD.jpg1/1/1968]3�	)PRKOlympic Committee of the Democratic People's Republic of Korea/logos/PRK.jpg1/1/195752;)CZECzech Olympic Committee/logos/CZE.jpg1/1/1993C1W)CYPThe Cyprus National Olympic Committee/logos/CYP.jpg1/1/197860=)CUBComité Olímpico Cubano/logos/CUB.jpg1/1/19558/A)CROCroatian Olympic Committee/logos/CRO.jpg1/1/1993J.e)CIVComité National Olympique de Côte d'Ivoire/logos/CIV.jpg1/1/1963G-_)CRCComité Olímpico Nacional  de Costa Rica/logos/CRC.jpg1/1/1936P,q)COKCook Islands Sports and National Olympic Committee/logos/COK.jpg1/1/1986M+k)CGOComité National Olympique et Sportif Congolais/logos/CGO.jpg1/1/1964K*g)COMComité Olympique et Sportif des Iles Comores/logos/COM.jpg1/1/1993:)E)COLComité Olímpico Colombiano/logos/COL.jpg1/1/1948>(M)TPEChinese Taipei Olympic Committee/logos/TPE.jpg1/1/19608'A)CHIComité Olímpico de Chile/logos/CHI.jpg1/1/1934C&W)CHAComité Olympique et Sportif Tchadien/logos/CHA.jpg1/1/1964Q%s)CAFComité National Olympique et Sportif Centrafricain/logos/CAF.jpg1/1/1965>$M)CAYCayman Islands Olympic Committee/logos/CAY.jpg1/1/1976=#K)CPVComité Olímpico Cabo-Verdiano/logos/CPV.jpg1/1/19938"A)CANCanadian Olympic Committee/logos/CAN.jpg1/1/1907O!o)CMRComité National Olympique et Sportif du Cameroun/logos/CMR.jpg1/1/1963D Y)CAMNational Olympic Committee of Cambodia/logos/CAM.jpg1/1/1995CW)BDIComité National Olympique du Burundi/logos/BDI.jpg1/1/1993Qs)BURComité National Olympique et des Sports Burkinabè/logos/BUR.jpg1/1/19729C)BULBulgarian Olympic Committee/logos/BUL.jpg1/1/1924Ha)BRUBrunei Darussalam National Olympic Council/logos/BRU.jpg1/1/19849C)BRAComitê Olímpico do Brasil/logos/BRA.jpg1/1/1935AS)BOTBotswana National Olympic Committee/logos/BOT.jpg1/1/1980Ic)BIHOlympic Committee of Bosnia and Herzegovina/logos/BIH.jpg1/1/19939C)BOLComité Olímpico Boliviano/logos/BOL.jpg1/1/19366=)BHUBhutan Olympic Committee/logos/BHU.jpg1/1/19839C)BERBermuda Olympic Association/logos/BER.jpg1/1/1936Mk)BENComité National Olympique et Sportif Béninois/logos/BEN.jpg1/1/1962Oo)BIZBelize Olympic and Commonwealth Games Association/logos/BIZ.jpg1/1/1968G_)BELComité Olympique et Interfédéral Belge/logos/BEL.jpg1/1/1906Sw)BLRNational Olympic Committee of the Republic of Belarus/logos/BLR.jpg1/1/1993CW)BARThe Barbados Olympic Association Inc./logos/BAR.jpg1/1/1951<I)BANBangladesh Olympic Association/logos/BAN.jpg1/1/19807?)BRNBahrain Olympic Committee/logos/BRN.jpg1/1/19797?)BAHBahamas Olympic Committee/logos/BAH.jpg1/1/1952Ty)AZENational Olympic Committee of the Azerbaijani Republic/logos/AZE.jpg1/1/1993CW)AUTÖsterreichisches Olympisches Comité/logos/AUT.jpg1/1/1912?O)AUSAustralian Olympic Committee Inc./logos/AUS.jpg1/1/37957
?)ARUComité Olímpico Arubano/logos/ARU.jpg1/1/1986C	W)ARMNational Olympic Committee of Armenia/logos/ARM.jpg1/1/19939C)ARGComité Olímpico Argentino/logos/ARG.jpg1/1/1923Ic)ANTThe Antigua and Barbuda Olympic Association/logos/ANT.jpg1/1/19768A)ANGComité Olímpico Angolano/logos/ANG.jpg1/1/19807?)ANDComitè Olímpic Andorrà/logos/AND.jpg1/1/1975G_)ASAAmerican Samoa National Olympic Committee/logos/ASA.jpg1/1/1987DY)ALGComité Olympique et Sportif Algérien/logos/ALG.jpg1/1/1964AS)ALBAlbanian National Olympic Committee/logos/ALB.jpg1/1/1959a�)AFGNational Olympic Committee of the  Islamic Republic of Afghanistan/logos   %�.   "u   !9
   �	9 ���������������y	iYQI9aqA1)�!������g��a�������yqYQAI91	9)
b���������!�������yqaiYAI)19Q!	]	f	����(�
�������
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
P	T	K	B                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   EOR �ZIM �ZAM �YEM �ISV �IVB �VIE �VEN �VAN �UZB �URU �USA �TAN �UAE �UKR �UGA �TUV �TKM �TUR �TUN �TTO �TGA �TOG �TLS �THA �TJK �SYR �SUI �SWE �SUR �SUD �VIN �SRI �ESP �SSD �RSA �SOM �SOL �SLO �SVK �SGP �SLE �SEY �SRB �SEN �KSA �STP �SMR �SAM �LCA �SKN �RWA �ROC �ROU �MDA �KOR �QAT �PUR �POR �POL �PHI �PER �CHN �PAR �PNG �PAN �PLE �PLW �PAK �OMA �NOR �MKD �NGR �NIG �NCA �NZL �NED �NEP �NRU �NAM �MYAMOZ~MAR}MNE|MGL{MONzMEXyMRIxMTNwMHLvMLTuMLItMDVsMASrMAWqMADpLUXoLTUnLIEmLBAlLBRkLESjLBNiLAThLAOgKGZfKUWeKOSdKIRcKENbKAZaJOR`JPN_JAM^ITA]ISR\IRI[IRLZIRQYINAXINDWISLVHUNUHKGTHONSHAIRGUYQGBSPGUIOGUANGUMMGRNLGREKGBRJGHAIGERHGEOGGAMFGABEFRADFINCFIJBFSMAETH@SWZ?EST>ERI=GEQ<ESA;EGY:ECU9DMA8DOM7DJI6DEN5COD4PRK3CZE2CYP1CUB0CRO/CIV.CRC-COK,CGO+COM*COL)TPE(CHI'CHA&CAF%CAY$CPV#CAN"CMR!CAM BDIBURBULBRUBRABOTBIHBOLBHUBERBENBIZBELBLRBARBANBRNBAHAZEAUTAUSARU
ARM	ARGANTANGANDASAALGALB	AFG   |    '�|�y�]@�yY
w
.	�k
�}	�	�N
�!����f	�	5��c 
S	g/�����':	�f��L�A�����f(
e%���j � ��A�
����l3�����O�H                          AJapanese Olympic Committee_CJamaica Olympic Association^(UComitato Olimpico Nazionale Italiano]#KThe Olympic Committee of Israel\?�National Olympic Committee of the Islamic Republic of Iran[!GOlympic Federation of IrelandZ&QNational Olympic Committee of IraqYAKomite Olimpiade IndonesiaXAIndian Olympic AssociationW6qNational Olympic and Sports Association of IcelandVCHungarian Olympic CommitteeU=Sports Federation & Olympic Committee of Hong Kong, ChinaT EComité Olímpico HondureñoSAComité Olympique HaïtienRAGuyana Olympic AssociationQ&QComité Olímpico da Guiné-BissauP2iComité National Olympique et Sportif GuinéenO"IComité Olímpico GuatemaltecoN#KGuam National Olympic CommitteeM?Grenada Olympic CommitteeLAHellenic Olympic CommitteeKCBritish Olympic AssociationJ;Ghana Olympic CommitteeI#KDeutscher Olympischer SportbundH'SGeorgian National Olympic CommitteeG)WThe Gambia National Olympic CommitteeFAComité Olympique GabonaisE3kComité National Olympique et Sportif FrançaisD?Finnish Olympic CommitteeC=Fiji Association of Sports and National Olympic CommitteeB4mFederated States of Micronesia Olympic CommitteeACEthiopian Olympic Committee@7sEswatini Olympic and Commonwealth Games Association?AEstonian Olympic Committee>'SEritrean National Olympic Committee=+[Comité Olímpico de  Guinea Ecuatorial<$MComité Olímpico de El Salvador;AEgyptian Olympic Committee:!GComité Olímpico Ecuatoriano9ADominica Olympic Committee8 EComité Olímpico Dominicano74mComité National Olympique et Sportif Djiboutien6C�	National Olympic Committee and Sports Confederation of Denmark5CComité Olympique Congolais4C�	Olympic Committee of the Democratic People's Republic of Korea3;Czech Olympic Committee2)WThe Cyprus National Olympic Committee1=Comité Olímpico Cubano0ACroatian Olympic Committee/0eComité National Olympique de Côte d'Ivoire.-_Comité Olímpico Nacional  de Costa Rica-6qCook Islands Sports and National Olympic Committee,3kComité National Olympique et Sportif Congolais+1gComité Olympique et Sportif des Iles Comores* EComité Olímpico Colombiano)$MChinese Taipei Olympic Committee(AComité Olímpico de Chile')WComité Olympique et Sportif Tchadien&7sComité National Olympique et Sportif Centrafricain%$MCayman Islands Olympic Committee$#KComité Olímpico Cabo-Verdiano#ACanadian Olympic Committee"5oComité National Olympique et Sportif du Cameroun!*YNational Olympic Committee of Cambodia )WComité National Olympique du Burundi7sComité National Olympique et des Sports BurkinabèCBulgarian Olympic Committee.aBrunei Darussalam National Olympic CouncilCComitê Olímpico do Brasil'SBotswana National Olympic Committee/cOlympic Committee of Bosnia and HerzegovinaCComité Olímpico Boliviano=Bhutan Olympic CommitteeCBermuda Olympic Association3kComité National Olympique et Sportif Béninois5oBelize Olympic and Commonwealth Games Association-_Comité Olympique et Interfédéral Belge9wNational Olympic Committee of the Republic of Belarus)WThe Barbados Olympic Association Inc."IBangladesh Olympic Association?Bahrain Olympic Committee?Bahamas Olympic Committee:yNational Olympic Committee of the Azerbaijani Republic)WÖsterreichisches Olympisches Comité%OAustralian Olympic Committee Inc.?Comité Olímpico Arubano
)WNational Olympic Committee of Armenia	CComité Olímpico Argentino/cThe Antigua and Barbuda Olympic AssociationAComité Olímpico Angolano?Comitè Olímpic Andorrà-_American Samoa National Olympic Committee*YComité Olympique    $L�Norwegian Olympic and Paralympic Committee and Confederation of Sports �   #._Comitê Olímpico Nacional de Timor-Leste �   �    )���|iVC�0
�����r_L&��9 ����B�{U�/,��%���h��q^K�����z��gA
�.
�
�
�

��
�
�
p
]
7
$
J	�	�	�	�	�	y	�	@	S	f	�	-		����o�����\I�(#��������x�?�eR���,��DX��l0��h@|�T��8��dxP��t<�L 8$�����p�`�T\�4H� 	�����6              )/logos/TUV.jpg �)/logos/TKM.jpg �)/logos/TUR.jpg �)/logos/TUN.jpg �)/logos/TTO.jpg �)/logos/TGA.jpg �)/logos/TOG.jpg �)/logos/TLS.jpg �)/logos/THA.jpg �)/logos/TJK.jpg �)/logos/SYR.jpg �)/logos/SUI.jpg �)/logos/SWE.jpg �)/logos/SUR.jpg �)/logos/SUD.jpg �)/logos/VIN.jpg �)/logos/SRI.jpg �)/logos/ESP.jpg �)/logos/SSD.jpg �)/logos/RSA.jpg �)/logos/SOM.jpg �)/logos/SOL.jpg �)/logos/SLO.jpg �)/logos/SVK.jpg �)/logos/SGP.jpg �)/logos/SLE.jpg �)/logos/SEY.jpg �)/logos/SRB.jpg �)/logos/SEN.jpg �)/logos/KSA.jpg �)/logos/STP.jpg �)/logos/SMR.jpg �)/logos/SAM.jpg �)/logos/LCA.jpg �)/logos/SKN.jpg �)/logos/RWA.jpg �)/logos/ROC.jpg �)/logos/ROU.jpg �)/logos/MDA.jpg �)/logos/KOR.jpg �)/logos/QAT.jpg �)/logos/PUR.jpg �)/logos/POR.jpg �)/logos/POL.jpg �)/logos/PHI.jpg �)/logos/PER.jpg �)/logos/CHN.jpg �)/logos/PAR.jpg �)/logos/PNG.jpg �)/logos/PAN.jpg �)/logos/PLE.jpg �)/logos/PLW.jpg �)/logos/PAK.jpg �)/logos/OMA.jpg �)/logos/NOR.jpg �)/logos/MKD.jpg �)/logos/NGR.jpg �)/logos/NIG.jpg �)/logos/NCA.jpg �)/logos/NZL.jpg �)/logos/NED.jpg �)/logos/NEP.jpg �)/logos/NRU.jpg �)/logos/NAM.jpg �)/logos/MYA.jpg)/logos/MOZ.jpg~)/logos/MAR.jpg})/logos/MNE.jpg|)/logos/MGL.jpg{)/logos/MON.jpgz)/logos/MEX.jpgy)/logos/MRI.jpgx)/logos/MTN.jpgw)/logos/MHL.jpgv)/logos/MLT.jpgu)/logos/MLI.jpgt)/logos/MDV.jpgs)/logos/MAS.jpgr)/logos/MAW.jpgq)/logos/MAD.jpgp)/logos/LUX.jpgo)/logos/LTU.jpgn)/logos/LIE.jpgm)/logos/LBA.jpgl)/logos/LBR.jpgk)/logos/LES.jpgj)/logos/lbn.jpgi)/logos/LAT.jpgh)/logos/LAO.jpgg)/logos/KGZ.jpgf)/logos/KUW.jpge)/logos/KOS.jpgd)/logos/KIR.jpgc)/logos/KEN.jpgb)/logos/KAZ.jpga)/logos/JOR.jpg`)/logos/JPN.jpg_)/logos/JAM.jpg^)/logos/ITA.jpg])/logos/ISR.jpg\)/logos/IRI.jpg[)/logos/IRL.jpgZ)/logos/IRQ.jpgY)/logos/INA.jpgX)/logos/IND.jpgW)/logos/ISL.jpgV)/logos/HUN.jpgU)/logos/HKG.jpgT)/logos/HON.jpgS)/logos/HAI.jpgR)/logos/GUY.jpgQ)/logos/GBS.jpgP)/logos/GUI.jpgO)/logos/GUA.jpgN)/logos/GUM.jpgM)/logos/GRN.jpgL)/logos/GRE.jpgK)/logos/GBR.jpgJ)/logos/GHA.jpgI)/logos/GER.jpgH)/logos/GEO.jpgG)/logos/GAM.jpgF)/logos/GAB.jpgE)/logos/FRA.jpgD)/logos/FIN.jpgC)/logos/FIJ.jpgB)/logos/FSM.jpgA)/logos/ETH.jpg@)/logos/SWZ.jpg?)/logos/EST.jpg>)/logos/ERI.jpg=)/logos/GEQ.jpg<)/logos/ESA.jpg;)/logos/EGY.jpg:)/logos/ECU.jpg9)/logos/DMA.jpg8)/logos/DOM.jpg7)/logos/DJI.jpg6)/logos/DEN.jpg5)/logos/COD.jpg4)/logos/PRK.jpg3)/logos/CZE.jpg2)/logos/CYP.jpg1)/logos/CUB.jpg0)/logos/CRO.jpg/)/logos/CIV.jpg.)/logos/CRC.jpg-)/logos/COK.jpg,)/logos/CGO.jpg+)/logos/COM.jpg*)/logos/COL.jpg))/logos/TPE.jpg()/logos/CHI.jpg')/logos/CHA.jpg&)/logos/CAF.jpg%)/logos/CAY.jpg$)/logos/CPV.jpg#)/logos/CAN.jpg")/logos/CMR.jpg!)/logos/CAM.jpg )/logos/BDI.jpg)/logos/BUR.jpg)/logos/BUL.jpg)/logos/BRU.jpg)/logos/BRA.jpg)/logos/BOT.jpg)/logos/BIH.jpg)/logos/BOL.jpg)/logos/BHU.jpg)/logos/BER.jpg)/logos/BEN.jpg)/logos/BIZ.jpg)/logos/BEL.jpg)/logos/BLR.jpg)/logos/BAR.jpg)/logos/BAN.jpg)/logos/BRN.jpg)/logos/BAH.jpg)/logos/AZE.jpg)/logos/AUT.jpg)/logos/AUS.jpg)/logos/ARU.jpg
)/logos/ARM.jpg	)/logos/ARG.jpg)/logos/ANT.jpg)/logos/ANG.jpg)/logos/AND.jpg)/logos/ASA.jpg)/logos/ALG.jpg)/logos/ALB   ()/logos/KGZ.jpgf   �    +��������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80( ���������������xof]TKB90'
�
�
�
�
�
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
	�	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&���    �oBEN�nLBA�mMAW�lGAM�kDJI�jSUD�iPLE�hSLE�gURU�fCOM�eKIR�dCHA�cANG�bZIM�aBOL�`GUI�_GUM�^GBS�]MDV�\SUR�[HON�ZTGA�YNIG�XGAB�WCIV�VMLI�UAND�TMON�SFIJ�RTOG�QVAN�PSYR�OBER�NLIE�MPNG�LANT�KESA�JSOM�ICPV�HBOT�GBDI�FGUY�EKEN�DGHA�CTJK�BCOD�AHAI�@CMR�?ZAM�>UGA�=SWZ�<MRI�;PAN�:BUR�9RWA�8HKG�7NAM�6PAR�5CRC�4LUX�3TTO�2ERI�1ETH�0BIZ�/MOZ�.COK�-SAM�,STP�+NGR�*RSA�)NED�(DOM�'JAM�&UAE�%SWE�$KSA�#ISL�"NCA�!VIE� MYA�ARU�MKD�BRA�MDA�CAN�MLT�ARM�MNE�GEO�TUN�YEM�JOR�LAT�ALB�GRE�ECU�IRQ�BUL�FIN�LBN�GUA�
CHI�	NZL�SEN�BRN�MAR�CYP�KUW�QAT�POR�IRL� EOR�NEP�~BIH�}KGZ�|SRI�{ALG�zBHU�yBEL�xSGP�wROU�vKOS�uAFG�tBAN�sTPE�rAUT�qPHI�pISR�oTHA�nPAK�mPER�lAZE�kCOL�jEST�iLTU�hVEN�gKAZ�fTUR�eARG�dOMA�cUKR�bCRO�aDEN�`IND�_FRA�^CUB�]HUN�\SLO�[MAS�ZUZB�YKOR�XPOL�WPUR�VMGL�UCZE�TINA�SGER�RSRB�QNOR�PSUI�OIRI�NBLR�MEGY�LMEX�KITA�JROC�IGBR�HCHN�GAUS�FJPN�ESVK�DUSA�CSMR�BESP�A	CAM�@	IRL�?	PRK�>	LCA�=	GRN�<	DMA�;	BAH�:	LBR�9	TAN�8	LES�7	IVB�6	ASA�5	NRU�4	SOL�3	ISV�2	TKM�1	MAD�0	LAO�/	SEY�.	BEN�-	LBA�,	MAW�+	GAM�*	DJI�)	SUD�(	PLE�'	SLE�&	URU�%	COM�$	KIR�#	CHA�"	ANG�!	ZIM� 	BOL�	GUI�	GUM�	GBS�	MDV�	SUR�	HON�	TGA�	NIG�	GAB�	CIV�	MLI�	AND�	MON�	FIJ�	TOG�	VAN�	SYR�	BER�	LIE�	PNG�	ANT�
	ESA�		SOM�	CPV�	BOT�	BDI�	GUY�	KEN�	GHA�	TJK�	COD� 	HAI	CMR~	ZAM}	UGA|	SWZ{	MRIz	PANy	BURx	RWAw	HKGv	NAMu	PARt	CRCs	LUXr	TTOq	ERIp	ETHo	BIZn	MOZm	COKl	SAMk	STPj	NGRi	RSAh	NEDg	DOMf	JAMe	UAEd	SWEc	KSAb	ISLa	NCA`	VIE_	MYA^	ARU]	MKD\	BRA[	MDAZ	CANY	MLTX	ARMW	MNEV	GEOU	TUNT	YEMS	JORR	LATQ	ALBP	GREO	ECUN	IRQM	BULL	FINK	LBNJ	GUAI	CHIH	NZLG	SENF	BRNE	MARD	CYPC	KUWB	QATA	POR@	IRL?	EOR>	NEP=	BIH<	KGZ;	SRI:	ALG9	BHU8	BEL7	SGP6	ROU5	KOS4	AFG3	BAN2	TPE1	AUT0	PHI/	ISR.	THA-	PAK,	PER+	AZE*	COL)	EST(	LTU'	VEN&	KAZ%	TUR$	ARG#	OMA"	UKR!	CRO 	DEN	IND	FRA	CUB	HUN	SLO	MAS	UZB	KOR	POL	PUR	MGL	CZE	INA	GER	SRB	NOR	SUI	IRI	BLR	EGY	MEX
	ITA		ROC	GBR	CHN	AUS	JPN	SVK	USA	SMR   *�o   2�    p���������������������|vpjd^XRLF@:4.("
��������
	�	�	�	�	r	P	4		 ����vZA$
�����hP*����}aH0�����lR9�����[A%����|cL/�����sX?���zS/                             !�7 �USAHenry Turner LEVERETT�$�= �USAJack Hobson LEVERETT III�"�9 �PAKMuhammad Khalil AKHTAR��/ �FRAClement BESSAGUET�&�A �THAIsaranuudom PHURIHIRANPHAT�� ' �ROCLeonid EKIMOV�%TUROzgur VARLIK� ~7~PAKGhulam Mustafa BASHIR�}%}KORJong-Ho SONG�|)|PERMarko CARRILLO�{#{GEROliver GEIS�z%zAZERuslan LUNEV�y!yCHNYuehong LI�x%xJPNDai YOSHIOKA�w+wGERChristian REITZ�v5vCOLBernardo TOBAR PRADO�u/uITARiccardo MAZZETTI�t-tAUSSergei EVGLEVSKI�s!sCHNJunmin LIN�r%rESTPeeter OLESK�q'qCUBJorge ALVAREZ�p5pMGLDavaakhuu ENKHTAIVAN�o-oFRAJean QUIQUAMPOIX�n#nCUBLeuris PUPO�m#mKORDaeyoon HAN�l5lBLRYury SHCHERBATSEVICH�k+kLTUKarolis GIRULIS�j'jITALorenzo BACCI�&iCiVENJulio Cesar IEMMA HERNANDEZ�h!hKORSangdo KIM�g'gAUSJack ROSSITER�f%fHUNZalan PEKLERe/eMEXJose Luis SANCHEZ�d'dCROMiran MARICIC�c'cNORHenrik LARSEN�b+bITAMarco DE NICOLO�a%aKAZYuriy YURKOV�`'`SRBMilenko SEBIC�_-_USANickolaus MOWRER�^)^CZEPetr NYMBURSKY�]1]JPNTakayuki MATSUMOTO�\'\CHNZhonghao ZHAO�[-[NORJon-Hermann HEGG�Z#ZSVKPatrik JANY�Y/YUSAPatrick SUNDERMAN�X#XJPNNaoya OKADA�W%WUKROleh TSARKOV�V+VCZEJiri PRIVRATSKY�U)UPOLTomasz BARTNIK�T!TTUROmer AKGUN�&SCSINDAishwary Pratap Singh TOMAR�R1RSRBMilutin STEFANOVIC�Q%QAUSDane SAMPSON�P)PINDSanjeev RAJPUT�$O?OARGAlexis Exequiel EBERHARDT�N#NCROPetar GORSA�M'MDENSteffen OLSEN�L+LCHNChanghong ZHANGK3KOMAHamed Said ALKHATRI�J+JIRIMahyar SEDAGHAT�I#IHUNIstvan PENI�H'HEGYOsama ELSAEID�G'GUKRSerhiy KULISH�F-FROCSergey KAMENSKIY�E%EROCYulia ZYKOVA�D+DCROSnjezana PEJCIC�C-CINDTejaswini SAWANT�B/BDENRikke Maeng IBSEN�A'AINDAnjum MOUDGIL�@'@JPNShiori HIRATA�?)?FRAOceanne MULLER�>!>CUBEglys CRUZ�=-=ITASofia CECCARELLO�<+<HUNEszter MESZAROS� ;7;AUSKatarina Rose KOWPLOS�:5:USAMary Carolynn TUCKER�9%9SLOZiva DVORSAK� 878NORJeanette Hegg DUESTAD�$7?7MASNur Suryani MOHAMED TAIBI�6#6KORSanghee BAE�515IRIFatemeh KARAMZADEH�434UZBMukhtasar TOKHIROVA�3-3GBRSeonaid MCINTOSH�2%2KOREunyoung CHO�1/1POLAneta STANKIEWICZ�#0=0PURYarimar MERCADO MARTINEZ�/+/MGLYesugen OYUNBAT�.+.EGYAlzahraa SHABAN�-#-CHNMengyao SHI�,+,CZENikola MAZUROVA�+/+SRBSanja VUKASINOVIC�(*G*INAVidya Rafika Rahmatan TOYYIBA�)!)GERJolyn BEER�()(SRBAndrea ARSOVIC�'#'NORJenny STENE�&'&SUINina CHRISTEN�%+%IRINajmeh KHEDMATI�$)$ROCYulia KARIMOVA�#+#BLRMaria MARTYNOVA�"+"USASagen MADDALENA�!#!CHNDongqi CHEN� 1 EGYAbdel Aziz MEHELBA�'EGYMaggy ASHMAWY�#=MEXJorge Martin OROZCO DIAZ�&CMEXAlejandra RAMIREZ CABALLERO�+ROCMaxim KABATSKIY�3ROCEkaterina SUBBOTINA�1USADerrick Scott MEIN�)USAKayle BROWNING�/ITAMauro DE FILIPPIS�'ITAJessica ROSSI�'ROCAlexey ALIPOV�+ROCDaria SEMIANOVA�%AGBRMatthew John COWARD HOLLEY�)GBRKirsty HEGARTY�#CHNHaicheng YU�'CHNXiaojing WANG�+SVKMarian KOVACOCY�)SVKJana SPOTAKOVA�'AUSJames WILLETT�-AUSLaetisha SCANLAN�1AUSThomas Derek GRICE�#   n�p   m�f   l�^   j�Y   i�\   h�]   f�]   e�\   d�]   b�^   a�Y   _�V   ^�V   ]�S   [�R   Z�S   Y�R   W�S   V�Q   U�V   S�]   R�j   Q�j   O�h   N�i   M�i   K�i   J�e   H�a   G�a   F�j   D�u   C�y   B�u   @�r   ?�p   >�r   <�u   ;�q   :�j   8�i   7�n   6�v   4�~   3�   2�   /�   .�   -�   ,�   4    o����������|pdXL@4��~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
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
		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$   k��   g{z   c   `��   \IH   X��   T}|   P   L��   IKJ   E	�	�   A~~   =   9��   5LL   1��   0��   #.    ����������������������|vpjd^XRLF@:4.�������nZF3������}iUA-
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
!   ��   ��m   ��D   ��   ��s   ��K   ��"   ��x   ��P   ��)   ��    ��Y   ��4   ��   ��d   ��:   ��   ��f   ��;   ��   ��i   ��@   ��   ��p   ��I   ~�    }�x   {�P   z�'   y�}   w�S   v�+   s�   r�Z   q�3   @    �����������|pdXL@���~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
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
		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""   �HG   �   ���   �IH   ���   �}|   �   ���   �KJ   �	�	�   �~~      |��   xLL   u��   t��  uL ���������������������|vpjd^XRLF@:4.("
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

	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�		x	q	j	c	\	U	N	G	@	9	2	+	$					������������������|ung`YRKD=6/(!�������������������yrkd]VOHA:3,%	������������������}vohaZSL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          �u�t�s�r �q��p��o��n��m��l��k��j��i��h��g��f��e��d��c��b��a��`��_��^��]��\��[��Z��Y��X��W��V��U��T��S��R��Q��P��O��N��M��L��K��J��I��H��G��F��E��D��C��B��A��@��?��>��=��<��;��:��9��8��7��6��5��4��3��2��1��0��/��.��-��,��+��*��)��(��'��&��%��$��#��"��!�� ��������������������������������������������
��	������������������ ����~��}��|��{��z��y��x�w~�v}�u|�t{�sz�ry�qx�pw�ov�nu�mt�ls�kr�jq�ip�ho�gn�fm�el�dk�cj�bi�ah�`g�_f�^e�]d�\c�[b�Za�Y`�X_�W^�V]�U\�T[�SZ�RY�QX�PW�OV�NU�MT�LS�KR�JQ�IP�HO�GN�FM�EL�DK�CJ�BI�AH�@G�?F�>E�=D�<C�;B�:A�9@�8?�7>�6=�5<�4;�3:�29�18�07�/6�.5�-4�,3�+2�*1�)0�(/�'.�&-�%,�$+�#*�")�!(� '�&�%�$�#�"�!� ���������������
�	������
�	�� ~}|{zy x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	���������
  u� ������������������|ung`YRKD=6/(!�������������������yrkd]VOHA:3,%	������������������}vohaZSLE>70)"�������������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
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
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  �����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      uts r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	��������� � �� �� �� �� �� �� � �~ �} �| �{ �z �y �x �w �v �u �t �s �r �q �p �o �n �m �l �k �j �i �h �g �f �e �d �c �b �a �` �_ �^ �] �\ �[ �Z �Y �X �W �V �U �T �S �R �Q �P �O �N �M �L �K �J �I �H �G �F �E �D �C �B �A �@ �? �> �= �< �; �: �9 �8 �7 �6 �5 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �% �$ �# �" �! �  � � � � � � � � � � � � � � � � � � � � � �
 �	 � � �~}|{z y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
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
	�	�	�	�	�	�	�	�	�	�	�	�	y	n	c	X	M	B	7	*			����������tgZK<-��������{iWE3$��������o_SG7'�����������{ocWI;-������hM?1#���������uaRC4%��������{k[K;+��             �k �Shooting�j �Shooting�i �Shooting�h �Shooting�g �Shooting�f �Shooting�e �Shooting�d �Shooting�c �Shooting�b �Shooting�a �Shooting�` �Shooting�_ �Shooting�^ �Shooting�] �Sailing�\ �Sailing�[ �Sailing�Z �Sailing�Y �Sailing�X �Sailing�W �Sailing�V �Sailing�U �Sailing�T �Sailing�S% �Rugby Sevens�R% �Rugby Sevens�Q �Rowing�P �Rowing�O �Rowing�N �Rowing�M �Rowing�L �Rowing�K �Rowing�J �Rowing�I �Rowing�H �Rowing�G �Rowing�F �Rowing�E �Rowing�D �Rowing�C3 �Rhythmic Gymnastics�B3 �Rhythmic Gymnastics�A/ �Modern Pentathlon�@/ �Modern Pentathlon�?/ �Marathon Swimming�>/ �Marathon Swimming�= �Karate�< �Karate�; �Karate�: �Karate�9 �Karate�8 �Karate�7 �Karate�6 �Karate	�5 �Judo	�4 �Judo	�3 �Judo	�2 �Judo	�1 �Judo	�0 �Judo	�/ �Judo	�. �Judo	�- �Judo	�, �Judo	�+ �Judo	�* �Judo	�) �Judo	�( �Judo	�' �Judo�& �Hockey�% �Hockey�$ �Handball�# �Handball	�" �Golf	�! �Golf�  �Football� �Football� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian� �Diving� �Diving�
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
  O� ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
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
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  POONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

				   �    ��������������wof]TKB91) ���������������~vnf^VNE<4,$
���������������{skcZQH@80(  ���������������xpg_WNF=4,$
��������������}sjaXOE;1'
�
�
�
�
�
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
[
Q
H
?
5
,
#


	�	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	]	T	J	@	6	,	#			��������������wmcYOF=3*!�������������|sjaXND:0&
 �������������|rh^TJ@6-#�������������}tjaXOF=3)�������������zqh_VMC9/%�������������ukaWMC9/&���        �m� ��l�/�k�.�j� ��i� ��h� ��g�N�f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^�1�]� ��\� ��[� ��Z� ��Y� ��X� ��W��V�/�U�.�T� ��S ��R~P�Q~O�P}�O| ��N| ��M{ ��L{ ��Kz/�Jz.�IyN�Hx�Gx�FwP�EwO�Dv.�Cu�BtN�As ��@r/�?r.�>q�=q�<p ��;oP�:n ��9m0�8l ��7l ��6k ��5k ��4j ��3i ��2h/�1h.�0gM�/fP�.fO�-eP�,eO�+d1�*c�)c�(b ��'a ��&a ��%` ��$_ ��#_ ��"^ ��!] �� \ ��[ ��Z�Z�YN�X ��W ��V/�V.�U�T/�T.�S ��R ��Q ��Q ��P ��ON�N ��MP�MO�L�
KP�	KO�J�I/�H ��G ��FN�E ��D ��C �� C ��B�~B�}A ��|A ��{@/�z? ��y> ��x=P�w=O�v<P�u<O�t; ��s; ��r: ��q: ��p91�o8 ��n7 ��m7 ��l6�k5�j5�i4�h3/�g2/�f2.�e1 ��d0N�c/�b/�a. ��`-�_,N�^+ ��]+ ��\* ��[* ��Z) ��Y(/�X' ��W' ��V&P�U&O�T%�S$ ��R$ ��Q# ��P"�O"�N!/�M!.�L  ��K�JP�IO�H�G ��F ��E ��D/�C�B�A/�@ ��? ��>N�=N�<P�;O�:�9�8�71�6.�5 ��4 ��3 ��2 ��1
P�0
O�/	P�.P�-O�,O�+ ��*�)�( ��' ��&�%�$ ��# P�" O�!�N� �P��O��P��.��/��.��P��O��M��N��N�� �����P��O�� ���/��/��/��P��O��P�
�O�	�/��O������.��1������P� �P�O~�P}�O|�P{�Oz� �y�/x�.w�.v�Pu�Ot�Ns� �r� �q�Op�0o�n�m�0l�k� �j�i�.h� �g�Nf� �e� �d� �c� �b�a�`�_� �^�O]�\�[�Z�MY�PX�OW�V�PU�OT�PS�OR� �Q� �P� �O�PN�OM�NL�K�J�I� �H� �G� �F�OE� �D�C�B�A�P@�O?� �>�O=� �<� �;�:� �9�.8�7�6�5� �4� �3�O2�O1�P0�O/�P.�O-� �,�.+� �*� �)�(�'�&�%�P$�O#�"� �!� � � �� �� ��P�O�/�.��� �� �� ��.� �� ��N� �� �� ��O��P
�O	� �� �� �� ��M� �� ��P   ��m   �    ��������������������RJB:2*"
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
 �	 �	 � �   ��=   ��d   ��   ��1   ��>   ��K   ��v   ��   ��?   ��a   ��   ��3   ��S   ��p   ��   ��*   ��7   ��H   ��t   �    ���H$ ���pL(���tP,����tX<����uY=!
�
�
�
�
s
V
9

 	�	�	�	�	o	R	5	�����lO2�����gJ-����bE(����z]@#����]:����hE"�����hM2�����oR5                        |!; �OBHeats07/24/2021{!< �OBHeats07/24/2021z!� �OBHeats07/23/2021y!� �OBHeats07/23/2021x!� �OBHeats07/23/2021w!� �OBHeats07/23/2021v!reOBHeat08/06/2021u!seOBHeat08/06/2021t!dOBHeat08/04/2021s!dOBHeat08/04/2021r!�mOBHeat08/06/2021q!�mOBHeat08/06/2021p!�hOBHeat08/04/2021o!0kOBHeat08/04/2021n!1kOBHeat08/04/2021!m#!{ �WRFirst round08/02/2021!l#!k �WRFirst round08/02/2021!k#! �WRFirst round08/03/2021!j#! �WRFirst round08/03/2021!i#!� �WRFirst round08/03/2021!h#!� �WRFirst round08/03/2021!g#!~ �WRFirst round08/03/2021!f#!H �ORFirst round08/03/2021!e#!J �ORFirst round08/03/2021!d#![ �ORFirst round08/03/2021!c#!Y �ORFirst round08/03/2021!b#!K �ORFirst round08/03/2021!a#!g �ORFirst round08/03/2021!`#!` �ORFirst round08/03/2021!_#!� �ORFirst round08/03/2021!^#! �WRFirst round08/03/2021]! �WRFinal08/03/2021\!� �WRFinal08/03/2021[!� �WRFinal08/03/2021Z!J �ORFinal08/03/2021Y!Y �ORFinal08/03/2021X! �WRFinal08/04/2021W!�ORFinal08/01/2021V!�WRFinal07/29/2021U!%WRFinal07/29/2021T!WRFinal07/29/2021S!#WRFinal07/29/2021R!�ORFinal08/01/2021Q!�ORFinal08/01/2021P!�ORFinal08/01/2021O!�
WRFinal07/25/2021N!�
WRFinal07/25/2021M!�ORFinal07/28/2021L!�ORFinal07/29/2021K!�WRFinal07/30/2021J!� �ORFinal07/25/2021I!� �ORFinal07/30/2021H!� �ORFinal07/27/2021G!WRFinal07/31/2021F!WRFinal07/31/2021E!�WRFinal07/31/2021D!�ORFinal08/01/2021C!�WRFinal08/01/2021B!�WRFinal08/01/2021A!�WRFinal08/01/2021@!�ORFinal07/28/2021?!�ORFinal07/29/2021>!� �ORFinal07/30/2021=!� �ORFinal07/29/2021<!� �WRFinal07/31/2021;!	K �WRFinal08/06/2021:! �ORFinal07/29/20219! � �ORFinal07/26/20218!& �ORFinal07/31/20217!! �ORFinal07/30/20216! � �ORFinal07/30/20215! � �ORFinal07/24/20214! � �ORFinal07/25/20213! � �ORFinal07/29/20212! � �ORFinal07/29/20211!W �ORFinal07/26/20210!L �WRFinal08/02/2021/! � �ORFinal07/25/2021.!2 �ORFinal07/24/2021-!d �OBFinal07/30/2021,!; �OBFinal07/28/2021+!< �OBFinal07/28/2021*!� �OBFinal07/28/2021)!� �OBFinal07/30/2021(!� �OBFinal07/28/2021'!� �OBFinal07/28/2021&!nlOBFinal08/03/2021%!niOBFinal08/03/2021$!reOBFinal08/07/2021#!seOBFinal08/07/2021"!7gOBFinal08/03/2021!!eOBFinal08/03/2021 !eOBFinal08/03/2021!�GWRFinal01/08/2021!�.WRFinal04/08/2021!!WU20RFinal03/08/2021!UORFinal06/08/2021!|ORFinal31/07/2021!�)ORFinal31/07/2021!|DORFinal05/08/2021!�-WRFinal03/08/2021!}ORFinal07/08/2021"%!: �ORFencing (BR)08/06/2021"%!�7ORClean & Jerk07/27/2021"%!z6ORClean & Jerk07/26/2021"%!z6ORClean & Jerk07/26/2021"%!w6ORClean & Jerk07/26/2021"%!w6ORClean & Jerk07/26/2021"%!�5ORClean & Jerk07/24/2021"%!�5ORClean & Jerk07/24/2021"%!�5ORClean & Jerk07/24/2021"%!�3ORClean & Jerk08/02/2021"%!�3ORClean & Jerk08/02/2021"%!�>ORClean & Jerk07/31/2021"
%!�=ORClean & Jerk07/31/2021"	%!�=ORClean & Jerk07/31/2021"%!�;ORClean & Jerk07/28/2021"%!�:ORClean & Jerk07/25/2021"%!t8ORClean & Jerk07/25/2021"%!4ORClean & Jerk08/03/2021"%!�2WRClean & Jerk08/04/2021"%!�2ORClean & Jerk08/04/2021(1!�4ODB110 metres hurdles05/08/2021 !!�4WDB100 metre   ��p   �|   �    ����|bJ3�������}gXG9)������qbQ9+������nW>+������tcP5
�
�
�
�
�
�
e
H
.
	�	�	�	�	�	~	b	G	*	�����gT?&������iP7�������xbJ6!������~kVC0!�����yiWA)�������fJ1�����ueSC1�����yZ�)/ �100m BreaststrokeWomen�(/ �100m BreaststrokeMen�'+ �100m BackstrokeWomen�&+ �100m BackstrokeMen�% �WomenWomen�$ �CombinedWomen�# �CombinedMen�" �StreetWomen�! �StreetMen�  �ParkWomen� �ParkMen� �TrapWomen� �TrapMen� �SkeetWomen� �SkeetMen �7 �50m Rifle 3 PositionsWomen�7 �50m Rifle 3 PositionsMen�7 �25m Rapid Fire PistolMen�! �25m PistolWomen�' �10m Air RifleWomen�' �10m Air RifleMen�) �10m Air PistolWomen�) �10m Air PistolMen� �RS:XWomen� �RS:XMen�% �Laser RadialWomen� �LaserMen� �FinnMen�' �Single ScullsWomen�' �Single ScullsMen�! �All-AroundWomen�
! �IndividualWomen�	! �IndividualMen� �10kmWomen� �10kmMen�% �Kumite -75kgMen�% �Kumite -67kgMen�% �Kumite -61kgWomen�% �Kumite -55kgWomen�% �Kumite +75kgMen�% �Kumite +61kgWomen�  �KataWomen �KataMen~ �(-90 kg)Men} �(-81 kg)Men| �(-78 kg)Women{ �(-73 kg)Menz �(-70 kg)Womeny �(-66 kg)Menx �(-63 kg)Womenw �(-60 kg)Menv �(-57 kg)Womenu �(-52 kg)Woment �(-48 kg)Womens �(-100 kg)Menr �(+78 kg)Womenq �(+100 kg)Menp# �Stroke PlayWomeno# �Stroke PlayMenn �SabreWomenm �SabreMenl �FoilWomenk �FoilMenj �ÉpéeWomeni �ÉpéeMenh �JumpingMixedg �EventingMixedf �DressageMixede) �3m SpringboardWomend) �3m SpringboardMenc% �10m PlatformWomenb% �10m PlatformMena% �Track SprintWomen`%Track SprintMen_%~Track OmniumWomen^%}Track OmniumMen]%zTrack KeirinWomen\%yTrack KeirinMen[+xRoad Time TrialWomenZ+wRoad Time TrialMenYvRoad RaceWomenXuRoad RaceMen%WCtMountain Bike Cross-countryWomen#VCsMountain Bike Cross-countryMenU!rBMX RacingWomenT!qBMX RacingMenS'pBMX FreestyleWomenR'oBMX FreestyleMenQ/jSprint Kayak 500mWomenP/iSprint Kayak 200mWomenO/hSprint Kayak 200mMenN1gSprint Kayak 1000mMenM/dSprint Canoe 200mWomenL1cSprint Canoe 1000mMenK%bSlalom KayakWomenJ%aSlalom KayakMenI%`Slalom CanoeWomenH#_SlalomCanoeMenG-^Welter (64-69kg)WomenF-]Welter (63-69kg)MenE3\Super Heavy (+91kg)MenD-[Middle (69-75kg)WomenC-ZMiddle (69-75kg)MenB+YLight (57-63kg)MenA+XLight (57-60kg)Women@+WHeavy (81-91kg)Men?'VFly (48-52kg)Men>'UFly (48-51kg)Women=/TFeather (54-57kg)Women</SFeather (52-57kg)Men;LSinglesWomen:KSinglesMen9#GTriple JumpWomen8#FTriple JumpMen7EShot PutWomen6DShot PutMen5!CPole VaultWomen4!BPole VaultMen3AMarathonWomen2@MarathonMen1?Long JumpWomen0>Long JumpMen/'=Javelin ThrowWomen.'<Javelin ThrowMen-;High JumpWomen,:High JumpMen+!9HeptathlonWomen*%8Hammer ThrowWomen)%7Hammer ThrowMen(%6Discus ThrowWomen'%5Discus ThrowMen&4DecathlonMen%3800mWomen$2800mMen#)150km Race WalkMen"05000mWomen!/5000mMen %.400m HurdlesWomen%-400m HurdlesMen,400mWomen+400mMen1%3000m SteeplechaseWomen1$3000m SteeplechaseMen)#20km Race WalkWomen)"20km Race WalkMen!200mWomen 200mMen1500mWomen1500mMen%110m HurdlesMen%100m HurdlesWomen100mWomen100mMen10,000mWomen10,000mMenVaultWomenVaultMen#Uneven BarsWomenRingsMen
%Pommel HorseMen	'Parallel BarsMen)Horizontal BarMen)Floor ExerciseWomen)Floor ExerciseMen%
Balance BeamWomen!	All-AroundWomen!All-AroundMen!IndividualWomen!Individ   ��)   _� ��������w_E-�������~q`=����y`C$���zR=(������}k]K=+
�
�
�
�
�
�
k
E
6
%

	�	�	�	�	�	�	�	w	\	B	1	����]I:)������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       _1WomenWomen^0MenMen]/WomenWomen\.MenMen[,RelayMixedZ&DoublesWomenY%DoublesMixedX$DoublesMenWTeamWomenVTeamMenUDoublesMixed#T=4 x 200m Freestyle RelayWomen!S=4 x 200m Freestyle RelayMen R74 x 100m Medley RelayWomen Q74 x 100m Medley RelayMixed#P=
4 x 100m Freestyle RelayWomen!O=	4 x 100m Freestyle RelayMenN �TrapMixedM' �10m Air RifleMixedL) �10m Air PistolMixedK �Nacra 17MixedJ �49er FXWomenI �49erMenH �470WomenG �470MenF �WomenWomenE �MenMenD- �Quadruple ScullsWomenC- �Quadruple ScullsMenB �PairWomenA �PairMen$@? �Lightweight Double ScullsWomen"?? �Lightweight Double ScullsMen> �FourWomen= �FourMen< �EightWomen; �EightMen:' �Double ScullsWomen9' �Double ScullsMen8! �All-AroundWomen7 �TeamMixed6 �WomenWomen5 �MenMen4 �WomenWomen3 �MenMen2 �WomenWomen1 �MenMen0! �Sabre TeamWomen/! �Sabre TeamMen. �Foil TeamWomen- �Foil TeamMen,# �Épée TeamWomen+# �Épée TeamMen*% �Jumping TeamMixed) �EventingMixed( �DressageMixed&'C �Synchronised 3m SpringboardWomen$&C �Synchronised 3m SpringboardMen$%? �Synchronised 10m PlatformWomen"$? �Synchronised 10m PlatformMen#/ �Track Team SprintWomen"/ �Track Team SprintMen!1 �Track Team PursuitWomen 1 �Track Team PursuitMen'|Track MadisonWomen'{Track MadisonMen 9nSprint Kayak Four 500mWomen9mSprint Kayak Four 500mMen"=lSprint Kayak Double 500mWomen!?kSprint Kayak Double 1000mMen"=fSprint Canoe Double 500mWomen!?eSprint Canoe Double 1000mMenRWomenWomenQMenMenPWomenWomenOMenMenNSoftballWomenMBaseballMenJDoublesWomenIDoublesMixedHDoublesMen)*4 x 400m RelayWomen))4 x 400m RelayMixed)(4 x 400m RelayMen)'4 x 100m RelayWomen
)&4 x 100m RelayMen	TeamWomenDuetWomenTeamWomenTeamMenTeamWomenTeamMixedTeamMenWomenWomen
	MenMen   �    ����kR8�����hN4 ����|bH.�����x^D*�����tZ@&
�
�
�
�
�
p
V
<
"
	�	�	�	�	�	l	R	8		�����hN4 ����~dJ0�����zaH/�����tY>#�����jQ8�����hM2�����jN2�����nR6              �! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�
! �7/25/202108/07/2021�	! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�!! �08/02/202108/08/2021�!! �08/02/202108/08/2021�!! �08/02/202108/08/2021�!! �08/02/202108/08/2021� !! �08/02/202108/08/2021!!08/02/202108/08/2021~!!~08/02/202108/08/2021}!!}08/02/202108/08/2021|!!|08/02/202108/08/2021{!!{08/02/202108/08/2021z!!z08/02/202108/08/2021y!!y08/02/202108/08/2021xx7/24/20217/28/2021ww7/24/20217/28/2021vv7/24/20217/28/2021uu7/24/20217/28/2021tt7/25/20217/26/2021ss7/25/20217/26/2021r!r7/29/202108/01/2021q!q7/29/202108/01/2021p!p7/29/202108/01/2021o!o7/29/202108/01/2021n!!n08/02/202108/07/2021m!!m08/02/202108/07/2021l!!l08/02/202108/07/2021k!!k08/02/202108/07/2021j!!j08/02/202108/07/2021i!!i08/02/202108/07/2021h!!h08/02/202108/07/2021g!!g08/02/202108/07/2021f!!f08/02/202108/07/2021e!!e08/02/202108/07/2021d!!d08/02/202108/07/2021c!!c08/02/202108/07/2021bb7/25/20217/29/2021aa7/25/20217/29/2021``7/25/20217/29/2021__7/25/20217/29/2021^!^7/25/202108/08/2021]!]7/25/202108/08/2021\!\7/25/202108/08/2021[![7/25/202108/08/2021Z!Z7/25/202108/08/2021Y!Y7/25/202108/08/2021X!X7/25/202108/08/2021W!W7/25/202108/08/2021V!V7/25/202108/08/2021U!U7/25/202108/08/2021T!T7/25/202108/08/2021S!S7/25/202108/08/2021R!R7/24/202108/07/2021Q!Q7/24/202108/07/2021P!P7/25/202108/08/2021O!O7/25/202108/08/2021N!N7/21/202108/07/2021M!M7/21/202108/07/2021L!L7/25/202108/02/2021K!K7/25/202108/02/2021J!J7/25/202108/02/2021I!I7/25/202108/02/2021H!H7/25/202108/02/2021G!G7/30/202108/08/2021F!F7/30/202108/08/2021E!E7/30/202108/08/2021D!D7/30/202108/08/2021C!C7/30/202108/08/2021B!B7/30/202108/08/2021A!A7/30/202108/08/2021@!@7/30/202108/08/2021?!?7/30/202108/08/2021>!>7/30/202108/08/2021=!=7/30/202108/08/2021<!<7/30/202108/08/2021;!;7/30/202108/08/2021:!:7/30/202108/08/20219!97/30/202108/08/20218!87/30/202108/08/20217!77/30/202108/08/20216!67/30/202108/08/20215!57/30/202108/08/20214!47/30/202108/08/20213!37/30/202108/08/20212!27/30/202108/08/20211!17/30/202108/08/20210!07/30/202108/08/2021/!/7/30/202108/08/2021.!.7/30/202108/08/2021-!-7/30/202108/08/2021,!,7/30/202108/08/2021+!+7/30/202108/08/2021*!*7/30/202108/08/2021)!)7/30/202108/08/2021(!(7/30/202108/08/2021'!'7/30/202108/08/2021&!&7/30/202108/08/2021%!%7/30/202108/08/2021$!$7/30/202108/08/2021#!#7/30/202108/08/2021"!"7/30/202108/08/2021!!!7/30/202108/08/2021 ! 7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!!08/02/202108/07/2021!!08/02/202108/07/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021
!
7/24/202108/03/2021	!	7/24/202108/03/2021!7/24/202108/03/20217/23/20217/31/20217/23/20217/31/20217/23/20217/31/20217/23/20217/31/20217/23/20217/31/20217/25/20217/28/2021	7/25/2   Ă   Á
  O� ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
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
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  POONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

		   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

				  c� ������������������~wpib[TMF?81*# ������������������{tmf_XQJC<5.' ������������������xqjc\UNG@92+$������������������zrjbZQH?6-$	 ��������������ypg^ULC:1(
�
�
�
�
�
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
�������������                                                                                                                                                                                                                                                                                                                                                                                                                                                              �cP-�bO-�aN-�`M-�_L-�^K-�]J-�\I-�[H-�ZG-�YF-�XE-�WD-�VC-�UB-�TA-�S@-�R?-�Q>1�P=1�O<1�N;1�M:1�L91�K81�J71�I61�H51�G41�F31�E21�D10�C00�B//�A./�@-#�?,#�>+#�=*�<)�;(.�:'.�9&.�8%.�7$.�6#-�5"-�4!-�3 -�2-�1-�0-�/-�.,�-,�,,�+,�*,�)�(�'�&�%�$�#�"�!� ���
�	��������� � �� �� �� �� �� �� �� ��
 ��	 �� �� �+� �*� �*� �)� �)� �)� �)�  �(� �(�~ �(�} �(�| �(�{ �(�z �(�y �(�x �(�w �(�v �(�u �(�t �(�s �(�r �(�q �'�p �'�o �'�n �'�m �'�l �'�k �'�j �'�i �'�h �'�g �&�f �&�e �%�d �%�c �%�b �%�a �%�` �%�_ �%�^ �%�] �%�\ �%�[ �%�Z �%�Y �%�X �%�W ��V ��U ��T ��S �$�R �$�Q �#�P �#�O �"�N �"�M �"�L �"�K �"�J �"�I �"�H �"�G �"�F �"�E �"�D �"�C �"�B �"�A �"�@ �"�? �"�> �"�= �"�< �"�; �"�: �"�9 �"�8 �!�7 �!�6 � �5 � �4 ��3 ��2 ��1 ��0 ��/ ��. ��- ��, ��+ ��* ��) ��( ��' ��& ��% ��$ ��# ��" ��! ��  �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
 ��	 �� �� �� ���~�}�|�{� zy~x}w|v{uzxywxvwuvtustrsqrpqopnomnlmkljkijhighfgefdecdbcab`a_`^_]^\][\Z[YZXYWXVWUVTUSTRSQRP
QO
PN	OM	NNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!  

					   1
Z ���|cJ%�����mQ0�����cL3����jJ0�����jI*
�
�
�
�
|
Z                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 1?1Tokyo International Forum� 0?0Tatsumi Water Polo Centre\/%/Ariake Arena:�.1.Ariake Tennis Park-)-Makuhari Messe'#,E,Tokyo Metropolitan GymnasiumX +?+Tsurigasaki Surfing Beachp*9*Aomi Urban Sports Park �)=)Ariake Urban Sports ParkX(5(Asaka Shooting Range�'9'Enoshima Yacht Harbour&'&Tokyo Stadium ��%3%Sea Forest Waterway>�#$E$Musashino Forest Sport Plaza #1#Odaiba Marine Park|")"Nippon Budokan*�!/!Oi Hockey Stadium:� ; Yoyogi National Stadium'� ?Kasumigaseki Country Cluba�&IInternational Stadium Yokohama@+Saitama Stadium ��;Ibaraki Kashima Stadium �@)Miyagi Stadium �h%Sapporo Dome �('Tokyo Stadium ��+Olympic Stadium	�)Makuhari Messe@&KSea Forest Cross-Country Course>�+Equestrian Park$T'Izu Velodrome"CFuji International SpeedwayU�5Musashinonomori Park)Izu MTB Course,�=Ariake Urban Sports Park�=Ariake Urban Sports Park�3Sea Forest Waterway2  ?Kasai Canoe Slalom CentreL+Kokugikan Arena�'Shiokaze Park.�
3
Saitama Super ArenaR!	?	Yokohama Baseball Stadium ��'MFukushima Azuma Baseball Stadium7�#EMusashino Forest Sport Plaza 1Sapporo Odori Park+Olympic Stadium	�7Tokyo Aquatics Centre:�=Ariake Gymnastics Centre.�%IYumenoshima Park Archery Field�	9Aomi Urban Sports Park�
   1� ���������������������~xrlf`ZTNHB<60*$ ������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  1100//..--,,++**))((''&&%%$$##""!!  

				   �    ���������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	�������������}si_UKA7-#
�
�
�
�
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
									   ǅ=   Ƃi   �    ��������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.("
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

		   ���   �MM   �    ���������������wog_WOG?7/'����������������wog_WOG?7/'����������������wog_WOG?7/'����������������wog_WOG?7/'�������������yoe[QG=3)
�
�
�
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
u
k
a
W
M
C
9
/
%


	�	�	�	�	�	�	�	�	�	�	�	�	�	{	q	g	]	S	I	?	5	+	!			�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!�������������xndZPF<2(���       �jjG�ii��hh��ggB�ff ��ee ��dd&�cc�bb��aa��``��__��^^:�]]��\\�[[�ZZ�YY��XXM�WW3�VVW�UU��TTM�SS3�RRW�QQW�PPV�OO'�NN&�MM�LL�KK�JJ
�II�HH��GG��FF��EE��DD��CC��BB��AA��@@��??��>>��==��<<��;;��::��99n�88m�77M�664�553�44�33�22��11��00��//��..��--��,,n�++m�**D�))C�((0�''�&&��%%��$$��##��""��!!k�  K�J�;�0�,�#�!����������������������������

��		|�d�Z�C��������  �� ���~ ���} ���| ���{ ���z �w�y �o�x �Z�w �W�v �L�u �@�t �%�s ���r ���q ���p ���o �}�n �x�m �p�l �I�k �&�j ��i ��h �
�g ���f ���e ���d �v�c �f�b �b�a �I�` �
�_ ���^ ���] �<�\ ��[ �
�Z ���Y ���X ���W ���V ���U ���T ���S ���R ���Q ���P �x�O �k�N �Y�M ��L ���K ���J ���I ���H ���G �|�F �h�E �_�D �O�C �G�B �D�A �8�@ �#�? ��> ���= ���< ���; ���: ���9 ���8 ���7 ���6 ���5 �}�4 �t�3 �s�2 �Y�1 �D�0 �8�/ �4�. �"�- ��, ��+ ��* ���) ���( ���' �z�& �t�% �l�$ �`�# �T�" �.�! ��  �� �
�� �
�� �
�� �
�� �
v� �
u� �
i� �
e� �
V� �
U� �
G� �
E� �
3� �
1� �
(� �
'� �
� �
� �
� �
� �
 �
 �	��	 �	�� �	�� �	�� �	�� �	�� �	�� �	�� �	�� �	��  �	�	�~~	�}}	�||	�{{	~zz	syy	kxx	fww	Zvv	Ruu	?tt	2ss	rr�qq�pp�oo�nn�mm�llkktjjVii)hh�gg�ff�ee�dd�cc�bb�aat``s__`^^5]]-\\![[ZZYYXXWW�VV�UU�TT�SS�RR�QQ�PP�OO�NN�MM�LLwKKbJJKII"HH�GG�FF�EE�DD^CC:BBAA�@@�??�>>�==�<<�;;�::|99v88d77Z66M55=44233122!1100//	..�--�,,�++�**�))�((�''�&&�%%�$$m##""�!!�  ����z54������zyrjiQ

C		" � �y`$   ͅ?   ̂j� B O������v
Db	�
		`-B,Rx�A��kD� P�              �q//�tableAthleteEarnsMedalAthleteEarnsMedalCREATE TABLE AthleteEarnsMedal(idMedal INT NOT NULL, idParticipant INT NOT NULL,
FOREIGN KEY(idMedal) REFERENCES Medal(idMedal),
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))���mtableMedalMedalCREATE TABLE Medal(idMedal INT PRIMARY KEY, gold INT, silver INT, bronze INT,
CHECK(gold + silver + bronze = 1)))= indexsqlite_autoindex_Medal_1Medal�I�3tableLocationLocationCREATE TABLE Location(idLocation INT PRIMARY KEY, name TEXT NOT NULL, capacity INT)/C indexsqlite_autoindex_Location_1Location��33�!tableCompetitionLocationCompetitionLocationCREATE TABLE CompetitionLocation(idCompetition INT NOT NULL, idLocation INT NOT NULL,
FOREIGN KEY(idCompetition) REFERENCES Competition(idSport),
FOREIGN KEY(idLocation) REFERENCES Location(idLocation))��##�tableCompetitionCompetitionCREATE TABLE Competition(idSport INT PRIMARY KEY, startDate DATE, endDate DATE,
FOREIGN KEY(idSport) REFERENCES Sport(idSport))5I# indexsqlite_autoindex_Competition_1Competition��55�QtableCollectiveDisciplineCollectiveDisciplineCREATE TABLE CollectiveDiscipline(idSport INT NOT NULL,  disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))�W55�QtableIndividualDisciplineIndividualDisciplineCREATE TABLE IndividualDiscipline(idSport INT NOT NULL,  disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))��tableRecordRecordCREATE TABLE Record(idParticipant INT NOT NULL, idSport INT NOT NULL, recordType TEXT NOT NULL, round TEXT NOT NULL, date DATE NOT NULL,
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))�h))�tableParticipatesInParticipatesInCREATE TABLE ParticipatesIn(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))�S�}tableCoachesCoachesCREATE TABLE Coaches(idParticipant INT NOT NULL, idSport INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))[�tableSportSportCREATE TABLE Sport(idSport INT PRIMARY KEY, sportName TEXT NOT NULL))= indexsqlite_autoindex_Sport_1Sport��utableCoachCoachCREATE TABLE Coach( idParticipant INT PRIMARY KEY,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant)))= indexsqlite_autoindex_Coach_1Coach�
�tableAthleteAthleteCREATE TABLE Athlete(idParticipant INT PRIMARY KEY, firstOlympicGames TEXT, gameParticipations INT, pastGOLDmedals INT NOT NULL, pastSILVERmedals INT NOT NULL, pastBRONZEmedals INT NOT NULL,
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))-A indexsqlite_autoindex_Athlete_1Athlete�b##�tableParticipantParticipant	CREATE TABLE Participant( idParticipant INT PRIMARY KEY, abbreviation CHAR(3) NOT NULL, name TEXT NOT NULL, birthYear INT,
FOREIGN KEY(abbreviation) REFERENCES OlympicCommittee(abbreviation))5	I# indexsqlite_autoindex_Participant_1Participant
� --�stableAttendesCeremonyAttendesCeremonyCREATE TABLE AttendesCeremony(idCeremony INT NOT NULL,
OlympicCommitteeAbbreviation CHAR(3) NOT NULL,
FOREIGN KEY(idCeremony) REFERENCES Ceremony(idCeremony),
FOREIGN KEY(OlympicCommitteeAbbreviation) REFERENCES OlympicCommittee(abbreviation))�9--�%tableOlympicCommitteeOlympicCommitteeCREATE TABLE OlympicCommittee(abbreviation CHAR(3) PRIMARY KEY, title TEXT NOT NULL UNIQUE, logo TEXT NOT NULL UNIQUE, recognitionDate DATE)?S- indexsqlite_autoindex_OlympicCommittee_3OlympicCommittee?S- indexsqlite_autoindex_OlympicCommittee_2OlympicCommittee?S- indexsqlite_autoindex_OlympicCommittee_1OlympicCommitteev�?tableCeremonyCeremonyCREATE TABLE Ceremony(idCeremony INT PRIMARY KEY, date DATE NOT NULL, time TIME NOT NULL)/C indexsqlite_autoindex_Ceremony_1Ceremony          �    �������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#��������������ti^SH=2'
�
�
�
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
UKR		CHNUKRCHNCHNSRBROCGB   чB   Ѕ   ςN    �6�ZZ
�
�
-
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              �}33�!tableCommitteeEarnsMedalCommitteeEarnsMedalCREATE TABLE CommitteeEarnsMedal(idMedal INT NOT NULL, abbreviation CHAR(3) NOT NULL,
FOREIGN KEY(abbreviation) REFERENCES OlympicCommittee(abbreviation),
FOREIGN KEY(idMedal) REFERENCES Medal(idMedal))�q//�tableAthleteEarnsMedalAthleteEarnsMedalCREATE TABLE AthleteEarnsMedal(idMedal INT NOT NULL, idParticipant INT NOT NULL,
FOREIGN KEY(idMedal) REFERENCES Medal(idMedal),
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant)))= indexsqlite_autoindex_Medal_1Medal��mtableMedalMedalCREATE TABLE Medal(idMedal INT PRIMARY KEY, gold INT, silver INT, bronze INT,
CHECK(gold + silver + bronze = 1))/C indexsqlite_autoindex_Location_1Locationp�3tableLocationLocationCREATE TABLE Location(idLocation INT PRIMARY KEY, name TEXT NOT NULL, capacity INT)�}33�!tableCompetitionLocationCompetitionLocationCREATE TABLE CompetitionLocation(idCompetition INT NOT NULL, idLocation INT NOT NULL,
FOREIGN KEY(idCompetition) REFERENCES Competition(idSport),
FOREIGN KEY(idLocation) REFERENCES Location(idLocation))5I# indexsqlite_autoindex_Competition_1Competition�"##�tableCompetitionCompetitionCREATE TABLE Competition(idSport INT PRIMARY KEY, startDate DATE, endDate DATE,
FOREIGN KEY(idSport) REFERENCES Sport(idSport))�W55�QtableCollectiveDisciplineCollectiveDisciplineCREATE TABLE CollectiveDiscipline(idSport INT NOT NULL,  disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))�W55�QtableIndividualDisciplineIndividualDisciplineCREATE TABLE IndividualDiscipline(idSport INT NOT NULL,  disciplineName TEXT NOT NULL, permittedGender VARCHAR(5),
FOREIGN KEY(idSport) REFERENCES Sport(idSport))��tableRecordRecordCREATE TABLE Record(idParticipant INT NOT NULL, idSport INT NOT NULL, recordType TEXT NOT NULL, round TEXT NOT NULL, date DATE NOT NULL,
FOREIGN KEY(idSport) REFERENCES Sport(idSport),
FOREIGN KEY(idParticipant) REFERENCES Participant(idParticipant))   9 � �Z��X��T�x?��.
�
�
E

	�	�	L		��I��k��a��O�w%��V��C�Y � �                                            ;9G)ECUComité Olímpico Ecuatoriano/logos/ECU.jpg1/1/195988A)DMADominica Olympic Committee/logos/DMA.jpg1/1/1993:7E)DOMComité Olímpico Dominicano/logos/DOM.jpg1/1/1954N6m)DJIComité National Olympique et Sportif Djiboutien/logos/DJI.jpg1/1/1984]5�	)DENNational Olympic Committee and Sports Confederation of Denmark/logos/DEN.jpg1/1/190594C)CODComité Olympique Congolais/logos/COD.jpg1/1/1968]3�	)PRKOlympic Committee of the Democratic People's Republic of Korea/logos/PRK.jpg1/1/195752;)CZECzech Olympic Committee/logos/CZE.jpg1/1/1993C1W)CYPThe Cyprus National Olympic Committee/logos/CYP.jpg1/1/197860=)CUBComité Olímpico Cubano/logos/CUB.jpg1/1/19558/A)CROCroatian Olympic Committee/logos/CRO.jpg1/1/1993J.e)CIVComité National Olympique de Côte d'Ivoire/logos/CIV.jpg1/1/1963G-_)CRCComité Olímpico Nacional  de Costa Rica/logos/CRC.jpg1/1/1936P,q)COKCook Islands Sports and National Olympic Committee/logos/COK.jpg1/1/1986M+k)CGOComité National Olympique et Sportif Congolais/logos/CGO.jpg1/1/1964K*g)COMComité Olympique et Sportif des Iles Comores/logos/COM.jpg1/1/1993:)E)COLComité Olímpico Colombiano/logos/COL.jpg1/1/1948>(M)TPEChinese Taipei Olympic Committee/logos/TPE.jpg1/1/19608'A)CHIComité Olímpico de Chile/logos/CHI.jpg1/1/1934C&W)CHAComité Olympique et Sportif Tchadien/logos/CHA.jpg1/1/1964Q%s)CAFComité National Olympique et Sportif Centrafricain/logos/CAF.jpg1/1/1965>$M)CAYCayman Islands Olympic Committee/logos/CAY.jpg1/1/1976=#K)CPVComité Olímpico Cabo-Verdiano/logos/CPV.jpg1/1/19938"A)CANCanadian Olympic Committee/logos/CAN.jpg1/1/1907O!o)CMRComité National Olympique et Sportif du Cameroun/logos/CMR.jpg1/1/1963D Y)CAMNational Olympic Committee of Cambodia/logos/CAM.jpg1/1/1995CW)BDIComité National Olympique du Burundi/logos/BDI.jpg1/1/1993Qs)BURComité National Olympique et des Sports Burkinabè/logos/BUR.jpg1/1/19729C)BULBulgarian Olympic Committee/logos/BUL.jpg1/1/1924Ha)BRUBrunei Darussalam National Olympic Council/logos/BRU.jpg1/1/19849C)BRAComitê Olímpico do Brasil/logos/BRA.jpg1/1/1935AS)BOTBotswana National Olympic Committee/logos/BOT.jpg1/1/1980Ic)BIHOlympic Committee of Bosnia and Herzegovina/logos/BIH.jpg1/1/19939C)BOLComité Olímpico Boliviano/logos/BOL.jpg1/1/19366=)BHUBhutan Olympic Committee/logos/BHU.jpg1/1/19839C)BERBermuda Olympic Association/logos/BER.jpg1/1/1936Mk)BENComité National Olympique et Sportif Béninois/logos/BEN.jpg1/1/1962Oo)BIZBelize Olympic and Commonwealth Games Association/logos/BIZ.jpg1/1/1968G_)BELComité Olympique et Interfédéral Belge/logos/BEL.jpg1/1/1906Sw)BLRNational Olympic Committee of the Republic of Belarus/logos/BLR.jpg1/1/1993CW)BARThe Barbados Olympic Association Inc./logos/BAR.jpg1/1/1951<I)BANBangladesh Olympic Association/logos/BAN.jpg1/1/19807?)BRNBahrain Olympic Committee/logos/BRN.jpg1/1/19797?)BAHBahamas Olympic Committee/logos/BAH.jpg1/1/1952Ty)AZENational Olympic Committee of the Azerbaijani Republic/logos/AZE.jpg1/1/1993CW)AUTÖsterreichisches Olympisches Comité/logos/AUT.jpg1/1/1912?O)AUSAustralian Olympic Committee Inc./logos/AUS.jpg1/1/37957
?)ARUComité Olímpico Arubano/logos/ARU.jpg1/1/1986C	W)ARMNational Olympic Committee of Armenia/logos/ARM.jpg1/1/19939C)ARGComité Olímpico Argentino/logos/ARG.jpg1/1/1923Ic)ANTThe Antigua and Barbuda Olympic Association/logos/ANT.jpg1/1/19768A)ANGComité Olímpico Angolano/logos/ANG.jpg1/1/19807?)ANDComitè Olímpic Andorrà/logos/AND.jpg1/1/1975G_)ASAAmerican Samoa National Olympic Committee/logos/ASA.jpg1/1/1987DY)ALGComité Olympique et Sportif Algérien/logos/ALG.jpg1/1/1964AS)ALBAlbanian National Olympic Committee/logos/ALB.jpg1/1/1959a�)AFGNational Olympic Committee of the  Islamic Republic of Afghanistan/logos/AFG.jpg1/1/1936   < � ��?��o4��R��A��V
�
�
R
	�	�	`	�z@��,��n4��d!��`��j(��j��r8 � �                                                  7u?)MLTMaltese Olympic Committee/logos/MLT.jpg1/1/1936Ktg)MLIComité National Olympique et Sportif du Mali/logos/MLI.jpg1/1/19638sA)MDVMaldives Olympic Committee/logos/MDV.jpg1/1/19859rC)MASOlympic Council of Malaysia/logos/MAS.jpg1/1/19546q=)MAWMalawi Olympic Committee/logos/MAW.jpg1/1/19688pA)MADComité Olympique Malgache/logos/MAD.jpg1/1/1964Ioc)LUXComité Olympique et Sportif Luxembourgeois/logos/LUX.jpg1/1/1912En[)LTUNational Olympic Committee of Lithuania/logos/LTU.jpg1/1/1991=mK)LIELiechtenstein Olympic Committee/logos/LIE.jpg1/1/19356l=)LBALibyan Olympic Committee/logos/LBA.jpg1/1/1963@kQ)LBRLiberia National Olympic Committee/logos/LBR.jpg1/1/1955@jQ)LESLesotho National Olympic Committee/logos/LES.jpg1/1/19728iA)LBNLebanese Olympic Committee/logos/lbn.jpg1/1/19487h?)LATLatvian Olympic Committee/logos/LAT.jpg1/1/1991?gO)LAONational Olympic Committee of Lao/logos/LAO.jpg1/1/1979Ofo)KGZNational Olympic Committee of the Kyrgyz Republic/logos/KGZ.jpg1/1/19936e=)KUWKuwait Olympic Committee/logos/KUW.jpg1/1/19666d=)KOSKosovo Olympic Committee/logos/KOS.jpg1/1/2014AcS)KIRKiribati National Olympic Committee/logos/KIR.jpg1/1/2003>bM)KENNational Olympic Committee Kenya/logos/KEN.jpg1/1/1955Va})KAZNational Olympic Committee of the Republic of Kazakhstan/logos/KAZ.jpg1/1/19936`=)JORJordan Olympic Committee/logos/JOR.jpg1/1/19638_A)JPNJapanese Olympic Committee/logos/JPN.jpg1/1/19129^C)JAMJamaica Olympic Association/logos/JAM.jpg1/1/1936B]U)ITAComitato Olimpico Nazionale Italiano/logos/ITA.jpg1/1/1915=\K)ISRThe Olympic Committee of Israel/logos/ISR.jpg1/1/1952Y[�)IRINational Olympic Committee of the Islamic Republic of Iran/logos/IRI.jpg1/1/1947;ZG)IRLOlympic Federation of Ireland/logos/IRL.jpg1/1/1922@YQ)IRQNational Olympic Committee of Iraq/logos/IRQ.jpg1/1/19488XA)INAKomite Olimpiade Indonesia/logos/INA.jpg1/1/19528WA)INDIndian Olympic Association/logos/IND.jpg1/1/1927PVq)ISLNational Olympic and Sports Association of Iceland/logos/ISL.jpg1/1/19359UC)HUNHungarian Olympic Committee/logos/HUN.jpg1/1/3795WT)HKGSports Federation & Olympic Committee of Hong Kong, China/logos/HKG.jpg1/1/1951:SE)HONComité Olímpico Hondureño/logos/HON.jpg1/1/19568RA)HAIComité Olympique Haïtien/logos/HAI.jpg1/1/19248QA)GUYGuyana Olympic Association/logos/GUY.jpg1/1/1948@PQ)GBSComité Olímpico da Guiné-Bissau/logos/GBS.jpg1/1/1995LOi)GUIComité National Olympique et Sportif Guinéen/logos/GUI.jpg1/1/1965<NI)GUAComité Olímpico Guatemalteco/logos/GUA.jpg1/1/1947=MK)GUMGuam National Olympic Committee/logos/GUM.jpg1/1/19867L?)GRNGrenada Olympic Committee/logos/GRN.jpg1/1/19848KA)GREHellenic Olympic Committee/logos/GRE.jpg1/1/37959JC)GBRBritish Olympic Association/logos/GBR.jpg1/1/19055I;)GHAGhana Olympic Committee/logos/GHA.jpg1/1/1951=HK)GERDeutscher Olympischer Sportbund/logos/GER.jpg1/1/3795AGS)GEOGeorgian National Olympic Committee/logos/GEO.jpg1/1/1993CFW)GAMThe Gambia National Olympic Committee/logos/GAM.jpg1/1/19768EA)GABComité Olympique Gabonais/logos/GAB.jpg1/1/1968MDk)FRAComité National Olympique et Sportif Français/logos/FRA.jpg1/1/37947C?)FINFinnish Olympic Committee/logos/FIN.jpg1/1/1907WB)FIJFiji Association of Sports and National Olympic Committee/logos/FIJ.jpg1/1/1955NAm)FSMFederated States of Micronesia Olympic Committee/logos/FSM.jpg1/1/19979@C)ETHEthiopian Olympic Committee/logos/ETH.jpg1/1/1954Q?s)SWZEswatini Olympic and Commonwealth Games Association/logos/SWZ.jpg1/1/19728>A)ESTEstonian Olympic Committee/logos/EST.jpg1/1/1991A=S)ERIEritrean National Olympic Committee/logos/ERI.jpg1/1/1999E<[)GEQComité Olímpico de  Guinea Ecuatorial/logos/GEQ.jpg1/1/1984>;M)ESAComité Olímpico de El Salvador/logos/ESA.jpg1/1/19388:A)EGYEgyptian Olympic Committee/logos/EGY.jpg1/1/1910
m MD ���fH%����j4;����j=�D��t@��k8
�
�
b
-	�	�	�	�	x	V	(���o=����{^=����j<���b��e@��������Y:��oQ)����m% �                        AJapanese Olympic Committee_CJamaica Olympic Association^AIndian Olympic AssociationW(SComité National Olympique Tunisien �  �Hungarian Olympic CommitteeUAHellenic Olympic CommitteeKAGuyana Olympic AssociationQ#KGuam National Olympic CommitteeM?Grenada Olympic CommitteeL;Ghana Olympic CommitteeI'SGeorgian National Olympic CommitteeG?Finnish Olympic CommitteeC=Fiji Association of Sports and National Olympic CommitteeB4mFederated States of Micronesia Olympic CommitteeACEthiopian Olympic Committee@7sEswatini Olympic and Commonwealth Games Association?AEstonian Olympic Committee>'SEritrean National Olympic Committee=AEgyptian Olympic Committee:ADominica Olympic Committee8#KDeutscher Olympischer SportbundH;Czech Olympic Committee2ACroatian Olympic Committee/6qCook Islands Sport-]British Virgin Islands Olympic Committee �!EComité Olímpico Venezolano �AComité Olímpico Uruguayo �0cComité Olímpico de São Tomé e Príncipe �%MComité Olímpico de Puerto Rico �"GComité Olímpico de Portugal �!EComité Olímpico de Panamá �$MComité Olímpico de El Salvador;AComité Olímpico de Chile'+[Comité Olímpico de  Guinea Ecuatorial<&QComité Olímpico da Guiné-BissauP?Comité Olímpico Peruano � CComité Olímpico Paraguayo �$KComité Olímpico Nicaragüense �-_Comité Olímpico Nacional de Moçambique~-_Comité Olímpico Nacional  de Costa Rica-AComité Olímpico Mexicanoy EComité Olímpico HondureñoS"IComité Olímpico GuatemaltecoNAComité Olímpico Español �!GComité Olímpico Ecuatoriano9 EComité Olímpico Dominicano7=Comité Olímpico Cubano0 EComité Olímpico Colombiano)#KComité Olímpico Cabo-Verdiano#CComité Olímpico Boliviano?Comité Olímpico Arubano
CComité Olímpico ArgentinoAComité Olímpico Angolano1gComité Olympique et Sportif des Iles Comores*)WComité Olympique et Sportif Tchadien&3iComité Olympique et Sportif National du Niger �/cComité Olympique et Sportif Luxembourgeoiso*YComité Olympique et Sportif Algérien-_Comité Olympique et Interfédéral Belge!GComité Olympique MonégasquezAComité Olympique MalgachepAComité Olympique HaïtienRAComité Olympique GabonaisECComité Olympique Congolais47sComité National Olympique et des Sports Burkinabè4kComité National Olympique et Sportif du Rwanda �1gComité National Olympique et Sportif du Malit5oComité National Olympique et Sportif du Cameroun!7qComité National Olympique et Sportif Sénégalais �5oComité National Olympique et Sportif Mauritanienw2iComité National Olympique et Sportif GuinéenO3kComité National Olympique et Sportif FrançaisD4mComité National Olympique et Sportif Djiboutien63kComité National Olympique et Sportif Congolais+7sComité National Olympique et Sportif Centrafricain%3kComité National Olympique et Sportif Béninois'QComité National Olympique du Togo �)WComité National Olympique du Burundi0eComité National Olympique de Côte d'Ivoire.'SComité National Olympique Marocain}?Comitè Olímpic Andorrà,[Comitato Olimpico Nazionale Sammarinese �(UComitato Olimpico Nazionale Italiano]$MChinese Taipei Olympic Committee(?Chinese Olympic Committee �$MCayman Islands Olympic Committee$ACanadian Olympic Committee"CBulgarian Olympic Committee.aBrunei Darussalam National Olympic CouncilCBritish Olympic AssociationJ'SBotswana National Olympic Committee=Bhutan Olympic CommitteeCBermuda Olympic Association5oBelize Olympic and Commonwealth Games Association"IBangladesh Olympic Association?Bahrain Olympic Committee?Bahamas Olympic Committee%OAustralian Olympic Committee Inc.-_American Samoa National Olympic Committee'SAlbanian National Olympic Committee
� J, �����mN&��z<����yZ:���|]7����rU1����];���b7���[. 
���,
�
R
	�	�	eV	.���nF""����X.��s6 � �?  ?Turkish Olympic Committee �)WÖsterreichisches Olympisches Comité�Trinidad and Tobago Olympic Committee �<{Tonga Sports Association and National Olympic Committee �B�The St Vincent and the Grenadines National Olympic Committee �#KThe Olympic Committee of Israel\)WThe Gambia National Olympic CommitteeF)WThe Cyprus National Olympic Committee1)WThe Barbados Olympic Association Inc./cThe Antigua and Barbuda Olympic Association=Syrian Olympic Committee �?Swiss Olympic Association �?Swedish Olympic Committee � CSurinaams Olympisch Comité �;Sudan Olympic Committee �*WSt. Kitts and Nevis Olympic Committee �ASt Lucia Olympic Committee �=Sports Federation & Olympic Committee of Hong Kong, ChinaT+YSouth Sudan National Olympic Committee �=}South African Sports Confederation and Olympic Committee �'QSomalia National Ol)UNational Olympic Committee of Zambia �=}National Olympic Committee of the Republic of Uzbekistan �*WNational Olympic Committee of Ukraine �=Jordan Olympic Committee`AJapanese Olympic Committee_CJamaica Olympic Association^AIndian Olympic AssociationWCHungarian Olympic CommitteeUAHellenic Olympic CommitteeKAGuyana Olympic AssociationQ#KGuam National Olympic CommitteeM?Grenada Olympic CommitteeL;Ghana Olympic CommitteeI'SGeorgian National Olympic CommitteeG?Finnish Olympic CommitteeC=Fiji Association of Sports and National Olympic CommitteeB4mFederated States of Micronesia Olympic CommitteeACEthiopian Olympic Committee@7sEswatini Olympic and Commonwealth Games Association?AEstonian Olympic Committee>'SEritrean National Olympic Committee=AEgyptian Olympic Committee:ADominica Olympic Committee8#KDeutscher Olympischer SportbundH;Czech Olympic Committee2ACroatian Olympic Committee/6qCook Islands Sports and National Olympic Committee,#INigeria Olympic Committee Inc. �'QNew Zealand Olympic Committee Inc. �;Nepal Olympic Committee �>Nederlands Olympisch Comité* Nederlandse Sport Federatie �;Nauru Olympic Committee �F�National Olympic and Sports Committee of the Republic of Moldova �6qNational Olympic and Sports Association of IcelandV<}National Olympic Committee of the Republic of Kazakhstana9wNational Olympic Committee of the Republic of Belarus5oNational Olympic Committee of the Kyrgyz Republicf?�National Olympic Committee of the Islamic Republic of Iran[:yNational Olympic Committee of the Azerbaijani RepublicF�	National Olympic Committee of the  Islamic Republic of Afghanistan+YNational Olympic Committee of Thailand �-]National Olympic Committee of Tajikistan �,[National Olympic Committee of Sri Lanka �2gNational Olympic Committee of Solomon Islands �/aNational Olympic Committee of Sierra Leone �+[National Olympic Committee of Lithuanian%ONational Olympic Committee of Laog&QNational Olympic Committee of IraqY*YNational Olympic Committee of Cambodia )WNational Olympic Committee of Armenia	C�	National Olympic Committee and Sports Confederation of Denmark5$MNational Olympic Committee Kenyab'QNamibia National Olympic Committee �?Myanmar Olympic Committee!GMontenegrin Olympic Committee|(UMongolian National Olympic Committee{CMauritius Olympic Committeex0eMarshall Islands National  Olympic Committeev?Maltese Olympic CommitteeuAMaldives Olympic Committees=Malawi Olympic Committeeq#KLiechtenstein Olympic Committeem=Libyan Olympic Committeel&QLiberia National Olympic Committeek&QLesotho National Olympic CommitteejALebanese Olympic Committeei?Latvian Olympic Committeeh=Kuwait Olympic Committeee=Kosovo Olympic Committeed%MKorean Sport & Olympic Committee �AKomite Olimpiade IndonesiaX'SKiribati National Olympic Committeec   Jordan OCComitê Olímpico do Brasil/aNational Olympic Committee of Turkmenistan �   9 � �c(��m0��k(��^��M
�
q
4	�	�	�	9���L��\�s9��h�s3��N�|��1 � �                                                     8�.A)ESPComité Olímpico Español/logos/ESP.jpg1/1/1912D�-Y)SSDSouth Sudan National Olympic Committee/logos/SSD.jpg1/1/2015V�,})RSASouth African Sports Confederation and Olympic Committee/logos/RSA.jpg1/1/1991@�+Q)SOMSomalia National Olympic Committee/logos/SOM.jpg1/1/1972K�*g)SOLNational Olympic Committee of Solomon Islands/logos/SOL.jpg1/1/1983^�)�)SLOOlympic Committee of Slovenia Association of Sports Federations/logos/SLO.jpg1/1/1993A�(S)SVKSlovak Olympic and Sports Committee/logos/SVK.jpg1/1/1993@�'Q)SGPSingapore National Olympic Council/logos/SGP.jpg1/1/1948H�&a)SLENational Olympic Committee of Sierra Leone/logos/SLE.jpg1/1/1964S�%w)SEYSeychelles Olympic and Commonwealth Games Association/logos/SEY.jpg1/1/19799�$C)SRBOlympic Committee of Serbia/logos/SRB.jpg1/1/1912P�#q)SENComité National Olympique et Sportif Sénégalais/logos/SEN.jpg1/1/1963=�"K)KSASaudi Arabian Olympic Committee/logos/KSA.jpg1/1/1965I�!c)STPComité Olímpico de São Tomé e Príncipe/logos/STP.jpg1/1/1993E� [)SMRComitato Olimpico Nazionale Sammarinese/logos/SMR.jpg1/1/1959^��)SAMSamoa Association of Sports and National Olympic Committee Inc./logos/SAM.jpg1/1/19838�A)LCASt Lucia Olympic Committee/logos/LCA.jpg1/1/1993C�W)SKNSt. Kitts and Nevis Olympic Committee/logos/SKN.jpg1/1/1993M�k)RWAComité National Olympique et Sportif du Rwanda/logos/RWA.jpg1/1/19847�?)ROCRussian Olympic Committee/logos/ROC.jpg1/1/1993C�W)ROURomanian Olympic and Sports Committee/logos/ROU.jpg1/1/1914_��)MDANational Olympic and Sports Committee of the Republic of Moldova/logos/MDA.jpg1/1/1993>�M)KORKorean Sport & Olympic Committee/logos/KOR.jpg1/1/19475�;)QATQatar Olympic Committee/logos/QAT.jpg1/1/1980>�M)PURComité Olímpico de Puerto Rico/logos/PUR.jpg1/1/1948;�G)PORComité Olímpico de Portugal/logos/POR.jpg1/1/19096�=)POLPolish Olympic Committee/logos/POL.jpg1/1/1919:�E)PHIPhilippine Olympic Committee/logos/PHI.jpg1/1/19297�?)PERComité Olímpico Peruano/logos/PER.jpg1/1/19367�?)CHNChinese Olympic Committee/logos/CHN.jpg1/1/19799�C)PARComité Olímpico Paraguayo/logos/PAR.jpg1/1/1970F�])PNGPapua New Guinea Olympic Committee  Inc./logos/PNG.jpg1/1/1974:�E)PANComité Olímpico de Panamá/logos/PAN.jpg1/1/19471�C)PLEPalestine Olympic Committee/logos/PLE.jpg>�M)PLWPalau National Olympic Committee/logos/PLW.jpg1/1/1999:�E)PAKPakistan Olympic Association/logos/PAK.jpg1/1/19484�
9)OMAOman Olympic Committee/logos/OMA.jpg1/1/1982]�	�)NORNorwegian Olympic and Paralympic Committee and Confederation of Sports/logos/NOR.jpgB�U)MKDOlympic Committee of North Macedonia/logos/MKD.jpg1/1/1993<�I)NGRNigeria Olympic Committee Inc./logos/NGR.jpg1/1/1951L�i)NIGComité Olympique et Sportif National du Niger/logos/NIG.jpg1/1/1964=�K)NCAComité Olímpico Nicaragüense/logos/NCA.jpg1/1/1959@�Q)NZLNew Zealand Olympic Committee Inc./logos/NZL.jpg1/1/1919W�)NEDNederlands Olympisch Comité* Nederlandse Sport Federatie/logos/NED.jpg1/1/19125�;)NEPNepal Olympic Committee/logos/NEP.jpg1/1/19635�;)NRUNauru Olympic Committee/logos/NRU.jpg1/1/1994@� Q)NAMNamibia National Olympic Committee/logos/NAM.jpg1/1/19917?)MYAMyanmar Olympic Committee/logos/MYA.jpg1/1/1947G~_)MOZComité Olímpico Nacional de Moçambique/logos/MOZ.jpg1/1/1979A}S)MARComité National Olympique Marocain/logos/MAR.jpg1/1/1959;|G)MNEMontenegrin Olympic Committee/logos/MNE.jpg1/1/2007B{U)MGLMongolian National Olympic Committee/logos/MGL.jpg1/1/1962;zG)MONComité Olympique Monégasque/logos/MON.jpg1/1/19538yA)MEXComité Olímpico Mexicano/logos/MEX.jpg1/1/19239xC)MRIMauritius Olympic Committee/logos/MRI.jpg1/1/1972Owo)MTNComité National Olympique et Sportif Mauritanien/logos/MTN.jpg1/1/1979Jve)MHLMarshall Islands National  Olympic Committee/logos/MHL.jpg1/1/2006   !' �Z"��r9��_�~: �W
�
�
M	�	�	k	��M��T'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             *�O5)EORRefugee Olympic Team/logos/EOR.jpg8�NA)ZIMZimbabwe Olympic Committee/logos/ZIM.jpg1/1/1980B�MU)ZAMNational Olympic Committee of Zambia/logos/ZAM.jpg1/1/19635�L;)YEMYemen Olympic Committee/logos/YEM.jpg1/1/1981>�KM)ISVVirgin Islands Olympic Committee/logos/ISV.jpg1/1/1967F�J])IVBBritish Virgin Islands Olympic Committee/logos/IVB.jpg1/1/19827�I?)VIEVietnam Olympic Committee/logos/VIE.jpg1/1/1979:�HE)VENComité Olímpico Venezolano/logos/VEN.jpg1/1/1935[�G�)VANVanuatu Association of Sports and National Olympic Committee/logos/VAN.jpg1/1/1987V�F})UZBNational Olympic Committee of the Republic of Uzbekistan/logos/UZB.jpg1/1/19938�EA)URUComité Olímpico Uruguayo/logos/URU.jpg1/1/1923K�Dg)USAUnited States Olympic & Paralympic  Committee/logos/USA.jpg1/1/37948�CA)TANTanzania Olympic Committee/logos/TAN.jpg1/1/1968M�Bk)UAEUnited Arab Emirates National Olympic Committee/logos/UAE.jpg1/1/1980C�AW)UKRNational Olympic Committee of Ukraine/logos/UKR.jpg1/1/19936�@=)UGAUganda Olympic Committee/logos/UGA.jpg1/1/1956[�?�)TUVTuvalu Association of Sports and  National Olympic Committee/logos/TUV.jpg1/1/2007H�>a)TKMNational Olympic Committee of Turkmenistan/logos/TKM.jpg1/1/19937�=?)TURTurkish Olympic Committee/logos/TUR.jpg1/1/1911A�<S)TUNComité National Olympique Tunisien/logos/TUN.jpg1/1/1957C�;W)TTOTrinidad and Tobago Olympic Committee/logos/TTO.jpg1/1/1947U�:{)TGATonga Sports Association and National Olympic Committee/logos/TGA.jpg1/1/1984@�9Q)TOGComité National Olympique du Togo/logos/TOG.jpg1/1/1965G�8_)TLSComitê Olímpico Nacional de Timor-Leste/logos/TLS.jpg1/1/2003D�7Y)THANational Olympic Committee of Thailand/logos/THA.jpg1/1/1950F�6])TJKNational Olympic Committee of Tajikistan/logos/TJK.jpg1/1/19936�5=)SYRSyrian Olympic Committee/logos/SYR.jpg1/1/19487�4?)SUISwiss Olympic Association/logos/SUI.jpg1/1/19127�3?)SWESwedish Olympic Committee/logos/SWE.jpg1/1/19139�2C)SURSurinaams Olympisch Comité/logos/SUR.jpg1/1/19595�1;)SUDSudan Olympic Committee/logos/SUD.jpg1/1/1959[�0�)VINThe St Vincent and the Grenadines National Olympic Committee/logos/VIN.jpg1/1/1987E�/[)SRINational Olympic Committee of Sri Lanka/logos/SRI.jpg1/1/1937
   6% ���?����{U4���%~_���h@��xM0
�
�
�7
�
Y
/
	�	�	a	6	��W��|_?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 5Refugee Olympic Team �AZimbabwe Olympic Committee �;Yemen Olympic Committee �%MVirgin Islands Olympic Committee �?Vietnam Olympic Committee �B�Vanuatu Association of Sports and National Olympic Committee �2gUnited States Olympic & Paralympic  Committee �ATanzania Olympic Committee �4kUnited Arab Emirates National Olympic Committee �=Uganda Olympic Committee �)WÖsterreichisches Olympisches ComitéB�Tuvalu Association of Sports and  National Olympic Committee �?Turkish Olympic Committee �*WTrinidad and Tobago Olympic Committee �<{Tonga Sports Association and National Olympic Committee �B�The St Vincent and the Grenadines National Olympic Committee �#KThe Olympic Committee of Israel\)WThe Gambia National Olympic CommitteeF)WThe Cyprus National Olympic Committee1)WThe Barbados Olympic Association Inc./cThe Antigua and Barbuda Olympic Association=Syrian Olympic Committee �?Swiss Olympic Association �?Swedish Olympic Committee � CSurinaams Olympisch Comité �;Sudan Olympic Committee �*WSt. Kitts and Nevis Olympic Committee �ASt Lucia Olympic Committee �=Sports Federation & Olympic Committee of Hong Kong, ChinaT+YSouth Sudan National Olympic Committee �=}South African Sports Confederation and Olympic Committee �'QSomalia National Olympic Committee �(SSlovak Olympic and Sports Committee �'QSingapore National Olympic Council �:wSeychelles Olympic and Commonwealth Games Association �$KSaudi Arabian Olympic Committee �E�Samoa Association of Sports and National Olympic Committee Inc. �?Russian Olympic Committee �*WRomanian Olympic and Sports Committee �;Qatar Olympic Committee �=Polish Olympic Committee �!EPhilippine Olympic Committee �-]Papua New Guinea Olympic Committee  Inc. � CPalestine Olympic Committee �%MPalau National Olympic Committee �!EPakistan Olympic Association �9Oman Olympic Committee �!GOlympic Federation of IrelandZCOlympic Council of MalaysiarC�	Olympic Committee of the Democratic People's Republic of Korea3E�Olympic Committee of Slovenia Association of Sports Federations � COlympic Committee of Serbia �)UOlympic Committee of North Macedonia �/cOlympic Committee of Bosnia and Herzegovina
� d� �����|iVC�0
�����r_L&��9 ����B�{U�/,��%���h��q^K������z��gA
�.
�
�
�

��
�
�
p
]
7
$
J	�	�	�	�	�	y	�	@	S	f	�	-		�������\I�(#��������x�?�eR���,��DX��l0��h@|�T��8��dxP��t<�L 8$�����p�`�T\�4H� 	�����6              )/logos/TUV.jpg ��/logos/TKM.jpg �)/logos/TUR.jpg �)/logos/TUN.jpg �)/logos/TTO.jpg �� �/logos/TGA.jpg �)/logos/TOG.jpg �)/logos/TLS.jpg �� �/logos/THA.jpg �)/logos/TJK.jpg �� d/logos/SYR.jpg �� P/logos/SUI.jpg �)/logos/SWE.jpg �� (/logos/SUR.jpg �� /logos/SUD.jpg �)/logos/VIN.jpg �� /logos/SRI.jpg �)/logos/ESP.jpg �@�/logos/SSD.jpg �t P/logos/RSA.jpg �)/logos/SOM.jpg �)/logos/SOL.jpg �t /logos/SLO.jpg �)/logos/SVK.jpg �@�/logos/SGP.jpg �)/logos/SLE.jpg �� /logos/SEY.jpg �)/logos/SRB.jpg �  (/logos/SEN.jpg � /logos/KSA.jpg �)/logos/STP.jpg �@,/logos/SMR.jpg �@/logos/SAM.jpg �P /logos/LCA.jpg �)/logos/SKN.jpg �@ �/logos/RWA.jpg �@ �/logos/ROC.jpg �)/logos/ROU.jpg �@ �/logos/MDA.jpg �� /logos/KOR.jpg �)/logos/QAT.jpg �)/logos/PUR.jpg �@ P/logos/POR.jpg �)/logos/EOR.jpg �)/logos/ISV.jpg �)/logos/IVB.jpg �)/logos/CHN.jpg �T{/logos/PAR.jpg �)/logos/PNG.jpg �I�/logos/PAN.jpg �)/logos/PLE.jpg �)/logos/PLW.jpg �I�/logos/PAK.jpg �)/logos/OMA.jpg �Ij/logos/NOR.jpg �D P/logos/MKD.jpg �)/logos/NGR.jpg �)/logos/NIG.jpg �D /logos/NCA.jpg �)/logos/NZL.jpg �I�/logos/NED.jpg �)/logos/NEP.jpg �)/logos/NRU.jpg �I�/logos/NAM.jpg �)/logos/MYA.jpgI�/logos/MOZ.jpg~? _/logos/MAR.jpg})/logos/MNE.jpg| /logos/MGL.jpg{)/logos/MON.jpgz? /logos/MEX.jpgy)/logos/MRI.jpgx)/logos/MTN.jpgwI �/logos/MHL.jpgv)/logos/MLT.jpgu)/logos/MLI.jpgtI �/logos/MDV.jpgsI �/logos/MAS.jpgr)/logos/MAW.jpgqI �/logos/MAD.jpgp)/logos/LUX.jpgo)/logos/LTU.jpgn)/logos/LIE.jpgmI 9/logos/LBA.jpgl)/logos/LBR.jpgk)/logos/LES.jpgj)/logos/lbn.jpgiT r/logos/LAT.jpgh)/logos/LAO.jpgg   L/logos/KGZ.jpgf)/logos/KUW.jpge   &/logos/KOS.jpgd   /logos/KIR.jpgc)/logos/KEN.jpgb)/logos/KAZ.jpga)/logos/JOR.jpg`)/logos/JPN.jpg_)/logos/JAM.jpg^)/logos/ITA.jpg])/logos/ISR.jpg\)/logos/IRI.jpg[)/logos/IRL.jpgZ)/logos/IRQ.jpgY)/logos/INA.jpgX)/logos/IND.jpgW)/logos/ISL.jpgV)/logos/HUN.jpgU)/logos/HKG.jpgT)/logos/HON.jpgS)/logos/HAI.jpgR)/logos/GUY.jpgQ)/logos/GBS.jpgP)/logos/GUI.jpgO)/logos/GUA.jpgN)/logos/GUM.jpgM)/logos/GRN.jpgL)/logos/GRE.jpgK)/logos/GBR.jpgJ)/logos/GHA.jpgI)/logos/GER.jpgH)/logos/GEO.jpgG)/logos/GAM.jpgF)/logos/GAB.jpgE)/logos/FRA.jpgD)/logos/FIN.jpgC)/logos/FIJ.jpgB)/logos/FSM.jpgA)/logos/ETH.jpg@8 /logos/SWZ.jpg?)/logos/EST.jpg>)/logos/ERI.jpg=)/logos/GEQ.jpg<)/logos/ESA.jpg;)/logos/EGY.jpg:)/logos/ECU.jpg9)/logos/DMA.jpg8)/logos/DOM.jpg7)/logos/DJI.jpg6)/logos/DEN.jpg5)/logos/COD.jpg4	 /logos/PRK.jpg3)/logos/CZE.jpg2)/logos/CYP.jpg1)/logos/CUB.jpg0)/logos/CRO.jpg/)/logos/CIV.jpg.)/logos/CRC.jpg-)/logos/COK.jpg,)/logos/CGO.jpg+)/logos/COM.jpg*)/logos/COL.jpg)   /logos/TPE.jpg()/logos/CHI.jpg')/logos/CHA.jpg&)/logos/CAF.jpg%)/logos/CAY.jpg$)/logos/CPV.jpg#)/logos/CAN.jpg")/logos/CMR.jpg!)/logos/CAM.jpg )/logos/BDI.jpg)/logos/BUR.jpg)/logos/BUL.jpg)/logos/BRU.jpg)/logos/BRA.jpg)/logos/BOT.jpg)/logos/BIH.jpg)/logos/BOL.jpg)/logos/BHU.jpg)/logos/BER.jpg)/logos/BEN.jpg)/logos/BIZ.jpg)/logos/BEL.jpg)/logos/BLR.jpg)/logos/BAR.jpg)/logos/BAN.jpg)/logos/BRN.jpg)/logos/BAH.jpg)/logos/AZE.jpg)/logos/AUT.jpg)/logos/AUS.jpg)/logos/ARU.jpg
)/logos/ARM.jpg	)/logos/ARG.jpg)/logos/ANT.jpg)/logos/ANG.jpg)/logos/AND.jpg)/logos/ASA.jpg)/logos/ALG.jpg)/logos/ALB.jpg)	/logos/AFG.jpg
   j� ������yfS?,�������mZG3 �������s_K7#�������o[G3�������lXD0
�
�
�
�
�
�
|
h
T
@
,

	�	��	�	�	�	�	y	e	R	>	*		���cwO;'�����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           )/logos/ZIM.jpg �)/logos/ZAM.jpg �)/logos/YEM.jpg �)/logos/VIE.jpg �)/logos/VEN.jpg �)/logos/VAN.jpg �)/logos/UZB.jpg �)/logos/URU.jpg �)/logos/USA.jpg �)/logos/TAN.jpg �)/logos/UAE.jpg �)/logos/UKR.jpg �)/logos/lbn.jpgi)/logos/VIN.jpg �)/logos/UGA.jpg �)/logos/TUV.jpg �)/logos/TUR.jpg �)/logos/TUN.jpg �)/logos/TTO.jpg �)/logos/TPE.jpg()/logos/TOG.jpg �)/logos/TLS.jpg �)/logos/TKM.jpg �)/logos/TJK.jpg �)/logos/THA.jpg �)/logos/TGA.jpg �)/logos/SYR.jpg �)/logos/SWZ.jpg?)/logos/SWE.jpg �)/logos/SVK.jpg �)/logos/SUR.jpg �)/logos/SUI.jpg �)/logos/SUD.jpg �)/logos/STP.jpg �)/logos/SSD.jpg �)/logos/SRI.jpg �)/logos/SRB.jpg �)/logos/SOM.jpg �)/logos/SOL.jpg �)/logos/SMR.jpg �)/logos/SLO.jpg �)/logos/SLE.jpg �)/logos/SKN.jpg �)/logos/SGP.jpg �)/logos/SEY.jpg �)/logos/SEN.jpg �)/logos/SAM.jpg �)/logos/RWA.jpg �)/logos/RSA.jpg �)/logos/ROU.jpg �)/logos/ROC.jpg �)/logos/QAT.jpg �)/logos/PUR.jpg �)/logos/PRK.jpg3)/logos/POR.jpg �)/logos/POL.jpg �)/logos/PNG.jpg �)/logos/PLW.jpg �)/logos/PLE.jpg �)/logos/PHI.jpg �)/logos/PER.jpg �)/logos/PAR.jpg �)/logos/PAN.jpg �)/logos/PAK.jpg �)/logos/OMA.jpg �)/logos/NZL.jpg �)/logos/NRU.jpg �)/logos/NOR.jpg �)/logos/NIG.jpg �)/logos/NGR.jpg �)/logos/NEP.jpg �)/logos/NED.jpg �)/logos/NCA.jpg �)/logos/NAM.jpg �)/logos/MYA.jpg)/logos/MTN.jpgw)/logos/MRI.jpgx)/logos/MOZ.jpg~)/logos/MON.jpgz)/logos/MNE.jpg|)/logos/MLT.jpgu)/logos/MLI.jpgt)/logos/MKD.jpg �)/logos/MHL.jpgv)/logos/MGL.jpg{)/logos/MEX.jpgy)/logos/MDV.jpgs)/logos/MDA.jpg �)/logos/MAW.jpgq)/logos/MAS.jpgr)/logos/MAR.jpg})/logos/MAD.jpgp)/logos/LUX.jpgo)/logos/LTU.jpgn)/logos/LIE.jpgm)/logos/LES.jpgj)/logos/LCA.jpg �)/logos/LBR.jpgk)/logos/LBA.jpgl)/logos/LAT.jpgh)/logos/LAO.jpgg)/logos/KUW.jpge)/logos/KSA.jpg �)/logos/KOS.jpgd)/logos/KOR.jpg �)/logos/KIR.jpgc  o� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80( ���������������xof]TKB90'
�
�
�
�
�
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
	�	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&���    �oBEN�nLBA�mMAW�lGAM�kDJI�jSUD�iPLE�hSLE�gURU�fCOM�eKIR�dCHA�cANG�bZIM�aBOL�`GUI�_GUM�^GBS�]MDV�\SUR�[HON�ZTGA�YNIG�XGAB�WCIV�VMLI�UAND�TMON�SFIJ�RTOG�QVAN�PSYR�OBER�NLIE�MPNG�LANT�KESA�JSOM�ICPV�HBOT�GBDI�FGUY�EKEN�DGHA�CTJK�BCOD�AHAI�@CMR�?ZAM�>UGA�=SWZ�<MRI�;PAN�:BUR�9RWA�8HKG�7NAM�6PAR�5CRC�4LUX�3TTO�2ERI�1ETH�0BIZ�/MOZ�.COK�-SAM�,STP�+NGR�*RSA�)NED�(DOM�'JAM�&UAE�%SWE�$KSA�#ISL�"NCA�!VIE� MYA�ARU�MKD�BRA�MDA�CAN�MLT�ARM�MNE�GEO�TUN�YEM�JOR�LAT�ALB�GRE�ECU�IRQ�BUL�FIN�LBN�GUA�
CHI�	NZL�SEN�BRN�MAR�CYP�KUW�QAT�POR�IRL� EOR�NEP�~BIH�}KGZ�|SRI�{ALG�zBHU�yBEL�xSGP�wROU�vKOS�uAFG�tBAN�sTPE�rAUT�qPHI�pISR�oTHA�nPAK�mPER�lAZE�kCOL�jEST�iLTU�hVEN�gKAZ�fTUR�eARG�dOMA�cUKR�bCRO�aDEN�`IND�_FRA�^CUB�]HUN�\SLO�[MAS�ZUZB�YKOR�XPOL�WPUR�VMGL�UCZE�TINA�SGER�RSRB�QNOR�PSUI�OIRI�NBLR�MEGY�LMEX�KITA�JROC�IGBR�HCHN�GAUS�FJPN�ESVK�DUSA�CSMR�BESP�A	CAM�@	IRL�?	PRK�>	LCA�=	GRN�<	DMA�;	BAH�:	LBR�9	TAN�8	LES�7	IVB�6	ASA�5	NRU�4	SOL�3	ISV�2	TKM�1	MAD�0	LAO�/	SEY�.	BEN�-	LBA�,	MAW�+	GAM�*	DJI�)	SUD�(	PLE�'	SLE�&	URU�%	COM�$	KIR�#	CHA�"	ANG�!	ZIM� 	BOL�	GUI�	GUM�	GBS�	MDV�	SUR�	HON�	TGA�	NIG�	GAB�	CIV�	MLI�	AND�	MON�	FIJ�	TOG�	VAN�	SYR�	BER�	LIE�	PNG�	ANT�
	ESA�		SOM�	CPV�	BOT�	BDI�	GUY�	KEN�	GHA�	TJK�	COD� 	HAI	CMR~	ZAM}	UGA|	SWZ{	MRIz	PANy	BURx	RWAw	HKGv	NAMu	PARt	CRCs	LUXr	TTOq	ERIp	ETHo	BIZn	MOZm	COKl	SAMk	STPj	NGRi	RSAh	NEDg	DOMf	JAMe	UAEd	SWEc	KSAb	ISLa	NCA`	VIE_	MYA^	ARU]	MKD\	BRA[	MDAZ	CANY	MLTX	ARMW	MNEV	GEOU	TUNT	YEMS	JORR	LATQ	ALBP	GREO	ECUN	IRQM	BULL	FINK	LBNJ	GUAI	CHIH	NZLG	SENF	BRNE	MARD	CYPC	KUWB	QATA	POR@	IRL?	EOR>	NEP=	BIH<	KGZ;	SRI:	ALG9	BHU8	BEL7	SGP6	ROU5	KOS4	AFG3	BAN2	TPE1	AUT0	PHI/	ISR.	THA-	PAK,	PER+	AZE*	COL)	EST(	LTU'	VEN&	KAZ%	TUR$	ARG#	OMA"	UKR!	CRO 	DEN	IND	FRA	CUB	HUN	SLO	MAS	UZB	KOR	POL	PUR	MGL	CZE	INA	GER	SRB	NOR	SUI	IRI	BLR	EGY	MEX
	ITA		ROC	GBR	CHN	AUS	JPN	SVK	USA	SMR	ESP   B ������������~tj`VLB                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    �CAM�IRL� PRK�LCA�~GRN�}DMA�|BAH�{LBR�zTAN�yLES�xIVB�wASA�vNRU�uSOL�tISV�sTKM�rMAD�qLAO�pSEY   �/ ����mS4����x]A'����}_D%����cK/�����xN0
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
%�NZLCaitlin RYAN��	#�BELLize BROEKX���GERJule HAKE��/�BLRMaryna LITVINCHUK��'�HUNTamara CSIPES��)�GERSabrina HERING�   | ���wW8����}^E'����z_C�����hL3����|`B'
�
�
�
�
i
N
2
	�	�	�	�	~	b	;	�����cG'����mK*����mL/����hL-���`C(����|^:����uY=����wY<  �~-~FRAGuillaume MARTIN��}'}ERIMerhawi KUDUS��|)|ITAGiulio CICCONE��{+{CZEMichal SCHLEGEL��z!zGBRAdam YATES��y3yUZBMuradjan HALMURATOV��x)xDENJakob FUGLSANG�#�w;wDENChristopher JUUL JENSEN��v3vAUTHermann PERNSTEINER�#�u;uDENMichael Valgren HUNDAHL��t'tGERSimon GESCHKE��s'sHUNAttila VALTER��r'rROCIlnur ZAKARIN�&�qAqNORTobias Halland JOHANNESSEN��p%pSUIMarc HIRSCHI��o+oECURichard CARAPAZ�(�nEnCOLSergio Andres HIGUITA GARCIA��m'mSLOTadej POGACAR�!�l7lMEXEder FRAYRE MOCTEZUMA��k+kUKRAnatolii BUDIAK��j+jNEDWilco KELDERMAN��i+iKAZDmitriy GRUZDEV��h'hITAGianni MOSCON��g#gPOLRafal MAJKA��f#fFRADavid GAUDU��e/eBELGreg VAN AVERMAET��d%dCHNRuidong WANG��c)cAUSLuke DURBRIDGE��b-bNEDDylan VAN BAARLE�)�aGaVENOrluis Alberto AULAR SANABRIA��`1`GUAManuel RODAS OCHOA��_'_AZEElchin ASADOV�%�^?^CRCAndrey AMADOR BAKKAZAKOVA��])]AUSLucas HAMILTON��\-\CANGuillaume BOIVIN��['[ROCPavel SIVAKOV��Z-ZNORMarkus HOELGAARD�&�YAYCOLJhoan Esteban CHAVES RUBIO�*�XIXCOLNairo Alexander QUINTANA ROJAS��W'WNEDBauke MOLLEMA��V#VLUXMichel RIES��U'ULUXKevin GENIETS��T)TKAZVadim PRONSKIY��S1SMARMohcine EL KOURAJI� �R5RROUEduard-Michael GROSU��Q)QALGHamza MANSOURI��P)PSUIMichael SCHAER�!�O7OBLRAleksandr RIABUSHENKO��N1NESPAlejandro VALVERDE��M%MBURPaul DAUMONT��L1LGBRSimon Philip YATES��K3KESPJesus HERRADA LOPEZ��J/JARGEduardo SEPULVEDA�"�I9IGREPolychronis TZORTZAKIS��H'HIRLDaniel MARTIN��G+GJPNNariyuki MASUDA��F'FIRLEdward DUNBAR��E-ERSANicholas DLAMINI��D/DBELMauri VANSEVENANT��C'CTPEChun Kai FENG��B+BJPNYukiya ARASHIRO��A#ATURAhmet ORKEN�*�@I@ECUJhonnatan Manuel NARVAEZ PRADO��?'?RWAMoise MUGISHA��>#>NEDYoeri HAVIK��=%=ESTPeeter PRUUS��<3<LTUEvaldas SISKEVICIUS�$�;=;ESPGorka IZAGUIRRE INSAUSTI��:':HKGHiu Fung CHOY��9)9ITADamiano CARUSO��818AUTGregor MUEHLBERGER��7%7PORJoao ALMEIDA��6)6COLRigoberto URAN��5+5USABrandon MCNULTY��4/4USAG Lawson CRADDOCK��3'3BELWout VAN AERT��2%2SUIStefan KUENG�"�191ESPJon IZAGUIRRE INSAUSTI��0+0KAZAlexey LUTSENKO��/)/NORTobias S. FOSS��.'.RSAStefan DE BOD� �-5-EORAhmad Baddredin Wais��,-,ROCAleksandr VLASOV��+%+NEDTom DUMOULIN��*+*BELRemco EVENEPOEL��)')ESTTanel KANGERT�,�(M(PORNelson Filipe S. Simoes OLIVEIRA��'%'AUSRichie PORTE��&#&SVKLukas KUBIS�%)%GBRGeraint THOMAS��$)$AUTPatrick KONRAD��#%#LATToms SKUJINS��"!"CANHugo HOULE��!'!POLMaciej BODNAR�� ) ALGAzzedine LAGAB��)CZEMichael KUKRLE�!�7GERMaximilian SCHACHMANN��%FRARemi CAVAGNA��%AUSRohan DENNIS��1GBRTao GEOGHEGAN HART�#�;ERIAmanuel GHEBREIGZABHIER��'SLOPrimoz ROGLIC��%GERNikias ARNDT��)NZLGeorge BENNETT��)DENKasper ASGREEN��'ITAFilippo GANNA��'IRLNicolas ROCHE��-IRISaeid SAFARZADEH��'NZLPatrick BEVIN��+ITAAlberto BETTIOL��!GERLisa KLEIN��-EORMasomah Ali Zada��#USAAmber NEBEN��'AUSAmanda SPRATT��%NORStine BORGLI��/ITAMarta BASTIANELLI��
1
BELJulie VAN DE VELDE�&�	A	CHICatalina Anais SOTO CAMPOS��-AUSTiffany CROMWELL��/GBRElizabeth DEIGNAN��#NAMVera ADRIAN�$�=CUBArlenis SIERRA CANADILLA��#USALeah THOMAS�+�KMEXLizbeth Yareli Salazar Vázquez�
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
		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMM   �! ���y`D)����~`C%����wX7����lN'
����xW: 
�
�
�
�
h
L
.
	�	�	�	�	z	\	@	!	����nR8�����oQ6�����hM1����w[>&����v[D(����{`E&
����zZ>%����x[>!                       �j)jLUXStefan ZACHAUS��i)iNORCasper STORNES��h)hRSAHenri SCHOEMAN��g)gITADelian STATEFF��f+fBELMarten VAN RIEL��e'eFRADorian CONINX��d-dGERJustus NIESCHLAG��c+cESPFernando ALARZA��b!bESPMario MOLA��a!aHUNTamas TOTH��`'`AUTLukas HOLLAUS��_/_GBRJonathan BROWNLEE��^%^NZLHayden WILDE��]/]SUIAndrea SALVISBERG��\1\ROCDmitriy POLYANSKIY��[#[AUSAaron ROYLE��Z#ZFRALeo BERGERE��Y'YMARMehdi ESSADIQ��X-XCANTyler MISLAWCHUK��W%WMEXIrving PEREZ��V%VPORJoao PEREIRA��U/UAUSJacob BIRTWHISTLE��T'TIRLRussell WHITE��S/SITAGianluca POZZATTI��R!RCHIDiego MOYA��Q%QFRAVincent LUIS��P)PAUSMatthew HAUSER��O'OISRShachar SAGIV��NNGBRAlex YEE��M%MHUNBence BICSAK��L!LSUIMax STUDER��K)KCANMatthew SHARPE��J)JUSAKevin MCDOWELL��I'IHKGOscar COGGINS� �H5HNORKristian BLUMMENFELT��G+GROCIgor POLYANSKIY��FFISRRan SAGIV��E)EROUFelix DUCHAMPT��D'DIRLCarolyn HAYES��C1CITAVerena STEINHAUSER��B/BSUINicola SPIRIG HUG��A-ARSASimone ACKERMANN��@'@ITAAngelica OLMO��?3?FRACassandre BEAUGRAND��>'>AUSEmma JEFFCOAT��='=GBRVicky HOLLAND��<%<NORLotte MILLER��;/;GBRJessica LEARMONTH��:':USAKatie ZAFERES��9)9PORMelanie SANTOS��8#8ITAAlice BETTO��7'7AUSJaz HEDGELAND��6'6HUNZsofia KOVACS� �555ROCAlexandra RAZARENOVA��4%4CANAmelie KRETZ��3+3RSAGillian SANDERS��2!2ESPAnna GODOY��1'1MEXClaudia RIVAS��030ROCAnastasia GORBUNOVA��/'/ESTKaidi KIVIOJA��.).NZLAinsley THORPE��-+-HUNZsanett HORVATH��,%,CANJoanna BROWN��+#+NEDMaya KINGMA��*'*SUIJolanda ANNEN��)#)BERFlora DUFFY��(-(USASummer RAPPAPORT��'+'AUSAshleigh GENTLE��&3&NZLNicole VAN DER KAAY��%)%BRALuisa BAPTISTA��$)$BRAVittoria LOPES��#-#CZEVendula FRINTOVA��"'"MEXCecilia PEREZ��!+!ECUElizabeth BRAVO�� ' NEDRachel KLAMER��%GERAnabel KNOLL�"�9ESPMiriam CASILLAS GARCIA��+ARGRomina BIAGIOLI��'BELClaire MICHEL��+CHIBarbara RIVEROS��+GERLaura LINDEMANN��'AUTLisa PERTERER��%USATaylor KNIBB� �5GBRGeorgia TAYLOR-BROWN��%AUTJulia HAUSER��1EGYBasmla ELSALAMONEY��+FRALeonie PERIAULT��)JPNYuko TAKAHASHI��)CHNMengying ZHONG��)CZEPetra KURIKOVA��1BELValerie BARTHELEMY��+JPNNiina KISHIMOTO��'SUIZoe CLAESSENS�+CANDrew MECHIELSEN��-ROCNatalia SUVOROVA��)NEDMerel SMULDERS��
-
LATVineta PETERSONE$�	=	THAChutikan KITWANITSATHIAN��+AUSSaya SAKAKIBARA�-�OECUDomenica Michelle AZUERO GONZALEZ��!NEDJudy BAAUW��)JPNSae HATAKEYAMA��+FRAManon VALENTINO��-ROCNatalia AFREMOVA�%�?BRAPriscila STEVAUX CARNAVAL��1DENSimone CHRISTENSEN�� - GBRBethany SHRIEVER��+�USAFelicia STANCIL��~%�BELElke VANHOOF��}-�USAAlise WILLOUGHBY��|)�NEDLaura SMULDERS��{'�NZLRebecca PETCH��z)�COLMariana PAJÓN��y+�USAPayton RIDENOUR��x)�FRAAxelle ETIENNE��w+�AUSLauren REYNOLDS��v)�NORTore NAVRESTAD��u'�USAConnor FIELDS��t%�FRAJoris DAUDET��s)�LATHelvijs BABRIS��r'�FRARomain MAHIEU��q+�ITAGiacomo FANTONI��p%�RSAAlex LIMBERG��o'�FRASylvain ANDRE��n!�SUIDavid GRAF��m%�CANJames PALMER�(�lE�COLCarlos Alberto RAMIREZ YEPES��k/�SUISimon M. MARQUART��j1�ROCEvgeny KLESHCHENKO�   �$ ����kN5�����pT7�����lN2�����eE*����tWA%

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
		  ����������������������������������������������������������������������������������������������������������������������������������������������������������   } ����jN2����tXB$����{a>$���|]@"����~_6
�
�
�
�
k
P
3
	�	�	�	�	�	m	T	6		����jO2�����rF+����pP7����[=����uW3����z\2����gL-����tY1             �r5�POLAleksandra KOWALCZUK�%�q?�HONKeyla Paola AVILA RAMIREZ��p%�AUSReba STEWART��o%�CHNShuyin ZHENG��n'�SRBMilica MANDIC��m)�GBRBianca WALKDEN��l�TURNafia KUS�/�kS�DOMKatherine Julissa RODRIGUEZ PEGUERO��j%�KAZCansel DENIZ��i-�UZBSvetlana OSIPOVA��h%�KENFaith OGALLO��g�KORDabin LEE�#�f;�CIVAminata Charlene TRAORE��e%�CIVSeydou GBANE��d!�GBRMahama CHO��c#�CROIvan SAPINA�#�b;�TGAPita Nikolas TAUFATOFUA��a!�CHNHongyi SUN�'�`C�NIGAbdoulrazak ISSOUFOU ALFAGA��_+�MEXCarlos SANSORES� �^5�GABAnthony Mylann OBAME��]/�MKDDejan GEORGIEVSKI��\1�GERAlexander BACHMANN��[+�KAZRuslan ZHAPAROV��Z!�KORKyo Don IN��Y+�CUBRafael CASTILLO�!�X7�SLOIvan Konrad TRAJKOVIC��W+�ROCVladislav LARIN��V+�AFGFarzad MANSOURI�&�UA�CIVCheick Sallah Junior CISSE�"�T9�NORRichard Andre ORDEMANN��S#�CROToni KANAET��R)�ITASimone ALESSIO�"�Q9�AZEMilad BEIGI HARCHEGANI��P+�MARAchraf MAHBOUBI�/�OS�DOMMoises Daniel HERNANDEZ ENCARNACION��N-�ROCMaksim KHRAMTCOV��M+�BURFaysal SAWADOGO� �L5�ESPRaul MARTINEZ GARCIA��K/�UZBNikita RAFALOVICH�'�JC�BRAIcaro Miguel MARTINS SOARES��I!�EGYSeif EISSA��H/�JORSaleh ELSHARABATY��G#�AUSJack MARTON��F%�TPEWei-Ting LIU��E+�EORAbdullah Sediqi��D1�IRIMirhashem HOSSEINI�)�CG�BRAEdival MARQUES QUIRINO PONTES��B%�BELJaouad ACHAB��A%�TPEYu-Jen HUANG�)�@G�EGYAbdelrahman Wael MAHMOUD ABOW��?)�JPNRicardo SUZUKI��>�NZLTom BURNS��=%�BIHNedzad HUSIC��<!�CHNShuai ZHAO��;%�DOMBernardo PIE��:/�ESPJavier PEREZ POLO��9'�GBRBradly SINDEN��8-�UZBUlugbek RASHITOV�7%�TURHakan RECBER��6'�MLISeydou FOFANA��5#�KORDaehoon LEE��4+�USANicole AHSINGER��33�CANRosannagh MACLENNAN��21�MEXDafne NAVARRO LOZA��1#�GBRBryony PAGE��0%�CHNLingling LIU��/+�ROCSusana KOCHESOK��.!�JPNMegu UYAMA��-#�CHNXueying ZHU��,�CHNDong DONG��++�ROCDmitrii USHAKOV� �*5�BLRUladzislau HANCHAROU��))�AUSDominic CLARKE��(#�JPNDaiki KISHI��''�NZLDylan SCHMIDT��&-�BLRIvan LITVINOVICH�%%�ROCAndrey YUDIN�$�$=�MEXDaniel DELGADILLO FAISAL��#/�GERFlorian WELLBROCK��"3�HKGWilliam Yan THORLEY� �!5�ITAGregorio PALTRINIERI�� /�HUNKristof RASOVSZKY��-�ESPAlberto MARTINEZ�&�A�GBRHector Thomas Cheal PARDOE��-�TUNOussama MELLOULI��!�CANHau-Li FAN��%�ISRMatan RODITI��'�CZEMatej KOZUBEK��-�JPNTaishin MINAMIDE��#�FRADavid AUBRY��%�PORTiago CAMPOS��+�NAMPhillip SEIDLER��)�NEDFerry WEERTMAN��-�ROCKirill ABROSIMOV�&�A�KAZJose Luis DEL VILLAR GALAN� �5�FRAMarc-Antoine OLIVIER��/�USAJordan WILIMOVSKY��+�ECUDavid FARINANGO��+�RSAMichael MCGLYNN��#�AUSKai EDWARDS� �5�GREAthanasios KYNIGAKIS��#�GERRob MUFFELS��)�ITAMario SANZULLO��
#�SLOSpela PERSE��	�VENYang WANG��)�USAHaley ANDERSON��)�PORAngelica ANDRE��/�BRAAna Marcela CUNHA��+�USAAshley TWICHELL���CHNXin XIN��'�ITARachele BRUNI��3�UKRKrystyna PANCHISHKO���JPNYumi KIDA�� '�GERFinnia WUNRAM��-ECUSamantha AREVALO� �~5~SGPLi-Shan Chantal LIEW�#�};}ALGSouad Nefissa CHEROUATI��|'|GBRAlice DEARING��{'{FRALara GRANGEON��z-zARGCecilia BIAGIOLI��y!yHUNAnna OLASZ�$�x=xROCAnastasiia KIRPICHNIKOVA��w#wAUSKareena LEE��v)vRSAMichelle WEBER�   ~	 ����qR9 ���lQ9����~\= �����hO)����mM2
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
SEYRodney GOVINDEN��#	JPNKenji NANRI��'GBRElliot HANSON��3GUAJuan Ignacio MAEGLI�&�AARGFrancisco GUARAGNA RIGONAT��%SAMEroni LEILUA��%TTOAndrew LEWIS�'�CESAEnrique Jose ARATHOON PACAS� �5FRAJean Baptiste BERNAZ�� !AUSMatt WEARN��% GERPhilipp BUHL��~)�SLOZan Luka ZELKO��}+�CYPPavlos KONTIDES��|�NZLSam MEECH��{�KORJeemin HA��z'�MNEMilivoj DUKIC��y+�BELWannes VAN LAER�#�x;�LCALuc Franck Leo CHEVRIER��w'�FINKaarle TAPPER��v/�PERStefano PESCHIERA��u+�CHIClemente SEGUEL��t/�ROCSergei KOMISSAROV��s/�ESTKarl-Martin RAMMO�$�r=�MASKhairulnizam MOHD AFENDY��q!�EGYAly BADAWY��p�SGPRyan LO��o%�PNGTeariki NUMA��n-�CROTonci STIPANOVIC��m1�USACharlie BUCKINGHAM� �l5�ESPJoel RODRIGUEZ PEREZ��k1�NORHermann TOMASGAARD��j+�HUNBenjamin VADNAI��i)�BRARobert SCHEIDT��h+�SWEJesper STALHEIM��g-�INDVishnu SARAVANAN��f%�TUNEya GUEZGUEZ��e)�TUNSarra GUEZGUEZ�%�d?�PERMaria Pia VAN OORDT LOPEZ��c3�PERDiana TUDELA BALLON��b�CHNYe JIN��a#�CHNShasha CHEN��`#�JPNSena TAKANO��_'�JPNAnna YAMAZAKI��^#�AUTTanja FRANK�   � ����z\5����z^E-����sX?&����sW; ����nU8
�
�
�
�
r
V
:
!
	�	�	�	�	n	Q	3	�����]E+����qL3�����eI-�����rO1����{[? ����a>"�����nK/����tY;                    �])�NZLHannah OSBORNE��\+�NZLBrooke DONOGHUE��[%�ROUSimona RADIS��Z'�ROUAncuta BODNAR�&�YA�MEXJose Gerardo ULLOA AREVALO��X-�AUSDaniel MCCONNELL��W-�POLBartlomiej WAWAK��V)�JPNKohei YAMAMOTO��U%�ROUVlad DASCALU��T'�ROCAnton SINTSOV� �S5�ESPJofre CULLELL ESTAPE��R%�CANPeter DISERA��Q+�SUIFilippo COLOMBO��P)�GBRThomas PIDCOCK��O%�GERManuel FUMIC��N%�NZLAnton COOPER�%�M?�DENSebastian Fini CARSTENSEN��L'�FRAJordan SARROU� �K5�NEDMathieu VAN DER POEL�"�J=�CHIMartin VIDAURRE KOSSMANN�I#�CZEOndrej CINK�!�H7�BRALuiz Henrique COCUZZI��G-�AUTMaximilian FOIDL��F)�GREPeriklis ILIAS��E'�RSAAlan HATHERLY� �D5�ESPDavid VALERO SERRANO��C'�NORErik HAEGSTAD��B/�GERMaximilian BRANDL��A/�BRAHenrique AVANCINI��@%�ITALuca BRAIDOT��?+�FRAVictor KORETZKY��>1�SUIMathias FLUECKIGER��=3�USAChristopher BLEVINS��<#�NAMAlex MILLER��;+�ITANadir COLLEDANI� �:5�ITAGerhard KERSCHBAUMER��9!�CHNPeng ZHANG��8%�ISRShlomi HAIMY��7%�HUNAndras PARTI��6'�SUINino SCHURTER��5+�BELJens SCHUERMANS��4#�NEDMilan VADER��3�USAErin HUCK��2'�AUTLaura STIGGER��1'�NEDAnne TERPSTRA��0-�BRAJaqueline MOURAO��//�GERElisabeth BRANDAU��./�AUSRebecca MCCONNELL��-#�NEDAnne TAUBER��,)�UKRYana BELOMOYNA��+'�GBREvie RICHARDS��*'�FRALoana LECOMTE��)!�CHNBianwa YAO�"�(9�FRAPauline FERRAND PREVOT��'-�NAMMichelle VORSTER��&%�USAHaley BATTEN��%#�ESTJanika LOIV��$/�POLMaja WLOSZCZOWSKA�)�#G�MEXDaniela CAMPUZANO CHAVEZ PEON��"#�DENMalene DEGN��!#�CANHaley SMITH�� �SUISina FREI�!�7�ARGSofia GOMEZ VILLAFANE��%�RSACandice LILL��#�ITAEva LECHNER�*�I�ESPRocio del Alba GARCIA MARTINEZ��%�SUIJolanda NEFF��)�PORRaquel QUEIROS���JPNMiho IMAI��+�SUILinda INDERGAND��)�BELGitha MICHIELS��1�ROCViktoria KIRSANOVA��%�SLOTanja ZAKELJ��+�CZEJitka CABELICKA��/�CANCatharine PENDREL��)�SWEJenny RISSVEDS��'�DENCaroline BOHE��!�GERRonja EIBL��+�HUNKata Blanka VAS�'�USAKate COURTNEY��'�CANWilliam JONES��#�CANEvan DEPAUL��+�RSABenjamin DANIEL��
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
		  �������������������������������������������������������������  �x~w}v|u{tzsyrxqwpvountmslrkqjpiohngmflekdjcibhag`f_e^d]c\b[aZ`Y_X^W]V\U[TZSYRXQWPVOUNTMSLRKQJPIOHNGMF���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{   � ����nR1����e<�����mO1����~]?"���z\=!
�
�
�
�
�
g
K
/
	�	�	�	�	|	c	D	*	�����t\D'����{U4����{aC)�����fN2�����oV; ����~eH�����nT9�����jQ9       �^3�EGYYasmine FAHMY LATIF�]#�FRAJulie FABRE�\%�RSAGareth EWING�[#�USAKen ERIKSEN�Z'�USASusan ENQUIST�Y)�USAChip ENGELLAND�X!�HUNGabor ELEK�W'�EGYNour ELAFANDI�V)�JPNAtsushi EITOKU�U%�IRLAnthony EDDY�T-�VENManuel ECHEZURIA�S)�AUSTrisha DYKSTRA�R'�VENFernando DURO!�Q;�BRA de GALARZA Jorge DUENA�P-�SLODragisa DROBNJAK�O#�CANKarine DORE�N'�USAHoward DOBSON�M+�ESPNatalia DIDENKO�L7�DOMNestor DIAZ HENRIQUEZ&�KE�ESPJenaro Manuel DIAZ FERNANDEZ�J-�KAZZhanna DEMCHENKO�I%�NZLMike DELANEY�H#�CHIFabian DAZA�G#�AUSJeremy DAVY�F/�ROCTatiana DANCHENKO�E#�IRLSean DANCER�D+�BRARenan DAL ZOTTO�C#�ANGFilipe CRUZ �B9�COLMargalida CRESPI JAUME�A)�FRADavid COURTEIX�@%�BELAdam COMMENS�?)�FRAVincent COLLET�>3�INDGregg CLARK STEPHEN�=%�PRKJooweon CHUN�<#�PRKIl Eon CHOI�;'�SMRSimona CHIARI�:1�GRENatalia CHERNETSKA�9/�EGYAnastasiya CHEPAK�8+�AUSCheryl CHAMBERS�7#�CHIAlex CASTRO�6/�JPNMary Lucy CASAREZ�5#�MEXCarlos CARO�43�ITAAlessandro CAMPAGNA�3!�NEDMax CALDAS!�2;�ARGManuel CADENAS MONTANES�1!�CANMick BYRNE�0)�GERAxel BUSENKELL�/'�ROCSergio BUSATO�./�ITAGiovanna BURLANDO�-'�NZLAllan BUNTING�,'�AUTAristide BRUN�+'�NGRMichael BROWN�*#�USAChris BROWN�)+�AUSSandy BRONDELLO�(/�BRAWilliam BRODERICK�''�NORMarit BREIVIK�&%�NGRAlice BOLTON�%5�ITAGianlorenzo BLENGINI#�$?�ISRSvetlana BLECHER SIDOROVA�##�HUNAttila BIRO �"9�INDAnkitha BILLAVA SURESH�!+�NORChristian BERGE� !�USALaura BERG�%�SRBFilip BENCIC"�=�PURGerardo BATISTA SANTIAGO�-�ARGFernando BATISTA�#�AUSColin BATCH�#�GBRPaola BASSO�#�CANMel BASILIO�%�ROCPawel BARYLA�!�CHNZhuang BAO�-�POLWojciech BANBULA�'�ROUHoratiu BACIU�1�FIJGareth Colin BABER�#�SWETomas AXNER�'�AUSGraham ARNOLD�1�JPNXavier ARNAU CREUS�%�NEDAlyson ANNAN�/�USAVlatko ANDONOVSKI�-�ESPPablo AMO AGUADO�3�PURFabian AMAYA GAITAN��EGYKamal ALY�'�KSASaad ALSHEHRI%�C�ESPManuel Angel ALLER CARBALLO�
+�ROCAlexey ALEKSEEV�	+�IRIVladimir ALEKNO�'�CANLonni ALAMEDA�'�GERKais AL SAADI#�?�JPNSiegfried Gottlieb AIKMAN�!�JPNYuya AGEBA�%�CIVCherif ADAMA�'�JPNKatsuhiko ABE��JPNJunya ABE�+�EGYWael ABDELMAGID� -�MARZouheir ELGRAOUI��+�MARMohammed ABICHA��~3JPNKatsuhiro SHIRATORI��}+~JPNYusuke ISHIJIMA�,�|M}ITAAdrian Ignacio CARAMBULA RAURICH��{%|ITAEnrico ROSSI��z+{CZEDavid SCHWEINER��y)zCZEOndrej PERUSIC��x+yAUSDamien SCHUMANN��w1xAUSChristopher MCHUGH��v1wARGJulian Amado AZAAD��u1vARGNicolas CAPOGROSSO��t%uSUIMirco GERSON��s+tSUIAdrian HEIDRICH��r)sPOLBartosz LOSIAK��q%rPOLPiotr KANTOR��p+qUSANicholas LUCENA��o+pUSAPhil DALHAUSSER��n!oUSATri BOURNE��m!nUSAJacob GIBB��l-mPOLGrzegorz FIJALEK��k#lPOLMichal BRYL��j+kNEDRobert MEEUWSEN��i/jNEDAlexander BROUWER�#�h;iMEXJose Luis RUBIO CAMARGO�&�gAhMEXJosue Gaston GAXIOLA LEYVA�!�f7gESPAdrian GAVIRA COLLADO��e7fESPPablo HERRERA ALLEPUZ�d+eCHIEsteban GRIMALT��c'dCHIMarco GRIMALT��b'cBRABruno SCHMIDT�-�aObBRAEvandro GONCALVES OLIVEIRA JUNIOR��`1aROCKonstantin SEMENOV��_'`ROCIlya LESHUKOV��^%_ITADaniele LUPO��]'^ITAPaolo NICOLAI��\+]GERClemens WICKLER��[%\GERJulius THOLE��Z3[BRAAlvaro MORAIS FILHO�   �- ����uZB'�����lR3����]A&
����sM3�����dF+
�
�
�
�
�
m
S
:
!
	�	�	�	�	�	Y	<	#	����~eH+�����hP7����gO8����uT8�����w]E/����|[;#
����z]D&�����fG-                     �f'mUSAElena MAYBURY�e1lJPNYasushi MATSUODANI�d/kJPNYoshiyuki MATSUNO�c#jRSAMario MASHA�b#iRSAPaul MARTIN�a3hESPDavid MARTIN LOZANO�`1gCHIFernando MARINELLI�_)fINDSjoerd MARIJNE�^#eHUNTamas MARCZ�]/dVENAndres MANZANILLO�\%cAUSJohn MANENTI�[-bSRBMarina MALJKOVIC�Z#aJPNHare MAKIRI�Y/`RSASibusiso MAHLANGU�X#_JPNKenzo MAEDA(�WI^CHNEuan Michael Gordon MACKINTOSH�V!]SLOAnze MACEK�U%\MEXJaime LOZANO�T#[NGRLuke LOUCKS�S3ZARGMonica Susana LOPEZ�R5YDOMMelvyn LOPEZ GUILLEN�Q7XKENLeonard LOPES BARBOSA�P)WMEXAdriana LOFTUS�O1VESPAdrian Mayner LOCK�N'UCHIJose LETELIER�M3TESPJesus LAZARO CORRAL�L-SPRKStefano LAVARINI�KRCHNPing LANG�J#QJPNJulio LAMAS�I'PNZLClark LAIDLAW�H%ODOMMarcos KWIEK�G%NROCAndrey KUZIN�F%MGERStefan KUNTZ�E/LCANKatarzyna KULESZA�D/KFRAOlivier KRUMBHOLZ�C1JBRNAron KRIST JANSSON�B)IUSAAdam KRIKORIAN�A+HSRBSvetlana KONTIC�@5GROCAleksei KONSTANTINOV�?'FCIVAnthony KOFFI�>-EKAZNemanja KNEZEVIC�=+DNEDAuke KLARENBEEK�</CJPNKenji KITABAYASHI�;1BAUSAndrew KIRKPATRICK�:'AJPNUlrik KIRKELY�9%@USAKarch KIRALY�8!?PRKHagbum KIM�7#>PRKChanbin KIM�6#=GBRDanny KERRY�5)<GERFlorian KELLER�4+;JPNTakafumi KAZAMA�3%:JPNAsaki KAWASE�2)9ZAMBergin KANUNGO�1%8PRKJae Won KANG�0'7JPNMakoto KANEKO�/'6BELPierre KAISER�.%5AUSNathan JONES�-#4CANChris JONES�,)3USAVickie JOHNSON�+72ESPCecilia JIMENEZ NIETO�*#1CHNXiuquan JIA�)'0CIVEssapa JEROME�(%/AUSDee JENNINGS�'5.NEDEsther JAUMA CAYUELA�&'-BRAAndre JARDINE�%-,DENNikolaj JACOBSEN�$-+JPNKensuke IWABUCHI�#%*JPNMasayo IMURA�"+)NGROtis HUGHLEY JR�!'(USADaniel HUGHES� 5'JPNThomas Wayne HOVASSE�)&HUNZoltan HOLANEK�!%CANGlenn HOAG�+$JPNNorikazu HIROSE�%#POLVital HEYNEN�-"ARGSergio HERNANDEZ'�G!ESPJose Ignacio HERNANDEZ FRAILE�1 NORThorir HERGEIRSSON�'CANAndre HENNING�%GERClaas HENKEL�-CAMThon Ponloeu HEM�NZLDanny HAY�%NEDArno HAVENGA�%USALaura HARVEY�%AUSLaing HARROW�'USAWilliam HARDY�'NGRDarvin de HAM�'NEDRhett HALKETT�!DENSimon HALD�-CIVSoualiho HAIDARA�!GBRMark HAGER�+AUSTony GUSTAVSSON �
9BRAJose Roberto GUIMARAES�	)VENRonald GUILLEN�/TURGiovanni GUIDETTI�-MEXRolando GUERRERO�-MEXRolando GUERRERO�5ESPJulen GUERRERO LOPEZ�+ROCElena GRYZUNOVA�+
GERArne GRESKOWIAK�/	ITAGianluca GRAZIOSI�/GRECristina GRAUPERA� 'IRLAdam GRAINGER#�?ESPJuan David GORDO MANSILLA�~)AUSBrian GOORJIAN�}7ESPAngel GONZALEZ JARENO�|+MEXAnibal GONZALEZ�{3ARGSantiago GOMEZ CORA�z/MNEVladimir GOJKOVIC�y+ GERAlfred GISLASON�x)�CZERonen GINZBURG�w+�FRAGuillaume GILLE�v7�ITAPatrizia GIALLOMBARDO�u-�TUNAntonio GIACOBBE�t/�SWEPeter GERHARDSSON�s+�FRAValerie GARNIER�r5�COLPaula GARCIA PIZARRO�q'�DOMNestor GARCIA�p7�DOMManuel GARCIA HERRERA�o1�ROCAleksandr GAIDUKOV�n'�CANPasha GADEMAN�m#�FIJSaiasi FULI�l'�ESPMayuko FUJIKI�k3�USAMatthew FUERBRINGER�j)�USAAndrea FUENTES�i#�USAMike FRIDAY�h'�GBRScott FORREST�g+�FRALaurent FOIREST�f)�USATairia FLOWERS�e#�ISRNathan FISH�d)�ARGHernan FERRARO�c1�UKRTetiana FEDIUSHYNA�b'�VENPablo FAVAREL�a'�AUSElvis FATOVIC�`/�ITARoberta FARINELLI�_'�HONMiguel FALERO   �) ����iM'����t\B%����{]? �����hM3�����qV9"
�
�
�
�
y
Z
?
%

	�	�	�	�	�	g	J	(	����y`E)�����rS;"����cG.�����y`?�����hO4�����~eK-����r\G1�����u[C)             �p'�ROCSergey YURKIN�o#�CHNLingxi YUAN�n'�JPNNoriko YAMAJI�m�CHNLimin XU�l'�USAJerold WRIGHT�k%�POLPawel WOICKI"�j=�ARGRoberto Osvaldo WOELFLIN�i#�CHIOscar WIRTH�h)�NEDSarina WIEGMAN�g+�USAJerry WEINSTEIN�f�CHNYang WANG�e�CHNJie WANG�d�AUSTim WALSH�c%�USAMichael WALL�b)�ROCElena VORONOVA�a/�GRETheodoros VLACHOS#�`?�ESPCarlos Enrique VIVER ARZA#�_?�KEN de SOUZA Marcelo VITORIN�^-�VENOrlando VILLEGAS�]/�ESPAnna VEGA HERRERO�\'�VENDiego VASQUEZ�[%�JPNReika UTSUGI�Z+�UKRVolodymyr UTKIN�Y)�USADejan UDOVICIC�X�USAIme UDOKA�W%�NZLGlenn TURNER�V#�CROIvica TUCAK�U-�ITAYumiko TOMOMATSU�T)�FRALaurent TILLIE�S)�CANLisa THOMAIDIS�R%�SRBZoran TERZIC�Q-�GREAna TARRES CAMPA�P%�USAHeather TARR�O'�JPNRisako TAKITA�N)�JPNAsako TAKAKURA�M%�CHIGerman TAGLE�L%�SLONora SZAUDER�K'�CANGabor SZAUDER�J3�BLRAliona SVETLICHNAYA�I5�BRAPia Mariane SUNDHAGE�H%�BELJacques STAS�G+�AUSDave STANIFORTH�F#�USADawn STALEY�E-�GBRStefania SPERONI�D#�USAJohn SPERAW�C)�ESPFrederic SOYEZ�B'�SWEGlenn SOLBERG�A!�CANMark SMITH�@%�NZLDarren SMITH�?+�INDShivendra SINGH�>+�KENInnocent SIMIYU�=-�JPNDagur SIGURDSSON�<'�EGYZaghloul SIAM�;'�EGYGharib SHAWKY�:#�NZLGraham SHAW�9-�AUTShahbaz SHAHNAZI�8-�IRIMehran SHAHINTAB�7%�NZLTom SERMANNI�6#�PRKChun Oh SEO�51�SLOAleksander SEKULIC�4+�NGRApril SCHILLING�3+�ESPSergio SCARIOLO�2!�MNEMaja SAVIC�1#�SRBDejan SAVIC�0%�VENRonald SARTI�/-�ROCTuomas SAMMELVUO�.'�EGYMohamed SALAM�-+�ITARomeo SACCHETTI�,)�GBRAnthony ROQUES�+%�GERHenrik ROEDL"�*=�ARGEduardo Rafael RODRIGUEZ�))�FRASylvain RIPOLL�(#�AUSJohn RILLIE�'!�GBRHege RIISE�&3�ESPJordi RIBERA ROMANS�%3�ARGCarlos Jose RETEGUI�$7�ESPJudit REQUENA PERICAS�#-�INDGraham John REID�"-�GERXavier RECKINGER�!#�ROUMirel RADOI� '�CANBev PRIESTMAN�5�ESPJoaquin PRADO BRANAS�#�RSANeil POWELL�)�AUSKatrina POWELL�)�AUSAnthony POTTER�'�CHNPetar POROBIC�)�USAGregg POPOVICH�1�ITAFederico PIZZOLINI�3�ROCEkaterina PISKAREVA�+�ITARossella PIBIRI�!�VENJose PEREZ�3�PORPaulo Jorge PEREIRA�)�MEXOfelia PEDRERO�)�SMRIsabella PECCI�!�CANHenry PAUL�-�EGYRoberto PARRONDO�)�CANDavid PARADELO�)�VENHernan PANTOJA�-�ITAGiovanna PALERMI�7�PURAngel PAGAN CRISTOBAL�!�JPNYoji OMOTO�!�KENFelix OLOO�
#�NGROgoh ODAUDU�	7�ESPMiguel Angel OCA GAIA�'�RSADavid NOTOANE�)�JPNTakumi NISHIDA�-�CIVChristophe NEVES�+�RSAMthandazo NCUBE�/�JPNYuichi NAKAGAICHI�#�JPNKumi NAKADA�%�RSATaren NAIDOO�#�JPNShoji NAGAE� #�ZAMBruce MWAPE�1�MEXNoe de Jesus MUNOZ�~/�CHNAdilijiang MULATI�}/�JPNMakihiro MOTOMIYA�|+�JPNHajime MORIYASU�{-�AUSLoredana MONTICO�z5�ESPLucas MONDELO GARCIA�y-�NGRSilifat MOHAMMED�x)KSASayeda MOHAMED�w#~EGYMai MOHAMED�v-}AUTAlbena MLADENOVA�u'|JPNMiya MIYAKAWA�t#{JPNKeiko MIURA�s3zESPDaniel MIRET GARCIA�r/yCZEMichal MIREJOVSKY�q1xAUSPredrag MIHAILOVIC�p)wFRARachid MEZIANE�o1vUKRValeriia MEZHENINA�n+uBELPhilip MESTDAGH#�m?tDOM del ROSARIO Jose MERCEDE�l+sRSADelaine MENTOOR�k3rESPGemma MENGUAL CIVIL �j9qARGMarcelo Rodolfo MENDEZ�i%pNGRBobby MEDINA�h+oITADavide MAZZANTI�g1nNEDEmmanuel MAYONNADE
  I� ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  
�
�
�
�
�
�
�
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
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	x	p	h	`	X	P	H	@	8	0	(	 				 ����������������xph`XPH@80(  ����������������xph`XPH@80(  ����������������xph`XPH@80(  ���������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ��� �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~�}�|�{�z�yx~w}v|u{tzsyrxqwpvountmslrkqjpiohngmflekdjcibhag`f_e^d]c\b[aZ`Y_X^W]V\U[TZSYRXQWPVOUNTMSLRKQJPIOHNGMFLEKDJCIBHAG@F?E>D=C<B;A:@9?8>7=6<5;4:39281706/5.4-3,2+1*0)/(.'-&,%+$*#)"(!' &%$#"! 
	
	 ������ �������������������������������������������������������������������������������������������������������������������������������������������������������   V ����pV                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �v'RSANkuliso ZONDI�u!NEDSimon ZIJP�t)CHNXiaohuan ZHANG�s1 LIEFrancesca ZAMPIERI �r9�ESPJavier ZAMORA PEDREIRA�q+�UKROlesia ZAITSEVA   �� ������jS=)������xdP:$�������q]I5!�������nZF3������}iUA-
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
Tokyo 2020	#	Sydney 2000%Beijing 2008%Beijing 2008!Tokyo 2020!Tokyo 2020!Tokyo 2020#London 2012%Beijing 2008	#London 2012   �X �����vaL4������jT>(������zeO9#������qX?'������u`G1
�
�
�
�
�
�
k
V
?
)
	�	�	�	�	�	�	r	]	G	1		�����}gQ;%������r]G/�����|gQ;%������qXB,������qYD. �����v]G1�����jT>(������pX  �Z#ZLondon 2012�Y!YTokyo 2020�X!XTokyo 2020�W%WBeijing 2008�V!VTokyo 2020�U#ULondon 2012�T#TLondon 2012�S!STokyo 2020�R!RTokyo 2020�Q!QTokyo 2020�P!PTokyo 2020�O!OTokyo 2020�NNRio 2016�M#MAthens 2004�L%LAtlanta 1996�K!KTokyo 2020�JJRio 2016�IIRio 2016�H!HTokyo 2020�G	GRio 2016�F!FTokyo 2020�E!ETokyo 2020�D!DTokyo 2020�C%CBeijing 2008�B%		BBeijing 2008�A%ABeijing 2008�@!@Tokyo 2020�?!	?Tokyo 2020�>!>Tokyo 2020�=!=Tokyo 2020�<!<Tokyo 2020�;#;London 2012�:!:Tokyo 2020�99Rio 2016�8#8London 2012�7!7Tokyo 2020�6!6Tokyo 2020�5%5Beijing 2008�4#		4London 2012�3%3Beijing 2008�2!2Tokyo 2020�11Rio 2016�0#0Athens 2004�/!	/Tokyo 2020�.!.Tokyo 2020�-%-Beijing 2008�,!,Tokyo 2020�+	+Rio 2016�*#*Athens 2004�)!)Tokyo 2020�(!	(Tokyo 2020�'#'London 2012�&#&London 2012�%%Rio 2016�$!$Tokyo 2020�#!#Tokyo 2020�"!"Tokyo 2020�!!Rio 2016� ! Tokyo 2020�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�#Sydney 2000�Rio 2016�#London 2012�!Tokyo 2020�Rio 2016�!Tokyo 2020�!	Tokyo 2020�!			Seoul 1988	�!Tokyo 2020�Rio 2016�%	Atlanta 1996�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
!
Tokyo 2020�	!		Tokyo 2020�!Tokyo 2020�#London 2012�#	London 2012�!Tokyo 2020�		Rio 2016�#	London 2012�Rio 2016�!Tokyo 2020� ! Tokyo 2020� �Rio 2016�~! �Tokyo 2020�}# �London 2012�|! �Tokyo 2020�{#	 �Athens 2004�z! �Tokyo 2020�y! �Tokyo 2020�x# �London 2012�w! �Tokyo 2020�v! �Tokyo 2020�u! �Tokyo 2020�t �Rio 2016�s	 �Rio 2016�r! �Tokyo 2020�q �Rio 2016�p! �Tokyo 2020�o! �Tokyo 2020�n! �Tokyo 2020�m	 �Rio 2016���l# �London 2012�k! �Tokyo 2020�j! �Tokyo 2020�i%	 �Beijing 2008�h	 �Rio 2016�g! �Tokyo 2020�f# �London 2012�e! �Tokyo 2020�d! �Tokyo 2020�c! �Tokyo 2020�b! �Tokyo 2020�a! �Tokyo 2020�`! �Tokyo 2020�_# �London 2012�^%	 �Beijing 2008�]% �Beijing 2008�\! �Tokyo 2020�[	 �Rio 2016�Z#		 �Athens 2004�Y �Rio 2016�X �Rio 2016�W! �Tokyo 2020�V% �Beijing 2008�U! �Tokyo 2020�T! �Tokyo 2020�S! �Tokyo 2020�R! �Tokyo 2020�Q �Rio 2016�P �Rio 2016�O! �Tokyo 2020�N! �Tokyo 2020�M! �Tokyo 2020�L! �Tokyo 2020�K! �Tokyo 2020�J! �Tokyo 2020�I �Rio 2016�H! �Tokyo 2020�G! �Tokyo 2020�F! �Tokyo 2020�E! �Tokyo 2020�D! �Tokyo 2020�C �Rio 2016�B! �Tokyo 2020�A! �Tokyo 2020�@%	 �Atlanta 1996�?# �London 2012�>! �Tokyo 2020�=! �Tokyo 2020�<# �London 2012�; �Rio 2016�: �Rio 2016�9 �Rio 2016�8! �Tokyo 2020�7! �Tokyo 2020�6# �London 2012�5%	 �Beijing 2008�4# �Sydney 2000   �c �����|fN6 
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
Tokyo 2020�	!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�	Rio 2016�!Tokyo 2020�#	London 2012�#	London 2012�!Tokyo 2020�#		London 2012� ! Tokyo 2020�!�Tokyo 2020�~�Rio 2016�}#	�London 2012�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!	�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o	�Rio 2016�n#	�London 2012�m	�Rio 2016�l!�Tokyo 2020�k�Rio 2016�j�Rio 2016�i!�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d�Rio 2016�c!�Tokyo 2020�b�Rio 2016�a!�Tokyo 2020�`	�Rio 2016�_!�Tokyo 2020�^#	�London 2012�]!�Tokyo 2020�\!�Tokyo 2020�[�Rio 2016�Z!�Tokyo 2020�Y�Rio 2016�X#�London 2012�W!�Tokyo 2020�V!�Tokyo 2020�U	�Rio 2016�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q	�Rio 2016�P!�Tokyo 2020�O�Rio 2016�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K�Rio 2016�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F�Rio 2016�E!�Tokyo 2020�D!�Tokyo 2020�C!�Tokyo 2020�B�Rio 2016�A!�Tokyo 2020�@!�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<	�Rio 2016�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6!�Tokyo 2020�5#		�London 2012�4�Rio 2016�3%�Beijing 2008�2!	�Tokyo 2020�1	�Rio 2016�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,%			�Beijing 2008�+%	�Beijing 2008�*!	�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'�Rio 2016�&!�Tokyo 2020�%�Rio 2016�$!�Tokyo 2020�#�Rio 2016�"!�Tokyo 2020�!#	�London 2012   �d �����{fP7!������gM7!������t\G1������mW?)������vaK6 

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
	�	�	�	�	�	�	r	]	G	2		������kU@(������s]G1������hR<&������v^F-�����zaK3�����waL7!	������qYA)������zd              �p!		�Tokyo 2020�o!	�Tokyo 2020�n!	�Tokyo 2020�m!�Tokyo 2020�l!	�Tokyo 2020�k�Rio 2016�j!	�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g#	�London 2012�f#�London 2012�e#		�Athens 2004�d	�Rio 2016�c!	�Tokyo 2020�b!�Tokyo 2020�a	�Rio 2016�`!	�Tokyo 2020�_!	�Tokyo 2020�^!�Tokyo 2020�]#	�London 2012�\!�Tokyo 2020�[�Rio 2016�Z	�Rio 2016�Y!�Tokyo 2020�X!�Tokyo 2020�W#�London 2012�V!�Tokyo 2020�U!�Tokyo 2020�T%	�Beijing 2008�S#�London 2012�R#	�London 2012�Q#�London 2012�P#		�London 2012�O!	�Tokyo 2020�N%�Beijing 2008�M!�Tokyo 2020�L!	�Tokyo 2020�K�Rio 2016�J		�Rio 2016�I#�London 2012�H#	�London 2012�G!�Tokyo 2020�F!	�Tokyo 2020�E%	�Beijing 2008�D#			�London 2012�C#�London 2012�B!�Tokyo 2020�A#	�London 2012�@�Rio 2016�?!�Tokyo 2020�>!�Tokyo 2020�=!	�Tokyo 2020�<�Rio 2016�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7#�London 2012�6!�Tokyo 2020�5�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1#�London 2012�0!�Tokyo 2020�/!�Tokyo 2020�.!		�Tokyo 2020�-!	�Tokyo 2020�,!�Tokyo 2020�+#	�London 2012�*!	�Tokyo 2020�)!	�Tokyo 2020�(#	�London 2012�'#		�London 2012��&!�Tokyo 2020�%		�Rio 2016�$!�Tokyo 2020�##	�London 2012�"�Rio 2016�!!�Tokyo 2020� !�Tokyo 2020�	�Rio 2016�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!	�Tokyo 2020��Rio 2016�!�Tokyo 2020�%	�Beijing 2008�!�Tokyo 2020�#	�London 2012�!�Tokyo 2020�!�Tokyo 2020�		�Rio 2016��Rio 2016�%�Beijing 2008�!		�Tokyo 2020�
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
		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKK~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     �l �����|fN8"������lV@*������pZE-������}gN6�����}gQ7"
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
������mWA+������|fQ;&������zeO9#������kU='������t_J4������nV='������xbL6 
������l                      �!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�%	�Beijing 2008�#�London 2012� !�Tokyo 2020�!	Tokyo 2020�~!~Tokyo 2020�}!}Tokyo 2020�|!|Tokyo 2020�{!{Tokyo 2020�z!zTokyo 2020�y!yTokyo 2020�x!xTokyo 2020�w!wTokyo 2020�vvRio 2016�uuRio 2016�t	tRio 2016�s#	sLondon 2012�r!	rTokyo 2020�q!qTokyo 2020�p!pTokyo 2020�o!oTokyo 2020�n#nLondon 2012�m!mTokyo 2020�l!lTokyo 2020�k#kLondon 2012�j!	jTokyo 2020�i	iRio 2016�h%		hBeijing 2008�g!gTokyo 2020�f	fRio 2016�e!eTokyo 2020�d!dTokyo 2020�c#cAthens 2004�b#bLondon 2012�a!	aTokyo 2020�`!`Tokyo 2020�_!_Tokyo 2020�^	^Rio 2016�]!]Tokyo 2020�\%\Beijing 2008�[#		[London 2012�ZZRio 2016�YYRio 2016
�XX��W!	WTokyo 2020�V!VTokyo 2020�U	URio 2016�T!		TTokyo 2020�S	SRio 2016�R!RTokyo 2020�Q!QTokyo 2020�P!PTokyo 2020�O!	OTokyo 2020�N	NRio 2016�M!MTokyo 2020�L!	LTokyo 2020�K!KTokyo 2020�J!JTokyo 2020�I!ITokyo 2020�H!HTokyo 2020�G!GTokyo 2020�F#	FLondon 2012�E%EBeijing 2008�D!DTokyo 2020�C!	CTokyo 2020�BBRio 2016�A	ARio 2016�@!@Tokyo 2020�?	?Rio 2016�>!	>Tokyo 2020�=!=Tokyo 2020�<!<Tokyo 2020�;#	;London 2012�:!:Tokyo 2020�9!9Tokyo 2020�8!8Tokyo 2020�7!7Tokyo 2020�6		6Rio 2016�5%	5Beijing 2008�4!4Tokyo 2020�3#3London 2012�2!2Tokyo 2020�1!1Tokyo 2020�0#		0London 2012�/!/Tokyo 2020�.!.Tokyo 2020�--Rio 2016�,!	,Tokyo 2020�+!+Tokyo 2020�*!*Tokyo 2020�)#	)London 2012�((Rio 2016�''Rio 2016�&%	&Beijing 2008�%!%Tokyo 2020�$!	$Tokyo 2020�#!	#Tokyo 2020�"!		"Tokyo 2020�!#!London 2012� !	 Tokyo 2020�%	Beijing 2008�#London 2012�!Tokyo 2020�#	London 2012�#London 2012�#London 2012�!	Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�#London 2012�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�%		Beijing 2008�
#	
London 2012�			Rio 2016�Rio 2016�%Beijing 2008�#	Athens 2004�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#	London 2012�  Rio 2016�#		�London 2012�~#�London 2012�}!	�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x#�London 2012�w!	�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t#	�Athens 2004�s�Rio 2016�r�Rio 2016�q!		�Tokyo 2020   �q �����zdN8#������u_I4������kU?)������{cN9#������pZD.
�
�
�
�
�
~
i
P
7

	�	�	�	�	�	�	m	W	A	+		 �����~hP:$������pZD/�����{fP:$������u`J2�����~hS='������xbU?)������ycM7!������q                       �@!	@Tokyo 2020�?!	?Tokyo 2020�>!	>Tokyo 2020�=!	=Tokyo 2020�<!	<Tokyo 2020�;!	;Tokyo 2020�:!	:Tokyo 2020�9!	9Tokyo 2020�8!	8Tokyo 2020�7!	7Tokyo 2020�6!		6Tokyo 2020�5!	5Tokyo 2020�4!	4Tokyo 2020�3!	3Tokyo 2020�2!	2Tokyo 2020�1!	1Tokyo 2020�0!	0Tokyo 2020�/!	/Tokyo 2020�.!	.Tokyo 2020�-!	-Tokyo 2020�,!		,Tokyo 2020�+!		+Tokyo 2020
�*	*��)!	)Tokyo 2020�(!	(Tokyo 2020�'!	'Tokyo 2020�&!	&Tokyo 2020�%	%Rio 2016�$!	$Tokyo 2020�#!	#Tokyo 2020�"!	"Tokyo 2020�!!	!Tokyo 2020� !		 Tokyo 2020�!	Tokyo 2020�	Rio 2016�!	Tokyo 2020�!	Tokyo 2020�#	London 2012�!	Tokyo 2020�!	Tokyo 2020�!		Tokyo 2020�!	Tokyo 2020�!	Tokyo 2020�#	London 2012�#	London 2012�!	Tokyo 2020�	Rio 2016�!	Tokyo 2020�!	Tokyo 2020�!	Tokyo 2020�#	London 2012�		Rio 2016�!	Tokyo 2020�	Rio 2016�
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
	
																					 	 ������������������������������������������������������	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   �] �����|fP:$������t^H2������oYC-������y`J4	������jT>(
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


	�	�	�	�	�	�	l	V	@	*	������xbL6 
������lVA+������zdN8"������lV@*������t_I3������nT?)������zdN8#������s]   �i!	�Tokyo 2020�h!	�Tokyo 2020�g!	�Tokyo 2020�f!	�Tokyo 2020�e!	�Tokyo 2020�d!	�Tokyo 2020�c!	�Tokyo 2020�b!	�Tokyo 2020�a!	�Tokyo 2020�`	�Rio 2016�_!	�Tokyo 2020�^!	�Tokyo 2020�]!	�Tokyo 2020�\!	�Tokyo 2020�[!		�Tokyo 2020�Z!	�Tokyo 2020�Y	�Rio 2016�X!	�Tokyo 2020�W!	�Tokyo 2020�V!	�Tokyo 2020�U!	�Tokyo 2020�T!	�Tokyo 2020�S		�Rio 2016�R%		�Beijing 2008�Q!	�Tokyo 2020�P!	�Tokyo 2020�O#	�London 2012�N!	�Tokyo 2020�M!	�Tokyo 2020�L	�Rio 2016�K	�Rio 2016�J!	�Tokyo 2020�I	�Rio 2016�H!	�Tokyo 2020�G!	�Tokyo 2020�F		�Rio 2016�E%		�Beijing 2008�D!	�Tokyo 2020�C!	�Tokyo 2020�B	�Rio 2016�A!	�Tokyo 2020�@#		�London 2012�?	�Rio 2016�>%		�Beijing 2008�=!		�Tokyo 2020�<!	�Tokyo 2020�;!	�Tokyo 2020�:!	�Tokyo 2020�9#	�London 2012�8!	�Tokyo 2020�7!	�Tokyo 2020�6!	�Tokyo 2020�5!	�Tokyo 2020�4	�Rio 2016�3)	�Vancouver 2010�2!	�Tokyo 2020�1!	�Tokyo 2020�0!	�Tokyo 2020�/!	�Tokyo 2020�.#	�London 2012�-		�Rio 2016�,!	�Tokyo 2020�+!	�Tokyo 2020�*!	�Tokyo 2020�)!	�Tokyo 2020�(!	�Tokyo 2020�'!	�Tokyo 2020�&!	�Tokyo 2020�%	�Rio 2016�$!	�Tokyo 2020�#!	�Tokyo 2020�"#	�London 2012�!!		�Tokyo 2020� !	�Tokyo 2020�#	�London 2012�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�	�Rio 2016�%	�Beijing 2008�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�%	�Beijing 2008�
#	�London 2012�	!	�Tokyo 2020�		�Rio 2016�!	�Tokyo 2020�!	�Tokyo 2020�	�Rio 2016�!		�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020� !	�Tokyo 2020�	Rio 2016�~!	~Tokyo 2020�}!	}Tokyo 2020�|#			|London 2012�{!	{Tokyo 2020�z!	zTokyo 2020�y!	yTokyo 2020�x!	xTokyo 2020�w!	wTokyo 2020�v!		vTokyo 2020�u%	uBeijing 2008�t!	tTokyo 2020�s!	sTokyo 2020�r!	rTokyo 2020�q#		qLondon 2012�p!	pTokyo 2020�o!	oTokyo 2020�n	nRio 2016�m!	mTokyo 2020�l!	lTokyo 2020�k!	kTokyo 2020�j%	jBeijing 2008�i!	iTokyo 2020�h!	hTokyo 2020�g	gRio 2016�f!	fTokyo 2020�e!		eTokyo 2020�d%		dBeijing 2008�c!		cTokyo 2020�b#	bLondon 2012�a!	aTokyo 2020�`!	`Tokyo 2020�_!	_Tokyo 2020�^!		^Tokyo 2020�]!	]Tokyo 2020�\!	\Tokyo 2020�[	[Rio 2016�Z	ZRio 2016�Y	YRio 2016�X!	XTokyo 2020�W!	WTokyo 2020�V!	VTokyo 2020�U!	UTokyo 2020�T!	TTokyo 2020�S!	STokyo 2020�R!	RTokyo 2020�Q!	QTokyo 2020�P!	PTokyo 2020�O!		OTokyo 2020�N!	NTokyo 2020�M!		MTokyo 2020�L!	LTokyo 2020�K!	KTokyo 2020�J!	JTokyo 2020�I!	ITokyo 2020�H!		HTokyo 2020�G!	GTokyo 2020�F!	FTokyo 2020�E!	ETokyo 2020�D!		DTokyo 2020�C!	CTokyo 2020�B!	BTokyo 2020�A!	ATokyo 2020   �h �����{eP;&������xbJ5	������lT>(������zdL7"������u_I3
�
�
�
�
�
�
n
V
@
(
	�	�	�	�	�	�	v	`	J	4			������q[F0������jT>&������sZB*������{eO9$������u_J4�����iS>(������vaL4	������h              �#
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
 Tokyo 2020�!	�Tokyo 2020�~	�Rio 2016�}#	�Athens 2004�|!	�Tokyo 2020�{	�Rio 2016�z	�Rio 2016�y#	�London 2012�x	�Rio 2016�w!	�Tokyo 2020�v!	�Tokyo 2020�u	�Rio 2016�t!	�Tokyo 2020�s		�Rio 2016�r	�Rio 2016�q		�Rio 2016�p!	�Tokyo 2020�o!	�Tokyo 2020�n		�Rio 2016�m!	�Tokyo 2020�l!	�Tokyo 2020�k#	�London 2012�j!	�Tokyo 2020
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
 	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�   �e �����iS='������s]G.�����iT>(������v`J2������qXB, 
�
�
�
�
�
y
c
M
7

		�	�	�	�	�	�	m	W	A	)	������s]G1������lS=(������u`G2������kU?)������|gQ;&������v`J4�����iS>)������{e           �;!<Tokyo 2020�:!;Tokyo 2020�9!	:Tokyo 2020�8!	9Tokyo 2020�7!8Tokyo 2020�6!	7Tokyo 2020�5!	6Tokyo 2020�45Rio 2016�34Rio 2016�2		3Rio 2016�12Rio 2016�0!1Tokyo 2020�/!0Tokyo 2020�.!	/Tokyo 2020�-!.Tokyo 2020�,!	-Tokyo 2020�+!,Tokyo 2020�*%+Beijing 2008�)!*Tokyo 2020�(%)Beijing 2008�'(Rio 2016�&!'Tokyo 2020�%!&Tokyo 2020�$!%Tokyo 2020�#!$Tokyo 2020�"!#Tokyo 2020�!%"Beijing 2008� !Rio 2016�! Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�Rio 2016�!	Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�
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
�Tokyo 2020
�F
���E!
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
�Rio 2016�
�Rio 2016   �i �����iT>&������v`J4	������mX@(������{eO9#������jT>&
�
�
�
�
�
�
v
a
K
6
 
	�	�	�	�	�	�	r	\	F	1		������p[F1������pZD.������jT?)������~hR<'������zdN9#������s]G1������lVA+ �����~i           �f�Rio 2016�e!�Tokyo 2020�d!�Tokyo 2020�c�Rio 2016�b!�Tokyo 2020�a�Rio 2016�`!�Tokyo 2020�_�Rio 2016�^!�Tokyo 2020�]!�Tokyo 2020�\�Rio 2016�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X�Rio 2016�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!	�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!�Tokyo 2020�E�Rio 2016�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?�Rio 2016�>!�Tokyo 2020�=�Rio 2016�<�Rio 2016�;!�Tokyo 2020�:	�Rio 2016�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6�Rio 2016�5�Rio 2016�4	�Rio 2016�3!�Tokyo 2020�2!�Tokyo 2020�1�Rio 2016�0!�Tokyo 2020�/�Rio 2016�.!�Tokyo 2020�-�Rio 2016�,!	�Tokyo 2020�+!�Tokyo 2020�*!�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'!�Tokyo 2020�&!�Tokyo 2020�%�Rio 2016�$�Rio 2016�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016�	�Rio 2016�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020��Rio 2016�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�
�Rio 2016�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�	�Rio 2016�!�Tokyo 2020�#		�London 2012�	�Rio 2016� �Rio 2016�!�Tokyo 2020�~Rio 2016�}!~Tokyo 2020�|}Rio 2016�{!|Tokyo 2020�z!	{Tokyo 2020�yzRio 2016�x	yRio 2016�w	xRio 2016�v!wTokyo 2020�u!	vTokyo 2020�t%uBeijing 2008�s#tLondon 2012�r!sTokyo 2020�q!rTokyo 2020�p#	qLondon 2012�o!pTokyo 2020�n!oTokyo 2020�m#			nLondon 2012�l!mTokyo 2020�k!	lTokyo 2020�j#kLondon 2012�ijRio 2016�h!iTokyo 2020�g!hTokyo 2020�f!gTokyo 2020�e!fTokyo 2020�deRio 2016�c!dTokyo 2020�bcRio 2016�a!bTokyo 2020�`!aTokyo 2020�_`Rio 2016�^!_Tokyo 2020�]!	^Tokyo 2020�\#]London 2012�[#\London 2012�Z[Rio 2016�Y#	ZLondon 2012�X!	YTokyo 2020�W!XTokyo 2020�V!WTokyo 2020�U!VTokyo 2020�T!	UTokyo 2020�S		TRio 2016�RSRio 2016�Q!RTokyo 2020�P!QTokyo 2020�O!	PTokyo 2020�N!OTokyo 2020�M#NLondon 2012�L		MRio 2016�K!LTokyo 2020�J!KTokyo 2020�I!		JTokyo 2020�H!ITokyo 2020�G!		HTokyo 2020�FGRio 2016�E#FLondon 2012�D!	ETokyo 2020�CDRio 2016�B!	CTokyo 2020�ABRio 2016�@!ATokyo 2020�?@Rio 2016�>?Rio 2016�=!	>Tokyo 2020�<!=Tokyo 2020
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
		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}���������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLK   �^ �����}gQ;%������v`J4������nXB, �����|cK5 
������mWA+
�
�
�
�
�
�
{
e
L
3

	�	�	�	�	�	�	k	U	?	)	������t_I3������q\F0�����iS='������waK5 
������q[E/������lV@+������}gQ;%������t^  �!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
�Rio 2016�	!�Tokyo 2020�#	�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020��Rio 2016�!�Tokyo 2020� !�Tokyo 2020��Rio 2016�~!	Tokyo 2020�}!~Tokyo 2020�|!	}Tokyo 2020�{|Rio 2016�z!{Tokyo 2020�y!zTokyo 2020�xyRio 2016�wxRio 2016�vwRio 2016�u!vTokyo 2020�t!uTokyo 2020�s!		tTokyo 2020�r!sTokyo 2020�q!rTokyo 2020�p!qTokyo 2020�o!pTokyo 2020�n!oTokyo 2020�m!	nTokyo 2020�lmRio 2016�k!lTokyo 2020�j!	kTokyo 2020�i!jTokyo 2020�h!iTokyo 2020�g!	hTokyo 2020�f!	gTokyo 2020�e!	fTokyo 2020�deRio 2016�c!dTokyo 2020�b!cTokyo 2020�a!bTokyo 2020�`!aTokyo 2020�_!`Tokyo 2020�^_Rio 2016�]#^London 2012�\]Rio 2016�[!\Tokyo 2020�Z!	[Tokyo 2020�Y!ZTokyo 2020�X!YTokyo 2020�W!XTokyo 2020�V!WTokyo 2020�U!VTokyo 2020�TURio 2016�S!TTokyo 2020�R!	STokyo 2020�Q!RTokyo 2020�P!	QTokyo 2020�O#PLondon 2012�N!OTokyo 2020�M!NTokyo 2020�L!MTokyo 2020�K!LTokyo 2020�JKRio 2016�IJRio 2016�HIRio 2016�G!	HTokyo 2020�F!GTokyo 2020�EFRio 2016�D!ETokyo 2020�C!DTokyo 2020�B!	CTokyo 2020�ABRio 2016�@!ATokyo 2020�?!@Tokyo 2020�>?Rio 2016�=	>Rio 2016�<!=Tokyo 2020�;#<London 2012�:!;Tokyo 2020�9#:London 2012�8!9Tokyo 2020�7#8London 2012�6!7Tokyo 2020�5!6Tokyo 2020�4!5Tokyo 2020�3!	4Tokyo 2020�2!3Tokyo 2020�1#2London 2012�0!	1Tokyo 2020�/!0Tokyo 2020�./Rio 2016�-!.Tokyo 2020�,#	-London 2012�+!,Tokyo 2020�*+Rio 2016�)%*Beijing 2008�(%			)Beijing 2008�'!(Tokyo 2020�&'Rio 2016�%!&Tokyo 2020�$!%Tokyo 2020�#$Rio 2016�"##London 2012�!!"Tokyo 2020� !!Tokyo 2020�!	 Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�#	Athens 2004�!	Tokyo 2020�Rio 2016�!	Tokyo 2020�#	London 2012�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� !Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w�Rio 2016�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l�Rio 2016�k!�Tokyo 2020�j!�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g!	�Tokyo 2020   �o �����fP:%������vaK5������oZD.�����~hR='������{fP;%
�
�
�
�
�
�
u
]
H
2

	�	�	�	�	�	�	n	X	B	,	������zdN8"������nXB,������rXC-�����jU?*������}hR<&������ycM5	������nYD.������o                   �:;Rio 2016�9:Rio 2016�8!		9Tokyo 2020�78Rio 2016�6	7Rio 2016�56Rio 2016�45Rio 2016�34Rio 2016�2!3Tokyo 2020�1!2Tokyo 2020�0	1Rio 2016�/0Rio 2016�./Rio 2016�-.Rio 2016�,%-Beijing 2008�+!,Tokyo 2020�*!+Tokyo 2020�)!*Tokyo 2020�(!)Tokyo 2020�'!	(Tokyo 2020�&!'Tokyo 2020�%#&London 2012�$!%Tokyo 2020�#!$Tokyo 2020�"!#Tokyo 2020�!"Rio 2016� !	!Tokyo 2020�! Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�Rio 2016�#London 2012�	Rio 2016�Rio 2016�Rio 2016�!	Tokyo 2020�	Rio 2016�Rio 2016�!Tokyo 2020�Rio 2016�!	Tokyo 2020�Rio 2016�Rio 2016�
!Tokyo 2020�	!	
Tokyo 2020�	Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016� %Beijing 2008� Rio 2016�~#	�London 2012�}#�London 2012�|!�Tokyo 2020�{%	�Beijing 2008�z!�Tokyo 2020�y#�London 2012�x!�Tokyo 2020�w�Rio 2016�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r#�London 2012�q!�Tokyo 2020�p%	�Beijing 2008�o!�Tokyo 2020�n!�Tokyo 2020�m�Rio 2016�l!�Tokyo 2020�k!�Tokyo 2020�j!�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f!	�Tokyo 2020�e	�Rio 2016�d!�Tokyo 2020�c!�Tokyo 2020�b%		�Beijing 2008�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]	�Rio 2016�\�Rio 2016�[!	�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S	�Rio 2016�R#�London 2012�Q�Rio 2016�P�Rio 2016�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!	�Tokyo 2020�K#		�London 2012�J!�Tokyo 2020�I!�Tokyo 2020�H�Rio 2016�G!�Tokyo 2020�F	�Rio 2016�E�Rio 2016�D�Rio 2016�C!�Tokyo 2020�B�Rio 2016�A�Rio 2016�@!	�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<		�Rio 2016�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6�Rio 2016�5!�Tokyo 2020�4#�London 2012�3!�Tokyo 2020�2�Rio 2016�1!�Tokyo 2020�0!�Tokyo 2020�/	�Rio 2016�.�Rio 2016�-	�Rio 2016�,!�Tokyo 2020�+!�Tokyo 2020�*!	�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'!�Tokyo 2020�&#�London 2012�%!	�Tokyo 2020�$!�Tokyo 2020�#�Rio 2016�"�Rio 2016�!!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�	�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�%�Beijing 2008��Rio 2016�		�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�	�Rio 2016�!�Tokyo 2020   �c �����{cM7������nXC-������lV@+�����{bL6!������s]G1
�
�
�
�
�
�
n
X
C
-

	�	�	�	�	�	}	g	O	9	#	������q[F1�����iS='������waK5	������oYC-�����{eO9#������s]G1������kU?)������yc       �d!�Tokyo 2020�c!�Tokyo 2020�b!�Tokyo 2020�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!	�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!	�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!�Tokyo 2020�E!�Tokyo 2020�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?!	�Tokyo 2020�>!�Tokyo 2020�=!�Sochi 2014�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6!�Tokyo 2020�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,!�Tokyo 2020�+!�Tokyo 2020�*!�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'!�Tokyo 2020�&!�Tokyo 2020�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�#	�London 2012�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�#�London 2012�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�#	�London 2012�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�!�Tokyo 2020� �Rio 2016�!�Tokyo 2020�~!Tokyo 2020�}~Rio 2016�|!}Tokyo 2020�{	|Rio 2016�z{Rio 2016�y!zTokyo 2020�x!	yTokyo 2020�w		xRio 2016�v!	wTokyo 2020�u!vTokyo 2020�t!uTokyo 2020�s!tTokyo 2020�r!	sTokyo 2020�q!rTokyo 2020�p!qTokyo 2020�o!pTokyo 2020�n!	oTokyo 2020�m!nTokyo 2020�l!mTokyo 2020�k!lTokyo 2020�j	kRio 2016�i!jTokyo 2020�hiRio 2016�ghRio 2016�f!gTokyo 2020�e!fTokyo 2020�d%	eBeijing 2008�c!	dTokyo 2020�b!cTokyo 2020�a!bTokyo 2020�`#aLondon 2012�_!`Tokyo 2020�^!_Tokyo 2020�]	^Rio 2016�\	]Rio 2016�[	\Rio 2016�Z![Tokyo 2020�Y!ZTokyo 2020�XYRio 2016�W!XTokyo 2020�VWRio 2016�UVRio 2016�TURio 2016�S!TTokyo 2020�R!STokyo 2020�QRRio 2016�P!QTokyo 2020�O!PTokyo 2020�N	ORio 2016�M!NTokyo 2020�LMRio 2016�K!LTokyo 2020�J!KTokyo 2020�I!	JTokyo 2020�H!ITokyo 2020�G!HTokyo 2020�F!GTokyo 2020�E#FLondon 2012�D#ELondon 2012�C!DTokyo 2020�B!CTokyo 2020�A#BLondon 2012�@!ATokyo 2020�?@Rio 2016�>!	?Tokyo 2020�=!	>Tokyo 2020�<#	=London 2012�;!<Tokyo 2020
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
		  �������������������������������������������������������������������������������������������������������������������������������������������������������������   �] �����{eP;%������xbL6 
�����~eO7 
������lW?*������waH2
�
�
�
�
�

j
U
?
)
	�	�	�	�	�	�	u	_	H	2		�����ycI3������iS=(������v`J5
������kU@*������mWA+������ycM4�����~hR<&������s]       �!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�'�Helsinki 1952�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�~!Tokyo 2020�}#~London 2012�|!}Tokyo 2020�{#|London 2012�z!{Tokyo 2020�y!zTokyo 2020�x!yTokyo 2020�w#xLondon 2012�v%	wBeijing 2008�u!	vTokyo 2020�t!	uTokyo 2020�s!tTokyo 2020�r!sTokyo 2020�qrRio 2016�p!qTokyo 2020�o!pTokyo 2020�noRio 2016�m!nTokyo 2020�l%	mBeijing 2008�k!lTokyo 2020�j!	kTokyo 2020�i!jTokyo 2020�h-iLos Angeles 1984�ghRio 2016�f)gBarcelona 1992�e#fLondon 2012�deRio 2016�c!dTokyo 2020�bcRio 2016�a#bLondon 2012�`!aTokyo 2020�_`Rio 2016�^!_Tokyo 2020�]!^Tokyo 2020�\#]London 2012�[\Rio 2016�Z![Tokyo 2020�Y!	ZTokyo 2020�X#		YAthens 2004�W#	XLondon 2012�V	WRio 2016�U!	VTokyo 2020�TURio 2016�S!	TTokyo 2020�R!	STokyo 2020�QRRio 2016�P!		QTokyo 2020�O#PAthens 2004�N#OAthens 2004�M!NTokyo 2020�L!MTokyo 2020�K!LTokyo 2020�JKRio 2016�IJRio 2016�H!ITokyo 2020�G!HTokyo 2020�F%	GBeijing 2008�E!	FTokyo 2020�D	ERio 2016�C!DTokyo 2020�B#CLondon 2012�A!BTokyo 2020�@!ATokyo 2020�?!@Tokyo 2020�>!?Tokyo 2020�=!>Tokyo 2020�<%	=Beijing 2008�;!<Tokyo 2020�:#;Athens 2004�9#	:London 2012�8!9Tokyo 2020�7%		8Beijing 2008�6!	7Tokyo 2020�5!6Tokyo 2020�4!	5Tokyo 2020�3#4London 2012�2!	3Tokyo 2020�1!2Tokyo 2020�0!1Tokyo 2020�/0Rio 2016�.!/Tokyo 2020�-!.Tokyo 2020�,%-Beijing 2008�+,Rio 2016�*!+Tokyo 2020�)#	*London 2012�(!	)Tokyo 2020�'!(Tokyo 2020�&!	'Tokyo 2020�%&Rio 2016�$%Rio 2016�#!	$Tokyo 2020�"!#Tokyo 2020�!#"London 2012� !Rio 2016�!		 Tokyo 2020�#Athens 2004�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�#London 2012�!Tokyo 2020�#London 2012�#London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016�#London 2012�Rio 2016�!Tokyo 2020�#London 2012�!	Tokyo 2020�
!Tokyo 2020�	!	
Tokyo 2020�#	London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#	London 2012�!Tokyo 2020�%	Beijing 2008�!Tokyo 2020� #London 2012�#	 London 2012�~#�Sydney 2000�}!	�Tokyo 2020�|#	�London 2012�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!�Tokyo 2020�v�Rio 2016�u�Rio 2016�t!�Tokyo 2020�s!�Tokyo 2020�r�Rio 2016�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m	�Rio 2016�l�Rio 2016�k!�Tokyo 2020�j#	�London 2012�i		�Rio 2016�h!		�Tokyo 2020�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020   �j �����}gQ8"������pZD. �����}hR:$������r]E/������lT?*
�
�
�
�
�
�
w
a
K
2

	�	�	�	�	�	�	n	X	B	,	������|fP:%������t^H2������nYC-�����}hS='������wbL6 
������mWA+������v`J4�����j                �45Rio 2016�3	4Rio 2016�2!	3Tokyo 2020�1#	2London 2012�0		1Rio 2016�/!	0Tokyo 2020�.!	/Tokyo 2020�-#.London 2012�,#	-London 2012�+!	,Tokyo 2020�*!	+Tokyo 2020�)!		*Tokyo 2020�(!	)Tokyo 2020�'!		(Tokyo 2020�&#'Sydney 2000�%!	&Tokyo 2020�$!	%Tokyo 2020�##$London 2012�"#			#Sydney 2000�!"Rio 2016� !	!Tokyo 2020�!	 Tokyo 2020�!		Tokyo 2020�#	Athens 2004�!Tokyo 2020�Rio 2016�#Athens 2004�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�	Rio 2016�#London 2012�Rio 2016�!Tokyo 2020�!Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�!	Tokyo 2020�Rio 2016�	Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� !Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{�Rio 2016�z�Rio 2016�y�Rio 2016�x!�Tokyo 2020�w�Rio 2016�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s�Rio 2016�r#�London 2012�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m�Rio 2016�l#�Sydney 2000�k!�Tokyo 2020�j!	�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f�Rio 2016�e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b�Rio 2016�a!�Tokyo 2020�`!�Tokyo 2020�_	�Rio 2016�^!�Tokyo 2020�]!�Tokyo 2020�\#�London 2012�[!	�Tokyo 2020�Z!	�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!	�Tokyo 2020�S!	�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P�Rio 2016�O�Rio 2016�N%�Beijing 2008�M!�Tokyo 2020�L!�Tokyo 2020�K�Rio 2016�J#	�London 2012�I!�Tokyo 2020�H!�Tokyo 2020�G#�London 2012�F!�Tokyo 2020�E!�Tokyo 2020�D!	�Tokyo 2020�C�Rio 2016�B�Rio 2016�A#�Athens 2004�@!�Tokyo 2020�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<�Rio 2016�;�Rio 2016�:�Rio 2016�9!	�Tokyo 2020�8!�Tokyo 2020�7!�Tokyo 2020�6#�London 2012�5	�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0%			�Beijing 2008�/!�Tokyo 2020�.!�Tokyo 2020�-�Rio 2016�,!�Tokyo 2020�+#�London 2012�*!�Tokyo 2020�)�Rio 2016�(�Rio 2016�'!�Tokyo 2020�&!�Tokyo 2020�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!#	�London 2012� !�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#		�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�%�Beijing 2008�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�#�London 2012��Rio 2016��Rio 2016�	�Rio 2016
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
		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}|{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJI}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     �g �����xY?&������v`G1�����zbL6 ������lT?)������waH3
�
�
�
�
�
�
i
S
6

	�	�	�	�	�	|	f	P	:	$	������lS=(������xcM8#������q[@+������v`H2 �����}gO9#������jT>(������pZD.�����g                     �Y#�Sydney 2000�X!	�Tokyo 2020�W!	�Tokyo 2020�V!	�Tokyo 2020�U!	�Tokyo 2020�T!	�Tokyo 2020�S!	�Tokyo 2020�R!	�Tokyo 2020�Q�Rio 2016�P!	�Tokyo 2020�O!	�Tokyo 2020�N!	�Tokyo 2020�M!	�Tokyo 2020�L!	�Tokyo 2020�K%�Beijing 2008�J#	�London 2012�I�Rio 2016�H�Rio 2016�G%�Beijing 2008�F#�London 2012�E!	�Tokyo 2020�D!	�Tokyo 2020�C!	�Tokyo 2020�B!	�Tokyo 2020�A%�Beijing 2008�@!	�Tokyo 2020�?!	�Tokyo 2020�>%�Beijing 2008�=#		�Sydney 2000�<#�Athens 2004�;�Rio 2016�:!	�Tokyo 2020�9!	�Tokyo 2020�8#		�Athens 2004�7�Rio 2016�6�Rio 2016�5!	�Tokyo 2020�4!	�Tokyo 2020�3!	�Tokyo 2020�2!	�Tokyo 2020�1!	�Tokyo 2020�0)	�Barcelona 1992�/!	�Tokyo 2020�.!	�Tokyo 2020�-#�London 2012�,!	�Tokyo 2020�+%�Beijing 2008�*!	�Tokyo 2020�)!	�Tokyo 2020�(!	�Tokyo 2020�'!	�Tokyo 2020�&!	�Tokyo 2020�%#�Athens 2004�$!	�Tokyo 2020�#�Rio 2016�")			�Barcelona 1992�!!	�Tokyo 2020� !	�Tokyo 2020��Rio 2016�!	�Tokyo 2020�#		�London 2012�!	�Tokyo 2020�!	�Tokyo 2020�!		�Tokyo 2020�!	�Tokyo 2020��Rio 2016��Rio 2016�!	�Tokyo 2020��Rio 2016�!	�Tokyo 2020�!	�Tokyo 2020�!		�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020��Rio 2016�!	�Tokyo 2020�
%	�Beijing 2008�	!	�Tokyo 2020�%�Atlanta 1996�#	�London 2012�!	�Tokyo 2020�!	�Tokyo 2020�%		�Atlanta 1996�!	�Tokyo 2020�!	�Tokyo 2020�!	�Tokyo 2020� !	�Tokyo 2020�!		�Tokyo 2020�~!	Tokyo 2020�}!	~Tokyo 2020�|!	}Tokyo 2020�{|Rio 2016�z#{London 2012�y!	zTokyo 2020�x%yAtlanta 1996�w%	xAtlanta 1996�v#	wLondon 2012�u)vBarcelona 1992�t!	uTokyo 2020�s#tAthens 2004�r!	sTokyo 2020�q#	rLondon 2012�p!	qTokyo 2020�o!	pTokyo 2020�noRio 2016�m!	nTokyo 2020�l!	mTokyo 2020�k!		lTokyo 2020�jkRio 2016�i%jBeijing 2008�h!	iTokyo 2020�g%hBeijing 2008�f#		gLondon 2012�e!	fTokyo 2020�deRio 2016�cdRio 2016�b!	cTokyo 2020�abRio 2016�`!		aTokyo 2020�_!	`Tokyo 2020�^_Rio 2016�]#			^London 2012�\%	]Atlanta 1996�[!	\Tokyo 2020�Z!	[Tokyo 2020�Y!	ZTokyo 2020�X#YAthens 2004�WXRio 2016�V!		WTokyo 2020�UVRio 2016�T!		UTokyo 2020�S!	TTokyo 2020�R!	STokyo 2020�Q#RLondon 2012�P!	QTokyo 2020�O%PBeijing 2008�N!	OTokyo 2020�M%NBeijing 2008�LMRio 2016�K#LLondon 2012�J!	KTokyo 2020�I!	JTokyo 2020�H!	ITokyo 2020�G%HBeijing 2008�F!	GTokyo 2020�E!	FTokyo 2020�D!	ETokyo 2020�C!	DTokyo 2020�BCRio 2016�ABRio 2016�@#ALondon 2012�?!	@Tokyo 2020�>!	?Tokyo 2020�=%>Beijing 2008�<%	=Beijing 2008�;-<Los Angeles 1984�:!	;Tokyo 2020�9!	:Tokyo 2020�8!	9Tokyo 2020�7!	8Tokyo 2020�6#7Sydney 2000�5#		6Sydney 2000   �l �����s]E/ �����t^I0������v]G.������pWB, �����ycM8"
�
�
�
�
�
�
u
_
G
1

	�	�	�	�	�	y	d	N	8	"	������r\F.�����{fQ;%������t_I1������pZE-�����{eO9#������s]E/������mXB,������l                      � �Rio 2016�!�Tokyo 2020�~Rio 2016�}	~Rio 2016�|}Rio 2016�{	|Rio 2016�z!{Tokyo 2020�y!zTokyo 2020�xyRio 2016�w!xTokyo 2020�v!wTokyo 2020�u	vRio 2016�t!uTokyo 2020�s!tTokyo 2020�r!sTokyo 2020�qrRio 2016�pqRio 2016�o!pTokyo 2020�n!oTokyo 2020�mnRio 2016�lmRio 2016�k!lTokyo 2020�j#kLondon 2012�i!jTokyo 2020�h!iTokyo 2020�g#	hLondon 2012�f!gTokyo 2020�e!fTokyo 2020�deRio 2016�cdRio 2016�b!cTokyo 2020�a!bTokyo 2020�`!aTokyo 2020�_!`Tokyo 2020�^!_Tokyo 2020�]!^Tokyo 2020�\!	]Tokyo 2020�[#	\London 2012�Z![Tokyo 2020�Y!ZTokyo 2020�X!YTokyo 2020�WXRio 2016�V!WTokyo 2020�U!VTokyo 2020�T#	ULondon 2012�STRio 2016�R!	STokyo 2020�Q!RTokyo 2020�P!QTokyo 2020�O!PTokyo 2020�NORio 2016�MNRio 2016�LMRio 2016�K!LTokyo 2020�JKRio 2016�IJRio 2016�H#ILondon 2012�G!HTokyo 2020�FGRio 2016�E!FTokyo 2020�D!ETokyo 2020�C#DLondon 2012�B!CTokyo 2020�A!	BTokyo 2020�@ARio 2016�?!@Tokyo 2020�>!	?Tokyo 2020�=!>Tokyo 2020�<!=Tokyo 2020�;<Rio 2016�:;Rio 2016�9#:London 2012�89Rio 2016�7!8Tokyo 2020�6!7Tokyo 2020�5!6Tokyo 2020�4#5London 2012�3!	4Tokyo 2020�2!3Tokyo 2020�1#	2London 2012�0!1Tokyo 2020�/!0Tokyo 2020�.!/Tokyo 2020�-.Rio 2016�,!-Tokyo 2020�+,Rio 2016�*%	+Beijing 2008�)!*Tokyo 2020�()Rio 2016�'!(Tokyo 2020�&!'Tokyo 2020�%!&Tokyo 2020�$!%Tokyo 2020�#$Rio 2016�"%	#Beijing 2008�!#	"London 2012� #!London 2012�! Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�#London 2012�Rome 1960�#London 2012�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
#London 2012�	
Rio 2016�!	Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�%Beijing 2008� #	Athens 2004�!	 Tokyo 2020�~#	�London 2012�}%�Beijing 2008�|!		�Tokyo 2020�{!	�Tokyo 2020�z!	�Tokyo 2020�y-�Los Angeles 1984�x%		�Atlanta 1996�w!	�Tokyo 2020�v%	�Beijing 2008�u%�Atlanta 1996�t!	�Tokyo 2020�s!	�Tokyo 2020�r	�Rio 2016�q#	�London 2012�p!	�Tokyo 2020�o!	�Tokyo 2020�n)	�Barcelona 1992�m%	�Beijing 2008�l	�Rio 2016�k!	�Tokyo 2020�j!	�Tokyo 2020�i#	�London 2012�h#	�London 2012�g�Rio 2016�f#�Athens 2004�e%	�Atlanta 1996�d!	�Tokyo 2020�c%�Beijing 2008�b!		�Tokyo 2020�a#�London 2012�`!	�Tokyo 2020�_!	�Tokyo 2020�^)�Barcelona 1992�]!	�Tokyo 2020�\#�Athens 2004�[!	�Tokyo 2020�Z!	�Tokyo 2020
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
		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}   �f �����wbL7"������t_I1������mXB, �����iS;%������pZD/
�
�
�
�
�
}
g
Q
8
#
	�	�	�	�	�	�	o	Y	@	*	������{eO:%������u`J5
������p[E/������jT>(������s]E0�����iS;&������r\D.�����|f            �)!*Tokyo 2020�(#)London 2012�'(Rio 2016�&!'Tokyo 2020�%%	&Beijing 2008�$!%Tokyo 2020�#!$Tokyo 2020�"#Rio 2016�!"Rio 2016� !!Tokyo 2020�# London 2012�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�-Los Angeles 1984�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�#	London 2012�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�Rio 2016�#London 2012�Rio 2016�!Tokyo 2020�
Rio 2016�	
Rio 2016�#	London 2012�!Tokyo 2020�#London 2012�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�#London 2012� #London 2012�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!�Tokyo 2020�v�Rio 2016�u�Rio 2016�t�Rio 2016�s#�London 2012�r!�Tokyo 2020�q!�Tokyo 2020�p�Rio 2016�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l!�Tokyo 2020�k!�Tokyo 2020�j!	�Tokyo 2020�i!�Tokyo 2020�h�Rio 2016�g!�Tokyo 2020�f�Rio 2016�e!�Tokyo 2020�d�Rio 2016�c�Rio 2016�b!�Tokyo 2020�a!�Tokyo 2020�`�Rio 2016�_!�Tokyo 2020�^�Rio 2016�]!�Tokyo 2020�\%�Beijing 2008�[�Rio 2016�Z�Rio 2016�Y!�Tokyo 2020�X!	�Tokyo 2020�W�Rio 2016�V!�Tokyo 2020�U!�Tokyo 2020�T�Rio 2016�S#	�London 2012�R!�Tokyo 2020�Q�Rio 2016�P!�Tokyo 2020�O!�Tokyo 2020�N%		�Beijing 2008�M!�Tokyo 2020�L#�London 2012�K!�Tokyo 2020�J!�Tokyo 2020�I�Rio 2016�H�Rio 2016�G!�Tokyo 2020�F#�London 2012�E#�Sydney 2000�D�Rio 2016�C%�Beijing 2008�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?#�London 2012�>!�Tokyo 2020�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8�Rio 2016�7!�Tokyo 2020�6!�Tokyo 2020�5#�London 2012�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!	�Tokyo 2020�0!�Tokyo 2020�/'�Montreal 1976�.�Rio 2016�-!�Tokyo 2020�,#			�Athens 2004�+!�Tokyo 2020�*!�Tokyo 2020�)!	�Tokyo 2020�(!�Tokyo 2020�'�Rio 2016�&�Rio 2016�%�Rio 2016�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#	�London 2012�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020�#�London 2012�!�Tokyo 2020��Rio 2016�!�Tokyo 2020��Rio 2016�
�Rio 2016�	�Rio 2016�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�%	�Beijing 2008�%		�Beijing 2008�!�Tokyo 2020��Rio 2016�!�Tokyo 2020   �b �����{bM8"
�����|fN8"	������mT?*������u`H2������kU?)
�
�
�
�
�
�
o
Y
C
-
	�	�	�	�	�	�	x	c	N	9			������iS>(������vaH3������kU?)������xbL6 	������nXB,������xcM7!������nV=(������xb            �P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G�Rio 2016�F%�Beijing 2008�E#�London 2012�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@!�Tokyo 2020�?!�Tokyo 2020�>%�Beijing 2008�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9�Rio 2016�8%�Beijing 2008�7!�Tokyo 2020�6!�Tokyo 2020�5�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1#�Athens 2004�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-�Rio 2016�,#�London 2012�+!�Tokyo 2020�*!	�Tokyo 2020�)�Rio 2016�(#�London 2012�'�Rio 2016�&!�Turin 2006�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020�%�Beijing 2008��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#	�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�%�Beijing 2008��Rio 2016�
�Rio 2016�	�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�'	�Helsinki 1952��Rio 2016��Rio 2016� !	�Tokyo 2020�#�London 2012�~%	Beijing 2008�}~Rio 2016�|		}Rio 2016�{	|Rio 2016�z!	{Tokyo 2020�y!	zTokyo 2020�x!	yTokyo 2020�w#xAthens 2004�vwRio 2016�uvRio 2016�t	uRio 2016�s#	tLondon 2012�r!sTokyo 2020�q	rRio 2016�p!qTokyo 2020�o!pTokyo 2020�n!oTokyo 2020�m!nTokyo 2020�l#mLondon 2012�k!lTokyo 2020�j!kTokyo 2020�i!jTokyo 2020�h!iTokyo 2020�g!hTokyo 2020�f!gTokyo 2020�e#fLondon 2012�d%eBeijing 2008�c!dTokyo 2020�b#cLondon 2012�a%bBeijing 2008�`!aTokyo 2020�_!`Tokyo 2020�^!_Tokyo 2020�]!^Tokyo 2020�\]Rio 2016�[!\Tokyo 2020�Z!	[Tokyo 2020�Y%ZBeijing 2008�X!YTokyo 2020�WXRio 2016�V!WTokyo 2020�U!VTokyo 2020�T!UTokyo 2020�S#TLondon 2012�RSRio 2016�QRRio 2016�PQRio 2016�O#	PLondon 2012�NORio 2016�M#	NAthens 2004�L#MLondon 2012�K!LTokyo 2020�J#KLondon 2012�IJRio 2016�HIRio 2016�G%HAtlanta 1996�F%GBeijing 2008�E%FBeijing 2008�DERio 2016�CDRio 2016�BCRio 2016�A!BTokyo 2020�@ARio 2016�?%@Beijing 2008�>!?Tokyo 2020�=!>Tokyo 2020�<#=Sydney 2000�;!<Tokyo 2020�:);Barcelona 1992�9:Rio 2016�8#9London 2012�7#8London 2012�6!7Tokyo 2020�5#6London 2012�4#5London 2012�3!4Tokyo 2020�23Rio 2016�12Rio 2016�0%1Beijing 2008�/!0Tokyo 2020�./Rio 2016�-!.Tokyo 2020�,!-Tokyo 2020�+#,London 2012�*!+Tokyo 2020
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
		  ���������������������������������������������������������   �n �����zdO9#������q[F1������kV='������vaL6������hR=(
�
�
�
�
�
�
{
e
O
9
$
	�	�	�	�	�	�	s	]	G	1		�����|fP8"������q[E/�����w_I4	������jU?&������{eO9#������oZD.�����fN8#������n                      �x!yTokyo 2020�w#	xLondon 2012�v!wTokyo 2020�u#vLondon 2012�t#uLondon 2012�stRio 2016�r!sTokyo 2020�q!rTokyo 2020�pqRio 2016�o!pTokyo 2020�n#oLondon 2012�m#nLondon 2012�l!mTokyo 2020�k!lTokyo 2020�j!kTokyo 2020�i!jTokyo 2020�h!iTokyo 2020�ghRio 2016�f!gTokyo 2020�e!fTokyo 2020�d!eTokyo 2020�c!dTokyo 2020�bcRio 2016�a!bTokyo 2020�`aRio 2016�_#`London 2012�^!_Tokyo 2020�]!^Tokyo 2020�\!]Tokyo 2020�[#\London 2012�Z![Tokyo 2020�Y!ZTokyo 2020�X!YTokyo 2020�W!	XTokyo 2020�V!WTokyo 2020�UVRio 2016�TURio 2016�S!TTokyo 2020�RSRio 2016�Q!RTokyo 2020�PQRio 2016�OPRio 2016�N!OTokyo 2020�M%NBeijing 2008�L!MTokyo 2020�KLRio 2016�J!KTokyo 2020�IJRio 2016�H%IBeijing 2008�G#HLondon 2012�F!	GTokyo 2020�E!FTokyo 2020�D!ETokyo 2020�CDRio 2016�B!CTokyo 2020�ABRio 2016�@!ATokyo 2020�?#@London 2012�>%	?Beijing 2008�=!>Tokyo 2020�<#=London 2012�;#	<London 2012�:!;Tokyo 2020�9:Rio 2016�8!	9Tokyo 2020�7#8London 2012�6!7Tokyo 2020�5!6Tokyo 2020�4!5Tokyo 2020�3#4London 2012�23Rio 2016�1!2Tokyo 2020�0!1Tokyo 2020�/!0Tokyo 2020�.!/Tokyo 2020�-!.Tokyo 2020�,!-Tokyo 2020�+!,Tokyo 2020�*#+London 2012�)!*Tokyo 2020�(!)Tokyo 2020�'#	(London 2012�&'Rio 2016�%#&London 2012�$%		%Beijing 2008�#!$Tokyo 2020�"#Rio 2016�!!"Tokyo 2020� !!Tokyo 2020�! Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�
!Tokyo 2020�	
Rio 2016�	Rio 2016�Rio 2016�!Tokyo 2020�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016� #London 2012�! Tokyo 2020�~#�London 2012�}#�London 2012�|!�Tokyo 2020�{�Rio 2016�z�Rio 2016�y!	�Tokyo 2020�x�Rio 2016�w!�Tokyo 2020�v%		�Beijing 2008�u!�Tokyo 2020�t!�Tokyo 2020�s�Rio 2016�r!�Tokyo 2020�q!	�Tokyo 2020�p#	�Athens 2004�o	�Rio 2016�n#	�London 2012�m�Rio 2016�l�Rio 2016�k!�Tokyo 2020�j�Rio 2016�i�Rio 2016�h!�Tokyo 2020�g!�Tokyo 2020�f#		�Athens 2004�e�Rio 2016�d�Rio 2016�c!�Tokyo 2020�b#�London 2012�a#�London 2012�`�Rio 2016�_�Rio 2016�^�Rio 2016�]!�Tokyo 2020�\	�Rio 2016�[#�London 2012�Z!�Tokyo 2020�Y!�Tokyo 2020�X�Rio 2016�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q#�London 2012   �q �����|gR<'������u_G/�����|fP:$������waK6!������s]H2
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

 	�	�	�	�	�	}	e	O	9	#	������u]G1������nYC-�����~iS='������u`J5������jT>)������~hR<&������|gQ<#������q                     �"!#Tokyo 2020�!!"Tokyo 2020� !!Tokyo 2020�! Tokyo 2020�#London 2012�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�%Atlanta 1996�Rio 2016�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�Rio 2016�!Tokyo 2020�Rio 2016�	Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�	Rio 2016�	Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�Rio 2016�Rio 2016�!	Tokyo 2020� !Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{#�London 2012�z!�Tokyo 2020�y!�Tokyo 2020�x!	�Tokyo 2020�w%	�Beijing 2008�v�Rio 2016�u!�Tokyo 2020�t�Rio 2016�s!�Tokyo 2020�r#�London 2012�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l!�Tokyo 2020�k!�Tokyo 2020�j!�Tokyo 2020�i!�Tokyo 2020�h�Rio 2016�g!�Tokyo 2020�f!�Tokyo 2020�e�Rio 2016�d!�Tokyo 2020�c!�Tokyo 2020�b!�Tokyo 2020�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]�Rio 2016�\	�Rio 2016�[!�Tokyo 2020�Z!�Tokyo 2020�Y	�Rio 2016�X!�Tokyo 2020�W�Rio 2016�V!�Tokyo 2020�U�Rio 2016�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q#		�London 2012�P�Rio 2016�O!�Tokyo 2020�N!�Tokyo 2020�M�Rio 2016�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!	�Tokyo 2020�E#�London 2012�D!�Tokyo 2020�C!�Tokyo 2020�B�Rio 2016�A!	�Tokyo 2020�@!�Tokyo 2020�?!�Tokyo 2020�>�Rio 2016�=!�Tokyo 2020�<!�Tokyo 2020�;�Rio 2016�:#	�London 2012�9!�Tokyo 2020�8�Rio 2016�7!�Tokyo 2020�6!�Tokyo 2020�5�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0!�Tokyo 2020�/�Rio 2016�.!�Tokyo 2020�-�Rio 2016�,#	�London 2012�+�Rio 2016�*!�Tokyo 2020�)�Rio 2016�(!�Tokyo 2020�'�Rio 2016�&!	�Tokyo 2020�%�Rio 2016�$�Rio 2016�#!�Tokyo 2020�"!�Tokyo 2020�!!�Tokyo 2020� �Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012�#�London 2012�	�Rio 2016�#�London 2012�#�London 2012�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�#�Athens 2004�#�London 2012��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020� �Rio 2016��Rio 2016�~!Tokyo 2020�}!	~Tokyo 2020�|!	}Tokyo 2020�{!|Tokyo 2020�z!{Tokyo 2020�y!zTokyo 2020
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
		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{�����������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJI   �] �����{eM7!������s]G1�����gQ;%������xcK3�����~iT<&
�
�
�
�
�
�
t
^
H
2

	�	�	�	�	�	}	h	S	>	)	������{eO9$������waK5	������pZD.�����{fP:%������q[E/������s]G2������kU:$������s]   �K!�Tokyo 2020�J#�London 2012�I!�Tokyo 2020�H�Rio 2016�G!	�Tokyo 2020�F�Rio 2016�E!�Tokyo 2020�D!�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A%�Beijing 2008�@!�Tokyo 2020�?!	�Tokyo 2020�>	�Rio 2016�=!�Tokyo 2020�<�Rio 2016�;!		�Tokyo 2020�:�Rio 2016�9!�Tokyo 2020�8�Rio 2016�7%	�Beijing 2008�6�Rio 2016�5	�Rio 2016�4!�Tokyo 2020�3!	�Tokyo 2020�2		�Rio 2016�1#		�London 2012�0�Rio 2016�/!�Tokyo 2020�.!�Tokyo 2020�-%	�Beijing 2008�,%	�Beijing 2008�+		�Rio 2016�*!�Tokyo 2020�)!	�Tokyo 2020�(!	�Tokyo 2020�'!�Tokyo 2020�&#�London 2012�%!�Tokyo 2020�$�Rio 2016�#	�Rio 2016�"!�Tokyo 2020�!%	�Beijing 2008� �Rio 2016�!�Tokyo 2020�!	�Tokyo 2020��Rio 2016�	�Rio 2016�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�#�London 2012�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�	�Rio 2016�!�Tokyo 2020��Rio 2016�#�London 2012�
!�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�	�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� �Rio 2016�!�Tokyo 2020�~!Tokyo 2020�}~Rio 2016�|!}Tokyo 2020�{!|Tokyo 2020�z!{Tokyo 2020�yzRio 2016�x!yTokyo 2020�w!xTokyo 2020�v!wTokyo 2020�u!vTokyo 2020�t!uTokyo 2020�s!tTokyo 2020�rsRio 2016�qrRio 2016�pqRio 2016�opRio 2016�noRio 2016�m!nTokyo 2020�l!mTokyo 2020�k#lLondon 2012�j	kRio 2016�i!jTokyo 2020�h#iLondon 2012�g!hTokyo 2020�f#gLondon 2012�e!	fTokyo 2020�d!eTokyo 2020�c!dTokyo 2020�b#cLondon 2012�a!bTokyo 2020�`aRio 2016�_!`Tokyo 2020�^#_London 2012�]!^Tokyo 2020�\]Rio 2016�[!\Tokyo 2020�Z!	[Tokyo 2020�Y#		ZLondon 2012�XYRio 2016�W	XRio 2016�V!WTokyo 2020�U!	VTokyo 2020�T#	ULondon 2012�S#	TLondon 2012�R!	STokyo 2020�Q!RTokyo 2020�PQRio 2016�O#	PLondon 2012�N#OLondon 2012�M#NLondon 2012�LMRio 2016�K!	LTokyo 2020�JKRio 2016�I!JTokyo 2020�HIRio 2016�G!HTokyo 2020�F!GTokyo 2020�EFRio 2016�D!ETokyo 2020�C!DTokyo 2020�B!CTokyo 2020�A!BTokyo 2020�@#ALondon 2012�?!@Tokyo 2020�>!?Tokyo 2020�=!>Tokyo 2020�<!=Tokyo 2020�;#<London 2012�:;Rio 2016�9#:London 2012�89Rio 2016�7!8Tokyo 2020�6!7Tokyo 2020�5!6Tokyo 2020�4!5Tokyo 2020�3!4Tokyo 2020�2!3Tokyo 2020�12Rio 2016�01Rio 2016�/!0Tokyo 2020�.!/Tokyo 2020�-!.Tokyo 2020�,!-Tokyo 2020�+!,Tokyo 2020�*#+London 2012�)!*Tokyo 2020�()Rio 2016�'!(Tokyo 2020�&!'Tokyo 2020�%&Rio 2016�$%%Beijing 2008�#!$Tokyo 2020   �^ �����{eM7!�����~hR<&������u`J5�����~hR='������u_H3
�
�
�
�
�
�
k
U
?
'
	�	�	�	�	�	�	x	b	M	7	!	������mWA+������t_I3�����~iS='������w_J5������kU?* �����u`H2������mXB*������v^      �s#	tLondon 2012�r#sLondon 2012�qrRio 2016�p!qTokyo 2020�o!pTokyo 2020�n%oBeijing 2008�m!nTokyo 2020�l!mTokyo 2020�k!lTokyo 2020�j#		kLondon 2012�i!jTokyo 2020�hiRio 2016�ghRio 2016�f!gTokyo 2020�e!fTokyo 2020�deRio 2016�c%dBeijing 2008�bcRio 2016�abRio 2016�`!aTokyo 2020�_!`Tokyo 2020�^!_Tokyo 2020�]#^London 2012�\]Rio 2016�[\Rio 2016�Z[Rio 2016�Y!ZTokyo 2020�X%YBeijing 2008�W%XBeijing 2008�V%WBeijing 2008�UVRio 2016�T	URio 2016�S	TRio 2016�R!STokyo 2020�Q!RTokyo 2020�P!QTokyo 2020�O!PTokyo 2020�N#	OLondon 2012�MNRio 2016�LMRio 2016�K#LLondon 2012�JKRio 2016�I!JTokyo 2020�H%IBeijing 2008�GHRio 2016�F	GRio 2016�E#		FLondon 2012�D!ETokyo 2020�C!DTokyo 2020�B%CBeijing 2008�ABRio 2016�@	ARio 2016�?!@Tokyo 2020�>!?Tokyo 2020�=>Rio 2016�<!=Tokyo 2020�;!<Tokyo 2020�:!;Tokyo 2020�9:Rio 2016�8#	9London 2012�78Rio 2016�6!7Tokyo 2020�5#6London 2012�4#5London 2012�3!4Tokyo 2020�2!3Tokyo 2020�1!2Tokyo 2020�0!1Tokyo 2020�/!0Tokyo 2020�.	/Rio 2016�-!.Tokyo 2020�,#	-London 2012�+,Rio 2016�*	+Rio 2016�)#		*London 2012�(#)Athens 2004�'!(Tokyo 2020�&!	'Tokyo 2020�%!	&Tokyo 2020�$!	%Tokyo 2020�#!$Tokyo 2020�"!	#Tokyo 2020�!!"Tokyo 2020� !		!Tokyo 2020� Rio 2016�!Tokyo 2020�#London 2012�%	Beijing 2008�Rio 2016�!Tokyo 2020�!	Tokyo 2020�Rio 2016�!		Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�Rio 2016�#		Athens 2004�!		Tokyo 2020�		Rio 2016�!Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�!	Tokyo 2020�Rio 2016�!	Tokyo 2020�%		Beijing 2008�Rio 2016�	Rio 2016�	Rio 2016�Rio 2016� !	Tokyo 2020�!	 Tokyo 2020�~!�Tokyo 2020�}�Rio 2016�|#		�London 2012�{		�Rio 2016�z�Rio 2016�y�Rio 2016�x#�London 2012�w!		�Tokyo 2020�v�Rio 2016�u!	�Tokyo 2020�t	�Rio 2016�s!�Tokyo 2020�r!	�Tokyo 2020�q!	�Tokyo 2020�p#�London 2012�o!	�Tokyo 2020�n#	�London 2012�m#�London 2012�l!�Tokyo 2020�k�Rio 2016�j!�Tokyo 2020�i�Rio 2016�h!	�Tokyo 2020�g!�Tokyo 2020�f!�Tokyo 2020�e#�London 2012�d�Rio 2016�c!�Tokyo 2020�b!�Tokyo 2020�a!	�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^	�Rio 2016�]!		�Tokyo 2020�\�Rio 2016�[!�Tokyo 2020�Z#�London 2012�Y#	�Athens 2004�X%		�Beijing 2008�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S#�London 2012�R!�Tokyo 2020�Q	�Rio 2016�P!	�Tokyo 2020�O	�Rio 2016�N!�Tokyo 2020�M!	�Tokyo 2020�L#	�London 2012
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
		  �����������������������������������������������������������������������������������������������������������������������������������������������������������������   �c �����ycM4�����iT?*������{eO9#������vaL4�����fP;%
�
�
�
�
�
�
u
_
I
3

	�	�	�	�	�	�	p	Z	E	0		������lV@*������}gQ;%������waK5	������kU?)������v^E0�����zdK5
������t_G1 �����{c         �#London 2012�Rio 2016�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�#London 2012�%Beijing 2008�!Tokyo 2020�#Athens 2004�Rio 2016�Rio 2016�Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�
!	Tokyo 2020�	
Rio 2016�!		Tokyo 2020�!Tokyo 2020�%Beijing 2008�!Tokyo 2020�!Tokyo 2020�#London 2012�Rio 2016�%Beijing 2008� !Tokyo 2020� Rio 2016�~!�Tokyo 2020�}%	�Beijing 2008�|	�Rio 2016�{%�Beijing 2008�z#�London 2012�y#�London 2012�x!�Tokyo 2020�w�Rio 2016�v�Rio 2016�u!�Tokyo 2020�t�Rio 2016�s#�London 2012�r#�London 2012�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n#	�London 2012�m�Rio 2016�l!�Tokyo 2020�k!�Tokyo 2020�j�Rio 2016�i%	�Atlanta 1996�h�Rio 2016�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b!�Tokyo 2020�a!�Tokyo 2020�`�Rio 2016�_!�Tokyo 2020�^	�Rio 2016�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U�Rio 2016�T	�Rio 2016�S	�Rio 2016�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H�Rio 2016�G�Rio 2016�F�Rio 2016�E�Rio 2016�D#	�London 2012�C!�Tokyo 2020�B�Rio 2016�A�Rio 2016�@!�Tokyo 2020�?!�Tokyo 2020�>	�Rio 2016�=	�Rio 2016�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8!�Tokyo 2020�7�Rio 2016�6!�Tokyo 2020�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1!�Tokyo 2020�0!�Tokyo 2020�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,!�Tokyo 2020�+!�Tokyo 2020�*	�Rio 2016�)!�Tokyo 2020�(%�Beijing 2008�'!�Tokyo 2020�&!�Tokyo 2020�%!�Tokyo 2020�$!�Tokyo 2020�#!�Tokyo 2020�"%	�Beijing 2008�!!	�Seoul 1988� !�Tokyo 2020�#�London 2012�	�Rio 2016�	�Rio 2016��Rio 2016�!	�Tokyo 2020�!	�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
!�Tokyo 2020�	�Rio 2016��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016�#	�London 2012�!�Tokyo 2020� !�Tokyo 2020�#�Sydney 2000�~!Tokyo 2020�}#~London 2012�|%}Beijing 2008�{!|Tokyo 2020�z!{Tokyo 2020�y#zLondon 2012�x#yLondon 2012�w!xTokyo 2020�v!	wTokyo 2020�u!vTokyo 2020�tuRio 2016   �Z �����iS=%������q[E-�����xcJ2�����|gR:$������kV@*
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
 

	�	�	�	�	�	�	p	X	C	*	������ycN5�����~hR<&������zdN8"������nXC.�����zdN9 
������mWA+������u`J2������oZ  �D�Rio 2016�C!�Tokyo 2020�B!	�Tokyo 2020�A�Rio 2016�@�Rio 2016�?�Rio 2016�>!�Tokyo 2020�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:#�London 2012�9!�Tokyo 2020�8�Rio 2016�7%�Beijing 2008�6%			�Beijing 2008�5�Rio 2016�4!�Tokyo 2020�3!�Tokyo 2020�2!�Tokyo 2020�1�Rio 2016�0#�Athens 2004�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,#�London 2012�+!�Tokyo 2020�*!�Tokyo 2020�)!	�Tokyo 2020�(#�London 2012�'�Rio 2016�&!�Tokyo 2020�%!�Tokyo 2020�$#�Athens 2004�#�Rio 2016�"!�Tokyo 2020�!!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�%�Beijing 2008�#�Athens 2004��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�#�London 2012�!�Tokyo 2020�%	�Beijing 2008�	�Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�
!�Tokyo 2020�	!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016�!�Tokyo 2020� !�Tokyo 2020�!�Tokyo 2020�~!Tokyo 2020�}!~Tokyo 2020�|!}Tokyo 2020�{!|Tokyo 2020�z!{Tokyo 2020�y#zLondon 2012�x#yLondon 2012�w%	xBeijing 2008�v!wTokyo 2020�u%vBeijing 2008�tuRio 2016�s!tTokyo 2020�r!sTokyo 2020�q!rTokyo 2020�p%	qBeijing 2008�opRio 2016�noRio 2016�m	nRio 2016�l	mRio 2016�k#		lLondon 2012�j%		kBeijing 2008�ijRio 2016�h#	iLondon 2012�g!hTokyo 2020�f!gTokyo 2020�e!fTokyo 2020�d!eTokyo 2020�c!dTokyo 2020�b!cTokyo 2020�a!bTokyo 2020�`!	aTokyo 2020�_!`Tokyo 2020�^!_Tokyo 2020�]!^Tokyo 2020�\!]Tokyo 2020�[!\Tokyo 2020�Z%	[Atlanta 1996�Y!ZTokyo 2020�X!YTokyo 2020�W!XTokyo 2020�VWRio 2016�U!VTokyo 2020�T!	UTokyo 2020�S!TTokyo 2020�R!	STokyo 2020�QRRio 2016�P%		QBeijing 2008�O#	PSydney 2000�N#OLondon 2012�M!NTokyo 2020�L!	MTokyo 2020�KLRio 2016�J%KBeijing 2008�I!JTokyo 2020�H!ITokyo 2020�G#HLondon 2012�FGRio 2016�EFRio 2016�DERio 2016�C!DTokyo 2020�B#	CLondon 2012�A#BLondon 2012�@#ALondon 2012�?#		@London 2012�>!?Tokyo 2020�=>Rio 2016�<#=Athens 2004�;%	<Beijing 2008�:;Rio 2016�9%:Beijing 2008�8#9London 2012�7!8Tokyo 2020�6#7London 2012�5!6Tokyo 2020�4!5Tokyo 2020�34Rio 2016�23Rio 2016�1#	2Athens 2004�0!	1Tokyo 2020�/!0Tokyo 2020�.!/Tokyo 2020�-#.London 2012�,-Rio 2016�+,Rio 2016�*%+Beijing 2008�)*Rio 2016�(#)Athens 2004�'!	(Tokyo 2020�&#	'London 2012�%!	&Tokyo 2020�$!%Tokyo 2020�#!$Tokyo 2020�"#Rio 2016�!!"Tokyo 2020� !!Tokyo 2020�! Tokyo 2020�Rio 2016�Rio 2016
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
		  ���������������������������������������������������������������{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIHHGGFFEEDDCCBBAA@@??>>==<<;;::99887766554433221100//..--,,++**))((''&&%%$$##""!!     �m �����ycM7!	������mW>(������waI3������oU?)������{eO9$
�
�
�
�
�
�
v
a
L
7
!
	�	�	�	�	�	�	p	[	E	/		�����ydL6������nXB-������lS>(������xbI4������pZE0�����~hR:"������u_F0������m                   �m#nLondon 2012�lmRio 2016�klRio 2016�j!kTokyo 2020�i	jRio 2016�h!iTokyo 2020�ghRio 2016�fgRio 2016�e!	fTokyo 2020�d!eTokyo 2020�c%dBeijing 2008�b!	cTokyo 2020�a!bTokyo 2020�`aRio 2016�_`Rio 2016�^!_Tokyo 2020�]!^Tokyo 2020�\!]Tokyo 2020�[\Rio 2016�Z![Tokyo 2020�Y#ZLondon 2012�X#	YLondon 2012�W!XTokyo 2020�V!WTokyo 2020�U!VTokyo 2020�T!UTokyo 2020�S!TTokyo 2020�R!STokyo 2020�Q#	RLondon 2012�P!QTokyo 2020�O!PTokyo 2020�N!	OTokyo 2020�MNRio 2016�LMRio 2016�K!LTokyo 2020�J!KTokyo 2020�IJRio 2016�HIRio 2016�G!HTokyo 2020�F!GTokyo 2020�E!FTokyo 2020�D!ETokyo 2020�C!	DTokyo 2020�B!CTokyo 2020�ABRio 2016�@%	ABeijing 2008�?!	@Tokyo 2020�>!?Tokyo 2020�=#	>London 2012�<	=Rio 2016�;!	<Tokyo 2020�:!		;Tokyo 2020�9!:Tokyo 2020�89Rio 2016�7!8Tokyo 2020�6!7Tokyo 2020�5	6Rio 2016�4#5London 2012�3!4Tokyo 2020�23Rio 2016�1!2Tokyo 2020�0!1Tokyo 2020�/	0Rio 2016�.	/Rio 2016�-.Rio 2016�,!-Tokyo 2020�+,Rio 2016�*+Rio 2016�)!*Tokyo 2020�(!)Tokyo 2020�'!(Tokyo 2020�&!'Tokyo 2020�%!&Tokyo 2020�$!%Tokyo 2020�#!$Tokyo 2020�"!#Tokyo 2020�!!"Tokyo 2020� !!Tokyo 2020�# London 2012�!Tokyo 2020�#	London 2012�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�#London 2012�#		London 2012�#		London 2012�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
#Athens 2004�	!	
Tokyo 2020�!	Tokyo 2020�Rio 2016�Rio 2016�Rio 2016�Rio 2016�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� !	Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}�Rio 2016�|�Rio 2016�{!�Tokyo 2020�z!	�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w	�Rio 2016�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r�Rio 2016�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n%	�Beijing 2008�m�Rio 2016�l#�London 2012�k!�Tokyo 2020�j�Rio 2016�i�Rio 2016�h�Rio 2016�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d!�Tokyo 2020�c#	�London 2012�b!�Tokyo 2020�a	�Rio 2016�`#	�London 2012�_!�Tokyo 2020�^!�Tokyo 2020�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X%�Beijing 2008�W!�Tokyo 2020�V%�Beijing 2008�U!�Tokyo 2020�T�Rio 2016�S!�Tokyo 2020�R!�Tokyo 2020�Q!	�Tokyo 2020�P!�Tokyo 2020�O#�Athens 2004�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I#�London 2012�H!�Tokyo 2020�G!�Tokyo 2020�F#�London 2012�E�Rio 2016   �h �����zdN8#������pWA+������zdO7!������s^H2�����gR:$
�
�
�
�
�
�
s
]
G
/

	�	�	�	�	�	{	e	O	9	#	������t^H2������lV@*������zdN8"������r\F0������jT>(������xbL6 
������pZD.�����~h              �!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�
!Tokyo 2020�	!
Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!	Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020� !Tokyo 2020�! Tokyo 2020�~!�Tokyo 2020�}!�Tokyo 2020�|!�Tokyo 2020�{!�Tokyo 2020�z!�Tokyo 2020�y!�Tokyo 2020�x!�Tokyo 2020�w!�Tokyo 2020�v!�Tokyo 2020�u!�Tokyo 2020�t!�Tokyo 2020�s!�Tokyo 2020�r!�Tokyo 2020�q!�Tokyo 2020�p!�Tokyo 2020�o!�Tokyo 2020�n!�Tokyo 2020�m!�Tokyo 2020�l!�Tokyo 2020�k!�Tokyo 2020�j!�Tokyo 2020�i!�Tokyo 2020�h!�Tokyo 2020�g!�Tokyo 2020�f!�Tokyo 2020�e!�Tokyo 2020�d!�Tokyo 2020�c!�Tokyo 2020�b!�Tokyo 2020�a!�Tokyo 2020�`!�Tokyo 2020�_!�Tokyo 2020�^!�Tokyo 2020�]!�Tokyo 2020�\!�Tokyo 2020�[!�Tokyo 2020�Z!�Tokyo 2020�Y!�Tokyo 2020�X!�Tokyo 2020�W!�Tokyo 2020�V!�Tokyo 2020�U!�Tokyo 2020�T!�Tokyo 2020�S!�Tokyo 2020�R!�Tokyo 2020�Q!�Tokyo 2020�P!�Tokyo 2020�O!�Tokyo 2020�N!�Tokyo 2020�M!�Tokyo 2020�L!�Tokyo 2020�K!�Tokyo 2020�J!�Tokyo 2020�I!�Tokyo 2020�H!�Tokyo 2020�G!�Tokyo 2020�F!�Tokyo 2020�E!�Tokyo 2020�D!	�Tokyo 2020�C!�Tokyo 2020�B!�Tokyo 2020�A!�Tokyo 2020�@�Rio 2016�?!�Tokyo 2020�>!�Tokyo 2020�=!�Tokyo 2020�<!�Tokyo 2020�;!�Tokyo 2020�:!�Tokyo 2020�9!�Tokyo 2020�8#	�London 2012�7!�Tokyo 2020�6%	�Beijing 2008�5!�Tokyo 2020�4!�Tokyo 2020�3!�Tokyo 2020�2!	�Tokyo 2020�1�Rio 2016�0#�London 2012�/!�Tokyo 2020�.!�Tokyo 2020�-!�Tokyo 2020�,#�London 2012�+!�Tokyo 2020�*!�Tokyo 2020�)!�Tokyo 2020�(!�Tokyo 2020�'�Rio 2016�&�Rio 2016�%!�Tokyo 2020�$#�London 2012�#�Rio 2016�"#	�London 2012�!!�Tokyo 2020� %�Beijing 2008�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!	�Tokyo 2020�!�Tokyo 2020��Rio 2016��Rio 2016��Rio 2016��Rio 2016��Rio 2016�!�Tokyo 2020�#�London 2012�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�#�London 2012��Rio 2016�!�Tokyo 2020�
!	�Tokyo 2020�	�Rio 2016�%�Beijing 2008�!�Tokyo 2020��Rio 2016�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020�!�Tokyo 2020� %�Beijing 2008�#	�London 2012�~#	London 2012�}!~Tokyo 2020�|!}Tokyo 2020�{|Rio 2016�z!{Tokyo 2020�y!zTokyo 2020�x!yTokyo 2020�wxRio 2016�vwRome 1960�u!vTokyo 2020�t!uTokyo 2020�s!tTokyo 2020�r!	sTokyo 2020�q!rTokyo 2020�p!qTokyo 2020�o#pLondon 2012�n!oTokyo 2020
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
		  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~~}}||{{zzyyxxwwvvuuttssrrqqppoonnmmllkkjjiihhggffeeddccbbaa``__^^]]\\[[ZZYYXXWWVVUUTTSSRRQQPPOONNMMLLKKJJIIH   j� �����|fP:$������v]G2������lS='������s]G1�����gQ;%
�
�
�
�
�
�
r
Y
C
+
	�	�	�	�	�	�	v	a	L	7	!		������lV=(������zdN8#
���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         � !�Tokyo 2020�!�Tokyo 2020�~%Beijing 2008�}%~Beijing 2008�|}Rio 2016�{!|Tokyo 2020�z!{Tokyo 2020�y!zTokyo 2020�x!yTokyo 2020�w!xTokyo 2020�v!wTokyo 2020�u!vTokyo 2020�t!uTokyo 2020�s!tTokyo 2020�rsRio 2016�qrRio 2016�pqRio 2016�o%	pBeijing 2008�n!oTokyo 2020�m%nBeijing 2008�l#mLondon 2012�k!lTokyo 2020�j	kRio 2016�i	jRio 2016�h!	iTokyo 2020�g!hTokyo 2020�f#gLondon 2012�e!fTokyo 2020�deRio 2016�cdRio 2016�b	cRio 2016�abRio 2016�`#aLondon 2012�_!`Tokyo 2020�^#	_London 2012�]#	^London 2012�\!]Tokyo 2020�[!\Tokyo 2020�Z![Tokyo 2020�Y#		ZLondon 2012�X!YTokyo 2020�W%	XBeijing 2008�V!WTokyo 2020�U!VTokyo 2020�T!UTokyo 2020�STRio 2016�R!STokyo 2020�Q!RTokyo 2020�P#QLondon 2012�O#PLondon 2012�N!	OTokyo 2020�M!NTokyo 2020�L!MTokyo 2020�K#LLondon 2012�JKRio 2016�I!JTokyo 2020�H#ILondon 2012�GHRio 2016�F!GTokyo 2020�E#FLondon 2012�D!ETokyo 2020�C!DTokyo 2020�B!CTokyo 2020�A!BTokyo 2020�@!ATokyo 2020�?!@Tokyo 2020�>!?Tokyo 2020�=!>Tokyo 2020�<!=Tokyo 2020�;!	<Tokyo 2020�:#;London 2012�9#:London 2012�8!9Tokyo 2020�7!8Tokyo 2020�6!7Tokyo 2020�5%	6Beijing 2008�4!5Tokyo 2020�34Rio 2016�2!3Tokyo 2020�1	2Rio 2016�0!1Tokyo 2020�/%	0Beijing 2008�.!/Tokyo 2020�-.Rio 2016�,!-Tokyo 2020�+,Rio 2016�*!+Tokyo 2020�)%*Beijing 2008�(!)Tokyo 2020�'!(Tokyo 2020�&'Rio 2016�%&Rio 2016�$%Rio 2016�#$Rio 2016�"!#Tokyo 2020�!#		"London 2012� !!Tokyo 2020�! Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020�!Tokyo 2020   �� �������fM4�����lS:#���������vgXI:+���������whYJ;,���������xiZK<- 
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
	�	�	�	�	�	�	�	�	�	�	�	�	y	n	c	X	M	B	7	*			����������tgZK<-��������{iWE3$��������o_SG7'�����������{ocWI;-������hM?1#���������uaRC4%��������{k[K;+��             �k �Shooting�j �Shooting�i �Shooting�h �Shooting�g �Shooting�f �Shooting�e �Shooting�d �Shooting�c �Shooting�b �Shooting�a �Shooting�` �Shooting�_ �Shooting�^ �Shooting�] �Sailing�\ �Sailing�[ �Sailing�Z �Sailing�Y �Sailing�X �Sailing�W �Sailing�V �Sailing�U �Sailing�T �Sailing�S% �Rugby Sevens�R% �Rugby Sevens�Q �Rowing�P �Rowing�O �Rowing�N �Rowing�M �Rowing�L �Rowing�K �Rowing�J �Rowing�I �Rowing�H �Rowing�G �Rowing�F �Rowing�E �Rowing�D �Rowing�C3 �Rhythmic Gymnastics�B3 �Rhythmic Gymnastics�A/ �Modern Pentathlon�@/ �Modern Pentathlon�?/ �Marathon Swimming�>/ �Marathon Swimming�= �Karate�< �Karate�; �Karate�: �Karate�9 �Karate�8 �Karate�7 �Karate�6 �Karate	�5 �Judo	�4 �Judo	�3 �Judo	�2 �Judo	�1 �Judo	�0 �Judo	�/ �Judo	�. �Judo	�- �Judo	�, �Judo	�+ �Judo	�* �Judo	�) �Judo	�( �Judo	�' �Judo�& �Hockey�% �Hockey�$ �Handball�# �Handball	�" �Golf	�! �Golf�  �Football� �Football� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing� �Fencing�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian�! �Equestrian� �Diving� �Diving�
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
Artistic Gymnastics	3	Artistic Gymnastics3Artistic GymnasticsArcheryArcheryArcheryArcheryArchery)3x3 Basketball	)3x3 Basketball   d	 ������paQA1!��������qaQA1!��������qaQA-�������wfUG9+������~lZE0
�
�
�
�
�
�
s
^
I
8
'

	�	�	�	�	�	�	�	}	l	[	J	9	(	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       �OPWrestling�NOWrestling�MNWrestling�LMWrestling�KLWrestling�JKWrestling�IJWrestling�HIWrestling�GHWrestling�FGWrestling�EFWrestling�DEWrestling�CDWrestling�BCWrestling�ABWrestling�@AWrestling�?@Wrestling�>?Wrestling�='>Weightlifting�<'=Weightlifting�;'<Weightlifting�:';Weightlifting�9':Weightlifting�8'9Weightlifting�7'8Weightlifting�6'7Weightlifting�5'6Weightlifting�4'5Weightlifting�3'4Weightlifting�2'3Weightlifting�1'2Weightlifting�0!1Water Polo�/!0Water Polo�.!/Volleyball�-!.Volleyball�,-Triathlon�+,Triathlon�*+Triathlon�)7*Trampoline Gymnastics�(7)Trampoline Gymnastics�'(Tennis�&'Tennis�%&Tennis�$%Tennis�#$Tennis�"#Taekwondo�!"Taekwondo� !Taekwondo� Taekwondo�Taekwondo�Taekwondo�Taekwondo�Taekwondo�%Table Tennis�%Table Tennis�%Table Tennis�%Table Tennis�%Table Tennis�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�
Swimming�	
Swimming�	Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming�Swimming� Swimming� Swimming�~ �Swimming�} �Swimming�| �Swimming�{ �Swimming�z �Swimming�y �Swimming�x �Swimming�w �Swimming�v �Swimming�u �Swimming�t �Swimming�s �Surfing�r) �Sport Climbing�q) �Sport Climbing�p' �Skateboarding�o' �Skateboarding�n' �Skateboarding�m' �Skateboarding�l �Shooting  m� ���������������wof]TKB91) ���������������~vnf^VNE<4,$
���������������{skcZQH@80(  ���������������xpg_WNF=4,$
��������������}sjaXOE;1'
�
�
�
�
�
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
[
Q
H
?
5
,
#


	�	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	]	T	J	@	6	,	#			��������������wmcYOF=3*!�������������|sjaXND:0&
 �������������|rh^TJ@6-#�������������}tjaXOF=3)�������������zqh_VMC9/%�������������ukaWMC9/&���        �m� ��l�/�k�.�j� ��i� ��h� ��g�N�f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^�1�]� ��\� ��[� ��Z� ��Y� ��X� ��W��V�/�U�.�T� ��S ��R~P�Q~O�P}�O| ��N| ��M{ ��L{ ��Kz/�Jz.�IyN�Hx�Gx�FwP�EwO�Dv.�Cu�BtN�As ��@r/�?r.�>q�=q�<p ��;oP�:n ��9m0�8l ��7l ��6k ��5k ��4j ��3i ��2h/�1h.�0gM�/fP�.fO�-eP�,eO�+d1�*c�)c�(b ��'a ��&a ��%` ��$_ ��#_ ��"^ ��!] �� \ ��[ ��Z�Z�YN�X ��W ��V/�V.�U�T/�T.�S ��R ��Q ��Q ��P ��ON�N ��MP�MO�L�
KP�	KO�J�I/�H ��G ��FN�E ��D ��C �� C ��B�~B�}A ��|A ��{@/�z? ��y> ��x=P�w=O�v<P�u<O�t; ��s; ��r: ��q: ��p91�o8 ��n7 ��m7 ��l6�k5�j5�i4�h3/�g2/�f2.�e1 ��d0N�c/�b/�a. ��`-�_,N�^+ ��]+ ��\* ��[* ��Z) ��Y(/�X' ��W' ��V&P�U&O�T%�S$ ��R$ ��Q# ��P"�O"�N!/�M!.�L  ��K�JP�IO�H�G ��F ��E ��D/�C�B�A/�@ ��? ��>N�=N�<P�;O�:�9�8�71�6.�5 ��4 ��3 ��2 ��1
P�0
O�/	P�.P�-O�,O�+ ��*�)�( ��' ��&�%�$ ��# P�" O�!�N� �P��O��P��.��/��.��P��O��M��N��N�� �����P��O�� ���/��/��/��P��O��P�
�O�	�/��O������.��1������P� �P�O~�P}�O|�P{�Oz� �y�/x�.w�.v�Pu�Ot�Ns� �r� �q�Op�0o�n�m�0l�k� �j�i�.h� �g�Nf� �e� �d� �c� �b�a�`�_� �^�O]�\�[�Z�MY�PX�OW�V�PU�OT�PS�OR� �Q� �P� �O�PN�OM�NL�K�J�I� �H� �G� �F�OE� �D�C�B�A�P@�O?� �>�O=� �<� �;�:� �9�.8�7�6�5� �4� �3�O2�O1�P0�O/�P.�O-� �,�.+� �*� �)�(�'�&�%�P$�O#�"� �!� � � �� �� ��P�O�/�.��� �� �� ��.� �� ��N� �� �� ��O��P
�O	� �� �� �� ��M� �� ��P�N   �
� �������������ypf]SI@7-#��������������{ri`WNE<3)�������������ypf]SI?5+"��������������ypg^TJ@6,"�������������~tj`VLB8.$
�
�
�
�
�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �w ��v ��u ��t ��s ��r  ��q�/�p�.�o�.�n� ��m� ��l� ��k� ��j� ��i� ��h�0�g� ��f��e��d�M�c� ��b� ��a�0�`��_�0�^� ��]�P�\�O�[�/�Z�.�Y� ��X�1�W�/�V�.�U�1�T� ��S�.�R�0�Q�0�P� ��O�N�N�P�M�P�L�O�K��J� ��I�P�H�O�G�0�F� ��E� ��D� ��C�M�B� ��A��@��?��>��=��<�0�;�P�:�O�9�0�8�/�7�.�6�/�5�.�4��3� ��2�O�1� ��0� ��/� ��.�P�-�O�,� ��+��*�O�)� ��(� ��'� ��&� ��%�/�$�.�#� ��"� ��!� �� �1�� ���P��O��P��P��O��P��O������P��O����P��O��/��.������/��.�
�O�	�P��O�� �����/��.�� ������ � ���0�~�P�}� ��|�P�{�1�z� ��y� ��x� ��w��v�P�u�O�t��s�1�r�P�q� ��p� ��o� ��n� �  t� ����������������zrjbZRJB:2*"
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
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������xof]TKB90'��������       �a:�`9�_9�^8�]7�\7�[6�Z6�Y5�X4�W3�V3�U3	�T3�S2�R2	�Q2�P1�O0�N0	�M0�L/�K.�J-&�I,&�H+&�G*&�F)&�E(&�D'&�C&&�B%&�A$&�@#&�?"&�>!&�= &�<&�;&�:&�9&�8&�7&�6&�5&�4&�3&�2&�1&�0&�/(�.&�-(�,&�+(�*&�)(�((�'(�&(�%&�$(�#&�"(�!&� (�
&�
(�	(�(�(�&�(�&�(�(�&�(�&�(�&�(� (�
�&�
�(�
�&�
�(�

�&�	
�(�
�(�
�(�
�(�
�&�
�(�
�(�
�(�
�&� 
�(�
�&�~
�(�}
�&�|
�(�{
�&�z
�(�y
�&�x
�(�w
�&�v
�(�u
�&�t
�(�s
�(�r
�(�q
�(�p
�(�o
�(�n
�(�m
�(�l
�&�k
�(�j
�(�i
�&�h
�(�g
�(�f
�(�e
�(�d
�(�c
�&�b
�(�a
�&�`
�(�_
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
N?  ^� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOE;1'	�������������}si_UKA7-#
�
�
�
�
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

	�	�	�	�	�	�	�	�	�	�	�	�		u	k	a	W	M	C	9	/	%			�������������{qg]SI?5+!�������������{ri`WNE<3*!�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)�����           �?z ��>y ��=x ��<w ��;v ��:u ��9t ��8s ��7r ��6q ��5p ��4o ��3n ��2m ��1l ��0k ��/j ��.i ��-h ��,g ��+f ��*e ��)d ��(c ��'b ��&a ��%` ��$_ ��#^ ��"] ��!\ �� [ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��
E ��	D ��C ��B ��A ��@ ��? ��> ��= ��< �� ; ��: ��~9 ��}8 ��|7 ��{6 ��z5 ��y4 ��x3 ��w2 ��v1 ��u0 ��t/ ��s. ��r- ��q, ��p+ ��o* ��n) ��m( ��l' ��k& ��j% ��i$ ��h# ��g" ��f! ��e  ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��To�So�Ro�Qo�Po�O
o�N	o�Mo�Lo�Kp�Jp�Ip�Hp�Gp�Fp�E p�D�p�C�p�B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J��I��H��G��F��E��D�C~�B}�A|�@{�?z�>y�=y�<x�;w�:v�9u�8t�7s�6r�5q�4q�3p�2o�1n�0n�/m�.l�-k�,j�+i�*h�)g	�(f�'f	�&e	�%d�$d	�#c�"c	�!b	� a	�`�`	�_	�^�^	�]�]	�\	�[	�Z	�Y�Y	�X	�W	�V	�U	�U
�T
�S
�R
�Q
�
P�	P	�P
�O	�O
�N
�M�M�M�M� L�K�~J�}J�|I�{H�zH�yG�xF�wF�vE�uD�tD�sC�rC�qC�pB�oB�nA�mA�l@�k?�j?�i>�h=�g<�f<�e;�d;�c;�b:  T� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
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
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&��������        �� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D ��C~ ��B} ��A| ��@{ ��?z ��>y ��=x ��<w ��;v ��:u ��9t ��8s ��7r ��6q ��5p ��4o ��3n ��2m ��1l ��0k ��/j ��.i ��-h ��,g ��+f ��*e ��)d ��(c ��'b ��&a ��%` ��$_ ��#^ ��"] ��!\ �� [ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��
E ��	D ��C ��B ��A ��@ ��? ��> ��= ��< �� ; ��: ��~9 ��}8 ��|7 ��{6 ��z5 ��y4 ��x3 ��w2 ��v1 ��u0 ��t/ ��s. ��r- ��q, ��p+ ��o* ��n) ��m( ��l' ��k& ��j% ��i$ ��h# ��g" ��f! ��e  ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O
 ��N	 ��M ��L ��K ��J ��I ��H ��G ��F ��E  ��D� ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D ��C~ ��B} ��A| ��@{ �  c� ������������~tj`VLB8.$��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'
�
�
�
�
�
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
	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	w	n	e	\	S	J	A	8	/	&				�������������ukaWMC9/%�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�����       �v�>�u�>�t�>�s�>�r�>�q�>�p�>�o�>�n�5�m�5�l�5�k�5�j�5�i�5�h�5�g�5�f�5�e�5�d�5�c�5�b�;�a�;�`�;�_�;�^�;�]�;�\�;�[�;�Z�;�Y�;�X�;�W�;�V�;�U�;�T�9�S�9�R�9�Q�9�P�9�O�9�N�9�M�9�L�9�K�9�J�9�I�9�H�9�G�7�F�7�E�7�D�7�C�7�B�7�A�7�@�7�?�7�>�7�=�7�<�7�;�7�:�2�9�2�8�2�7�2�6�2�5�2�4�2�3�2�2�2�1�2�0�2�/�2�.�3�-�3�,�3�+�3�*�3�)�3�(�3�'�3�&�3�%�3�$�3�#�3�"�3�!�3� �3��3��3��3��3��3��3��3��3��3��3��3��3��=��=��=��=��=��=��=��=��=�
�=�	�=��=��:��:��:��:��:��:��:� �:��:�~�:�}�:�|�:�{�6�z�6�y�6�x6�w~6�v}6�u|6�t{6�sz6�ry6�qx6�pw6�ov6�nu6�mt8�ls8�kr8�jq8�ip8�ho8�gn8�fm8�el8�dk8�cj8�bi8�ah8�`g�_g�^g�]f�\f�[e�Zd�Yc�Xb�Wa�Va�U`�T_�S_�R_�Q_�P_�O_�N_�M_�L_�K^�J]�I]�H\�G[�FZ�EY�DX�CW�BV�AU�@U�?U�>U�=U�<U�;T�:S�9R�8R�7Q�6P�5O�4N�3M�2L�1K�0J�/I�.H�-G�,F�+E�*D�)C�(B�'B�&A�%@�$@�#?�">�!=� <�;�:�9�9�8�7�6�6�5�4�4�3�2�1�0�/�.�-�-�-�,�
+�	*�)�(�'�&�%�%�$�#� "�"�~!�} �|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U
�T	�S�R�Q�P�O�N�M�L�K�J�I �H��G��F��E��D��C��B��A��@��?��>��=��<��;��:��9��8��7��6��5��4��3��2��1��0��/��.��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �  U� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
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
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&���������   �KP�JO�IN�HN0�GN�FM�EL�DK ��CJ ��BI ��AH ��@G ��?F ��>E ��=D ��<C ��;B ��:A ��9@ ��8? ��7> ��6= ��5< ��4; ��3: ��29 ��18 ��07 ��/6 ��.5 ��-4 ��,3 ��+2 ��*1 ��)0 ��(/ ��'. ��&- ��%, ��$+ ��#* ��") ��!( �� ' ��& ��% ��$ ��# ��" ��! ��  �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
 ��	 �� �� �� �� �� ��
 ��	 �� ��  �� ��~ ��} ��| ��{ ��z ��y  ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D� ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x ��w~ ��v} ��u| ��t{ ��sz ��ry ��qx ��pw ��ov ��nu ��mt ��ls ��kr ��jq ��ip ��ho ��gn ��fm ��el ��dk ��cj ��bi ��ah ��`g ��_f ��^e ��]d ��\c ��[b ��Za ��Y` ��X_ ��W^ ��V] ��U\ ��T[ ��SZ ��RY ��QX ��PW ��OV ��NU ��MT ��LS ��KR ��JQ ��IP ��HO ��GN ��FM ��EL ��DK ��CJ ��BI ��AH ��@G ��?F ��>E ��=D ��<C ��;B ��:A ��9@ ��8? ��7> ��6= ��5< ��4; ��3: ��29 ��18 ��07 ��/6 ��.5 ��-4 ��,3 ��+2 ��*1 ��)0 ��(/ ��'. ��&- ��%, ��$+ ��#* ��") ��!( �� ' ��& ��% ��$ ��# ��" ��! ��  �� �� �� �� �� ��4�4�4�4�4�4�4�4�4�
4�	4�4�4�<�<�<�
<�	<�<� <�<�~<�}<�|<�{>�z>�y >�x�>�w�>  s� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"���������������wne\SJA8/&
�
�
�
�
�
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
	��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"��       �>�A�=�A�<�A�;�A�:�A�9�A�8�A�7�A�6�A�5�A�4�A�3�A�2�A�1�A�0�A�/�A�.�A�-�A�,�A�+�A�*�A�)�A�(�A�'�A�&�A�%�A�$�A�#�A�"�A�!�A� �A��A��A��A��A��A��A��A��A��A��A��A��A��A��A��A��A��A��A�������
�!�	��!��~!�~�}�|!�|�{,� z,�y,�~x,�}w,�|v,�{u,�zt!�yt,�xs �wr�vr �uq �tp �so �rn �qm �pl �ok1�nj1�mi1�lh1�kg1�jf1�ie1�hd1�gc1�fb1�ea1�d`1�c_1�b^1�a]1�`\1�_[1�^Z1�]Y1�\X1�[W1�ZV1�YU1�XT1�WS1�VR1�UQ1�TP1�SO1�RN1�QM1�PL1�OK1�NJ1�MI1�LH1�KG1�JF1�IE1�HD1�GC1�FB1�EA1�D@1�C?1�B>1�A=1�@<1�?;1�>:1�=91�<81�;71�:61�951�841�731�621�511�40<�3/<�2.<�1-<�0,<�/+<�.*<�-)<�,(<�+'<�*&<�)%<�($>�'#>�&">�%!>�$ >�#>�">�!>� >�>�:�>�>���������=�=�=�=�=�=�
=�	=�=�
=�	=�=�@�@�@�@� @��@��@� �@��@�~�@�}�@�|�@�{�@�z�@�y�@�x�@�w�@�v�@�u�@�t�@�s�@�r�@�q�@�p�@�o�@�n�@�m�@�l�@�k�@�j�@�i�@�h�@�g�@�f�@�e�@�d�@�c�@�b�@�a�@�`�@�_�@�^�@�]�@�\�@�[�@�Z�@�Y�@�X�@�W�@�V�@�U�@�T�@�S�@�R�@�Q�@�P�@�O�@�N�@�M�@�L�@�K�@�J�@�I�@�H�@�G�@�F�@�E�@�D�@�C�@�B�@�A�@�@�@�?�@�>�@�=�@�<�@�;�@�:�@�9�@�8��7�@�6�@�5�@�4�@�3�@�2�@�1�@�0�@�/�@�.�@�-�@�,�@�+�@�*�@�)�@�(�@�'�@�&�@�%�@�$�@�#�@�"�@�!�@� �@��@��@��@��0����0��0��0����0��0��0��0����0����0����0��0���
�0�	���0��?��?��?��?��?��?��?� �?��?�~�?�}�?�|�?�{�D�zD�y~D�x}D�w|D�v{D�uzD�tyD�sxD�rwD�qvD�puD�ot%�ns%�mr%�lq%�kp%�jo%�in%�hm%�gl%�fk%�ej%�di%�ch%�bg%�af%�`e%�_dF�^cF�]bF�\aF�[`F�Z_F�Y^F�X]F�W\F�V[F�UZF�TYF�SX�RW�QV�PU�OT�NS�MR�LQ  s� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"���������������wne\SJA8/&
�
�
�
�
�
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
	��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOF=4+"��       �1""�0!"�/ "�."�-"�,"�+"�*"�);�(;�';�&;�%;�$;�#;�";�!;� ;�;�;�;�;�!�!�
!�	5�5�5�5�5�5�5�5�5� 5��5��5��-��-�
�-�	�-��-��-��-��-����/����/� ����~��}��|�/�{��z��y��x��w��v��u�/�t��s��r��q�/�p��o��n��m��l��k��j��i��h��g�.�f�.�e�.�d�.�c�.�b�.�a�.�`�.�_�B�^�B�]�B�\�B�[�B�Z�B�Y�B�X�B�W�B�V�B�U�B�T�B�S�B�R�B�Q��P��O��N��M��L��K��J�4�I�4�H�4�G�4�F�4�E�4�D�4�C�4�B�4�A�4�@�4�?�4�>�4�=�4�<�4�;�4�:�4�9�4�8�4�7�4�6�4�5�4�4�4�3�3�2�3�1�3�0�3�/�3�.�3�-�3�,�3�+�$�*�$�)�$�(�$�'�$�&�$�%�$�$�$�#�$�"�$�!�$� �$��$��$��$��7��7��7��7��7��7��7��7��7��7��7��7�������������
��	�~�}�|�{�z�y�x�w� v�u�~t�}s�|r�{q6�zp6�yo6�xn6�wm6�vl6�uk6�tj6�si6�rh6�qg6�pf6�oe:�nd:�mc:�lb:�ka:�j`:�i_:�h^:�g]:�f\:�e[:�dZ:�cY�bX�aW�`V�_U�^T�]S�\R�[Q8�ZP8�YO8�XN8�WM8�VL8�UK8�TJ8�SI8�RH8�QG8�PF8�OEC�NDC�MCC�LBC�KAC�J@C�I?C�H>C�G=C�F<C�E;C�D:C�C9C�B8C�A7C�@6#�?5#�>4#�=3#�<2#�;1#�:0#�9/#�8.#�7-#�6,#�5+#�4*#�3)#�2(#�1'#�0&#�/%#�.$#�-##�,"#�+!#�* #�)#�(#�'#�&#�%#�$#�##�"#�!#� #�#�#�#�#�#�#�#�#�#�#�#�
#�	#�#�#�#�#�#�#�#�#�
 #�	�#��#��#��E��E��E��E��E��E� �E��E�~�E�}�E�|�E�{�E�z�2�y�2�x�2�w�2�v�2�u�2�t�2�s�2�r�2�q�G�p�G�o�G�n�G�m�G�l�G�k�G�j�G�i�G�h�G�g�G�f�G�e�A�d�A�c�A�b�A�a�A�`�A�_�A�^�A�]�A�\�A�[�A�Z�A�Y�A�X�A�W�A�V�A�U�A�T�A�S�A�R�A�Q�A�P�A�O�A�N�A�M�A�L�A�K�A�J�A�I�A�H�A�G�A�F�A�E�A�D�A�C�A�B�A�A�A�@�A�?�A  ]� ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'��������������|sjaXOE;1'	�������������}si_UKA7-#
�
�
�
�
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

	�	�	�	�	�	�	�	�	�	�	�	�		u	k	a	W	M	C	9	/	%			�������������{qg]SI?5+!�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!������     �L ��K ��J ��I ��
H ��	G ��F ��E ��D ��C ��B ��A ��@ ��? �� > ��= ��~< ��}; ��|: ��{9 ��z8 ��y7 ��x6 ��w5 ��v4 ��u3 ��t2�s1�r0�q/�p.�o-�n,�m+�l*�k)�j(�i'�h&�g%�f$�e#�d" ��c! ��b  ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S�R�Q�P�O�N ��M�L ��K
 ��J	�I	 ��H�G ��F ��E ��D�C ��B�A ��@ ��? ��> ��=  ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2��1��0��/��.��-��,��+� ��*��)��(��'��&��%��$��#� ��"� ��!� �� ��������������� ��� ��� ��� ����� ��� ��� ��� ����� ��� ��������
��	������������������ ����~� ��}��|��{��z��y��x��w��v��u��t� ��s��r��q��p��o� ��n� ��m� ��l� �k� �j� ��i� �h� �g� �f� �e� ��d� �c� ��b� �a��`��_��^��]��\��[��Z� ��Y��X� ��W��V��U� ��T� ��S��R��Q� ��P� ��O��N� ��M��L��K� ��J��I��H��G� ��F��E��D��C� ��B��A��@��?��>� ��=� ��<��;� ��:� ��9� ��8��7� ��6��5� ��4� ��3��2��1��0��/��.��-� ��,��+� ��*��)� ��(��'� ��&��%� ��$��#��"��!�� �������������/��/��/��/��/��/��/��/��/��/��/����~�}�|�
{�	z�y�x�w�v�u�t�s9�r9� q9�p9�~o9�}n9�|m9�{l9�zk9�yj9�xi9�wh9�vg9�uf9�te9�sd9�rc9�qb9�pa9�o`9�n_9�m^9�l]9�k\9�j[+�iZ+�hY+�gX+�fW+�eV+�dU+�cT+�bS"�aR"�`Q"�_P"�^O"�]N"�\M"�[L"�ZK"�YJ"�XI"�WH"�VG"�UF"�TE"�SD"�RC"�QB"�PA"�O@"�N?"�M>"�L="�K<"�J;"�I:"�H9"�G8"�F7"�E6"�D5"�C4"�B3"�A2"�@1"�?0"�>/"�=."�<-"�;,"�:+"�9*"�8)"�7("�6'"�5&"�4%"�3$"�2#"  V� ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
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
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXOF=4+"���������  �d�t�c�t�b�t�a�t�`�t�_�t�^�t�]�t�\�t�[�t�Z�t�Y�t�X�t�W�t�V�t�U�t�T�t�S�t�R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D� ��C ��B~ ��A} ��@| ��?{ ��>z ��=y ��<x ��;w ��:v ��9u ��8t ��7s ��6r ��5q ��4p ��3o ��2n ��1m ��0l ��/k ��.j ��-i ��,h ��+g ��*f ��)e ��(d ��'c ��&b ��%a ��$` ��#_ ��"^ ��!] �� \ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��
F ��	E ��D ��C ��B ��A ��@ ��? ��> ��= �� < ��; ��~: ��}9 ��|8 ��{7 ��z6 ��y5 ��x4 ��w3 ��v2 ��u1 ��t0 ��s/ ��r. ��q- ��p, ��o+ ��n* ��m) ��l( ��k' ��j& ��i% ��h$ ��g# ��f" ��e! ��d  ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N
 ��M	 ��L ��K ��J ��I ��H ��G ��F ��E ��D  ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G� ��F� ��E� ��D� ��C ��B~ ��A} ��@| ��?{ ��>z ��=y ��<x ��;w ��:v ��9u ��8t ��7s ��6r ��5q ��4p ��3o ��2n ��1m ��0l ��/k ��.j ��-i ��,h ��+g ��*f ��)e ��(d ��'c ��&b ��%a ��$` ��#_ ��"^ ��!] �� ] ��\ ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M �  Y� ��������������ypg^ULC:1(��������������}tkbYPG>5,#�������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&
�
�
�
�
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
 ������������~tj`VLB8.$�������      �=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��
� ��	� ��� ��� ��� ��� ��� ��� ��� ��� �� � ��� ��~� ��}� ��|� ��{� ��z� ��y� ��x� ��w� ��v� ��u� ��t� ��s� ��r� ��q� ��p� ��o� ��n� ��m� ��l� ��k� ��j� ��i� ��h� ��g� ��f� ��e� ��d� ��c� ��b� ��a� ��`� ��_� ��^� ��]� ��\� ��[� ��Z� ��Y� ��X� ��W� ��V� ��U� ��T� ��S� ��R� ��Q� ��P� ��O� ��N� ��M� ��L� ��K� ��J� ��I� ��H� ��G ��F~ ��E} ��D| ��C{ ��Bz ��Ay ��@x ��?w ��>v ��=u ��<t ��;s ��:r ��9q ��8p ��7o ��6n ��5m ��4l ��3k ��2j ��1i ��0h ��/g ��.f ��-e ��,d ��+c ��*b ��)a ��(` ��'_ ��&^ ��%] ��$\ ��#[ ��"Z ��!Y �� X ��W ��V ��U ��T ��S ��R ��Q ��P ��O ��N ��M ��L ��K ��J ��I ��H ��G ��F ��E ��D ��C ��
B ��	A ��@ ��? ��> ��= ��< ��; ��: ��9 �� 8 ��7 ��~6 ��}5 ��|4 ��{3 ��z2 ��y1 ��x0 ��w/ ��v. ��u- ��t, ��s+ ��r* ��q* ��p) ��o) ��n( ��m' ��l& ��k% ��j$ ��i# ��h" ��g! ��f  ��e ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R ��Q ��P
 ��O	 ��N ��M ��L ��K ��J ��I ��H ��G ��F  ��E� ��D� ��C� ��B� ��A� ��@� ��?� ��>� ��=� ��<� ��;� ��:� ��9� ��8� ��7� ��6� ��5� ��4� ��3� ��2� ��1� ��0� ��/� ��.� ��-� ��,� ��+� ��*� ��)� ��(� ��'� ��&� ��%� ��$� ��#� ��"� ��!� �� � ��� ���s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s��s�
�s�	�s��s��s��s��s��s��s��s��s� �s��s�~�s�}�s�|�s�{�s�z�s�y�s�x�t�w�t�v�t�u�t�t�t�s�t�r�t�q�t�p�t�o�t�n�t�m�t�l�t�k�t�j�t�i�t�h�t�g�t�f�t�e�t   �
� ������������~tj`VLB8.$�������������zpf\RH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#���������������xof]TKB90'
�
�
�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �I�Q�H�Q�GQ�F~Q�E}Q�D|Q�C{Q�BzQ�AyQ�@xQ�?wQ�>vQ�=uQ�<tQ�;sQ�:rQ�9qQ�8pQ�7oQ�6nQ�5mQ�4lQ�3kQ�2jQ�1iQ�0hQ�/gQ�.fQ�-eQ�,dQ�+cQ�*bQ�)aQ�(`Q�'_Q�&^Q�%]Q�$\Q�#[Q�"ZQ�!YQ� XQ�WQ�VQ�UQ�TQ�SQ�RQ�QR�PR�OR�NR�MR�LR�KR�JR�IR�HR�GR�FR�ER�DR�CR�
BR�	AR�@R�?R�>R�=R�<R�;R�:R�9R� 8R�7R�~6R�}5R�|4R�{3R�z2R�y1R�x0R�w/R�v.R�u-R�t,R�s+R�r*R�q)R�p(R�o'R�n&R�m%R�l$R�k#R�j"R�i! ��h  ��g ��f ��e ��d ��c ��b ��a ��` ��_ ��^ ��] ��\ ��[ ��Z ��Y ��X ��W ��V ��U ��T ��S ��R
 ��Q	 ��P ��O ��N ��M ��L ��K ��J ��I ��H  ��G� ��F� ��E� ��D� ��C� ��B� ��A� ��@� ��?� ��>� �   | ���lH$ ���pL(���tP,����tX<����uY=!
�
�
�
�
s
V
9

 	�	�	�	�	o	R	5	�����lO2�����gJ-����bE(����z]@#����]:����hE"�����hM2�����oR5                        |!; �OBHeats07/24/2021{!< �OBHeats07/24/2021z!� �OBHeats07/23/2021y!� �OBHeats07/23/2021x!� �OBHeats07/23/2021w!� �OBHeats07/23/2021v!reOBHeat08/06/2021u!seOBHeat08/06/2021t!dOBHeat08/04/2021s!dOBHeat08/04/2021r!�mOBHeat08/06/2021q!�mOBHeat08/06/2021p!�hOBHeat08/04/2021o!0kOBHeat08/04/2021n!1kOBHeat08/04/2021!m#!{ �WRFirst round08/02/2021!l#!k �WRFirst round08/02/2021!k#! �WRFirst round08/03/2021!j#! �WRFirst round08/03/2021!i#!� �WRFirst round08/03/2021!h#!� �WRFirst round08/03/2021!g#!~ �WRFirst round08/03/2021!f#!H �ORFirst round08/03/2021!e#!J �ORFirst round08/03/2021!d#![ �ORFirst round08/03/2021!c#!Y �ORFirst round08/03/2021!b#!K �ORFirst round08/03/2021!a#!g �ORFirst round08/03/2021!`#!` �ORFirst round08/03/2021!_#!� �ORFirst round08/03/2021!^#! �WRFirst round08/03/2021]! �WRFinal08/03/2021\!� �WRFinal08/03/2021[!� �WRFinal08/03/2021Z!J �ORFinal08/03/2021Y!Y �ORFinal08/03/2021X! �WRFinal08/04/2021W!�ORFinal08/01/2021V!�WRFinal07/29/2021U!%WRFinal07/29/2021T!WRFinal07/29/2021S!#WRFinal07/29/2021R!�ORFinal08/01/2021Q!�ORFinal08/01/2021P!�ORFinal08/01/2021O!�
WRFinal07/25/2021N!�
WRFinal07/25/2021M!�ORFinal07/28/2021L!�ORFinal07/29/2021K!�WRFinal07/30/2021J!� �ORFinal07/25/2021I!� �ORFinal07/30/2021H!� �ORFinal07/27/2021G!WRFinal07/31/2021F!WRFinal07/31/2021E!�WRFinal07/31/2021D!�ORFinal08/01/2021C!�WRFinal08/01/2021B!�WRFinal08/01/2021A!�WRFinal08/01/2021@!�ORFinal07/28/2021?!�ORFinal07/29/2021>!� �ORFinal07/30/2021=!� �ORFinal07/29/2021<!� �WRFinal07/31/2021;!	K �WRFinal08/06/2021:! �ORFinal07/29/20219! � �ORFinal07/26/20218!& �ORFinal07/31/20217!! �ORFinal07/30/20216! � �ORFinal07/30/20215! � �ORFinal07/24/20214! � �ORFinal07/25/20213! � �ORFinal07/29/20212! � �ORFinal07/29/20211!W �ORFinal07/26/20210!L �WRFinal08/02/2021/! � �ORFinal07/25/2021.!2 �ORFinal07/24/2021-!d �OBFinal07/30/2021,!; �OBFinal07/28/2021+!< �OBFinal07/28/2021*!� �OBFinal07/28/2021)!� �OBFinal07/30/2021(!� �OBFinal07/28/2021'!� �OBFinal07/28/2021&!nlOBFinal08/03/2021%!niOBFinal08/03/2021$!reOBFinal08/07/2021#!seOBFinal08/07/2021"!7gOBFinal08/03/2021!!eOBFinal08/03/2021 !eOBFinal08/03/2021!�GWRFinal01/08/2021!�.WRFinal04/08/2021!!WU20RFinal03/08/2021!UORFinal06/08/2021!|ORFinal31/07/2021!�)ORFinal31/07/2021!|DORFinal05/08/2021!�-WRFinal03/08/2021!}ORFinal07/08/2021"%!: �ORFencing (BR)08/06/2021"%!�7ORClean & Jerk07/27/2021"%!z6ORClean & Jerk07/26/2021"%!z6ORClean & Jerk07/26/2021"%!w6ORClean & Jerk07/26/2021"%!w6ORClean & Jerk07/26/2021"%!�5ORClean & Jerk07/24/2021"%!�5ORClean & Jerk07/24/2021"%!�5ORClean & Jerk07/24/2021"%!�3ORClean & Jerk08/02/2021"%!�3ORClean & Jerk08/02/2021"%!�>ORClean & Jerk07/31/2021"
%!�=ORClean & Jerk07/31/2021"	%!�=ORClean & Jerk07/31/2021"%!�;ORClean & Jerk07/28/2021"%!�:ORClean & Jerk07/25/2021"%!t8ORClean & Jerk07/25/2021"%!4ORClean & Jerk08/03/2021"%!�2WRClean & Jerk08/04/2021"%!�2ORClean & Jerk08/04/2021(1!�4ODB110 metres hurdles05/08/2021 !!�4WDB100 metres04/08/2021   t � ����mO1����yW5����]7���}X2���wQ/
�
�
�
�
]
:
	�	�	�	�	c	>	����oN-����gF%���{Y7����kI'����jK,����pO1����}_A#����oQ3 �       �p!w6ORTotal07/26/2021�o!�5ORTotal07/24/2021�n!�5ORTotal07/24/2021�m!�5ORTotal07/24/2021�l!�3ORTotal08/02/2021�k!�3ORTotal08/02/2021�j!�>ORTotal07/31/2021�i!�=ORTotal07/31/2021�h!�=ORTotal07/31/2021�g!�;WRTotal07/28/2021�f!�;ORTotal07/28/2021�e!�:ORTotal07/25/2021�d!�:ORTotal07/25/2021�c!t8ORTotal07/25/2021�b!4ORTotal08/03/2021�a!4ORTotal08/03/2021�`!4ORTotal08/03/2021�_!�2WRTotal08/04/2021�^!�2ORTotal08/04/2021�]!�2ORTotal08/04/2021�\!A �ORSwimming08/06/2021�[! �ORSwimming08/07/2021�Z!�7ORSnatch07/27/2021�Y!u6ORSnatch07/26/2021�X!�5ORSnatch07/24/2021�W!�5ORSnatch07/24/2021�V!�3ORSnatch08/02/2021�U!�=ORSnatch07/31/2021�T!�;ORSnatch07/28/2021�S!�;ORSnatch07/28/2021�R!4ORSnatch08/03/2021�Q!�2WRSnatch08/04/2021�P!�2ORSnatch08/04/2021�O!�2ORSnatch08/04/2021�N!�ORSemifinal07/31/2021�M!� �ORSemifinal07/26/2021�L!� �ORSemifinal07/30/2021�K!� �ORSemifinal07/30/2021�J!� �WBSemifinal07/28/2021�I!� �WBSemifinal07/28/2021�H!� �WBSemifinal07/28/2021�G!� �WBSemifinal07/28/2021�F!/ �WBSemifinal07/28/2021�E!7 �WBSemifinal07/28/2021�D!0 �WBSemifinal07/28/2021�C!8 �WBSemifinal07/28/2021�B!k �OBSemifinal07/28/2021�A!l �OBSemifinal07/28/2021�@!j �WBSemifinal07/28/2021�?!i �WBSemifinal07/28/2021�>!zlOBSemifinal08/03/2021�=!nlOBSemifinal08/03/2021�<!BlOBSemifinal08/03/2021�;!niOBSemifinal08/03/2021�:!�gOBSemifinal08/03/2021�9!7gOBSemifinal08/03/2021�8!eOBSemifinal08/03/2021�7!eOBSemifinal08/03/2021�6!eOBSemifinal08/03/2021�5!eOBSemifinal08/03/2021!�4!!WU20RSemifinal02/08/2021�3!VORSemifinal01/08/2021�2!vORSemifinal05/08/2021�1!!WU20RRound 102/08/2021�0!@ �WBRepechage07/28/2021"�/'!ORRanking round23/07/2021"�.'! ORRanking round23/07/2021"�-'!�ORRanking round23/07/2021"�,'!ORRanking round23/07/2021!�+%!�hOBQuarterfinal08/04/2021 �*!! �WRQualifying08/02/2021 �)!!� �WRQualifying08/02/2021 �(!!� �WRQualifying08/02/2021 �'!!| �ORQualifying08/06/2021 �&!!H �ORQualifying08/03/2021 �%!!J �ORQualifying08/03/2021 �$!!K �ORQualifying08/03/2021 �#!!g �ORQualifying08/03/2021 �"!!h �ORQualifying08/03/2021 �!!!� �ORQualifying08/02/2021� !!YORQualifying08/04/2021#�'!	K �ORQualification08/04/2021#�'!	6 �ORQualification08/03/2021"�'! �WRQualification07/29/2021#�'! � �WRQualification07/26/2021"�'!E �ORQualification07/31/2021"�'!8 �ORQualification07/24/2021#�'! � �WRQualification07/25/2021"�'! �ORQualification07/31/2021"�'! �ORQualification07/31/2021"�'! �ORQualification07/31/2021!�	'! �ORQualification07/31/2021#�'! � �WRQualification07/27/2021#�'! � �WRQualification07/27/2021#�'! �ORQualification07/27/2021#�'!. �ORQualification07/27/2021#�'!I �ORQualification07/26/2021#�'!a �ORQualification07/26/2021#�'! � �ORQualification07/25/2021�!K �OROverall08/06/2021�! �OROverall08/07/2021�!�4ODBLong jump04/08/2021�
!+ �ORLaser run08/06/2021�	! �ORLaser run08/07/2021�!�ORHeats07/30/2021�!�ORHeats07/28/2021�!� �ORHeats07/26/2021�!� �ORHeats07/28/2021�!� �ORHeats07/25/2021�!� �ORHeats07/25/2021�!� �ORHeats07/25/2021�!� �ORHeats07/25/2021� !ORHeats07/29/2021!�ORHeats07/29/2021~!ORHeats07/27/2021}!� �ORHeats07/29/2021   � ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �t!�7ORTotal07/27/2021�s!z6ORTotal07/26/2021�r!z6ORTotal07/26/2021�q!w6ORTotal07/26/2021   �Z �����|bJ3�������}gXG9)������qbQ9+������nW>+������tcP5
�
�
�
�
�
�
e
H
.
	�	�	�	�	�	~	b	G	*	�����gT?&������iP7�������xbJ6!������~kVC0!�����yiWA)�������fJ1�����ueSC1�����yZ�)/ �100m BreaststrokeWomen�(/ �100m BreaststrokeMen�'+ �100m BackstrokeWomen�&+ �100m BackstrokeMen�% �WomenWomen�$ �CombinedWomen�# �CombinedMen�" �StreetWomen�! �StreetMen�  �ParkWomen� �ParkMen� �TrapWomen� �TrapMen� �SkeetWomen� �SkeetMen �7 �50m Rifle 3 PositionsWomen�7 �50m Rifle 3 PositionsMen�7 �25m Rapid Fire PistolMen�! �25m PistolWomen�' �10m Air RifleWomen�' �10m Air RifleMen�) �10m Air PistolWomen�) �10m Air PistolMen� �RS:XWomen� �RS:XMen�% �Laser RadialWomen� �LaserMen� �FinnMen�' �Single ScullsWomen�' �Single ScullsMen�! �All-AroundWomen�
! �IndividualWomen�	! �IndividualMen� �10kmWomen� �10kmMen�% �Kumite -75kgMen�% �Kumite -67kgMen�% �Kumite -61kgWomen�% �Kumite -55kgWomen�% �Kumite +75kgMen�% �Kumite +61kgWomen�  �KataWomen �KataMen~ �(-90 kg)Men} �(-81 kg)Men| �(-78 kg)Women{ �(-73 kg)Menz �(-70 kg)Womeny �(-66 kg)Menx �(-63 kg)Womenw �(-60 kg)Menv �(-57 kg)Womenu �(-52 kg)Woment �(-48 kg)Womens �(-100 kg)Menr �(+78 kg)Womenq �(+100 kg)Menp# �Stroke PlayWomeno# �Stroke PlayMenn �SabreWomenm �SabreMenl �FoilWomenk �FoilMenj �ÉpéeWomeni �ÉpéeMenh �JumpingMixedg �EventingMixedf �DressageMixede) �3m SpringboardWomend) �3m SpringboardMenc% �10m PlatformWomenb% �10m PlatformMena% �Track SprintWomen`%Track SprintMen_%~Track OmniumWomen^%}Track OmniumMen]%zTrack KeirinWomen\%yTrack KeirinMen[+xRoad Time TrialWomenZ+wRoad Time TrialMenYvRoad RaceWomenXuRoad RaceMen%WCtMountain Bike Cross-countryWomen#VCsMountain Bike Cross-countryMenU!rBMX RacingWomenT!qBMX RacingMenS'pBMX FreestyleWomenR'oBMX FreestyleMenQ/jSprint Kayak 500mWomenP/iSprint Kayak 200mWomenO/hSprint Kayak 200mMenN1gSprint Kayak 1000mMenM/dSprint Canoe 200mWomenL1cSprint Canoe 1000mMenK%bSlalom KayakWomenJ%aSlalom KayakMenI%`Slalom CanoeWomenH#_SlalomCanoeMenG-^Welter (64-69kg)WomenF-]Welter (63-69kg)MenE3\Super Heavy (+91kg)MenD-[Middle (69-75kg)WomenC-ZMiddle (69-75kg)MenB+YLight (57-63kg)MenA+XLight (57-60kg)Women@+WHeavy (81-91kg)Men?'VFly (48-52kg)Men>'UFly (48-51kg)Women=/TFeather (54-57kg)Women</SFeather (52-57kg)Men;LSinglesWomen:KSinglesMen9#GTriple JumpWomen8#FTriple JumpMen7EShot PutWomen6DShot PutMen5!CPole VaultWomen4!BPole VaultMen3AMarathonWomen2@MarathonMen1?Long JumpWomen0>Long JumpMen/'=Javelin ThrowWomen.'<Javelin ThrowMen-;High JumpWomen,:High JumpMen+!9HeptathlonWomen*%8Hammer ThrowWomen)%7Hammer ThrowMen(%6Discus ThrowWomen'%5Discus ThrowMen&4DecathlonMen%3800mWomen$2800mMen#)150km Race WalkMen"05000mWomen!/5000mMen %.400m HurdlesWomen%-400m HurdlesMen,400mWomen+400mMen1%3000m SteeplechaseWomen1$3000m SteeplechaseMen)#20km Race WalkWomen)"20km Race WalkMen!200mWomen 200mMen1500mWomen1500mMen%110m HurdlesMen%100m HurdlesWomen100mWomen100mMen10,000mWomen10,000mMenVaultWomenVaultMen#Uneven BarsWomenRingsMen
%Pommel HorseMen	'Parallel BarsMen)Horizontal BarMen)Floor ExerciseWomen)Floor ExerciseMen%
Balance BeamWomen!	All-AroundWomen!All-AroundMen!IndividualWomen!IndividualMen   G	J ����y\A$����|Z6 ����lP=( ������u`Q>/�������zjXH8
�
�
�
�
y
]
C
'
	�	�	�	�	�	f	J                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    �p-PGreco-Roman 97kgMen�o-OGreco-Roman 87kgMen�n-NGreco-Roman 77kgMen�m-MGreco-Roman 67kgMen�l-LGreco-Roman 60kgMen�k/KGreco-Roman 130kgMen�j)JFreestyle 97kgMen�i)IFreestyle 86kgMen�h)HFreestyle 76kgWomen�g)GFreestyle 74kgMen�f)FFreestyle 68kgWomen�e)EFreestyle 65kgMen�d)DFreestyle 62kgWomen�c)CFreestyle 57kgWomen�b)BFreestyle 57kgMen�a)AFreestyle 53kgWomen�`)@Freestyle 50kgWomen�_+?Freestyle 125kgMen�^>96kgMen�]=81kgMen�\<76kgWomen�[;73kgMen�Z:67kgMen�Y964kgWomen�X861kgMen�W759kgWomen�V655kgWomen�U549kgWomen�T4109kgMen�S3(+87kg)Women�R2(+109kg)Men�Q-WomenWomen�P+MenMen�O*WomenWomen�N)MenMen�M(SinglesWomen�L'SinglesMen�K#(-80kg)Men�J"(-68kg)Men�I!(-67kg)Women�H (-58kg)Men�G(-57kg)Women�F(-49kg)Women�E(+80kg)Men�D(+67kg)Women�CSinglesWomen�BSinglesMen�A)800m FreestyleWomen�@)800m FreestyleMen�?'50m FreestyleWomen�>'50m FreestyleMen!�=9400m Individual MedleyWomen�<9400m Individual MedleyMen�;)400m FreestyleWomen�:)400m FreestyleMen!�99200m Individual MedleyWomen�89200m Individual MedleyMen�7)200m FreestyleWomen�6)200m FreestyleMen�5)200m ButterflyWomen�4)200m ButterflyMen�3/200m BreaststrokeWomen�2/200m BreaststrokeMen�1+ 200m BackstrokeWomen�0+ �200m BackstrokeMen�/+ �1500m FreestyleWomen�.+ �1500m FreestyleMen�-) �100m FreestyleWomen�,) �100m FreestyleMen�+) �100m ButterflyWomen�*) �100m ButterflyMen   �6 �����kR8�����hN4 ����|bH.�����x^D*�����tZ@&
�
�
�
�
�
p
V
<
"
	�	�	�	�	�	l	R	8		�����hN4 ����~dJ0�����zaH/�����tY>#�����jQ8�����hM2�����jN2�����nR6              �! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�
! �7/25/202108/07/2021�	! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021�!! �08/02/202108/08/2021�!! �08/02/202108/08/2021�!! �08/02/202108/08/2021�!! �08/02/202108/08/2021� !! �08/02/202108/08/2021!!08/02/202108/08/2021~!!~08/02/202108/08/2021}!!}08/02/202108/08/2021|!!|08/02/202108/08/2021{!!{08/02/202108/08/2021z!!z08/02/202108/08/2021y!!y08/02/202108/08/2021xx7/24/20217/28/2021ww7/24/20217/28/2021vv7/24/20217/28/2021uu7/24/20217/28/2021tt7/25/20217/26/2021ss7/25/20217/26/2021r!r7/29/202108/01/2021q!q7/29/202108/01/2021p!p7/29/202108/01/2021o!o7/29/202108/01/2021n!!n08/02/202108/07/2021m!!m08/02/202108/07/2021l!!l08/02/202108/07/2021k!!k08/02/202108/07/2021j!!j08/02/202108/07/2021i!!i08/02/202108/07/2021h!!h08/02/202108/07/2021g!!g08/02/202108/07/2021f!!f08/02/202108/07/2021e!!e08/02/202108/07/2021d!!d08/02/202108/07/2021c!!c08/02/202108/07/2021bb7/25/20217/29/2021aa7/25/20217/29/2021``7/25/20217/29/2021__7/25/20217/29/2021^!^7/25/202108/08/2021]!]7/25/202108/08/2021\!\7/25/202108/08/2021[![7/25/202108/08/2021Z!Z7/25/202108/08/2021Y!Y7/25/202108/08/2021X!X7/25/202108/08/2021W!W7/25/202108/08/2021V!V7/25/202108/08/2021U!U7/25/202108/08/2021T!T7/25/202108/08/2021S!S7/25/202108/08/2021R!R7/24/202108/07/2021Q!Q7/24/202108/07/2021P!P7/25/202108/08/2021O!O7/25/202108/08/2021N!N7/21/202108/07/2021M!M7/21/202108/07/2021L!L7/25/202108/02/2021K!K7/25/202108/02/2021J!J7/25/202108/02/2021I!I7/25/202108/02/2021H!H7/25/202108/02/2021G!G7/30/202108/08/2021F!F7/30/202108/08/2021E!E7/30/202108/08/2021D!D7/30/202108/08/2021C!C7/30/202108/08/2021B!B7/30/202108/08/2021A!A7/30/202108/08/2021@!@7/30/202108/08/2021?!?7/30/202108/08/2021>!>7/30/202108/08/2021=!=7/30/202108/08/2021<!<7/30/202108/08/2021;!;7/30/202108/08/2021:!:7/30/202108/08/20219!97/30/202108/08/20218!87/30/202108/08/20217!77/30/202108/08/20216!67/30/202108/08/20215!57/30/202108/08/20214!47/30/202108/08/20213!37/30/202108/08/20212!27/30/202108/08/20211!17/30/202108/08/20210!07/30/202108/08/2021/!/7/30/202108/08/2021.!.7/30/202108/08/2021-!-7/30/202108/08/2021,!,7/30/202108/08/2021+!+7/30/202108/08/2021*!*7/30/202108/08/2021)!)7/30/202108/08/2021(!(7/30/202108/08/2021'!'7/30/202108/08/2021&!&7/30/202108/08/2021%!%7/30/202108/08/2021$!$7/30/202108/08/2021#!#7/30/202108/08/2021"!"7/30/202108/08/2021!!!7/30/202108/08/2021 ! 7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!7/30/202108/08/2021!!08/02/202108/07/2021!!08/02/202108/07/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021!7/24/202108/03/2021
!
7/24/202108/03/2021	!	7/24/202108/03/2021!7/24/202108/03/20217/23/20217/31/20217/23/20217/31/20217/23/20217/31/20217/23/20217/31/20217/23/20217/31/20217/25/20217/28/2021	7/25/20217/28/2021   �0 ����tX< ����x\@$����}bG,�����oT9����rU8
�
�
�
�
�
m
R
7

	�	�	�	�	z	_	D	)	�����iM1�����mQ5�����qU9����tW< ����x\@$����|`D(�����dH,�����hL0                        �!7/24/202108/06/2021�!7/24/202108/06/2021�!7/24/202108/06/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�
!7/24/202108/01/2021�	!
7/24/202108/01/2021�!	7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021�!7/24/202108/01/2021� !7/24/202108/01/2021�! 7/24/202108/01/2021�~! �7/24/202108/01/2021�}! �7/24/202108/01/2021�|! �7/24/202108/01/2021�{! �7/24/202108/01/2021�z! �7/24/202108/01/2021�y! �7/24/202108/01/2021�x! �7/24/202108/01/2021�w! �7/24/202108/01/2021�v! �7/24/202108/01/2021�u! �7/24/202108/01/2021�t! �7/24/202108/01/2021�s �7/25/20218/27/2021�r!! �08/03/202108/06/2021�q!! �08/03/202108/06/2021�p! �7/25/202108/05/2021�o! �7/25/202108/05/2021�n! �7/25/202108/05/2021�m! �7/25/202108/05/2021�l! �7/24/202108/02/2021�k! �7/24/202108/02/2021�j! �7/24/202108/02/2021�i! �7/24/202108/02/2021�h! �7/24/202108/02/2021�g! �7/24/202108/02/2021�f! �7/24/202108/02/2021�e! �7/24/202108/02/2021�d! �7/24/202108/02/2021�c! �7/24/202108/02/2021�b! �7/24/202108/02/2021�a! �7/24/202108/02/2021�`! �7/24/202108/02/2021�_! �7/24/202108/02/2021�^! �7/24/202108/02/2021�]! �7/25/202108/04/2021�\! �7/25/202108/04/2021�[! �7/25/202108/04/2021�Z! �7/25/202108/04/2021�Y! �7/25/202108/04/2021�X! �7/25/202108/04/2021�W! �7/25/202108/04/2021�V! �7/25/202108/04/2021�U! �7/25/202108/04/2021�T! �7/25/202108/04/2021�S �7/26/20217/31/2021�R �7/26/20217/31/2021�Q �7/23/20217/30/2021�P �7/23/20217/30/2021�O �7/23/20217/30/2021�N �7/23/20217/30/2021�M �7/23/20217/30/2021�L �7/23/20217/30/2021�K �7/23/20217/30/2021�J �7/23/20217/30/2021�I �7/23/20217/30/2021�H �7/23/20217/30/2021�G �7/23/20217/30/2021�F �7/23/20217/30/2021�E �7/23/20217/30/2021�D �7/23/20217/30/2021�C!! �08/06/202108/08/2021�B!! �08/06/202108/08/2021�A!! �08/05/202108/07/2021�@!! �08/05/202108/07/2021�?!! �08/04/202108/05/2021�>!! �08/04/202108/05/2021�=!! �08/05/202108/07/2021�<!! �08/05/202108/07/2021�;!! �08/05/202108/07/2021�:!! �08/05/202108/07/2021�9!! �08/05/202108/07/2021�8!! �08/05/202108/07/2021�7!! �08/05/202108/07/2021�6!! �08/05/202108/07/2021�5 �7/24/20217/31/2021�4 �7/24/20217/31/2021�3 �7/24/20217/31/2021�2 �7/24/20217/31/2021�1 �7/24/20217/31/2021�0 �7/24/20217/31/2021�/ �7/24/20217/31/2021�. �7/24/20217/31/2021�- �7/24/20217/31/2021�, �7/24/20217/31/2021�+ �7/24/20217/31/2021�* �7/24/20217/31/2021�) �7/24/20217/31/2021�( �7/24/20217/31/2021�' �7/24/20217/31/2021�&! �7/24/202108/06/2021�%! �7/24/202108/06/2021�$! �7/24/202108/08/2021�#! �7/24/202108/08/2021�"! �7/29/202108/07/2021�!! �7/29/202108/07/2021� ! �7/21/202108/07/2021�! �7/21/202108/07/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/24/202108/01/2021�! �7/25/202108/07/2021�! �7/25/202108/07/2021   7	� ����w\A&�����dI.�����mQ5�����qU9����pS6
�
�
�
�
�
k
N
1
	�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 �O!!P08/01/202108/07/2021�N!!O08/01/202108/07/2021�M!!N08/01/202108/07/2021�L!!M08/01/202108/07/2021�K!!L08/01/202108/07/2021�J!!K08/01/202108/07/2021�I!!J08/01/202108/07/2021�H!!I08/01/202108/07/2021�G!!H08/01/202108/07/2021�F!!G08/01/202108/07/2021�E!!F08/01/202108/07/2021�D!!E08/01/202108/07/2021�C!!D08/01/202108/07/2021�B!!C08/01/202108/07/2021�A!!B08/01/202108/07/2021�@!!A08/01/202108/07/2021�?!!@08/01/202108/07/2021�>!!?08/01/202108/07/2021�=!>7/24/202108/04/2021�<!=7/24/202108/04/2021�;!<7/24/202108/04/2021�:!;7/24/202108/04/2021�9!:7/24/202108/04/2021�8!97/24/202108/04/2021�7!87/24/202108/04/2021�6!77/24/202108/04/2021�5!67/24/202108/04/2021�4!57/24/202108/04/2021�3!47/24/202108/04/2021�2!37/24/202108/04/2021�1!27/24/202108/04/2021�0!17/24/202108/08/2021�/!07/24/202108/08/2021�.!/7/25/202108/08/2021�-!.7/25/202108/08/2021�,-7/26/20217/31/2021�+,7/26/20217/31/2021�*+7/26/20217/31/2021�)*7/30/20217/31/2021�()7/30/20217/31/2021�'!(7/24/202108/01/2021�&!'7/24/202108/01/2021�%!&7/24/202108/01/2021�$!%7/24/202108/01/2021�#!$7/24/202108/01/2021�"#7/24/20217/27/2021�!"7/24/20217/27/2021� !7/24/20217/27/2021� 7/24/20217/27/2021�7/24/20217/27/2021�7/24/20217/27/2021�7/24/20217/27/2021�7/24/20217/27/2021�!7/24/202108/06/2021�!7/24/202108/06/2021  i� ����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	����������������yqiaYQIA91)!	�������������}si_UKA7-#
�
�
�
�
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
		  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������  j� ����������������wog_WOG?7/'����������������wog_WOG?7/'����������������wog_WOG?7/'����������������wog_WOG?7/'�������������yoe[QG=3)
�
�
�
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
u
k
a
W
M
C
9
/
%


	�	�	�	�	�	�	�	�	�	�	�	�	�	{	q	g	]	S	I	?	5	+	!			�������������wmcYOE;1'	�������������}si_UKA7-#�������������yoe[QG=3)������������ukaWMC9/%�������������{qg]SI?5+!�������������xndZPF<2(���       �jjG�ii��hh��ggB�ff ��ee ��dd&�cc�bb��aa��``��__��^^:�]]��\\�[[�ZZ�YY��XXM�WW3�VVW�UU��TTM�SS3�RRW�QQW�PPV�OO'�NN&�MM�LL�KK�JJ
�II�HH��GG��FF��EE��DD��CC��BB��AA��@@��??��>>��==��<<��;;��::��99n�88m�77M�664�553�44�33�22��11��00��//��..��--��,,n�++m�**D�))C�((0�''�&&��%%��$$��##��""��!!k�  K�J�;�0�,�#�!����������������������������

��		|�d�Z�C��������  �� ���~ ���} ���| ���{ ���z �w�y �o�x �Z�w �W�v �L�u �@�t �%�s ���r ���q ���p ���o �}�n �x�m �p�l �I�k �&�j ��i ��h �
�g ���f ���e ���d �v�c �f�b �b�a �I�` �
�_ ���^ ���] �<�\ ��[ �
�Z ���Y ���X ���W ���V ���U ���T ���S ���R ���Q ���P �x�O �k�N �Y�M ��L ���K ���J ���I ���H ���G �|�F �h�E �_�D �O�C �G�B �D�A �8�@ �#�? ��> ���= ���< ���; ���: ���9 ���8 ���7 ���6 ���5 �}�4 �t�3 �s�2 �Y�1 �D�0 �8�/ �4�. �"�- ��, ��+ ��* ���) ���( ���' �z�& �t�% �l�$ �`�# �T�" �.�! ��  �� �
�� �
�� �
�� �
�� �
v� �
u� �
i� �
e� �
V� �
U� �
G� �
E� �
3� �
1� �
(� �
'� �
� �
� �
� �
� �
 �
 �	��	 �	�� �	�� �	�� �	�� �	�� �	�� �	�� �	�� �	��  �	�	�~~	�}}	�||	�{{	~zz	syy	kxx	fww	Zvv	Ruu	?tt	2ss	rr�qq�pp�oo�nn�mm�llkktjjVii)hh�gg�ff�ee�dd�cc�bb�aat``s__`^^5]]-\\![[ZZYYXXWW�VV�UU�TT�SS�RR�QQ�PP�OO�NN�MM�LLwKKbJJKII"HH�GG�FF�EE�DD^CC:BBAA�@@�??�>>�==�<<�;;�::|99v88d77Z66M55=44233122!1100//	..�--�,,�++�**�))�((�''�&&�%%�$$m##""�!!�  ����z54������zyrjiQ

C		" � �y`$	  U� �������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
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

	�	�	�	�	�	�	�	�	�	�	�	�	�	v	l	b	X	N	D	:	0	&			�������������|rh^TJ@6,"�������������xndZPF<2(
 ������������~tj`VLB8.$�������������zpf\RH>4* �������������wmcYOE;1'	��������������yoe[QG=3)�������         �?���>�o�=��<���;���:���9�s�8�r�7�7�6�1�5�0�4��3��2��1��0���/���.���-�W�,�2�+� ��*� ��)� ��(�o�'�L�&��%��$	��#���"���!� �� �������������2��
������������v��e�����������������������������
���	����������:�����������U� �T�%�~~$�}}�||�{{�zz �yy��xx��ww��vv��uu��tt��ss��rr��qql�ppk�ooe�nn2�mm1�ll�kk�jj��ii��hh��gg��ff��ee��ddl�cck�bbB�aaA�``'�__ �^^��]]��\\��[[��ZZ��YYs�XXI�WWH�VVC�UU1�TT��SS��RR��QQ��PP��OO��NN��MM��LL�KKo�JJY�II$�HH�GG�FF��EE��DD��CC��BB��AA��@@��??��>>��==��<<��;;j�::T�99N�88A�77��66��55��44��33��22�11z�00q�//W�..,�--�,,�++�**��))��((��''~�&&n�%%c�$$X�##+�""�!!��  v�(����������������������z�m�8�$���������

��		k�Z�5�(����������  h��H�~�)�}��|��{���z���y���x��w�y�v�w�u�u�t�q�s�i�r�O�q�B�p�?�o�1�n��m��l�
��k�
��j�
��i�
t�h�
s�g�
g�f�
Z�e�
F�d�
6�c�
!�b�
�a�
�`�	��_�	��^�	��]�	��\�	��[�	��Z�	��Y�	��X�	|�W�	c�V�	X�U�	O�T�	.�S�	�R���Q���P���O���N���M�~�L�}�K�\�J�9�I�0�H�	�G���F���E���D���C���B���A�n�@�Y�?�V�>�@�=�1�<�%�;��:���9���8���7���6���5���4���3���2�t�1�e�0�P�/�>�.�*�-��,���+���*���)��(�N�'��&���%���$���#���"���!��� �t��a��H��.���������������������3��+�����������������[��G��3��2�
��	����������������x��w��h��g� �c�A�~~>�}}!�||�{{ ��zz ��yy ��xx ��ww ��vvn�uuF�ttE�ss:�rr�qq�pp��ooN�nnr�mmP�llJ�kk�   ������������~tj`VLB8.$�������������zpf\RH>4* �������������vlbXND:0&�������������|rh^TJ@6,"�������������xndZPF<2(
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
	�	�	�	�	�	�	�	�	�	�	�	�	�	z	p	f	\	R	H	>	4	*	 			�������������vlbXND:0&�������������|rh^TJ@6-#�������������yoe[QG=3)������������ukaWMC9/%                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             �X���W�n�V���U�n�T���S�n�R���Q���P� ��O���N���M� ��L���K�N�J���I�N�H��G���F���E���D�|�C�6�B�u�A�f�@� ��?��>���=���<���;�|�:�6�9�u�8�f�7� ��6���5���4���3���2�2�1�
��0���/���.���-�v�,�e�+�r�*�P�)�J�(���'�G�&���%���$�B�#� ��"� ��!�&� �S��R��#��"�����������������������������������j��i��d��0��/���
��	�������������������j��i��@� �?�6�~~�}}�||��{{��zz��yy��xx��wwG�vvF�uuA�tt-�ss�rr�qq��pp��oo��nn��mm��ll}�kkk�jjX�iiH�hh�gg	�ff��ee��dd��cc��bb��aa��``��__��^^��]]g�\\`�[[\�ZZV�YYI�XXC�WW�VV��UU��TT��SS��RRt�QQ6�PP*�OO#�NN�MM�LL��KK��JJ|�IIm�HHd�GGU�FFK�EE�DD��CC��BB4�AA�@@�??��>>��==��<<��;;��::��99��88��77��66��55w�44t�33U�22�11��00��//��..��--��,,x�++\�**9�))*�((��''��&&��%%��$$��##k�""Q�!!1�  $����������~�{�r�k�c�Q�0��
��
��
��
��
r�
q�
p�
R�


M�		
9�
%�
�
�	��	��	��	��	��  	���	��~�	��}�	p�|�	e�{�	S�z�	=�y�	*�x�	�w���v���u���t���s���r�|�q�{�p�X�o�=�n�&�m���l���k���j���i���h��g�~�f�m�e�[�d�8�c�3�b� �a�	�`���_���^���]���\���[���Z���Y���X�o�W�R�V�1�U���T���S���R�y�Q�H�P�)�O� �N���M���L���K���J���I�n�H�]�G�J�F�0�E��D��C���B���A���@��  N� ��������������zqh_VMD;2) ��������������~ulcZQH?6-$	 ��������������ypg^ULC:1(��������������}tkbYPG>5,#��������������ti^SH=2'
�
�
�
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