### Profiliai

Šiame puslapyje pateikiami visi „StructureDefinition“ profiliai, apibrėžti Lietuvos gimdos kaklelio vėžio įgyvendinimo vadove.

#### Atrankos epizodo ataskaitos ir kompozicijos profiliai

| Profilis | Aprašymas |
|---------|-------------|
| [CervicalReportLtCervical](StructureDefinition-cervical-report-lt-cervical.html) | Bendroji gimdos kaklelio vėžio atrankos ataskaita, apibendrinanti visus diagnostinius rezultatus |
| [CervicalCompositionLtCervical](StructureDefinition-cervical-composition-lt-cervical.html) | Atrankos epizodo kompozicija, siejanti ŽPV, citologijos, kolposkopijos ir histopatologijos ataskaitas |

#### ŽPV tyrimų profiliai

| Profilis | Aprašymas |
|---------|-------------|
| [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html) | Laboratorinė diagnostinė ataskaita, skirta ŽPV DNR tyrimui |
| [HpvTestResultLtCervical](StructureDefinition-hpv-test-result-lt-cervical.html) | ŽPV DNR tyrimo rezultatas su neprivalomais genotipo ir rizikos grupės komponentais |

#### Citologijos profiliai

| Profilis | Aprašymas |
|---------|-------------|
| [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html) | Laboratorinė diagnostinė ataskaita, skirta gimdos kaklelio citologijai (Pap testui) |
| [CytologyConclusionLtCervical](StructureDefinition-cytology-conclusion-lt-cervical.html) | Citologinė diagnostinė išvada su Bethesda klasifikacija, patogenais, mikroflora ir imunocitochemija |

#### Kolposkopijos profiliai

| Profilis | Aprašymas |
|---------|-------------|
| [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html) | Diagnostinė ataskaita kolposkopijos tyrimui |
| [ColposcopyProcedureLtCervical](StructureDefinition-colposcopy-procedure-lt-cervical.html) | Kolposkopijos procedūra atrankos procese |
| [ColposcopyFindingLtCervical](StructureDefinition-colposcopy-finding-lt-cervical.html) | Kolposkopiniai radiniai, įskaitant tyrimo tinkamumą, Swede balą ir rizikos vertinimą |
| [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) | Biopsijos arba ekscizinė procedūra kolposkopijos metu |
| [ColposcopyHistoryLtCervical](StructureDefinition-colposcopy-history-lt-cervical.html) | Ankstesnės kolposkopijos anamnezė |

#### Histopatologijos profiliai

| Profilis | Aprašymas |
|---------|-------------|
| [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html) | Gimdos kaklelio histopatologijos ataskaita, išplečianti PathologyReportLtLab |
| [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html) | Histopatologinė išvada su diagnoze, laipsniu, pLVI ir chirurginių paraščių būkle |
| [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html) | Gimdos kaklelio vėžio būklė su patologiniu TNM stadijavimu |

#### Klinikinės anamnezės profiliai

| Profilis | Aprašymas |
|---------|-------------|
| [CervicalScreeningClinicalHistoryLtCervical](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) | Preanalitiniai klinikiniai stebėjimai (mėnesinių ciklas, menopauzė, taikomas gydymas ir kt.) |

#### Pakartotinai naudojami Laboratorinių tyrimų IG profiliai

Šie profiliai iš [Laboratorinių tyrimų IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) naudojami tiesiogiai:

| Profilis | Aprašymas |
|---------|-------------|
| [TumorMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) | Trimatis naviko matavimas milimetrais |
| [TumorObservableLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-observable-lt-lab.html) | Naviko charakteristikos (židiniškumas, tipas, lokalizacija) |
| [SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) | Bendrasis mėginys su paėmimo duomenimis |
| [SpecimenBlockLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-block-lt-lab.html) | Parafino audinio blokas |
| [SpecimenAdequacyLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-adequacy-lt-lab.html) | Mėginio kokybės įvertinimas |
| [PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html) | Patologijos tyrimo užsakymo užklausa |

#### Kryžminės IG nuorodos

| IG | Naudojami profiliai |
|----|-------------------|
| [Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) | Tabako vartojimas, fizinis aktyvumas, mityba, šeimos anamnezė |
| [Gyvybinių funkcijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) | KMI, kraujospūdis, kūno svoris |