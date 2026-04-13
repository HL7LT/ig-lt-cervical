### Gimdos kaklelio vėžio atrankos darbo eiga

Šiame puslapyje aprašoma klinikinė darbo eiga, modeliuojama Lietuvos gimdos kaklelio vėžio prevencijos įgyvendinimo vadove. Ši darbo eiga atitinka nacionalinę gimdos kaklelio vėžio ankstyvosios diagnostikos programą (ADP).

#### Apžvalga

Gimdos kaklelio vėžio atrankos darbo eiga susideda iš keturių nuoseklių diagnostinių etapų, kurių kiekviename sukuriamas struktūrizuotas `DiagnosticReport`:

1. **ŽPV tyrimas** — pirminė atranka, aptinkant didelės rizikos ŽPV DNR
2. **Gimdos kaklelio citologija (Pap testas)** — mikroskopinis gimdos kaklelio ląstelių tyrimas
3. **Kolposkopija** — klinikinis gimdos kaklelio tyrimas su vertinimu
4. **Histopatologija** — audinių analizė iš biopsijos arba ekscizinių mėginių

Visos ataskaitos sujungiamos į vieną [Cervical Cancer Screening Episode Composition](StructureDefinition-cervical-composition-lt-cervical.html), kuri įtraukiama į [Cervical Report](StructureDefinition-cervical-report-lt-cervical.html).

---

#### 1. ŽPV tyrimas

Atrankos programoje dalyvaujančioms moterims atliekamas didelės rizikos ŽPV DNR tyrimas kaip pirminis atrankos metodas. ŽPV tyrimo procedūros kodas visada yra SNOMED `35904009` (HPV DNA detection). Atrankos kontekstas (pirminis, įprastinis, tikslinis, kartotinis arba kontrolinis po gydymo) perduodamas per `ServiceRequest.reason`, nurodant atrankos programą, o ne per `DiagnosticReport.code`.

**Profilis**: [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html)

ŽPV diagnostinė ataskaita apima:
- [HPV Test Result](StructureDefinition-hpv-test-result-lt-cervical.html) — bendrąjį rezultatą (aptiktas / neaptiktas / netinkamas)
- genotipų panelę — atskirus ŽPV tipus (16, 18, 31, 33, 35, 39, 45, 51, 52, 56, 58, 59, 66, 68)
- rizikos grupės klasifikaciją — aukščiausia (16, 18), vidutinė (31, 33, 35, 45, 52, 58), žemesnė (AR HPV)

**Pavyzdžiai**:
- [HPV Positive Result (types 16 & 45)](Observation-observation-hpv-result-example.html)
- [HPV Diagnostic Report](DiagnosticReport-diagnosticreport-hpv-example.html)

---

#### 2. Gimdos kaklelio citologija (Pap testas)

Gimdos kaklelio citologija atliekama arba kartu su ŽPV tyrimu, arba kaip tolesnė priemonė po teigiamų ŽPV rezultatų. Konkretus tyrimo tipas nurodomas `DiagnosticReport.code`, naudojant [CervicalCytologyTestTypeVS](ValueSet-cervical-cytology-test-type.html), kuriame pateikiami tokie variantai kaip įprastinis PAP (440623000), skysčiu pagrįsta atranka (417036008), bendrinė gimdos kaklelio citologija (416107004), diagnostinė citologija po kolposkopijos (609040007) ir imunocitochemija p16/Ki-67 (395126005).

Papildomi morfologiniai požymiai Bethesda kategorijų viduje, pavyzdžiui, koilocitozė esant LSIL arba reparaciniai pokyčiai esant NILM, fiksuojami per ESPBI klausimynus, o ne struktūrizuotuose stebėjimo profiliuose.

**Profilis**: [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html)

Citologijos ataskaita apima:
- [Cytology Conclusion](StructureDefinition-cytology-conclusion-lt-cervical.html) — Bethesda klasifikaciją (NILM, ASC-US, LSIL, ASC-H, HSIL, AGC, AIS, SCC)
- mėginio tinkamumo įvertinimą
- patogenų radinius (kandida, trichomonos, aktinomicetai, herpesas)
- mikrofloros klasifikaciją
- imunocitochemiją (p16/Ki-67 dvigubą dažymą)

**Pavyzdžiai**:
- [LSIL Cytology Conclusion](Observation-observation-cytology-conclusion-example.html)
- [Cytology Diagnostic Report](DiagnosticReport-diagnosticreport-cytology-example.html)

---

#### 3. Kolposkopija

Kolposkopija yra indikuotina, kai ŽPV rezultatas yra teigiamas ir (arba) citologija rodo pakitimus (ASC-US+).

**Profilis**: [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html)

Kolposkopijos ataskaita apima:
- [Colposcopy Procedure](StructureDefinition-colposcopy-procedure-lt-cervical.html) — tyrimo procedūrą
- [Colposcopy Finding](StructureDefinition-colposcopy-finding-lt-cervical.html) — tinkamumą (patenkinamas / nepatenkinamas), Swede balą (0–10, koduojamą naudojant SNOMED 1389350002), rizikos klasifikaciją (maža 0–3 / didelė 4–10)
- [Colposcopy Biopsy Procedure](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) — jei imama biopsija (punkcija, LEEP, konusas, kiuretažas)
- [Colposcopy History](StructureDefinition-colposcopy-history-lt-cervical.html) — ankstesnės kolposkopijos anamnezę

**Pavyzdžiai**:
- [Colposcopy Finding (Swede Score 3, Low Risk)](Observation-observation-colposcopy-finding-example.html)
- [Colposcopy Procedure](Procedure-procedure-colposcopy-example.html)
- [Colposcopy Diagnostic Report](DiagnosticReport-diagnosticreport-colposcopy-example.html)

---

#### 4. Histopatologija

Histopatologinis tyrimas atliekamas naudojant audinių mėginius, gautus iš biopsijos arba ekscizinių procedūrų. Šiame etape pakartotinai naudojami [Laboratorinių tyrimų IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) profiliai, skirti mėginių valdymui, naviko matavimui ir patologijos ataskaitų teikimui.

**Profilis**: [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html)

Histopatologijos ataskaita apima:
- [Histopathology Conclusion](StructureDefinition-histopathology-conclusion-lt-cervical.html) — PSO klasifikacijos diagnozę, histologinį laipsnį (G1–G3), pLVI (6 lygių klasifikacija iš Laboratorinių tyrimų IG), chirurginių paraščių būklę
- [Pathology Composition](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-composition-lt-lab.html) — sinoptinį dokumentą su preanalitiniu, makroskopiniu, mikroskopiniu ir sintezės skyriais (pakartotinai naudojama iš Laboratorinių tyrimų IG)
- [Specimen Measurement](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-measurement-lt-lab.html) — audinių fragmentų matmenis (x, y, z mm kiekvienai talpyklai) ir ektocervikso matavimus (pakartotinai naudojama iš Laboratorinių tyrimų IG)
- [Tumor Measurement](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) — trimačius naviko matmenis milimetrais (pakartotinai naudojama iš Laboratorinių tyrimų IG)
- [Specimen](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) — gimdos kaklelio audinio mėginį su fiksavimo tipu per `processing.additive` (formalinas = SNOMED 434162003) (pakartotinai naudojama iš Laboratorinių tyrimų IG)
- [Cervical Condition (TNM Staging)](StructureDefinition-cervical-condition-lt-cervical.html) — pT (pTX–pT4), pN (pNX–pN2), pR (pRX–pR2) stadijavimą su ICD-O morfologija

**Gydytojų vaidmenys**: `performer` elementas fiksuoja tyrimą atlikusį patologą; `resultsInterpreter` fiksuoja rezultatų tvirtintoją (vyresnįjį patologą). Siuntęs gydytojas siejamas per `basedOn` → `ServiceRequest.requester`.

**Pavyzdžiai**:
- [Histopathology Report (HSIL/CIN2)](DiagnosticReport-diagnosticreport-histopathology-example.html)
- [Histopathology Conclusion](Observation-observation-histopathology-conclusion-example.html)
- [Cervical Cancer TNM Staging](Condition-condition-cervical-cancer-stage-example.html)
- [Cervical Specimen](Specimen-specimen-cervical-biopsy-example.html)
- [Tumor Measurement](Observation-observation-tumor-measurement-cervical-example.html)

---

#### 5. Atrankos epizodo kompozicija

Pasibaigus diagnostinei darbo eigai, visos ataskaitos sujungiamos į vieną struktūrizuotą dokumentą — [Cervical Composition](StructureDefinition-cervical-composition-lt-cervical.html).

Kompozicijos skyriai apima:
- **Klinikinę anamnezę** — preanalitinius stebėjimus (ciklo diena, menopauzė, terapijos, konizacijos anamnezė)
- **ŽPV ataskaitą** — ŽPV `DiagnosticReport`
- **Citologijos ataskaitą** — citologijos `DiagnosticReport`
- **Kolposkopijos ataskaitą** — kolposkopijos `DiagnosticReport`
- **Histologijos ataskaitą** — histopatologijos `DiagnosticReport`
- **Gyvenimo būdo veiksnius** — kryžmines IG nuorodas į [Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) (tabako vartojimas, fizinis aktyvumas)
- **Gyvybines funkcijas** — kryžmines IG nuorodas į [Gyvybinių funkcijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) (KMI)

Kompozicija pateikiama [Cervical Report](StructureDefinition-cervical-report-lt-cervical.html) sudėtyje, kuris apibendrina visus struktūrizuotus rezultatus.

**Pavyzdžiai**:
- [Cervical Screening Episode Composition](Composition-composition-cervical-screening-episode-example.html)
- [Cervical Cancer Screening Report](DiagnosticReport-diagnosticreport-cervical-report-example.html)

---

#### Klinikinės anamnezės kontekstas

Preanalitiniai klinikiniai stebėjimai fiksuojami naudojant [Cervical Screening Clinical History](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) profilį su komponentais, skirtais:
- mėnesinių ciklo dienai (SNOMED 161713000)
- menopauzės būklei (SNOMED 276477006)
- hormonų terapijai (SNOMED 1346510001)
- nėštumui (SNOMED 77386006)
- laktacijai (SNOMED 225604004)
- radioterapijos anamnezei (SNOMED 429479009)
- chemoterapijos anamnezei (SNOMED 161653008)
- gimdos spiralei (SNOMED 312081001)
- ankstesnei konizacijai (SNOMED 1089410001)
- mėginio paėmimo vietai
- ŽPV vakcinacijos būklei

**Pavyzdžiai**:
- [Routine Clinical History](Observation-observation-clinical-history-routine-example.html)
- [Complex Clinical History](Observation-observation-clinical-history-complex-example.html)
