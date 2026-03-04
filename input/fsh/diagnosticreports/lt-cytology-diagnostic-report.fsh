Profile: CytologyDiagnosticReportCervixLt
Parent: DiagnosticReport
Id: cytology-diagnostic-report-cervix-lt
Title: "DiagnosticReport: Cervical Cytology (Pap Test)"
Description: "Laboratory diagnostic report representing cervical cytology examination in the Lithuanian cervical cancer screening pathway (ADP)."
* ^publisher = "HL7 Lithuania"
* status 1..1
* category 1..1
* category = $observation-category#laboratory
* code 1..1
* code = $sct#416107004 "Cervical cytology test (procedure)"
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
* result only Reference(CytologyConclusionCervixLt)
* conclusion 0..1
* conclusionCode 0..*


Instance: diagnosticreport-cervix-cytology-example
InstanceOf: CytologyDiagnosticReportCervixLt
Usage: #example
Title: "DiagnosticReport: Cervix - Cytology (Pap Test)"
* status = #final
* category = $observation-category#laboratory
* code = $sct#416107004 "Cervical cytology test (procedure)"
* subject = Reference(example-patient-female)
* effectiveDateTime = "2025-01-12T09:00:00+02:00"
* issued = "2025-01-13T11:20:00+02:00"
* performer = Reference(example-organization)
* resultsInterpreter = Reference(example-practitioner)
* specimen = Reference(specimen-cervix-hpv-example)
* result = Reference(observation-cervix-cytology-conclusion-example)
* conclusion = "Low-grade squamous intraepithelial lesion (LSIL) detected."