Profile: ColposcopyFindingLtCervical
Parent: ObservationLt
Id: colposcopy-finding-lt-cervical
Title: "Observation: Colposcopy Findings"
Description: "Clinical findings recorded during colposcopy, including suitability for assessment and Swede score."
* ^url = $colposcopy-finding-lt-cervical-url
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
* valueCodeableConcept from ColposcopyAdequacyLtCervicalVS (required)
// Swede score as component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains swedeScore 0..1
* component[swedeScore].code = $sct#1389350002 "Swede score (observable entity)"
* component[swedeScore].value[x] only integer
* component contains swedeRisk 0..1
* component[swedeRisk].code = $sct#407647007 "Risk assessment status (finding)"
* component[swedeRisk].value[x] only CodeableConcept
* component[swedeRisk].valueCodeableConcept from ColposcopySwedeRiskLtCervicalVS (extensible)
// Narrative
* note 0..1
* note.text 1..1
