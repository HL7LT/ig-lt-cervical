Profile: HpvDiagnosticReportCervixLt
Parent: DiagnosticReport
Id: hpv-diagnostic-report-cervix-lt
Title: "DiagnosticReport: HPV Test"
Description: "Laboratory diagnostic report representing HPV DNA testing in the Lithuanian cervical cancer screening pathway (ADP)."
* ^publisher = "HL7 Lithuania"
* status 1..1
* category 1..1
* category = $observation-category#laboratory
* code 1..1
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* issued 1..1
* basedOn 0..*
* basedOn only Reference(ServiceRequest)
* performer 1..*
* performer only Reference(LTBaseOrganization)
* resultsInterpreter 0..*
* resultsInterpreter only Reference(LTBasePractitioner or LTBasePractitionerRole)
* specimen 1..*
* specimen only Reference($EuSpecimenUrl)
* result 1..*
* result only Reference(HpvTestResultCervixLt)
* conclusion 0..1
* conclusionCode 0..*



Instance: specimen-cervix-hpv-example
InstanceOf: $EuSpecimenUrl
Usage: #example
Title: "Specimen: Cervical Sample for HPV Testing"
* status = #available
* type = $sct#119361006 "Specimen from cervix (specimen)"
* subject = Reference(example-patient-female)
* receivedTime = "2025-01-12T09:15:00+02:00"
* collection.collectedDateTime = "2025-01-12T08:45:00+02:00"

Instance: diagnosticreport-cervix-hpv-example
InstanceOf: HpvDiagnosticReportCervixLt
Usage: #example
Title: "DiagnosticReport: Cervix - HPV DNA Test"
Description: "HPV laboratory diagnostic report for cervical cancer screening."
* status = #final
* category = $observation-category#laboratory
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject = Reference(example-patient-female)
* effectiveDateTime = "2025-01-12T08:45:00+02:00"
* issued = "2025-01-13T10:30:00+02:00"
* performer = Reference(example-organization)
* resultsInterpreter = Reference(example-practitioner)
* specimen = Reference(specimen-cervix-hpv-example)
* result = Reference(observation-cervix-hpv-example)
* conclusion = "High-risk HPV DNA detected. Genotype 16 identified."