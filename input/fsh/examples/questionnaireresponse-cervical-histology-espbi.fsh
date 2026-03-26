// ══════════════════════════════════════════════════════════════
// Narrative mapping – QuestionnaireResponse → FHIR profiles
// ══════════════════════════════════════════════════════════════
// See questionnaire-cervical-histology-espbi.fsh for full mapping.
// This example: Cone biopsy, left superior quadrant, HSIL/CIN2,
//   G2, clear margins, no pLVI, pTis, pR0.
// ══════════════════════════════════════════════════════════════

Instance: qr-cervical-histology-espbi-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Cervical Histopathology – HSIL/CIN2, Cone Biopsy (example)"
Description: "Completed ESPBI cervical histopathological examination response: cone biopsy from left superior quadrant with HSIL/CIN2 diagnosis, G2 grade, clear margins, no pLVI, pTis staging."
* questionnaire = "https://hl7.lt/fhir/cervical/Questionnaire/questionnaire-cervical-histology-espbi"
* status = #completed
* authored = "2025-04-15T14:30:00+03:00"
* subject = Reference(patient-female-example)
* author = Reference(practitioner-example)

// ── Group 1: Referral ──────────────────────────────────────────
* item[+].linkId = "referral"
* item[=].text = "Referral to perform pathology test"

* item[=].item[+].linkId = "referral.personalCode"
* item[=].item[=].text = "Personal code"
* item[=].item[=].answer[0].valueString = "48501019999"

* item[=].item[+].linkId = "referral.name"
* item[=].item[=].text = "Name"
* item[=].item[=].answer[0].valueString = "Janette"

* item[=].item[+].linkId = "referral.surname"
* item[=].item[=].text = "Surname"
* item[=].item[=].answer[0].valueString = "Petrauskaite"

* item[=].item[+].linkId = "referral.dateOfBirth"
* item[=].item[=].text = "Date of birth"
* item[=].item[=].answer[0].valueDate = "1985-01-01"

* item[=].item[+].linkId = "referral.clinicalDiagnosis"
* item[=].item[=].text = "Clinical diagnosis (ICD-10 code with name)"
* item[=].item[=].answer[0].valueString = "N87.1 Moderate cervical dysplasia"

// ── Group 2: Previous Procedures ────────────────────────────────
* item[+].linkId = "previousProcedures"
* item[=].text = "Previous procedures history"

* item[=].item[+].linkId = "previousProcedures.hasPreviousProcedure"
* item[=].item[=].text = "Has previous procedure"
* item[=].item[=].answer[0].valueCoding = $sct#373066001 "Yes (qualifier value)"

* item[=].item[+].linkId = "previousProcedures.procedureType"
* item[=].item[=].text = "Type of previous procedure"
* item[=].item[=].answer[0].valueCoding = $sct#50796003 "Cervical biopsy (procedure)"

* item[=].item[+].linkId = "previousProcedures.procedureDate"
* item[=].item[=].text = "Procedure date"
* item[=].item[=].answer[0].valueDate = "2024-11-20"

// ── Group 3: Colposcopy Data ────────────────────────────────────
* item[+].linkId = "colposcopyData"
* item[=].text = "Colposcopy examination data"

* item[=].item[+].linkId = "colposcopyData.colposcopyStatus"
* item[=].item[=].text = "Colposcopy status"
* item[=].item[=].answer[0].valueCoding = $sct#392003006 "Colposcopy performed"

* item[=].item[+].linkId = "colposcopyData.swedeScore"
* item[=].item[=].text = "Swede score (0-10)"
* item[=].item[=].answer[0].valueInteger = 7

* item[=].item[+].linkId = "colposcopyData.adequacy"
* item[=].item[=].text = "Adequacy of colposcopy"
* item[=].item[=].answer[0].valueCoding = $sct#443938003 "Suitable for assessment"

// ── Group 4: Biopsy Procedure ───────────────────────────────────
* item[+].linkId = "biopsyProcedure"
* item[=].text = "Nature of operation/procedure"

* item[=].item[+].linkId = "biopsyProcedure.procedureType"
* item[=].item[=].text = "Procedure type"
* item[=].item[=].answer[0].valueCoding = $sct#54535009 "Cone biopsy of cervix (procedure)"

// ── Group 5: Biopsy Sites ───────────────────────────────────────
* item[+].linkId = "biopsySites"
* item[=].text = "Biopsy site description"

* item[=].item[+].linkId = "biopsySites.containers"
* item[=].item[=].text = "Container"

* item[=].item[=].item[+].linkId = "biopsySites.containers.biopsySite"
* item[=].item[=].item[=].text = "Biopsy site"
* item[=].item[=].item[=].answer[0].valueCoding = $sct#127900007 "Structure of left superior quadrant of uterine cervix"

* item[=].item[=].item[+].linkId = "biopsySites.containers.anatomicalNotes"
* item[=].item[=].item[=].text = "Anatomical notes"
* item[=].item[=].item[=].answer[0].valueString = "Cone biopsy specimen from transformation zone, left superior quadrant"

* item[=].item[=].item[+].linkId = "biopsySites.containers.numberOfFragments"
* item[=].item[=].item[=].text = "Number of fragments"
* item[=].item[=].item[=].answer[0].valueInteger = 1

// ── Group 6: Macroscopic Examination ────────────────────────────
* item[+].linkId = "macroscopic"
* item[=].text = "Macroscopic examination"

* item[=].item[+].linkId = "macroscopic.tissueSizeX"
* item[=].item[=].text = "Tissue size X (mm)"
* item[=].item[=].answer[0].valueDecimal = 18.0

* item[=].item[+].linkId = "macroscopic.tissueSizeY"
* item[=].item[=].text = "Tissue size Y (mm)"
* item[=].item[=].answer[0].valueDecimal = 15.0

* item[=].item[+].linkId = "macroscopic.tissueSizeZ"
* item[=].item[=].text = "Tissue size Z (mm)"
* item[=].item[=].answer[0].valueDecimal = 12.0

* item[=].item[+].linkId = "macroscopic.ectocervixSizeX"
* item[=].item[=].text = "Ectocervix size X (mm)"
* item[=].item[=].answer[0].valueDecimal = 16.0

* item[=].item[+].linkId = "macroscopic.ectocervixSizeY"
* item[=].item[=].text = "Ectocervix size Y (mm)"
* item[=].item[=].answer[0].valueDecimal = 14.0

* item[=].item[+].linkId = "macroscopic.notes"
* item[=].item[=].text = "Notes"
* item[=].item[=].answer[0].valueString = "Cone biopsy specimen, grey-white tissue, well-oriented with ink marking at 12 o'clock position"

// ── Group 7: Microscopic Examination ────────────────────────────
* item[+].linkId = "microscopic"
* item[=].text = "Microscopic examination"

* item[=].item[+].linkId = "microscopic.description"
* item[=].item[=].text = "Microscopic description"
* item[=].item[=].answer[0].valueString = "Sections show high-grade squamous intraepithelial neoplasia (CIN2) involving the transformation zone. The dysplastic epithelium extends through the upper two-thirds of the squamous epithelium with increased nuclear-to-cytoplasmic ratio, nuclear hyperchromasia, and mitotic figures. No stromal invasion identified. Endocervical glands are unremarkable."

// ── Group 8: Conclusion / Diagnosis ─────────────────────────────
* item[+].linkId = "conclusion"
* item[=].text = "Conclusion / Diagnosis"

* item[=].item[+].linkId = "conclusion.diagnosisCategory"
* item[=].item[=].text = "Diagnosis category"
* item[=].item[=].answer[0].valueCoding = $sct#400049009 "Squamous intraepithelial neoplasia grade 2 (morphologic abnormality)"

// ── Group 9: Histological Grade ─────────────────────────────────
* item[+].linkId = "grade"
* item[=].text = "Histological grade"

* item[=].item[+].linkId = "grade.grade"
* item[=].item[=].text = "Grade"
* item[=].item[=].answer[0].valueCoding = $sct#1228850007 "American Joint Committee on Cancer grade G2 (qualifier value)"

// ── Group 10: Tumor Size ────────────────────────────────────────
// Not applicable for CIN2 (non-invasive) — omitted

// ── Group 11: Lymphovascular Invasion ───────────────────────────
* item[+].linkId = "pLVI"
* item[=].text = "Lymphovascular invasion (pLVI)"

* item[=].item[+].linkId = "pLVI.status"
* item[=].item[=].text = "pLVI status"
* item[=].item[=].answer[0].valueCoding = $sct#373067005 "No (qualifier value)"

// ── Group 12: Surgical Margins ──────────────────────────────────
* item[+].linkId = "margins"
* item[=].text = "Surgical margins"

* item[=].item[+].linkId = "margins.marginStatus"
* item[=].item[=].text = "Margin status"
* item[=].item[=].answer[0].valueCoding = $sct#310342002 "Excision - clear margin (finding)"

// ── Group 13: TNM Staging ───────────────────────────────────────
* item[+].linkId = "tnm"
* item[=].text = "TNM staging"

* item[=].item[+].linkId = "tnm.pT"
* item[=].item[=].text = "pT stage"
* item[=].item[=].answer[0].valueCoding = $sct#1228953005 "American Joint Committee on Cancer pTis (qualifier value)"

* item[=].item[+].linkId = "tnm.pR"
* item[=].item[=].text = "pR stage"
* item[=].item[=].answer[0].valueCoding = $sct#1222638005 "American Joint Committee on Cancer R0 (qualifier value)"

* item[=].item[+].linkId = "tnm.icd10Code"
* item[=].item[=].text = "ICD-10 code"
* item[=].item[=].answer[0].valueString = "D06.9"

* item[=].item[+].linkId = "tnm.snomedCode"
* item[=].item[=].text = "SNOMED CT code"
* item[=].item[=].answer[0].valueString = "400049009"

// ── Group 14: Signatures ────────────────────────────────────────
* item[+].linkId = "conductedBy"
* item[=].text = "Conducted by"

* item[=].item[+].linkId = "conductedBy.conductedName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer[0].valueString = "Petras"

* item[=].item[+].linkId = "conductedBy.conductedSurname"
* item[=].item[=].text = "Surname"
* item[=].item[=].answer[0].valueString = "Kazlauskas"

* item[=].item[+].linkId = "conductedBy.conductedPressNumber"
* item[=].item[=].text = "Medical press number"
* item[=].item[=].answer[0].valueString = "MED-LT-54321"

* item[=].item[+].linkId = "conductedBy.responseDate"
* item[=].item[=].text = "Response date"
* item[=].item[=].answer[0].valueDateTime = "2025-04-15T14:30:00+03:00"

* item[+].linkId = "confirmedBy"
* item[=].text = "Confirmed by"

* item[=].item[+].linkId = "confirmedBy.confirmedName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer[0].valueString = "Ruta"

* item[=].item[+].linkId = "confirmedBy.confirmedSurname"
* item[=].item[=].text = "Surname"
* item[=].item[=].answer[0].valueString = "Jonaite"

* item[=].item[+].linkId = "confirmedBy.confirmedPressNumber"
* item[=].item[=].text = "Medical press number"
* item[=].item[=].answer[0].valueString = "MED-LT-67890"

* item[=].item[+].linkId = "confirmedBy.confirmationDate"
* item[=].item[=].text = "Confirmation date"
* item[=].item[=].answer[0].valueDateTime = "2025-04-16T09:00:00+03:00"
