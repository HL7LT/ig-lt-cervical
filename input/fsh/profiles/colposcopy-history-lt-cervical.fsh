Profile: ColposcopyHistoryLtCervical
Parent: ObservationLt
Id: colposcopy-history-lt-cervical
Title: "Observation: History of Colposcopy"
Description: "Indicates whether the patient has a history of colposcopy examination, when detailed procedure data is not available."
* ^url = $colposcopy-history-lt-cervical-url
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
