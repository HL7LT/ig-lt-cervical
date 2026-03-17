Profile: CytologyConclusionLtCervical
Parent: ObservationLt
Id: cytology-conclusion-lt-cervical
Title: "Cytology Conclusion"
Description: "Final cytological diagnostic conclusion of cervical cytology examination in the Lithuanian cervical cancer screening and diagnostic pathway (ADP)."
* ^url = $cytology-conclusion-lt-cervical-url
* ^publisher = "HL7 Lithuania"
// Core
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#416107004 "Cervical cytology test (procedure)"
* subject 1..1
// Result
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from CytologyConclusionLtCervicalVS (required)
// Specimen (important for liquid-based vs smear)
* specimen 0..1
* specimen only Reference($EuSpecimenUrl)
// Lab / performer
* performer 1..*
* method 0..1
* method from CytologyPreparationMethodLtCervicalVS (extensible)
// Narrative
* note 0..1
* note.text 1..1
