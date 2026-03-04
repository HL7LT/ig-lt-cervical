CodeSystem: LtCervixScoreCs
Id: lt-cervix-score-cs
Title: "LT Cervix Scoring Instruments"
Description: "Local codes for cervical cancer screening scoring instruments (0-10)."
* ^status = #active
* ^publisher = "HL7 Lithuania"


* #swede-score "Swede score"
ValueSet: ColposcopyAdequacyLtVS
Id: colposcopy-adequacy-lt
Title: "ValueSet: Colposcopy Adequacy"
Description: "Suitability of colposcopy examination for clinical assessment in the Lithuanian cervical cancer screening pathway."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#443938003 "Procedure carried out on subject (situation)"    // Suitable for assessment
* $sct#416237000 "Procedure not done (situation)"  // Not suitable 


ValueSet: ColposcopySwedeRiskLtVS
Id: colposcopy-swede-risk-lt
Title: "ValueSet: Colposcopy Swede Score Risk Category"
Description: "Risk categories derived from Swede score during colposcopy examination."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#723505004 "Low risk (qualifier value)"  // Swede 0–3
* $sct#723509005 "High risk (qualifier value)"  // Swede 4–10


ValueSet: ColposcopyProcedureTypeLtVS
Id: colposcopy-procedure-type-lt
Title: "ValueSet: Colposcopy-related Procedures"
Description: "Procedures that may be performed during colposcopy in the Lithuanian cervical cancer screening pathway."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#51675008  "Punch biopsy of cervix (procedure)"
* $sct#23140002  "Loop electrosurgical excision procedure of cervix (procedure)"
* $sct#54535009  "Cone biopsy of cervix (procedure)"
* $sct#5288900   "Endocervical curettage (procedure)"


ValueSet: CervicalBiopsySiteLtVS
Id: cervical-biopsy-site-lt
Title: "ValueSet: Cervical Biopsy Site"
Description: "Anatomical localization of cervical biopsy sampling sites during colposcopy."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#127900007 "Structure of left superior quadrant of uterine cervix (body structure)"
* $sct#127902004 "Structure of right superior quadrant of uterine cervix (body structure)"
* $sct#127901006 "Structure of right inferior quadrant of uterine cervix (body structure)"
* $sct#127899002 "Structure of left inferior quadrant of uterine cervix (body structure)"
* $sct#56739004  "Structure of cervical canal of uterus (body structure)"


Profile: ColposcopyProcedureLt
// Parent: $EuProcedureUrl
Parent: Procedure
Id: colposcopy-procedure-lt
Title: "Procedure: Colposcopy (LT Cervix ADP)"
Description: "Colposcopy procedure performed as part of the Lithuanian cervical cancer screening and diagnostic pathway (ADP)."
* ^publisher = "HL7 Lithuania"
// Core
* status 1..1
* code 1..1
* code = $sct#392003006 "Colposcopy (procedure)"
* subject 1..1
* subject only Reference(LTBasePatient)
// Timing
* occurrence[x] 1..1
// Performer
* performer 1..*
// Reason (HPV+, abnormal cytology, etc.)
* reason 0..*
// Notes
* note 0..*


Profile: ColposcopyFindingLt
Parent: LTBaseObservation
Id: colposcopy-finding-lt
Title: "Observation: Colposcopy Findings"
Description: "Clinical findings recorded during colposcopy, including suitability for assessment and Swede score."
* ^publisher = "HL7 Lithuania"
// Core
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#392003006 "Colposcopy (procedure)"
* subject 1..1
// Adequacy
* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from ColposcopyAdequacyLtVS (required)
// Swede score as component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains swedeScore 0..1
* component[swedeScore].code = LtCervixScoreCs#swede-score "Swede score" // We need a SNOMED code for SWEDE SCORE - rn I created local code..
// * component[swedeScore].code = $sct#278061009 "Scores (qualifier value)" ---> or just use snomed "Score" ? 
* component[swedeScore].value[x] only integer
* component contains swedeRisk 0..1
* component[swedeRisk].code = $sct#407647007 "Risk assessment status (finding)" // or should here be 225338004 | Risk assessment (procedure) |
* component[swedeRisk].value[x] only CodeableConcept
* component[swedeRisk].valueCodeableConcept from ColposcopySwedeRiskLtVS (extensible)
// Narrative
* note 0..1
* note.text 1..1


Profile: ColposcopyBiopsyProcedureLt
// Parent: $EuProcedureUrl // kuna imaging-r5 dependecit ei saa panna, siis ka see rida annab errori
Parent: Procedure
Id: colposcopy-biopsy-procedure-lt
Title: "Procedure: Cervical Biopsy during Colposcopy (LT ADP)"
Description: "Biopsy or excisional procedures performed during colposcopy as part of the Lithuanian cervical cancer screening pathway."
* ^publisher = "HL7 Lithuania"
* status 1..1
* code 1..1
* code from ColposcopyProcedureTypeLtVS (required)
* subject 1..1
* occurrence[x] 1..1
// Anatomical site
* bodySite 1..*
* bodySite from CervicalBiopsySiteLtVS (required)
// Link back to colposcopy
* partOf 0..*


Profile: ColposcopyHistoryLt
Parent: LTBaseObservation
Id: colposcopy-history-lt
Title: "Observation: History of Colposcopy (LT Cervix ADP)"
Description: "Indicates whether the patient has a history of colposcopy examination, when detailed procedure data is not available."
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#survey 
* code 1..1
* code = $sct#392003006 "Colposcopy (procedure)"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept = $sct#392521001 "History of (contextual qualifier)"


Instance: example-colposcopy-procedure
InstanceOf: ColposcopyProcedureLt
Usage: #example
Title: "Procedure: Colposcopy Example"
* status = #completed
* code = $sct#392003006 "Colposcopy (procedure)"
* subject = Reference(example-patient-female)
* occurrenceDateTime = "2025-02-10"
* performer.actor = Reference(example-practitioner)


Instance: example-colposcopy-history
InstanceOf: ColposcopyHistoryLt
Usage: #example
Title: "Observation: History of Colposcopy Example"
* status = #final
* category = $observation-category#survey
* code = $sct#392003006 "Colposcopy (procedure)" // or 176786003 | Colposcopy of cervix (procedure) |
* subject = Reference(example-patient-female)
* valueCodeableConcept = $sct#392521001 "History of (contextual qualifier)"
* partOf = Reference(example-colposcopy-procedure)


Instance: observation-colposcopy-finding-example
InstanceOf: ColposcopyFindingLt
Usage: #example
Title: "Observation: Colposcopy Finding Example"
* status = #final
* category = $observation-category#exam
* code = $sct#392003006 "Colposcopy (procedure)"
* subject = Reference(example-patient-female)
* valueCodeableConcept = $sct#443938003 "Procedure carried out on subject (situation)"
* component[swedeScore].valueInteger = 3
* component[swedeRisk].code = $sct#407647007 "Risk assessment status (finding)"
* component[swedeRisk].valueCodeableConcept = $sct#723505004 "Low risk (qualifier value)"
* note.text = "Transformation zone fully visible. Acetowhite changes limited."