// ══════════════════════════════════════════════════════════════
// Narrative mapping – Questionnaire items → FHIR profiles/examples
// ══════════════════════════════════════════════════════════════
// Group 1 (referral)        → ServiceRequest (PathologyOrderLtLab)
// Group 2 (patient)         → Patient (PatientLt)
// Group 3 (clinicalDiagnosis) → Condition ICD-10
// Group 4 (previousProcedures) → history of procedures
// Group 5 (colposcopyData)  → ColposcopyFindingLtCervical, ColposcopyProcedureLtCervical
// Group 6 (biopsyProcedure) → ColposcopyBiopsyProcedureLtCervical
// Group 7 (biopsySites)     → CervicalBiopsyQuadrantVS, CervicalBiopsySiteLtCervicalVS
// Group 8 (macroscopic)     → TumorMeasurementLtLab (reused from ig-lt-lab)
// Group 9 (microscopic)     → Free text observation
// Group 10 (conclusion)     → HistopathologyConclusionLtCervical
//   diagnosis              → CervicalHistopathologyDiagnosisVS
//   grade                  → CervicalHistologicalGradeVS
//   margins                → CervicalSurgicalMarginsVS
//   pLVI                   → YesNoUnknownLtCervicalVS
// Group 11 (tumorSize)      → TumorMeasurementLtLab
// Group 12 (tnm)            → CervicalConditionLtCervical
//   pT                     → CervicalTnmPtVS
//   pR                     → CervicalTnmPrVS
// Group 13 (signatures)     → Practitioner
// ══════════════════════════════════════════════════════════════

Instance: questionnaire-cervical-histology-espbi
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire: Cervical Histopathological Examination – ESPBI (definition)"
Description: "ESPBI form for cervical histopathological examination based on ADP document Table 7.2."
* url = "https://hl7.lt/fhir/cervical/Questionnaire/questionnaire-cervical-histology-espbi"
* version = "0.0.1"
* name = "CervicalHistologyEspbiQuestionnaire"
* title = "Cervical Histopathological Examination – ESPBI Form"
* status = #active
* date = "2025-04-01"
* publisher = "Lithuanian Medical Library"
* description = "Structured questionnaire capturing cervical histopathological examination data for the Lithuanian ESPBI system, aligned with ADP Table 7.2."

// ── Group 1: Referral ──────────────────────────────────────────
* item[+].linkId = "referral"
* item[=].text = "Referral to perform pathology test"
* item[=].type = #group

* item[=].item[+].linkId = "referral.personalCode"
* item[=].item[=].text = "Personal code"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "referral.name"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "referral.surname"
* item[=].item[=].text = "Surname"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "referral.dateOfBirth"
* item[=].item[=].text = "Date of birth"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "referral.clinicalDiagnosis"
* item[=].item[=].text = "Clinical diagnosis (ICD-10 code with name)"
* item[=].item[=].type = #string

// ── Group 2: Previous Procedures ────────────────────────────────
* item[+].linkId = "previousProcedures"
* item[=].text = "Previous procedures history"
* item[=].type = #group

* item[=].item[+].linkId = "previousProcedures.hasPreviousProcedure"
* item[=].item[=].text = "Has previous procedure"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#261665006 "Unknown (qualifier value)"

* item[=].item[+].linkId = "previousProcedures.procedureType"
* item[=].item[=].text = "Type of previous procedure"
* item[=].item[=].type = #coding
* item[=].item[=].enableWhen[0].question = "previousProcedures.hasPreviousProcedure"
* item[=].item[=].enableWhen[0].operator = #=
* item[=].item[=].enableWhen[0].answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#50796003 "Cervical biopsy (procedure)"
* item[=].item[=].answerOption[+].valueCoding = $sct#108941001 "History of cervical conization (situation)"
* item[=].item[=].answerOption[+].valueCoding = $sct#125211000011906 "History of antineoplastic chemotherapy (situation)"
* item[=].item[=].answerOption[+].valueCoding = $sct#429479009 "History of radiation therapy (situation)"

* item[=].item[+].linkId = "previousProcedures.procedureDate"
* item[=].item[=].text = "Procedure date"
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[0].question = "previousProcedures.hasPreviousProcedure"
* item[=].item[=].enableWhen[0].operator = #=
* item[=].item[=].enableWhen[0].answerCoding = $sct#373066001 "Yes (qualifier value)"

// ── Group 3: Colposcopy Data ────────────────────────────────────
* item[+].linkId = "colposcopyData"
* item[=].text = "Colposcopy examination data"
* item[=].type = #group

* item[=].item[+].linkId = "colposcopyData.colposcopyStatus"
* item[=].item[=].text = "Colposcopy status"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#392003006 "Colposcopy performed"
* item[=].item[=].answerOption[+].valueCoding = $sct#416237000 "Colposcopy postponed"

* item[=].item[+].linkId = "colposcopyData.swedeScore"
* item[=].item[=].text = "Swede score (0-10)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "colposcopyData.adequacy"
* item[=].item[=].text = "Adequacy of colposcopy"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#125152006 "Specimen satisfactory for evaluation (finding)"
* item[=].item[=].answerOption[+].valueCoding = $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"

// ── Group 4: Biopsy Procedure ───────────────────────────────────
* item[+].linkId = "biopsyProcedure"
* item[=].text = "Nature of operation/procedure"
* item[=].type = #group

* item[=].item[+].linkId = "biopsyProcedure.procedureType"
* item[=].item[=].text = "Procedure type"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#51675008 "Punch biopsy of cervix (procedure)"
* item[=].item[=].answerOption[+].valueCoding = $sct#23140002 "Loop electrosurgical excision procedure of cervix (procedure)"
* item[=].item[=].answerOption[+].valueCoding = $sct#54535009 "Cone biopsy of cervix (procedure)"
* item[=].item[=].answerOption[+].valueCoding = $sct#52889002 "Endocervical curettage (procedure)"

// ── Group 5: Biopsy Sites ───────────────────────────────────────
* item[+].linkId = "biopsySites"
* item[=].text = "Biopsy site description"
* item[=].type = #group

* item[=].item[+].linkId = "biopsySites.containers"
* item[=].item[=].text = "Container"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "biopsySites.containers.biopsySite"
* item[=].item[=].item[=].text = "Biopsy site"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#127900007 "Structure of left superior quadrant of uterine cervix"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#127902004 "Structure of right superior quadrant of uterine cervix"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#127901006 "Structure of right inferior quadrant of uterine cervix"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#127899002 "Structure of left inferior quadrant of uterine cervix"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#56739004 "Structure of cervical canal of uterus"

* item[=].item[=].item[+].linkId = "biopsySites.containers.anatomicalNotes"
* item[=].item[=].item[=].text = "Anatomical notes"
* item[=].item[=].item[=].type = #text

* item[=].item[=].item[+].linkId = "biopsySites.containers.numberOfFragments"
* item[=].item[=].item[=].text = "Number of fragments"
* item[=].item[=].item[=].type = #integer

// ── Group 6: Macroscopic Examination ────────────────────────────
* item[+].linkId = "macroscopic"
* item[=].text = "Macroscopic examination"
* item[=].type = #group

* item[=].item[+].linkId = "macroscopic.tissueSizeX"
* item[=].item[=].text = "Tissue size X (mm)"
* item[=].item[=].type = #decimal

* item[=].item[+].linkId = "macroscopic.tissueSizeY"
* item[=].item[=].text = "Tissue size Y (mm)"
* item[=].item[=].type = #decimal

* item[=].item[+].linkId = "macroscopic.tissueSizeZ"
* item[=].item[=].text = "Tissue size Z (mm)"
* item[=].item[=].type = #decimal

* item[=].item[+].linkId = "macroscopic.ectocervixSizeX"
* item[=].item[=].text = "Ectocervix size X (mm)"
* item[=].item[=].type = #decimal

* item[=].item[+].linkId = "macroscopic.ectocervixSizeY"
* item[=].item[=].text = "Ectocervix size Y (mm)"
* item[=].item[=].type = #decimal

* item[=].item[+].linkId = "macroscopic.otherFindingsSize"
* item[=].item[=].text = "Other findings / size"
* item[=].item[=].type = #text

* item[=].item[+].linkId = "macroscopic.notes"
* item[=].item[=].text = "Notes"
* item[=].item[=].type = #text

// ── Group 7: Microscopic Examination ────────────────────────────
* item[+].linkId = "microscopic"
* item[=].text = "Microscopic examination"
* item[=].type = #group

* item[=].item[+].linkId = "microscopic.description"
* item[=].item[=].text = "Microscopic description"
* item[=].item[=].type = #text

// ── Group 8: Conclusion / Diagnosis ─────────────────────────────
* item[+].linkId = "conclusion"
* item[=].text = "Conclusion / Diagnosis"
* item[=].type = #group

* item[=].item[+].linkId = "conclusion.diagnosisCategory"
* item[=].item[=].text = "Diagnosis category"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#30389008 "Normal tissue (finding)"
* item[=].item[=].answerOption[+].valueCoding = $sct#125513006 "Reactive cellular changes (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* item[=].item[=].answerOption[+].valueCoding = $sct#400002005 "Squamous intraepithelial neoplasia grade 1 (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#400049009 "Squamous intraepithelial neoplasia grade 2 (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1162893000 "Squamous cell carcinoma in situ (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#12478003 "Squamous cell carcinoma, microinvasive (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1157180003 "Human papillomavirus-associated adenocarcinoma in situ (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1157186009 "Human papillomavirus-independent adenocarcinoma in situ (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#783212001 "Human papillomavirus positive squamous cell carcinoma (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#783213006 "Human papillomavirus negative squamous cell carcinoma (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1162767002 "Squamous cell carcinoma (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1187332001 "Adenocarcinoma (morphologic abnormality)"

// ── Group 9: Histological Grade ─────────────────────────────────
* item[+].linkId = "grade"
* item[=].text = "Histological grade"
* item[=].type = #group
* item[=].enableWhen[0].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[0].operator = #=
* item[=].enableWhen[0].answerCoding = $sct#12478003 "Squamous cell carcinoma, microinvasive (morphologic abnormality)"
* item[=].enableWhen[+].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#783212001 "Human papillomavirus positive squamous cell carcinoma (morphologic abnormality)"
* item[=].enableWhen[+].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#783213006 "Human papillomavirus negative squamous cell carcinoma (morphologic abnormality)"
* item[=].enableWhen[+].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#1162767002 "Squamous cell carcinoma (morphologic abnormality)"
* item[=].enableWhen[+].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#1187332001 "Adenocarcinoma (morphologic abnormality)"
* item[=].enableBehavior = #any

* item[=].item[+].linkId = "grade.grade"
* item[=].item[=].text = "Grade"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#1228848004 "American Joint Committee on Cancer grade G1 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228850007 "American Joint Committee on Cancer grade G2 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228851006 "American Joint Committee on Cancer grade G3 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228845001 "American Joint Committee on Cancer grade GX (qualifier value)"

// ── Group 10: Tumor Size ────────────────────────────────────────
* item[+].linkId = "tumorSize"
* item[=].text = "Tumor size"
* item[=].type = #group
* item[=].enableWhen[0].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[0].operator = #=
* item[=].enableWhen[0].answerCoding = $sct#12478003 "Squamous cell carcinoma, microinvasive (morphologic abnormality)"
* item[=].enableWhen[+].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#783212001 "Human papillomavirus positive squamous cell carcinoma (morphologic abnormality)"
* item[=].enableWhen[+].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#783213006 "Human papillomavirus negative squamous cell carcinoma (morphologic abnormality)"
* item[=].enableWhen[+].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#1162767002 "Squamous cell carcinoma (morphologic abnormality)"
* item[=].enableWhen[+].question = "conclusion.diagnosisCategory"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#1187332001 "Adenocarcinoma (morphologic abnormality)"
* item[=].enableBehavior = #any

* item[=].item[+].linkId = "tumorSize.horizontal"
* item[=].item[=].text = "Horizontal extent (mm)"
* item[=].item[=].type = #decimal

* item[=].item[+].linkId = "tumorSize.depth"
* item[=].item[=].text = "Depth of invasion (mm)"
* item[=].item[=].type = #decimal

// ── Group 11: Lymphovascular Invasion ───────────────────────────
* item[+].linkId = "pLVI"
* item[=].text = "Lymphovascular invasion (pLVI)"
* item[=].type = #group

* item[=].item[+].linkId = "pLVI.status"
* item[=].item[=].text = "pLVI status"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#261665006 "Unknown (qualifier value)"

// ── Group 12: Surgical Margins ──────────────────────────────────
* item[+].linkId = "margins"
* item[=].text = "Surgical margins"
* item[=].type = #group
* item[=].enableWhen[0].question = "biopsyProcedure.procedureType"
* item[=].enableWhen[0].operator = #=
* item[=].enableWhen[0].answerCoding = $sct#23140002 "Loop electrosurgical excision procedure of cervix (procedure)"
* item[=].enableWhen[+].question = "biopsyProcedure.procedureType"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#54535009 "Cone biopsy of cervix (procedure)"
* item[=].enableBehavior = #any

* item[=].item[+].linkId = "margins.marginStatus"
* item[=].item[=].text = "Margin status"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#310342002 "Excision - clear margin (finding)"
* item[=].item[=].answerOption[+].valueCoding = $sct#396256001 "Surgical exocervical margin involved by malignant neoplasm (finding)"
* item[=].item[=].answerOption[+].valueCoding = $sct#396246000 "Surgical endocervical margin involved by malignant neoplasm (finding)"
* item[=].item[=].answerOption[+].valueCoding = $sct#395544008 "Surgical deep margin involved by malignant neoplasm (finding)"
* item[=].item[=].answerOption[+].valueCoding = $sct#395537004 "Involvement of surgical margins by the tumor cannot be assessed (finding)"

// ── Group 13: TNM Staging ───────────────────────────────────────
* item[+].linkId = "tnm"
* item[=].text = "TNM staging"
* item[=].type = #group

* item[=].item[+].linkId = "tnm.pT"
* item[=].item[=].text = "pT stage"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#1228950008 "American Joint Committee on Cancer pTX (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228951007 "American Joint Committee on Cancer pT0 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228953005 "American Joint Committee on Cancer pTis (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228960004 "American Joint Committee on Cancer pT1a1 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228961000 "American Joint Committee on Cancer pT1a2 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1229844006 "American Joint Committee on Cancer pT1b1 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1229845007 "American Joint Committee on Cancer pT1b2 (qualifier value)"

* item[=].item[+].linkId = "tnm.pR"
* item[=].item[=].text = "pR stage"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#1222641001 "American Joint Committee on Cancer RX (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1222638005 "American Joint Committee on Cancer R0 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1222639002 "American Joint Committee on Cancer R1 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1222640000 "American Joint Committee on Cancer R2 (qualifier value)"

* item[=].item[+].linkId = "tnm.icd10Code"
* item[=].item[=].text = "ICD-10 code"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "tnm.icdOCode"
* item[=].item[=].text = "ICD-O code"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "tnm.snomedCode"
* item[=].item[=].text = "SNOMED CT code"
* item[=].item[=].type = #string

// ── Group 14: Signatures ────────────────────────────────────────
* item[+].linkId = "conductedBy"
* item[=].text = "Conducted by"
* item[=].type = #group

* item[=].item[+].linkId = "conductedBy.conductedName"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "conductedBy.conductedSurname"
* item[=].item[=].text = "Surname"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "conductedBy.conductedPressNumber"
* item[=].item[=].text = "Medical press number"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "conductedBy.responseDate"
* item[=].item[=].text = "Response date"
* item[=].item[=].type = #dateTime

* item[+].linkId = "confirmedBy"
* item[=].text = "Confirmed by"
* item[=].type = #group

* item[=].item[+].linkId = "confirmedBy.confirmedName"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "confirmedBy.confirmedSurname"
* item[=].item[=].text = "Surname"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "confirmedBy.confirmedPressNumber"
* item[=].item[=].text = "Medical press number"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "confirmedBy.confirmationDate"
* item[=].item[=].text = "Confirmation date"
* item[=].item[=].type = #dateTime
