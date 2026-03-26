// ══════════════════════════════════════════════════════════════
// QuestionnaireResponse example for Colposcopy ESPBI Form
// Scenario: adequate colposcopy, Swede score 3 (low risk),
//           punch biopsy from left superior quadrant
// ══════════════════════════════════════════════════════════════

Instance: qr-cervical-colposcopy-espbi-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Cervical Colposcopy ESPBI (example)"
Description: "Example response for the colposcopy ESPBI form: adequate colposcopy with Swede score 3 (low risk), punch biopsy from left superior quadrant."
* questionnaire = "https://hl7.lt/fhir/cervical/Questionnaire/questionnaire-cervical-colposcopy-espbi"
* status = #completed
* authored = "2025-03-15T10:30:00+02:00"
* subject = Reference(patient-female-example)
* author = Reference(practitioner-example)

// ── Group 1: Patient identification ──
* item[+].linkId = "patient"
* item[=].text = "Patient identification"

* item[=].item[+].linkId = "patient.personalCode"
* item[=].item[=].text = "Personal code"
* item[=].item[=].answer[+].valueString = "48501019999"

* item[=].item[+].linkId = "patient.name"
* item[=].item[=].text = "Name"
* item[=].item[=].answer[+].valueString = "Janette"

* item[=].item[+].linkId = "patient.surname"
* item[=].item[=].text = "Surname"
* item[=].item[=].answer[+].valueString = "Petrauskaite"

// ── Group 2: Clinical history ──
* item[+].linkId = "clinicalHistory"
* item[=].text = "Previous test history"

* item[=].item[+].linkId = "clinicalHistory.previousColposcopy"
* item[=].item[=].text = "Previous colposcopy performed"
* item[=].item[=].answer[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[=].item[+].linkId = "clinicalHistory.indication"
* item[=].item[=].text = "Indication (reason for colposcopy)"
* item[=].item[=].answer[+].valueString = "HPV 16 positive, ASC-US cytology result"

// ── Group 3: Colposcopy procedure ──
* item[+].linkId = "colposcopyPerformed"
* item[=].text = "Colposcopy procedure"

* item[=].item[+].linkId = "colposcopyPerformed.performed"
* item[=].item[=].text = "Colposcopy performed"
* item[=].item[=].answer[+].valueCoding = $sct#398166005 "Performed (qualifier value)"

* item[=].item[+].linkId = "colposcopyPerformed.procedureDate"
* item[=].item[=].text = "Procedure date"
* item[=].item[=].answer[+].valueDate = "2025-03-15"

* item[=].item[+].linkId = "colposcopyPerformed.anesthesia"
* item[=].item[=].text = "Anesthesia used"
* item[=].item[=].answer[+].valueCoding = $sct#373067005 "No (qualifier value)"

// ── Group 4: Colposcopy adequacy ──
* item[+].linkId = "adequacy"
* item[=].text = "Colposcopy adequacy"

* item[=].item[+].linkId = "adequacy.adequate"
* item[=].item[=].text = "Adequacy of colposcopy"
* item[=].item[=].answer[+].valueCoding = $sct#398166005 "Performed (qualifier value)"

// ── Group 5: Swede score ──
* item[+].linkId = "swedeScore"
* item[=].text = "Swede score (0-10)"

* item[=].item[+].linkId = "swedeScore.acetoWhiteReaction"
* item[=].item[=].text = "Acetowhite reaction (0-2)"
* item[=].item[=].answer[+].valueInteger = 1

* item[=].item[+].linkId = "swedeScore.marginsAndSurface"
* item[=].item[=].text = "Margins and surface (0-2)"
* item[=].item[=].answer[+].valueInteger = 0

* item[=].item[+].linkId = "swedeScore.vessels"
* item[=].item[=].text = "Vessels (0-2)"
* item[=].item[=].answer[+].valueInteger = 1

* item[=].item[+].linkId = "swedeScore.lesionSize"
* item[=].item[=].text = "Lesion size (0-2)"
* item[=].item[=].answer[+].valueInteger = 1

* item[=].item[+].linkId = "swedeScore.iodineStaining"
* item[=].item[=].text = "Iodine staining (0-2)"
* item[=].item[=].answer[+].valueInteger = 0

* item[=].item[+].linkId = "swedeScore.totalScore"
* item[=].item[=].text = "Total Swede score (0-10)"
* item[=].item[=].answer[+].valueInteger = 3

// ── Group 6: Risk assessment ──
* item[+].linkId = "risk"
* item[=].text = "Risk assessment based on Swede score"

* item[=].item[+].linkId = "risk.riskLevel"
* item[=].item[=].text = "Risk level"
* item[=].item[=].answer[+].valueCoding = $sct#723505004 "Low risk (qualifier value)"

// ── Group 7: Biopsy procedure ──
* item[+].linkId = "biopsyProcedure"
* item[=].text = "Biopsy procedure"

* item[=].item[+].linkId = "biopsyProcedure.biopsyPerformed"
* item[=].item[=].text = "Biopsy performed"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes (qualifier value)"

* item[=].item[+].linkId = "biopsyProcedure.procedureType"
* item[=].item[=].text = "Biopsy procedure type"
* item[=].item[=].answer[+].valueCoding = $sct#51675008 "Punch biopsy of cervix (procedure)"

// ── Group 8: Biopsy site ──
* item[+].linkId = "biopsySite"
* item[=].text = "Biopsy site"

* item[=].item[+].linkId = "biopsySite.site"
* item[=].item[=].text = "Biopsy site"
* item[=].item[=].answer[+].valueCoding = $sct#127900007 "Left superior quadrant of uterine cervix"

* item[=].item[+].linkId = "biopsySite.notes"
* item[=].item[=].text = "Notes"
* item[=].item[=].answer[+].valueString = "Acetowhite area at 10 o'clock position, approximately 5 mm"

// ── Group 9: Colposcopic impression ──
* item[+].linkId = "impression"
* item[=].text = "Colposcopic impression"

* item[=].item[+].linkId = "impression.impression"
* item[=].item[=].text = "Colposcopic impression"
* item[=].item[=].answer[+].valueString = "Minor acetowhite changes in the transformation zone at 10 o'clock. No atypical vessels. Transformation zone type 1."

* item[=].item[+].linkId = "impression.recommendation"
* item[=].item[=].text = "Recommendation"
* item[=].item[=].answer[+].valueString = "Await biopsy result. Follow-up in 6 months with HPV co-testing."

// ── Group 10: Signatures ──
* item[+].linkId = "signatures"
* item[=].text = "Signatures"

* item[=].item[+].linkId = "signatures.examinerName"
* item[=].item[=].text = "Examiner name"
* item[=].item[=].answer[+].valueString = "Jonas"

* item[=].item[+].linkId = "signatures.examinerSurname"
* item[=].item[=].text = "Examiner surname"
* item[=].item[=].answer[+].valueString = "Kazlauskas"

* item[=].item[+].linkId = "signatures.examinerPressNumber"
* item[=].item[=].text = "Examiner press number"
* item[=].item[=].answer[+].valueString = "LT-GYN-2024-0042"

* item[=].item[+].linkId = "signatures.examDate"
* item[=].item[=].text = "Examination date"
* item[=].item[=].answer[+].valueDateTime = "2025-03-15T10:30:00+02:00"
