# Lietuvos gimdos kaklelio vėžio prevencijos ir ankstyvos diagnostikos įgyvendinimo vadovas

## Įvadas ir tikslas

Šis įgyvendinimo vadovas nustato, kaip nuosekliai pateikti ir keistis struktūrizuotais klinikiniais duomenimis, susijusiais su **Lietuvos gimdos kaklelio vėžio prevencijos programa**, naudojant **HL7® FHIR® standartą**.

Vadovas palaiko nacionalinę programą, skirtą **ankstyvam gimdos kaklelio vėžio nustatymui ir prevencijai**, pagrindinį dėmesį skiriant **žmogaus papilomos viruso (ŽPV) tyrimams, citologiniam tyrimui (Pap testas), kolposkopijai ir histopatologinei diagnostikai**, kartu su struktūrizuotu kliniškai reikšmingos paciento informacijos ir diagnostinių rezultatų fiksavimu.

Jo tikslas – užtikrinti:

* nuoseklų ir kokybišką duomenų fiksavimą asmens sveikatos priežiūros paslaugų teikėjams ir laboratorijoms,
* semantinį sąveikumą tarp **pirminės sveikatos priežiūros, ginekologijos, laboratorijų, patologijos ir nacionalinių atrankos sistemų**,
* struktūrizuotą ataskaitų teikimą **programos koordinavimui, kokybės užtikrinimui, stebėsenai ir antriniam duomenų naudojimui**,
* ir patikimą pacientų stebėjimą **atrankos, diagnostinės tolesnės priežiūros ir gydymo keliuose**.

Vadovas parengtas kaip nacionalinio **ADP projekto** dalis, kurio tikslas – palaikyti koordinuotą, duomenimis pagrįstą prevencinių ir ankstyvos diagnostikos programų valdymą Lietuvoje.

## Apimtis

Šis vadovas orientuotas į **gimdos kaklelio vėžio prevencijos ir ankstyvos diagnostikos darbo eigą**, apimančią atrankos, diagnostinių tyrimų ir patologinės patvirtinimo procesus.

Apimami šie klinikiniai domenai:

* **ŽPV tyrimai**, įskaitant didelės rizikos ŽPV aptikimą ir genotipų informaciją,
* **citologinis tyrimas (Pap testas)** ir struktūrizuota epitelio ląstelių pakitimų klasifikacija,
* **kolposkopinis tyrimas** ir su juo susiję diagnostiniai procedūros,
* **gimdos kaklelio audinių mėginių histopatologinis tyrimas**, įskaitant biopsijos analizę ir naviko klasifikaciją,
* **paciento kliniškai reikšminga informacija**, įskaitant atitinkamą medicininę istoriją ir rizikos veiksnius,
* ir **išilginiai diagnostiniai keliai**, leidžiantys stebėti atrankos rezultatus ir tolesnės priežiūros procedūras laikui bėgant.

Vadovas modeliuoja gimdos kaklelio vėžio prevenciją kaip **atranka pagrįstą diagnostinį kelią**, kuriame ŽPV tyrimai ir citologija veikia kaip pirminiai aptikimo metodai, o tolesnės diagnostinės procedūros (kolposkopija ir histopatologija) atliekamos esant nenormaliems atrankos rezultatams.

## Pagrindiniai modeliavimo principai

Modeliavimo metodas grindžiamas šiais pagrindiniais principais:

1. **Atrankos, diagnostinių procedūrų ir patologinių rezultatų atskyrimas**  
   Atrankos tyrimai, tolesnio sekimo diagnostinės procedūros ir galutiniai patologiniai radiniai pateikiami kaip atskiros, bet tarpusavyje susijusios klinikinės darbo eigos dalys.

2. **Struktūrizuotas laboratorinių ir citologinių rezultatų pateikimas**  
   ŽPV tyrimų ir citologiniai radiniai fiksuojami struktūrizuotu formatu, palaikančiu standartizuotą klasifikavimą ir palyginimą tarp sveikatos priežiūros įstaigų.

3. **Kelių diagnostinių modalumų integravimas**  
   Duomenų modelis palaiko visą diagnostinį kelią, įskaitant ŽPV tyrimus, citologiją, kolposkopiją, biopsijos procedūras ir histopatologinį tyrimą.

4. **Aiškus diagnostinių išvadų modeliavimas**  
   Stebėjimai pateikia klinikinius radinius, o diagnostinės interpretacijos ir patologinės išvados – patvirtintą klinikinį įvertinimą ir ligos klasifikaciją.

5. **Išilginių pacientų kelių palaikymas**  
   Gimdos kaklelio vėžio prevencijos programos remiasi pasikartojančia atranka ir tolesniais tyrimais. Duomenų modelis palaiko pacientų atrankos istorijos, tolesnių tyrimų ir diagnostinių rezultatų stebėjimą laikui bėgant.

6. **Terminologijos pagrįstas sąveikumas**  
   Vadovas remiasi tarptautiniu mastu pripažintomis terminologijomis ir klasifikatoriais, ypač **SNOMED CT**, o ten, kur aktualu – ir **LOINC, ICD-10-AM ir ICD-O**, siekiant užtikrinti semantinį nuoseklumą ir sąveikumą tarp sistemų.

## Vadovo turinys

Šis vadovas teikia:

* **FHIR profilius ir plėtinius** gimdos kaklelio vėžio atrankos ir diagnostinių darbo eigų pateikimui,
* struktūrizuotą **ŽPV tyrimų ir citologinių tyrimų** modeliavimą,
* **kolposkopinių procedūrų ir radinių** palaikymą,
* struktūrizuotą **histopatologinių tyrimo rezultatų ir naviko klasifikacijos** pateikimą,
* terminologijų susiejimus naudojant **SNOMED CT, LOINC, ICD-10-AM ir ICD-O**,
* struktūrizuotus **pavyzdinius egzempliorius**, iliustruojančius realistinius programos scenarijus,
* nacioanlinio gimdos kaklelio vėžio prevencijos duomenų rinkinio susiejimus su sąveikiais **FHIR artefaktais**,
* ir spragų bei būsimų plėtros poreikių identifikavimą.

Šiame etape vadovas orientuotas į **pagrindinės duomenų struktūras, reikalingas gimdos kaklelio vėžio prevencijos programai palaikyti**, įskaitant laboratorinius tyrimus, citologijos ataskaitas ir histopatologinę diagnostiką. Tolimesnis tikslinimas, terminologijos plėtimas ir darbo eigos derinimas bus atliekamas vėlesnėse iteracijose.

## Kodėl verta naudoti šį vadovą?

Pritaikę šį vadovą, diegėjai ir sveikatos priežiūros įstaigos gali:

1. **Sąveikumas:** Užtikrinti nuoseklius ir palyginamus gimdos kaklelio vėžio atrankos ir diagnostinių duomenų teikimą per sveikatos priežiūros sistemas ir įstaigas.
2. **Duomenų kokybė:** Pagerinti atrankos ir diagnostinių duomenų nuoseklumą, išsamumą ir pakartotinį naudojimą.
3. **Klinikinis naudingumas:** Palaikyti struktūrizuotą ataskaitų teikimą, diagnostinių sprendimų priėmimą ir koordinuotą tolesnę priežiūrą.
4. **Programos stebėsena:** Įgalinti populiacijos lygio dalyvavimo atrankoje, tyrimų rezultatų ir diagnostinių kelių analizę.
5. **Ilgalaikė priežiūra:** Palaikyti pacientų stebėjimą per pasikartojančius atrankos ciklus ir diagnostines procedūras.

Naršykite toliau pateiktus skyrius, kad pasiektumėte profilus, terminologijų susiejimus ir išsamius pavyzdžius, reikalingus standartui įgyvendinti.

### Autoriai

| Vardas | Vaidmuo | Organizacija |
|-----|-----|-----|
| Audra Stepanauskaitė | Pagrindinis autorius | [LMB](https://lmb.lt) |
| Albert Kuslevic | Pagrindinis autorius | [LMB](https://lmb.lt) |
| [Igor Bossenko](https://about.askigor.eu) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Bendraautoris | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Bendraautoris | [LMB](https://lmb.lt) |
