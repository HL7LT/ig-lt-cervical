// ══════════════════════════════════════════════════════════════
// Narrative mapping – Questionnaire items → FHIR profiles/examples
// ══════════════════════════════════════════════════════════════
// Group 1 (patient)         → Patient (PatientLt)
// Group 2 (clinicalHistory) → ColposcopyHistoryLtCervical
// Group 3 (colposcopyProcedure) → ColposcopyProcedureLtCervical
// Group 4 (adequacy)        → ColposcopyFindingLtCervical (valueCodeableConcept)
// Group 5 (swedeScore)      → ColposcopyFindingLtCervical.component[swedeScore]
// Group 6 (risk)            → ColposcopyFindingLtCervical.component[swedeRisk]
// Group 7 (biopsyProcedure) → ColposcopyBiopsyProcedureLtCervical
// Group 8 (biopsySite)      → CervicalBiopsySiteLtCervicalVS, CervicalBiopsyQuadrantVS
// ══════════════════════════════════════════════════════════════

Instance: questionnaire-cervical-colposcopy-espbi
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire: Cervical Colposcopy ESPBI Form"
Description: "ESPBI form for capturing colposcopy examination data in the Lithuanian cervical cancer screening programme."
* status = #active
* name = "CervicalColposcopyEspbi"
* url = "https://hl7.lt/fhir/cervical/Questionnaire/questionnaire-cervical-colposcopy-espbi"

// ── Group 1: Patient identification ──
* item[+].linkId = "patient"
* item[=].text = "Patient identification"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "patient.personalCode"
* item[=].item[=].text = "Personal code"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "patient.name"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "patient.surname"
* item[=].item[=].text = "Surname"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// ── Group 2: Clinical history ──
* item[+].linkId = "clinicalHistory"
* item[=].text = "Previous test history"
* item[=].type = #group

* item[=].item[+].linkId = "clinicalHistory.previousColposcopy"
* item[=].item[=].text = "Previous colposcopy performed"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[=].item[+].linkId = "clinicalHistory.previousColposcopyDate"
* item[=].item[=].text = "Previous colposcopy date"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "clinicalHistory.indication"
* item[=].item[=].text = "Indication (reason for colposcopy)"
* item[=].item[=].type = #text

// ── Group 3: Colposcopy procedure ──
* item[+].linkId = "colposcopyPerformed"
* item[=].text = "Colposcopy procedure"
* item[=].type = #group

* item[=].item[+].linkId = "colposcopyPerformed.performed"
* item[=].item[=].text = "Colposcopy performed"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#398166005 "Performed (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#385660001 "Not done (qualifier value)"

* item[=].item[+].linkId = "colposcopyPerformed.postponedDate"
* item[=].item[=].text = "Postponed date"
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "colposcopyPerformed.performed"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $sct#385660001 "Not done (qualifier value)"

* item[=].item[+].linkId = "colposcopyPerformed.procedureDate"
* item[=].item[=].text = "Procedure date"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "colposcopyPerformed.anesthesia"
* item[=].item[=].text = "Anesthesia used"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

// ── Group 4: Colposcopy adequacy ──
* item[+].linkId = "adequacy"
* item[=].text = "Colposcopy adequacy"
* item[=].type = #group

* item[=].item[+].linkId = "adequacy.adequate"
* item[=].item[=].text = "Adequacy of colposcopy"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#398166005 "Performed (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#385660001 "Not done (qualifier value)"

// ── Group 5: Swede score ──
* item[+].linkId = "swedeScore"
* item[=].text = "Swede score (0-10)"
* item[=].type = #group

* item[=].item[+].linkId = "swedeScore.acetoWhiteReaction"
* item[=].item[=].text = "Acetowhite reaction (0-2)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "swedeScore.marginsAndSurface"
* item[=].item[=].text = "Margins and surface (0-2)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "swedeScore.vessels"
* item[=].item[=].text = "Vessels (0-2)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "swedeScore.lesionSize"
* item[=].item[=].text = "Lesion size (0-2)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "swedeScore.iodineStaining"
* item[=].item[=].text = "Iodine staining (0-2)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "swedeScore.totalScore"
* item[=].item[=].text = "Total Swede score (0-10)"
* item[=].item[=].type = #integer

// ── Group 6: Risk assessment ──
* item[+].linkId = "risk"
* item[=].text = "Risk assessment based on Swede score"
* item[=].type = #group

* item[=].item[+].linkId = "risk.riskLevel"
* item[=].item[=].text = "Risk level"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#723505004 "Low risk (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#723509005 "High risk (qualifier value)"

// ── Group 7: Biopsy procedure ──
* item[+].linkId = "biopsyProcedure"
* item[=].text = "Biopsy procedure"
* item[=].type = #group

* item[=].item[+].linkId = "biopsyProcedure.biopsyPerformed"
* item[=].item[=].text = "Biopsy performed"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[=].item[+].linkId = "biopsyProcedure.procedureType"
* item[=].item[=].text = "Biopsy procedure type"
* item[=].item[=].type = #coding
* item[=].item[=].enableWhen[+].question = "biopsyProcedure.biopsyPerformed"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].answerOption[+].valueCoding = $sct#51675008 "Punch biopsy of cervix (procedure)"
* item[=].item[=].answerOption[+].valueCoding = $sct#23140002 "Loop electrosurgical excision procedure of cervix (procedure)"
* item[=].item[=].answerOption[+].valueCoding = $sct#54535009 "Cone biopsy of cervix (procedure)"
* item[=].item[=].answerOption[+].valueCoding = $sct#5288900 "Endocervical curettage (procedure)"

// ── Group 8: Biopsy site ──
* item[+].linkId = "biopsySite"
* item[=].text = "Biopsy site"
* item[=].type = #group
* item[=].enableWhen[+].question = "biopsyProcedure.biopsyPerformed"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"

* item[=].item[+].linkId = "biopsySite.site"
* item[=].item[=].text = "Biopsy site"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#127900007 "Left superior quadrant of uterine cervix"
* item[=].item[=].answerOption[+].valueCoding = $sct#127902004 "Right superior quadrant of uterine cervix"
* item[=].item[=].answerOption[+].valueCoding = $sct#127901006 "Right inferior quadrant of uterine cervix"
* item[=].item[=].answerOption[+].valueCoding = $sct#127899002 "Left inferior quadrant of uterine cervix"
* item[=].item[=].answerOption[+].valueCoding = $sct#56739004 "Cervical canal of uterus"

* item[=].item[+].linkId = "biopsySite.notes"
* item[=].item[=].text = "Notes"
* item[=].item[=].type = #text

// ── Group 9: Colposcopic impression ──
* item[+].linkId = "impression"
* item[=].text = "Colposcopic impression"
* item[=].type = #group

* item[=].item[+].linkId = "impression.impression"
* item[=].item[=].text = "Colposcopic impression"
* item[=].item[=].type = #text

* item[=].item[+].linkId = "impression.recommendation"
* item[=].item[=].text = "Recommendation"
* item[=].item[=].type = #text

// ── Group 10: Signatures ──
* item[+].linkId = "signatures"
* item[=].text = "Signatures"
* item[=].type = #group

* item[=].item[+].linkId = "signatures.examinerName"
* item[=].item[=].text = "Examiner name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "signatures.examinerSurname"
* item[=].item[=].text = "Examiner surname"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "signatures.examinerPressNumber"
* item[=].item[=].text = "Examiner press number"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "signatures.examDate"
* item[=].item[=].text = "Examination date"
* item[=].item[=].type = #dateTime
