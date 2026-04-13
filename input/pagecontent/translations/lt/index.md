# Lietuvos gimdos kaklelio vėžio prevencijos ir ankstyvosios diagnostikos įgyvendinimo vadovas

## Įvadas ir tikslas

Šiame įgyvendinimo vadove nustatoma, kaip nuosekliai pateikti ir keistis struktūrizuotais klinikiniais duomenimis, susijusiais su **Lietuvos gimdos kaklelio vėžio prevencijos programa**, naudojant **HL7® FHIR® standartą**.

Vadovas remia nacionalinę programą, skirtą **ankstyvam gimdos kaklelio vėžio nustatymui ir prevencijai**, daugiausia dėmesio skiriant **žmogaus papilomos viruso (ŽPV) tyrimams, citologiniam tyrimui (Pap testui), kolposkopijai ir histopatologinei diagnostikai**, kartu užtikrinant struktūrizuotą kliniškai reikšmingos paciento informacijos ir diagnostinių rezultatų fiksavimą.

Jo tikslas – užtikrinti:

* nuoseklų ir kokybišką duomenų fiksavimą visose asmens sveikatos priežiūros įstaigose ir laboratorijose,
* semantinį sąveikumą tarp **pirminės sveikatos priežiūros, ginekologijos, laboratorijų, patologijos ir nacionalinių atrankos sistemų**,
* struktūrizuotą ataskaitų teikimą **programos koordinavimui, kokybės užtikrinimui, stebėsenai ir antriniam duomenų naudojimui**,
* patikimą pacientų stebėjimą **atrankos, diagnostinio ištyrimo ir gydymo keliuose**.

Vadovas parengtas kaip nacionalinio **ADP projekto** dalis, kurio tikslas – palaikyti koordinuotą, duomenimis grindžiamą prevencinių ir ankstyvosios diagnostikos programų valdymą Lietuvoje.

## Apimtis

Šis vadovas orientuotas į **gimdos kaklelio vėžio prevencijos ir ankstyvosios diagnostikos darbo eigą**, apimančią atrankos, diagnostinių tyrimų ir patologinio patvirtinimo procesus.

Apimamos šios klinikinės sritys:

* **ŽPV tyrimai**, įskaitant didelės rizikos ŽPV aptikimą ir genotipų informaciją,
* **citologinis tyrimas (Pap testas)** ir struktūrizuota epitelio ląstelių pakitimų klasifikacija,
* **kolposkopinis tyrimas** ir su juo susijusios diagnostinės procedūros,
* **gimdos kaklelio audinių mėginių histopatologinis tyrimas**, įskaitant biopsijos analizę ir naviko klasifikaciją,
* **kliniškai reikšminga paciento informacija**, įskaitant atitinkamą medicininę anamnezę ir rizikos veiksnius,
* **išilginiai diagnostiniai keliai**, leidžiantys stebėti atrankos rezultatus ir tolesnės priežiūros procedūras laikui bėgant.

Vadovas modeliuoja gimdos kaklelio vėžio prevenciją kaip **atranka grindžiamą diagnostinį kelią**, kuriame ŽPV tyrimai ir citologija veikia kaip pirminiai nustatymo metodai, o tolesnės diagnostinės procedūros (kolposkopija ir histopatologija) atliekamos esant nenormaliems atrankos rezultatams.

## Pagrindiniai modeliavimo principai

Modeliavimo metodas grindžiamas šiais pagrindiniais principais:

1. **Atrankos, diagnostinių procedūrų ir patologinių rezultatų atskyrimas**  
   Atrankos tyrimai, tolesnio ištyrimo diagnostinės procedūros ir galutiniai patologiniai radiniai pateikiami kaip atskiros, bet tarpusavyje susijusios klinikinės darbo eigos dalys.

2. **Struktūrizuotas laboratorinių ir citologinių rezultatų pateikimas**  
   ŽPV tyrimų rezultatai ir citologiniai radiniai fiksuojami struktūrizuotu formatu, palaikančiu standartizuotą klasifikavimą ir palyginimą tarp sveikatos priežiūros įstaigų.

3. **Įvairių diagnostinių metodų integravimas**  
   Duomenų modelis palaiko visą diagnostinį kelią, įskaitant ŽPV tyrimus, citologiją, kolposkopiją, biopsijos procedūras ir histopatologinį tyrimą.

4. **Aiškus diagnostinių išvadų modeliavimas**  
   Stebėjimai atspindi klinikinius radinius, o diagnostinės interpretacijos ir patologinės išvados – patvirtintą klinikinį įvertinimą ir ligos klasifikaciją.

5. **Išilginių pacientų kelių palaikymas**  
   Gimdos kaklelio vėžio prevencijos programos remiasi pasikartojančia atranka ir tolesniais tyrimais. Duomenų modelis palaiko pacientų atrankos istorijos, tolesnių tyrimų ir diagnostinių rezultatų stebėjimą laikui bėgant.

6. **Terminologija grindžiamas sąveikumas**  
   Vadovas remiasi tarptautiniu mastu pripažintomis terminologijomis ir klasifikatoriais, ypač **SNOMED CT**, o ten, kur aktualu, – ir **LOINC, ICD-10-AM bei ICD-O**, siekiant užtikrinti semantinį nuoseklumą ir sąveikumą tarp sistemų.

## Vadovo turinys

Šis vadovas teikia:

* **FHIR profilius ir plėtinius**, skirtus gimdos kaklelio vėžio atrankos ir diagnostikos darbo eigoms aprašyti,
* struktūrizuotą **ŽPV tyrimų ir citologinių tyrimų** modeliavimą,
* **kolposkopinių procedūrų ir radinių** palaikymą,
* struktūrizuotą **histopatologinių tyrimų rezultatų ir naviko klasifikacijos** pateikimą,
* terminologijų susiejimus naudojant **SNOMED CT, LOINC, ICD-10-AM ir ICD-O**,
* struktūrizuotus **pavyzdžius**, iliustruojančius realistiškus programos scenarijus,
* nacionalinio gimdos kaklelio vėžio prevencijos duomenų rinkinio susiejimą su sąveikiais **FHIR artefaktais**,
* spragų ir būsimų plėtros poreikių nustatymą.

Šiame etape vadovas orientuotas į **pagrindines duomenų struktūras, reikalingas gimdos kaklelio vėžio prevencijos programai palaikyti**, įskaitant laboratorinius tyrimus, citologijos ataskaitas ir histopatologinę diagnostiką. Tolesnis tikslinimas, terminologijos plėtimas ir darbo eigos derinimas bus atliekami vėlesnėse iteracijose.

## Kodėl verta naudoti šį vadovą?

Pritaikę šį vadovą, diegėjai ir sveikatos priežiūros įstaigos gali:

1. **Sąveikumas:** Užtikrinti nuoseklius ir palyginamus gimdos kaklelio vėžio atrankos ir diagnostikos duomenis visose sveikatos priežiūros sistemose ir įstaigose.
2. **Duomenų kokybė:** Pagerinti atrankos ir diagnostikos duomenų nuoseklumą, išsamumą ir pakartotinį naudojimą.
3. **Klinikinis naudingumas:** Palaikyti struktūrizuotą ataskaitų teikimą, diagnostinių sprendimų priėmimą ir koordinuotą tolesnę priežiūrą.
4. **Programos stebėsena:** Sudaryti galimybę populiacijos lygmeniu analizuoti dalyvavimą atrankoje, tyrimų rezultatus ir diagnostinius kelius.
5. **Ilgalaikė priežiūra:** Palaikyti pacientų stebėjimą per pasikartojančius atrankos ciklus ir diagnostines procedūras.

Naršykite toliau pateiktus skyrius, kad rastumėte profilius, terminologijų susiejimus ir išsamius pavyzdžius, reikalingus standartui įgyvendinti.

### Autoriai

| Vardas | Vaidmuo | Organizacija |
|-----|-----|-----|
| Audra Stepanauskaitė | Pagrindinė autorė | [LMB](https://lmb.lt) |
| Albert Kuslevic | Pagrindinis autorius | [LMB](https://lmb.lt) |
| [Igor Bossenko](https://about.askigor.eu) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Bendraautorė | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Bendraautorius | [LMB](https://lmb.lt) |