Instance: observation-colposcopy-finding-example
InstanceOf: ColposcopyFindingLtCervical
Usage: #example
Title: "Observation: Colposcopy Finding (example)"
* status = #final
* category = $observation-category#exam
* code = $sct#392003006 "Colposcopy (procedure)"
* subject = Reference(patient-female-example)
* valueCodeableConcept = $sct#443938003 "Procedure carried out on subject (situation)"
* component[swedeScore].valueInteger = 3
* component[swedeRisk].code = $sct#407647007 "Risk assessment status (finding)"
* component[swedeRisk].valueCodeableConcept = $sct#723505004 "Low risk (qualifier value)"
* note.text = "Transformation zone fully visible. Acetowhite changes limited."
