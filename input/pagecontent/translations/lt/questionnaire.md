### Klausimynai

Šiame puslapyje aprašomos ESPBI (Elektroninių sveikatos paslaugų ir bendradarbiavimo infrastruktūros) klausimynų formos, naudojamos Lietuvos gimdos kaklelio vėžio atrankos programoje. Šiose formose fiksuojami struktūrizuoti duomenys, suderinti su nacionalinės ADP programos reikalavimais.

#### Apžvalga

Keturi ESPBI klausimynai modeliuoja klinikinėje praktikoje naudojamas duomenų rinkimo formas:

| Klausimynas | Aprašymas | FHIR artefaktas |
|---------------|-------------|---------------|
| Citologija + ŽPV | ŽPV tyrimo ir citologinio tyrimo siuntimas bei rezultatai | [Questionnaire](Questionnaire-questionnaire-cervical-cytology-hpv-espbi.html) / [Response](QuestionnaireResponse-qr-cervical-cytology-hpv-espbi-example.html) |
| Histologija | Histopatologinio tyrimo siuntimas, makroskopiniai ir mikroskopiniai radiniai bei diagnozė | [Questionnaire](Questionnaire-questionnaire-cervical-histology-espbi.html) / [Response](QuestionnaireResponse-qr-cervical-histology-espbi-example.html) |
| Kolposkopija | Kolposkopijos procedūra, Swede balas ir biopsijos duomenys | [Questionnaire](Questionnaire-questionnaire-cervical-colposcopy-espbi.html) / [Response](QuestionnaireResponse-qr-cervical-colposcopy-espbi-example.html) |
| Patologinė diagnozė | Struktūrizuotas diagnozės kodavimas (VLK, ICD-10, ICD-O, SNOMED CT) | [Questionnaire](Questionnaire-questionnaire-cervical-pathological-diagnosis-espbi.html) / [Response](QuestionnaireResponse-qr-cervical-path-diag-espbi-example.html) |

---

#### 1. Citologijos + ŽPV ESPBI forma

Tai išsamiausia forma, apimanti visą ŽPV tyrimo ir citologinio tyrimo darbo eigą.

**Skyriai**:
- sveikatos priežiūros įstaigos ir siuntusio gydytojo informacija
- užsakyto tyrimo tipas (įprastas PAP, diagnostinė citologija, didelės rizikos ŽPV, imunocitochemija)
- mėginio paėmimo duomenys (data, ėmėjas, brūkšninis kodas)
- klinikinė anamnezė (ciklo diena, menopauzė, hormonų terapija, nėštumas, laktacija, radioterapija, chemoterapija, gimdos spiralė, konizacija)
- mėginio paėmimo vieta (endocerviksas, ektocerviksas, makštis, vulva)
- ŽPV vakcinacijos būklė
- ŽPV tyrimo rezultatai (bendrasis rezultatas, 14 didelės rizikos tipų genotipų skydelis, rizikos grupė)
- citologijos rezultatai (mėginio tipas, tinkamumas, patogenai, mikroflora, Bethesda diagnozė)
- imunocitochemija (p16/Ki-67 rezultatas)
- tyrimą atlikusio ir patvirtinusio asmens parašai

**Profilio susiejimas**:

| Klausimyno skyrius | FHIR profilis |
|----------------------|--------------|
| Įstaigos informacija | [OrganizationLt](https://build.fhir.org/ig/HL7LT/ig-lt-base/StructureDefinition-organization-lt.html) |
| Paciento informacija | [PatientLt](https://build.fhir.org/ig/HL7LT/ig-lt-base/StructureDefinition-patient-lt.html) |
| Užsakytas tyrimas | ServiceRequest.code |
| Mėginio paėmimas | [SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) |
| Klinikinė anamnezė | [CervicalScreeningClinicalHistoryLtCervical](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) |
| ŽPV rezultatai | [HpvTestResultLtCervical](StructureDefinition-hpv-test-result-lt-cervical.html), [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html) |
| Citologijos rezultatai | [CytologyConclusionLtCervical](StructureDefinition-cytology-conclusion-lt-cervical.html), [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html) |
| Imunocitochemija | CytologyConclusionLtCervical.component[immunocytochemistry] |

---

#### 2. Histologijos ESPBI forma

Šioje formoje fiksuojami gimdos kaklelio audinio histopatologinio tyrimo duomenys, gauti iš biopsijos arba ekscizinių mėginių.

**Skyriai**:
- siuntimo informacija ir klinikinė diagnozė (ICD-10)
- ankstesnių procedūrų anamnezė (biopsija, konizacija, chemoterapija, spindulinė terapija)
- kolposkopinio tyrimo duomenys (Swede balas, tinkamumas)
- biopsijos procedūros tipas (punkcija, LEEP, konusas, kiuretažas)
- biopsijos vietos pagal gimdos kaklelio kvadrantą (I–IV, gimdos kaklelio kanalas)
- makroskopinis tyrimas (audinio matmenys mm)
- mikroskopinis tyrimas (laisvas tekstas)
- išvada / diagnozė (PSO klasifikacija)
- histologinis laipsnis (G1–G3, GX)
- naviko dydis, limfovaskulinė invazija (pLVI)
- chirurginių paraščių būklė
- TNM stadijavimas (pT, pR)
- ligos kodavimas (ICD-10, ICD-O, SNOMED CT)

**Profilio susiejimas**:

| Klausimyno skyrius | FHIR profilis |
|----------------------|--------------|
| Siuntimas | [PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html) |
| Biopsijos procedūra | [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) |
| Biopsijos vietos | [CervicalBiopsyQuadrantVS](ValueSet-cervical-biopsy-quadrant.html) |
| Makroskopinis tyrimas | [TumorMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) |
| Išvada | [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html) |
| TNM stadijavimas | [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html) |
| Ataskaita | [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html) |

---

#### 3. Kolposkopijos ESPBI forma

Šioje formoje fiksuojami kolposkopijos procedūros, vertinimo ir biopsijos duomenys.

**Skyriai**:
- paciento identifikavimo duomenys
- klinikinė anamnezė ir indikacija
- kolposkopijos procedūros būsena (atlikta / atidėta)
- tinkamumo vertinimas
- Swede balo komponentai (5 kriterijai, kiekvienas vertinamas 0–2 balais) ir bendra suma (0–10)
- rizikos klasifikacija (maža 0–3, didelė 4–10)
- biopsijos procedūros tipas ir vieta

**Profilio susiejimas**:

| Klausimyno skyrius | FHIR profilis |
|----------------------|--------------|
| Procedūra | [ColposcopyProcedureLtCervical](StructureDefinition-colposcopy-procedure-lt-cervical.html) |
| Tinkamumas ir Swede balas | [ColposcopyFindingLtCervical](StructureDefinition-colposcopy-finding-lt-cervical.html) |
| Biopsija | [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) |
| Ataskaita | [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html) |

---

#### 4. Patologinės diagnozės ESPBI forma

Tai kodavimui skirta forma, susiejanti gimdos kaklelio patologines diagnozes su keliomis klasifikavimo sistemomis.

**Stulpeliai**:
- VLK paslaugos kodas
- ICD-10-AM kodas
- ICD-O morfologijos kodas
- SNOMED CT koncepto ID
- diagnozės aprašymas

**Profilio susiejimas**:

| Kodų sistema | FHIR elementas |
|------------|--------------|
| SNOMED CT | [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html).valueCodeableConcept |
| ICD-10 | [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html).conclusionCode.coding[icd10] |
| ICD-O | conclusionCode.coding[icdo3] |
| TNM pT/pR | [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html).stage |

---

#### Kryžminė IG integracija

Visi klausimynai remiasi klinikiniu kontekstu, apibrėžtu kituose Lietuvos FHIR IG:

- **[Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)**: tabako vartojimas, fizinis aktyvumas, mityba — aktualu atrankos rizikos vertinimui
- **[Gyvybinių funkcijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)**: KMI, kraujospūdis — renkami atrankos vizitų metu
- **[Laboratorinių tyrimų IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)**: mėginių valdymas, naviko matavimas, patologijos ataskaitų teikimas — pakartotinai naudojama histopatologijai