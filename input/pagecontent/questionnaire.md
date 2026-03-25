### Questionnaires

This page describes the ESPBI (Electronic Health Services and Cooperation Infrastructure) questionnaire forms used in the Lithuanian cervical cancer screening programme. These forms capture structured data aligned with the national ADP programme requirements.

#### Overview

Four ESPBI questionnaires model the data collection forms used in clinical practice:

| Questionnaire | Description | FHIR Artifact |
|---------------|-------------|---------------|
| Cytology + HPV | HPV testing and cytological examination referral and results | [Questionnaire](Questionnaire-questionnaire-cervical-cytology-hpv-espbi.html) / [Response](QuestionnaireResponse-questionnaireresponse-cervical-cytology-hpv-espbi-example.html) |
| Histology | Pathological histological examination referral, macroscopic/microscopic findings, and diagnosis | [Questionnaire](Questionnaire-questionnaire-cervical-histology-espbi.html) / [Response](QuestionnaireResponse-questionnaireresponse-cervical-histology-espbi-example.html) |
| Colposcopy | Colposcopy procedure, Swede score, biopsy details | [Questionnaire](Questionnaire-questionnaire-cervical-colposcopy-espbi.html) / [Response](QuestionnaireResponse-questionnaireresponse-cervical-colposcopy-espbi-example.html) |
| Pathological Diagnosis | Structured diagnosis coding (VLK, ICD-10, ICD-O, SNOMED CT) | [Questionnaire](Questionnaire-questionnaire-cervical-pathological-diagnosis-espbi.html) / [Response](QuestionnaireResponse-questionnaireresponse-cervical-pathological-diagnosis-espbi-example.html) |

---

#### 1. Cytology + HPV ESPBI Form

The most comprehensive form capturing the full HPV testing and cytological examination workflow.

**Sections**:
- Healthcare facility and referring doctor information
- Ordered test type (routine PAP, diagnostic cytology, HR HPV, immunocytochemistry)
- Sample collection details (date, collector, barcode)
- Clinical history (cycle day, menopause, hormone therapy, pregnancy, lactation, radiotherapy, chemotherapy, IUD, conization)
- Sample collection site (endocervix, exocervix, vagina, vulva)
- HPV vaccination status
- HPV test results (overall result, genotyping panel for 14 HR types, risk group)
- Cytology results (specimen type, suitability, pathogens, microflora, Bethesda diagnosis)
- Immunocytochemistry (p16/Ki-67 result)
- Test conducted/confirmed by signatures

**Profile Mapping**:

| Questionnaire Section | FHIR Profile |
|----------------------|--------------|
| Facility info | [OrganizationLt](https://build.fhir.org/ig/HL7LT/ig-lt-base/StructureDefinition-organization-lt.html) |
| Patient info | [PatientLt](https://build.fhir.org/ig/HL7LT/ig-lt-base/StructureDefinition-patient-lt.html) |
| Ordered test | ServiceRequest.code |
| Sample collection | [SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) |
| Clinical history | [CervicalScreeningClinicalHistoryLtCervical](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) |
| HPV results | [HpvTestResultLtCervical](StructureDefinition-hpv-test-result-lt-cervical.html), [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html) |
| Cytology results | [CytologyConclusionLtCervical](StructureDefinition-cytology-conclusion-lt-cervical.html), [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html) |
| Immunocytochemistry | CytologyConclusionLtCervical.component[immunocytochemistry] |

---

#### 2. Histology ESPBI Form

Captures the pathological histological examination of cervical tissue from biopsy or excisional specimens.

**Sections**:
- Referral information and clinical diagnosis (ICD-10)
- Previous procedures history (biopsy, conization, chemotherapy, radiation)
- Colposcopy examination data (Swede score, adequacy)
- Biopsy procedure type (punch, LEEP, cone, curettage)
- Biopsy sites by cervical quadrant (I–IV, cervical canal)
- Macroscopic examination (tissue dimensions in mm)
- Microscopic examination (free text)
- Conclusion/Diagnosis (WHO classification)
- Histological grade (G1–G3, GX)
- Tumor size, lymphovascular invasion (pLVI)
- Surgical margins status
- TNM staging (pT, pR)
- Disease coding (ICD-10, ICD-O, SNOMED CT)

**Profile Mapping**:

| Questionnaire Section | FHIR Profile |
|----------------------|--------------|
| Referral | [PathologyOrderLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-order-lt-lab.html) |
| Biopsy procedure | [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) |
| Biopsy sites | [CervicalBiopsyQuadrantVS](ValueSet-cervical-biopsy-quadrant.html) |
| Macroscopic | [TumorMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) |
| Conclusion | [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html) |
| TNM staging | [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html) |
| Report | [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html) |

---

#### 3. Colposcopy ESPBI Form

Captures the colposcopy examination procedure, scoring, and biopsy details.

**Sections**:
- Patient identification
- Clinical history and indication
- Colposcopy procedure status (performed/postponed)
- Adequacy assessment
- Swede score components (5 criteria, 0–2 each) and total (0–10)
- Risk classification (low 0–3, high 4–10)
- Biopsy procedure type and site

**Profile Mapping**:

| Questionnaire Section | FHIR Profile |
|----------------------|--------------|
| Procedure | [ColposcopyProcedureLtCervical](StructureDefinition-colposcopy-procedure-lt-cervical.html) |
| Adequacy + Swede score | [ColposcopyFindingLtCervical](StructureDefinition-colposcopy-finding-lt-cervical.html) |
| Biopsy | [ColposcopyBiopsyProcedureLtCervical](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) |
| Report | [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html) |

---

#### 4. Pathological Diagnosis ESPBI Form

A coding-focused form that maps cervical pathological diagnoses across multiple classification systems.

**Columns**:
- VLK service code (Lithuanian health insurance)
- ICD-10-AM code
- ICD-O morphology code
- SNOMED CT concept ID
- Diagnosis description

**Profile Mapping**:

| Code System | FHIR Element |
|------------|--------------|
| SNOMED CT | [HistopathologyConclusionLtCervical](StructureDefinition-histopathology-conclusion-lt-cervical.html).valueCodeableConcept |
| ICD-10 | [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html).conclusionCode.coding[icd10] |
| ICD-O | conclusionCode.coding[icdo3] |
| TNM pT/pR | [CervicalConditionLtCervical](StructureDefinition-cervical-condition-lt-cervical.html).stage |

---

#### Cross-IG Integration

All questionnaires reference clinical context from other Lithuanian FHIR IGs:

- **[Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)**: Tobacco use, physical activity, nutrition — relevant for screening risk assessment
- **[VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)**: BMI, blood pressure — collected during screening visits
- **[Lab IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)**: Specimen management, tumor measurement, pathology reporting — reused for histopathology
