Profile: CytologyDiagnosticReportLtCervical
Parent: DiagnosticReport
Id: cytology-diagnostic-report-lt-cervical
Title: "DiagnosticReport: Cervical Cytology (Pap Test)"
Description: "Laboratory diagnostic report representing cervical cytology examination in the Lithuanian cervical cancer screening pathway (ADP)."
* ^url = $cytology-diagnostic-report-lt-cervical-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* category 1..1
* category = $observation-category#laboratory
* code 1..1
* code = $sct#416107004 "Cervical cytology test (procedure)"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* issued 1..1
* basedOn 0..*
* basedOn only Reference(ServiceRequest)
* performer 1..*
* performer only Reference(OrganizationLt)
* resultsInterpreter 0..*
* resultsInterpreter only Reference(PractitionerLt or PractitionerRoleLt)
* specimen 1..*
* specimen only Reference($EuSpecimenUrl)
* result 1..*
* result only Reference(CytologyConclusionLtCervical)
* conclusion 0..1
* conclusionCode 0..*
