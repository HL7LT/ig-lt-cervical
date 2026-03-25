### Profiles

This page lists all StructureDefinition profiles defined in the Lithuanian Cervical Cancer IG.

#### Screening Episode Report and Composition

| Profile | Description |
|---------|-------------|
| [CervicalReportLtCervical](StructureDefinition-cervical-report-lt-cervical.html) | Overall cervical cancer screening report aggregating all diagnostic results |
| [CervicalCompositionLtCervical](StructureDefinition-cervical-composition-lt-cervical.html) | Screening episode composition linking HPV, cytology, colposcopy, and histopathology reports |

#### HPV Testing

| Profile | Description |
|---------|-------------|
| [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html) | Laboratory diagnostic report for HPV DNA testing |
| [HpvTestResultLtCervical](StructureDefinition-hpv-test-result-lt-cervical.html) | HPV DNA test result with optional genotype and risk group components |

#### Cytology

| Profile | Description |
|---------|-------------|
| [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html) | Laboratory diagnostic report for cervical cytology (Pap test) |
| [CytologyConclusionLtCervical](StructureDefinition-cytology-conclusion-lt-cervical.html) | Cytological diagnostic conclusion with Bethesda classification, pathogens, microflora, and immunocytochemistry |

#### Colposcopy

| Profile | Description |
|---------|-------------|
| [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html) | Diagnostic report for colposcopy examination |
| [ColposcopyProcedureLtCervical](StructureDefinition-colposcopy-procedure-lt-cervical.html) | Colposcopy procedure in the screening pathway |
| [ColposcopyFindingLtCervical](StructureDefinition-colposcopy-finding-lt-cervical.html) | Colposcopy findings including adequacy, Swede score, and risk assessment |
| [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) | Biopsy or excisional procedure during colposcopy |
| [ColposcopyHistoryLtCervical](StructureDefinition-colposcopy-history-lt-cervical.html) | Previous colposcopy history |

#### Histopathology

| Profile | Description |
|---------|-------------|
| [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html) | Cervical histopathology report extending PathologyReportLtLab |
| [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html) | Histopathological conclusion with diagnosis, grade, pLVI, and surgical margins |
| [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html) | Cervical cancer condition with pathological TNM staging |

#### Clinical History

| Profile | Description |
|---------|-------------|
| [CervicalScreeningClinicalHistoryLtCervical](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) | Pre-analytic clinical observations (menstrual cycle, menopause, therapies, etc.) |

#### Reused from Lab IG

The following profiles from the [Laboratory IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) are reused directly:

| Profile | Description |
|---------|-------------|
| [TumorMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) | 3D tumor measurement in mm |
| [TumorObservableLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-observable-lt-lab.html) | Tumor characteristics (focality, type, location) |
| [SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) | Generic specimen with collection details |
| [SpecimenBlockLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-block-lt-lab.html) | Paraffin tissue block |
| [SpecimenAdequacyLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-adequacy-lt-lab.html) | Specimen quality assessment |
| [PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html) | Pathology order service request |

#### Cross-IG References

| IG | Profiles Referenced |
|----|-------------------|
| [Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) | Tobacco use, physical activity, nutrition, family history |
| [VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) | BMI, blood pressure, body weight |
