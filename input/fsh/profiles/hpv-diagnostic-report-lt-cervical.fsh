// HPV test type is always 35904009 (HPV DNA detection). The screening context
// (primary/routine/targeted/repeat/control) is conveyed via ServiceRequest.reason
// referencing the screening programme, not via the DiagnosticReport.code.
Profile: HpvDiagnosticReportLtCervical
Parent: DiagnosticReportLt
Id: hpv-diagnostic-report-lt-cervical
Title: "DiagnosticReport: HPV Test"
Description: "Laboratory diagnostic report representing HPV DNA testing in the Lithuanian cervical cancer screening pathway (ADP)."
* ^url = $hpv-diagnostic-report-lt-cervical-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* category 1..1
* category = $observation-category#laboratory
* code 1..1
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* issued 1..1
* basedOn 0..*
* basedOn only Reference(ServiceRequestLt)
* performer 1..*
* performer only Reference(OrganizationLt or PractitionerLt or PractitionerRoleLt)
* performer ^short = "Laboratory/organization conducting the test and/or test conductor"
* resultsInterpreter 0..*
* resultsInterpreter only Reference(PractitionerLt or PractitionerRoleLt)
* resultsInterpreter ^short = "Test confirmer/approver"
* specimen 1..*
* specimen only Reference($EuSpecimenUrl)
* result 1..*
* result only Reference(HpvTestResultLtCervical)
* conclusion 0..1
* conclusionCode 0..*
