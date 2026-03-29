// ══════════════════════════════════════════════════════════════
// Narrative mapping – Questionnaire items → FHIR profiles/examples
// ══════════════════════════════════════════════════════════════
// This questionnaire captures the structured coding of cervical
// pathological diagnoses using multiple classification systems.
// Group 1 (diagnosisCode)   → HistopathologyConclusionLtCervical.valueCodeableConcept
//   VLK service code       → Lithuanian health insurance service code
//   ICD-10-AM              → Condition.code (ICD-10)
//   ICD-O                  → CervicalConditionLtCervical.stage[morphology]
//   SNOMED CT              → CervicalHistopathologyDiagnosisVS
// Group 2 (tnmStaging)     → CervicalConditionLtCervical
//   pT                    → CervicalTnmPtVS
//   pR                    → CervicalTnmPrVS
// Group 3 (grading)        → CervicalHistologicalGradeVS
// ══════════════════════════════════════════════════════════════

Instance: questionnaire-cervical-pathological-diagnosis-espbi
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire: Cervical Pathological Diagnosis ESPBI Form"
Description: "ESPBI form for structured coding of cervical pathological diagnoses using VLK, ICD-10-AM, ICD-O, and SNOMED CT classification systems."
* status = #active
* name = "CervicalPathologicalDiagnosisEspbi"
* url = "https://hl7.lt/fhir/cervical/Questionnaire/questionnaire-cervical-pathological-diagnosis-espbi"

// ── Group 1: Diagnosis mapping ──
* item[+].linkId = "diagnosisMapping"
* item[=].text = "Pathological diagnosis codes"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "diagnosisMapping.vlkServiceCode"
* item[=].item[=].text = "VLK service code"
* item[=].item[=].type = #string
* item[=].item[=].answerOption[+].valueString = "2235"
* item[=].item[=].answerOption[+].valueString = "2236"
* item[=].item[=].answerOption[+].valueString = "2234"
* item[=].item[=].answerOption[+].valueString = "2237"
* item[=].item[=].answerOption[+].valueString = "2238"
* item[=].item[=].answerOption[+].valueString = "2239"
* item[=].item[=].answerOption[+].valueString = "2240"
* item[=].item[=].answerOption[+].valueString = "2241"
* item[=].item[=].answerOption[+].valueString = "2242"
* item[=].item[=].answerOption[+].valueString = "2243"
* item[=].item[=].answerOption[+].valueString = "2244"
* item[=].item[=].answerOption[+].valueString = "2246"

* item[=].item[+].linkId = "diagnosisMapping.icd10Code"
* item[=].item[=].text = "ICD-10-AM code"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "diagnosisMapping.icdOCode"
* item[=].item[=].text = "ICD-O morphology code"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "diagnosisMapping.snomedCode"
* item[=].item[=].text = "SNOMED CT concept ID"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#30389008 "Normal cervical mucosa (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#125513006 "Benign non-neoplastic cervical lesion (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* item[=].item[=].answerOption[+].valueCoding = $sct#400002005 "Squamous intraepithelial neoplasia, low grade (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#400049009 "Squamous intraepithelial neoplasia grade 2 (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1162893000 "Squamous intraepithelial neoplasia grade 3 (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#12478003 "Microinvasive squamous cell carcinoma (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#783212001 "Invasive squamous cell carcinoma, HPV-associated (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1157180003 "Adenocarcinoma in situ, HPV-associated (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1157177004 "Adenocarcinoma, HPV-associated (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#63264007 "Carcinosarcoma (morphologic abnormality)"
* item[=].item[=].answerOption[+].valueCoding = $sct#14799000 "Neoplasm, metastatic (morphologic abnormality)"

* item[=].item[+].linkId = "diagnosisMapping.diagnosisDescription"
* item[=].item[=].text = "Diagnosis description"
* item[=].item[=].type = #string

// ── Group 2: TNM staging ──
* item[+].linkId = "tnmStaging"
* item[=].text = "TNM staging codes"
* item[=].type = #group

* item[=].item[+].linkId = "tnmStaging.pT"
* item[=].item[=].text = "Pathological T category (pT)"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#1228950008 "American Joint Committee on Cancer pTX (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228951007 "American Joint Committee on Cancer pT0 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228953005 "American Joint Committee on Cancer pTis (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228957006 "American Joint Committee on Cancer pT1a (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228960004 "American Joint Committee on Cancer pT1a1 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228962007 "American Joint Committee on Cancer pT1a2 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228964008 "American Joint Committee on Cancer pT1b (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228966005 "American Joint Committee on Cancer pT1b1 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228968006 "American Joint Committee on Cancer pT1b2 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228971000 "American Joint Committee on Cancer pT2 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228978006 "American Joint Committee on Cancer pT2a (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228985004 "American Joint Committee on Cancer pT2b (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1229852009 "American Joint Committee on Cancer pT3 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1229859000 "American Joint Committee on Cancer pT3a (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1229864005 "American Joint Committee on Cancer pT3b (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1229869000 "American Joint Committee on Cancer pT4 (qualifier value)"

* item[=].item[+].linkId = "tnmStaging.pR"
* item[=].item[=].text = "Residual tumour (pR)"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#1222637000 "American Joint Committee on Cancer RX (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1222638005 "American Joint Committee on Cancer R0 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1222639002 "American Joint Committee on Cancer R1 (qualifier value)"

// ── Group 3: Grading ──
* item[+].linkId = "grading"
* item[=].text = "Histological grading"
* item[=].type = #group

* item[=].item[+].linkId = "grading.grade"
* item[=].item[=].text = "Histological grade"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#1228848002 "American Joint Committee on Cancer grade G1 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228850007 "American Joint Committee on Cancer grade G2 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228851006 "American Joint Committee on Cancer grade G3 (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#1228855002 "American Joint Committee on Cancer grade GX (qualifier value)"
