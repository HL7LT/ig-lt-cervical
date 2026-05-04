### Klausimynai

Šiame puslapyje aprašomos ESPBI (Elektroninių sveikatos paslaugų ir bendradarbiavimo infrastruktūros) klausimynų formos, naudojamos Lietuvos gimdos kaklelio vėžio atrankos programoje. Šios formos fiksuoja struktūrizuotus duomenis, suderintus su nacionalinės ADP programos reikalavimais.

#### Apžvalga

Keturi ESPBI klausimynai modeliuoja klinikine praktikoje naudojamas duomenų rinkimo formas:

| Klausimynas | Aprašymas | FHIR artefaktas |
|---------------|-------------|---------------|
| Citologija + ŽPV | ŽPV tyrimo ir citologinio tyrimo siuntimas ir rezultatai | [Questionnaire](Questionnaire-questionnaire-cervical-cytology-hpv-espbi.html) / [Response](QuestionnaireResponse-qr-cervical-cytology-hpv-espbi-example.html) |
| Histologija | Patologinio histologinio tyrimo siuntimas, makroskopiniai/mikroskopiniai radiniai ir diagnozė | [Questionnaire](Questionnaire-questionnaire-cervical-histology-espbi.html) / [Response](QuestionnaireResponse-qr-cervical-histology-espbi-example.html) |
| Kolposkopija | Kolposkopijos procedūra, Swede balas, biopsijos duomenys | [Questionnaire](Questionnaire-questionnaire-cervical-colposcopy-espbi.html) / [Response](QuestionnaireResponse-qr-cervical-colposcopy-espbi-example.html) |
| Patologinė diagnozė | Struktūrizuotas diagnozės kodavimas (VLK, ICD-10, ICD-O, SNOMED CT) | [Questionnaire](Questionnaire-questionnaire-cervical-pathological-diagnosis-espbi.html) / [Response](QuestionnaireResponse-qr-cervical-path-diag-espbi-example.html) |

---

#### 1. Citologijos + ŽPV ESPBI forma

Išsamiausia forma, apimanti visą ŽPV tyrimo ir citologinio tyrimo darbo eigą.

**Skyriai**:
- Sveikatos priežiūros įstaigos ir siuntimo gydytojo informacija
- Užsakyto tyrimo tipas (įprastas PAP, diagnostinė citologija, HR ŽPV, imunocitochemija)
- Mėginio paėmimo duomenys (data, ėmėjas, brūkšninis kodas)
- Klinikinė istorija (ciklo diena, menopauzė, hormonų terapija, nėštumas, laktacija, radioterapija, chemoterapija, gimdos spiralė, konizacija)
- Mėginio paėmimo vieta (endocervix, ektocervix, makštis, vulva)
- ŽPV vakcinacijos būklė
- ŽPV tyrimo rezultatai (bendrasis rezultatas, genotipų skydelis 14 HR tipams, rizikos grupė)
- Citologijos rezultatai (mėginio tipas, tinkamumas, patogenai, mikroflora, Bethesda diagnozė)
- Imunocitochemija (p16/Ki-67 rezultatas)
- Tyrimo atlikimo/patvirtinimo parašai

**Profilio susiejimas**:

| Klausimyno skyrius | FHIR profilis |
|----------------------|--------------|
| Įstaigos informacija | [OrganizationLt](https://build.fhir.org/ig/HL7LT/ig-lt-base/StructureDefinition-organization-lt.html) |
| Paciento informacija | [PatientLt](https://build.fhir.org/ig/HL7LT/ig-lt-base/StructureDefinition-patient-lt.html) |
| Užsakytas tyrimas | ServiceRequest.code |
| Mėginio paėmimas | [SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) |
| Klinikinė istorija | [CervicalScreeningClinicalHistoryLtCervical](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) |
| ŽPV rezultatai | [HpvTestResultLtCervical](StructureDefinition-hpv-test-result-lt-cervical.html), [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html) |
| Citologijos rezultatai | [CytologyConclusionLtCervical](StructureDefinition-cytology-conclusion-lt-cervical.html), [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html) |
| Imunocitochemija | CytologyConclusionLtCervical.component[immunocytochemistry] |

---

#### 2. Histologijos ESPBI forma

Fiksuoja patologinį histologinį gimdos kaklelio audinio tyrimą iš biopsijos arba ekscizinių mėginių.

**Skyriai**:
- Siuntimo informacija ir klinikinė diagnozė (ICD-10)
- Ankstesnių procedūrų istorija (biopsija, konizacija, chemoterapija, spindulinė terapija)
- Kolposkopinio tyrimo duomenys (Swede balas, tinkamumas)
- Biopsijos procedūros tipas (punkcija, LEEP, konusas, kiuretažas)
- Biopsijos vietos pagal gimdos kaklelio kvadrantą (I–IV, gimdos kaklelio kanalas)
- Makroskopinis tyrimas (audinio matmenys mm)
- Mikroskopinis tyrimas (laisvas tekstas)
- Išvada/Diagnozė (PSO klasifikacija)
- Histologinis laipsnis (G1–G3, GX)
- Naviko dydis, limfovaskularinė invazija (pLVI)
- Chirurginių paraščių būklė
- TNM stadijinimas (pT, pR)
- Ligos kodavimas (ICD-10, ICD-O, SNOMED CT)

**Profilio susiejimas**:

| Klausimyno skyrius | FHIR profilis |
|----------------------|--------------|
| Siuntimas | [PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html) |
| Biopsijos procedūra | [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) |
| Biopsijos vietos | [CervicalBiopsyQuadrantVS](ValueSet-cervical-biopsy-quadrant.html) |
| Makroskopinis | [TumorMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) |
| Išvada | [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html) |
| TNM stadijinimas | [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html) |
| Ataskaita | [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html) |

---

#### 3. Kolposkopijos ESPBI forma

Fiksuoja kolposkopijos tyrimo procedūrą, vertinimą ir biopsijos duomenis.

**Skyriai**:
- Paciento identifikacija
- Klinikinė istorija ir indikacija
- Kolposkopijos procedūros būklė (atlikta/atidėta)
- Tinkamumo vertinimas
- Swede balo komponentai (5 kriterijai, 0–2 kiekvienas) ir bendra suma (0–10)
- Rizikos klasifikacija (maža 0–3, didelė 4–10)
- Biopsijos procedūros tipas ir vieta

**Profilio susiejimas**:

| Klausimyno skyrius | FHIR profilis |
|----------------------|--------------|
| Procedūra | [ColposcopyProcedureLtCervical](StructureDefinition-colposcopy-procedure-lt-cervical.html) |
| Tinkamumas + Swede balas | [ColposcopyFindingLtCervical](StructureDefinition-colposcopy-finding-lt-cervical.html) |
| Biopsija | [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) |
| Ataskaita | [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html) |

---

#### 4. Patologinės diagnozės ESPBI forma

Kodavimui orientuota forma, susiejanti gimdos kaklelio patologines diagnozes per kelias klasifikavimo sistemas.

**Stulpeliai**:
- VLK paslaugos kodas (Lietuvos sveikatos draudimas)
- ICD-10-AM kodas
- ICD-O morfologijos kodas
- SNOMED CT koncepto ID
- Diagnozės aprašymas

**Profilio susiejimas**:

| Kodų sistema | FHIR elementas |
|------------|--------------|
| SNOMED CT | [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html).valueCodeableConcept |
| ICD-10 | [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html).conclusionCode.coding[icd10] |
| ICD-O | conclusionCode.coding[icdo3] |
| TNM pT/pR | [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html).stage |

---

#### Kryžminė IG integracija

Visi klausimynai nurodo klinikinį kontekstą iš kitų Lietuvos FHIR IG:

- **[Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)**: Tabako vartojimas, fizinis aktyvumas, mityba — aktualu atrankos rizikos vertinimui
- **[Gyvybinių rodiklių IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)**: KMI, kraujospūdis — renkami atrankos vizitų metu
- **[Laboratorijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)**: Mėginių valdymas, naviko matavimas, patologijos ataskaitų teikimas — pakartotinai naudojama histopatologijai
