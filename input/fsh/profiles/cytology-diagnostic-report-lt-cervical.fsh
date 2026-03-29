// Cytology sub-features (NILM, LSIL, HSIL morphological details) are captured via Questionnaires (Option A)
Profile: CytologyDiagnosticReportLtCervical
Parent: DiagnosticReportLt
Id: cytology-diagnostic-report-lt-cervical
Title: "DiagnosticReport: Cervical Cytology (Pap Test)"
Description: "Laboratory diagnostic report representing cervical cytology examination in the Lithuanian cervical cancer screening pathway (ADP)."
* ^url = $cytology-diagnostic-report-lt-cervical-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* category 1..1
* category = $observation-category#laboratory
* code 1..1
* code from CervicalCytologyTestTypeVS (required)
* code ^short = "Type of cytological examination (routine PAP, liquid-based, diagnostic, immunocytochemistry)"
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
* result only Reference(CytologyConclusionLtCervical)
* conclusion 0..1
* conclusionCode 0..*
