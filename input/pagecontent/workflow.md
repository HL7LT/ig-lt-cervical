### Cervical Cancer Screening Workflow

This page describes the clinical workflow modeled by the Lithuanian Cervical Cancer Prevention Implementation Guide. The pathway follows the national cervical cancer early diagnosis programme (ADP).

#### Overview

The cervical cancer screening pathway consists of four sequential diagnostic stages, each producing a structured DiagnosticReport:

1. **HPV Testing** — Primary screening with high-risk HPV DNA detection
2. **Cervical Cytology (Pap Test)** — Microscopic examination of cervical cells
3. **Colposcopy** — Clinical examination of the cervix with scoring
4. **Histopathology** — Tissue analysis from biopsy or excisional specimens

All reports are linked into a single [Cervical Cancer Screening Episode Composition](StructureDefinition-cervical-composition-lt-cervical.html) wrapped by a [Cervical Report](StructureDefinition-cervical-report-lt-cervical.html).

---

#### 1. HPV Testing

Women in the screening programme undergo high-risk HPV DNA testing as the primary screening method. The HPV test procedure code is always SNOMED `35904009` (HPV DNA detection). The screening context (primary, routine, targeted, repeat, or control after treatment) is conveyed via `ServiceRequest.reason` referencing the screening programme, not via the DiagnosticReport code.

**Profile**: [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html)

The HPV diagnostic report contains:
- [HPV Test Result](StructureDefinition-hpv-test-result-lt-cervical.html) — overall result (detected/not detected/unsatisfactory)
- Genotype panel — individual HPV types (16, 18, 31, 33, 35, 39, 45, 51, 52, 56, 58, 59, 66, 68)
- Risk group classification — highest (16, 18), medium (31, 33, 35, 45, 52, 58), lower (AR HPV)

**Examples**:
- [HPV Positive Result (types 16 & 45)](Observation-observation-hpv-result-example.html)
- [HPV Diagnostic Report](DiagnosticReport-diagnosticreport-hpv-example.html)

---

#### 2. Cervical Cytology (Pap Test)

Cervical cytology is performed either as a co-test with HPV or as a follow-up to positive HPV results. The specific test type is indicated in `DiagnosticReport.code` using [CervicalCytologyTestTypeVS](ValueSet-cervical-cytology-test-type.html), which includes routine PAP (440623000), liquid-based screening (417036008), general cervical cytology (416107004), diagnostic cytology after colposcopy (609040007), and immunocytochemistry p16/Ki-67 (395126005).

Morphological sub-features within Bethesda categories (e.g., koilocytes in LSIL, reparative changes in NILM) are captured via the ESPBI Questionnaires rather than in the structured observation profiles.

**Profile**: [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html)

The cytology report contains:
- [Cytology Conclusion](StructureDefinition-cytology-conclusion-lt-cervical.html) — Bethesda classification (NILM, ASC-US, LSIL, ASC-H, HSIL, AGC, AIS, SCC)
- Specimen suitability assessment
- Pathogen findings (candida, trichomonas, actinomyces, herpes)
- Microflora classification
- Immunocytochemistry (p16/Ki-67 dual staining)

**Examples**:
- [LSIL Cytology Conclusion](Observation-observation-cytology-conclusion-example.html)
- [Cytology Diagnostic Report](DiagnosticReport-diagnosticreport-cytology-example.html)

---

#### 3. Colposcopy

Colposcopy is indicated when HPV is positive and/or cytology shows abnormalities (ASC-US+).

**Profile**: [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html)

The colposcopy report contains:
- [Colposcopy Procedure](StructureDefinition-colposcopy-procedure-lt-cervical.html) — the examination procedure
- [Colposcopy Finding](StructureDefinition-colposcopy-finding-lt-cervical.html) — adequacy (satisfactory/unsatisfactory), Swede score (0–10, coded using SNOMED 1389350002), risk classification (low 0–3 / high 4–10)
- [Colposcopy Biopsy Procedure](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) — if biopsy is taken (punch, LEEP, cone, curettage)
- [Colposcopy History](StructureDefinition-colposcopy-history-lt-cervical.html) — previous colposcopy status

**Examples**:
- [Colposcopy Finding (Swede Score 3, Low Risk)](Observation-observation-colposcopy-finding-example.html)
- [Colposcopy Procedure](Procedure-procedure-colposcopy-example.html)
- [Colposcopy Diagnostic Report](DiagnosticReport-diagnosticreport-colposcopy-example.html)

---

#### 4. Histopathology

Histopathological examination is performed on tissue obtained from biopsy or excisional procedures. This stage reuses profiles from the [Laboratory IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) for specimen management, tumor measurement, and pathology reporting.

**Profile**: [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html)

The histopathology report contains:
- [Histopathology Conclusion](StructureDefinition-histopathology-conclusion-lt-cervical.html) — WHO classification diagnosis, histological grade (G1–G3), pLVI (6-level classification from Lab IG), surgical margins
- [Pathology Composition](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-composition-lt-lab.html) — synoptic document with Pre-Analytic, Macroscopic, Microscopic, and Synthesis sections (reused from Lab IG)
- [Specimen Measurement](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-measurement-lt-lab.html) — tissue fragment dimensions (x,y,z mm per container) and ectocervix measurements (reused from Lab IG)
- [Tumor Measurement](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) — 3D tumor dimensions in mm (reused from Lab IG)
- [Specimen](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) — cervical tissue specimen with fixation type via `processing.additive` (formalin = SNOMED 434162003) (reused from Lab IG)
- [Cervical Condition (TNM Staging)](StructureDefinition-cervical-condition-lt-cervical.html) — pT (pTX–pT4), pN (pNX–pN2), pR (pRX–pR2) staging with ICD-O morphology

**Practitioner roles**: The `performer` element captures the test conductor (pathologist); `resultsInterpreter` captures the confirmer/approver (senior pathologist). The referring doctor is linked via `basedOn` → `ServiceRequest.requester`.

**Examples**:
- [Histopathology Report (HSIL/CIN2)](DiagnosticReport-diagnosticreport-histopathology-example.html)
- [Histopathology Conclusion](Observation-observation-histopathology-conclusion-example.html)
- [Cervical Cancer TNM Staging](Condition-condition-cervical-cancer-stage-example.html)
- [Cervical Specimen](Specimen-specimen-cervical-biopsy-example.html)
- [Tumor Measurement](Observation-observation-tumor-measurement-cervical-example.html)

---

#### 5. Screening Episode Composition

At the end of the diagnostic workflow, all reports are linked into a single structured document — the [Cervical Composition](StructureDefinition-cervical-composition-lt-cervical.html).

The composition sections include:
- **Clinical History** — pre-analytic observations (cycle day, menopause, therapies, conization history)
- **HPV Report** — HPV DiagnosticReport
- **Cytology Report** — Cytology DiagnosticReport
- **Colposcopy Report** — Colposcopy DiagnosticReport
- **Histology Report** — Histopathology DiagnosticReport
- **Lifestyle Factors** — cross-IG references to [Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) (tobacco use, physical activity)
- **Vital Signs** — cross-IG references to [VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) (BMI)

The composition is wrapped by the [Cervical Report](StructureDefinition-cervical-report-lt-cervical.html) which aggregates all structured results.

**Examples**:
- [Cervical Screening Episode Composition](Composition-composition-cervical-screening-episode-example.html)
- [Cervical Cancer Screening Report](DiagnosticReport-diagnosticreport-cervical-report-example.html)

---

#### Clinical History Context

Pre-analytic clinical observations are captured using the [Cervical Screening Clinical History](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) profile with components for:
- Menstrual cycle day (SNOMED 161713000)
- Menopause status (SNOMED 276477006)
- Hormone therapy (SNOMED 1346510001)
- Pregnancy (SNOMED 77386006)
- Lactation (SNOMED 225604004)
- Radiotherapy history (SNOMED 429479009)
- Chemotherapy history (SNOMED 161653008)
- Intrauterine device (SNOMED 312081001)
- Previous conization (SNOMED 1089410001)
- Sample collection site
- HPV vaccination status

**Examples**:
- [Routine Clinical History](Observation-observation-clinical-history-routine-example.html)
- [Complex Clinical History](Observation-observation-clinical-history-complex-example.html)
