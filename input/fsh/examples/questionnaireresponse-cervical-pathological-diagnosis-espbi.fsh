// ══════════════════════════════════════════════════════════════
// QuestionnaireResponse example for Pathological Diagnosis ESPBI Form
// Scenario: HSIL/CIN2 diagnosis
//   VLK code 2238, ICD-10 D06.9, ICD-O 8077/2, SNOMED 400049009
//   pT staging not applicable (precancerous), G2 grade
// ══════════════════════════════════════════════════════════════

Instance: questionnaireresponse-cervical-path-diag-espbi-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Cervical Pathological Diagnosis ESPBI (example)"
Description: "Example response for the pathological diagnosis ESPBI form: HSIL/CIN2 with VLK 2238, ICD-10 D06.9, ICD-O 8077/2, SNOMED 400049009."
* questionnaire = "https://hl7.lt/fhir/cervical/Questionnaire/questionnaire-cervical-pathological-diagnosis-espbi"
* status = #completed
* authored = "2025-04-10T14:00:00+02:00"
* subject = Reference(patient-female-example)
* author = Reference(practitioner-example)

// ── Group 1: Diagnosis mapping ──
* item[+].linkId = "diagnosisMapping"
* item[=].text = "Pathological diagnosis codes"

* item[=].item[+].linkId = "diagnosisMapping.vlkServiceCode"
* item[=].item[=].text = "VLK service code"
* item[=].item[=].answer[+].valueString = "2238"

* item[=].item[+].linkId = "diagnosisMapping.icd10Code"
* item[=].item[=].text = "ICD-10-AM code"
* item[=].item[=].answer[+].valueString = "D06.9"

* item[=].item[+].linkId = "diagnosisMapping.icdOCode"
* item[=].item[=].text = "ICD-O morphology code"
* item[=].item[=].answer[+].valueString = "8077/2"

* item[=].item[+].linkId = "diagnosisMapping.snomedCode"
* item[=].item[=].text = "SNOMED CT concept ID"
* item[=].item[=].answer[+].valueCoding = $sct#400049009 "Squamous intraepithelial neoplasia grade 2 (morphologic abnormality)"

* item[=].item[+].linkId = "diagnosisMapping.diagnosisDescription"
* item[=].item[=].text = "Diagnosis description"
* item[=].item[=].answer[+].valueString = "HSIL/CIN2 - High-grade squamous intraepithelial lesion, cervical intraepithelial neoplasia grade 2"

// ── Group 2: TNM staging ──
* item[+].linkId = "tnmStaging"
* item[=].text = "TNM staging codes"

* item[=].item[+].linkId = "tnmStaging.pT"
* item[=].item[=].text = "Pathological T category (pT)"
* item[=].item[=].answer[+].valueCoding = $sct#1228882005 "American Joint Committee on Cancer pTX (qualifier value)"

* item[=].item[+].linkId = "tnmStaging.pR"
* item[=].item[=].text = "Residual tumour (pR)"
* item[=].item[=].answer[+].valueCoding = $sct#1222638005 "American Joint Committee on Cancer R0 (qualifier value)"

// ── Group 3: Grading ──
* item[+].linkId = "grading"
* item[=].text = "Histological grading"

* item[=].item[+].linkId = "grading.grade"
* item[=].item[=].text = "Histological grade"
* item[=].item[=].answer[+].valueCoding = $sct#1228850007 "American Joint Committee on Cancer grade G2 (qualifier value)"
