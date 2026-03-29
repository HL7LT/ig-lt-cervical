Instance: specimen-cervix-hpv-example
InstanceOf: SpecimenLtLab
Usage: #example
Title: "Specimen: Cervical Sample for HPV Testing (example)"
* identifier.system = "urn:oid:2.16.840.1.113883.4.330.1"
* identifier.value = "SPEC-HPV-2025-0001"
* status = #available
* type = $sct#258527002 "Cervical smear sample (specimen)"
* subject = Reference(patient-female-example)
* receivedTime = "2025-01-12T09:15:00+02:00"
* collection.collectedDateTime = "2025-01-12T08:45:00+02:00"
* collection.collector = Reference(practitioner-example)
* collection.bodySite = $sct#71252005 "Cervix uteri structure (body structure)"

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
