Instance: procedure-colposcopy-example
InstanceOf: ColposcopyProcedureLtCervical
Usage: #example
Title: "Procedure: Colposcopy (example)"
* status = #completed
* code = $sct#392003006 "Colposcopy (procedure)"
* subject = Reference(patient-female-example)
* occurrenceDateTime = "2025-02-10"
* performer.actor = Reference(practitioner-example)
