Instance: specimen-cervix-hpv-example
InstanceOf: $EuSpecimenUrl
Usage: #example
Title: "Specimen: Cervical Sample for HPV Testing (example)"
* status = #available
* type = $sct#119361006 "Plasma specimen (specimen)"
* subject = Reference(patient-female-example)
* receivedTime = "2025-01-12T09:15:00+02:00"
* collection.collectedDateTime = "2025-01-12T08:45:00+02:00"

Instance: diagnosticreport-hpv-example
InstanceOf: HpvDiagnosticReportLtCervical
Usage: #example
Title: "DiagnosticReport: HPV DNA Test (example)"
Description: "HPV laboratory diagnostic report for cervical cancer screening."
* status = #final
* category = $observation-category#laboratory
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-01-12T08:45:00+02:00"
* issued = "2025-01-13T10:30:00+02:00"
* performer = Reference(organization-example)
* resultsInterpreter = Reference(practitioner-example)
* specimen = Reference(specimen-cervix-hpv-example)
* result = Reference(observation-hpv-result-example)
* conclusion = "High-risk HPV DNA detected. Genotype 16 identified."
