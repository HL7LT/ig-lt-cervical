### Profiliai

Šiame puslapyje išvardyti visi Lietuvos gimdos kaklelio vėžio IG apibrėžti StructureDefinition profiliai.

#### Atrankos epizodo ataskaita ir kompozicija

| Profilis | Aprašymas |
|---------|-------------|
| [CervicalReportLtCervical](StructureDefinition-cervical-report-lt-cervical.html) | Bendra gimdos kaklelio vėžio atrankos ataskaita, apibendrinanti visus diagnostinius rezultatus |
| [CervicalCompositionLtCervical](StructureDefinition-cervical-composition-lt-cervical.html) | Atrankos epizodo kompozicija, siejanti ŽPV, citologijos, kolposkopijos ir histopatologijos ataskaitas |

#### ŽPV tyrimai

| Profilis | Aprašymas |
|---------|-------------|
| [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html) | Laboratorinė diagnostinė ataskaita ŽPV DNR tyrimui |
| [HpvTestResultLtCervical](StructureDefinition-hpv-test-result-lt-cervical.html) | ŽPV DNR tyrimo rezultatas su neprivalomais genotipo ir rizikos grupės komponentais |

#### Citologija

| Profilis | Aprašymas |
|---------|-------------|
| [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html) | Laboratorinė diagnostinė ataskaita gimdos kaklelio citologijai (Pap testas) |
| [CytologyConclusionLtCervical](StructureDefinition-cytology-conclusion-lt-cervical.html) | Citologinė diagnostinė išvada su Bethesda klasifikacija, patogenais, mikroflora ir imunocitochemija |

#### Kolposkopija

| Profilis | Aprašymas |
|---------|-------------|
| [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html) | Diagnostinė ataskaita kolposkopiniam tyrimui |
| [ColposcopyProcedureLtCervical](StructureDefinition-colposcopy-procedure-lt-cervical.html) | Kolposkopijos procedūra atrankos kelyje |
| [ColposcopyFindingLtCervical](StructureDefinition-colposcopy-finding-lt-cervical.html) | Kolposkopiniai radiniai, įskaitant tinkamumą, Swede balą ir rizikos įvertinimą |
| [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) | Biopsija arba ekscizinė procedūra kolposkopijos metu |
| [ColposcopyHistoryLtCervical](StructureDefinition-colposcopy-history-lt-cervical.html) | Ankstesnė kolposkopijos istorija |

#### Histopatologija

| Profilis | Aprašymas |
|---------|-------------|
| [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html) | Gimdos kaklelio histopatologijos ataskaita, pratęsianti PathologyReportLtLab |
| [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html) | Histopatologinė išvada su diagnoze, laipsniu, pLVI ir chirurginių paraščių būkle |
| [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html) | Gimdos kaklelio vėžio būklė su patologiniu TNM stadijavimu |

#### Klinikinė istorija

| Profilis | Aprašymas |
|---------|-------------|
| [CervicalScreeningClinicalHistoryLtCervical](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) | Pre-analitiniai klinikiniai stebėjimai (mėnesinių ciklas, menopauzė, terapijos ir kt.) |

#### Pakartotinai naudojama iš Laboratorijų IG

Šie profiliai iš [Laboratorijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) naudojami tiesiogiai:

| Profilis | Aprašymas |
|---------|-------------|
| [TumorMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) | 3D naviko matavimas mm |
| [TumorObservableLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-observable-lt-lab.html) | Naviko charakteristikos (židinys, tipas, vieta) |
| [SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) | Bendrasis mėginys su rinkimo duomenimis |
| [SpecimenBlockLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-block-lt-lab.html) | Parafino audinių blokas |
| [SpecimenAdequacyLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-adequacy-lt-lab.html) | Mėginio kokybės įvertinimas |
| [PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html) | Patologijos užsakymo paslaugų užklausa |

#### Kryžminės IG nuorodos

| IG | Nurodomi profiliai |
|----|-------------------|
| [Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) | Tabako vartojimas, fizinis aktyvumas, mityba, šeiminė istorija |
| [Gyvybinių rodiklių IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) | KMI, kraujospūdis, kūno svoris |
