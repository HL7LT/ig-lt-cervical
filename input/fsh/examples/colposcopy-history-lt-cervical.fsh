Instance: observation-colposcopy-history-example
InstanceOf: ColposcopyHistoryLtCervical
Usage: #example
Title: "Observation: History of Colposcopy (example)"
* status = #final
* category = $observation-category#survey
* code = $sct#392003006 "Colposcopy (procedure)"
* subject = Reference(patient-female-example)
* valueCodeableConcept = $sct#392521001 "History of (contextual qualifier)"
* partOf = Reference(procedure-colposcopy-example)
