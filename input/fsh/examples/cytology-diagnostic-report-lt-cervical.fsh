Instance: diagnosticreport-cytology-example
InstanceOf: CytologyDiagnosticReportLtCervical
Usage: #example
Title: "DiagnosticReport: Cervical Cytology (example)"
* status = #final
* category = $observation-category#laboratory
* code = $sct#416107004 "Cervical cytology test (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-01-12T09:00:00+02:00"
* issued = "2025-01-13T11:20:00+02:00"
* performer = Reference(organization-example)
* resultsInterpreter = Reference(practitioner-example)
* specimen = Reference(specimen-cervix-hpv-example)
* result = Reference(observation-cytology-conclusion-example)
* conclusion = "Low-grade squamous intraepithelial lesion (LSIL) detected."
