Instance: diagnosticreport-colposcopy-example
InstanceOf: ColposcopyDiagnosticReportLtCervical
Usage: #example
Title: "DiagnosticReport: Colposcopy Examination (example)"
* status = #final
* category = $observation-category#exam
* code = $sct#392003006 "Colposcopy (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-02-10T10:15:00+02:00"
* issued = "2025-02-10T11:00:00+02:00"
* performer = Reference(practitioner-example)
* supportingInfo[0].type = $sct#103693007 "Diagnostic procedure (procedure)"
* supportingInfo[0].reference = Reference(procedure-colposcopy-example)
* result[0] = Reference(observation-colposcopy-finding-example)
* conclusion = "Colposcopy adequate for assessment. Swede score 3 indicating low risk."
