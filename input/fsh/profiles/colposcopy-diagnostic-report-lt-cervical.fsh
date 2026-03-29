Profile: ColposcopyDiagnosticReportLtCervical
Parent: DiagnosticReportLt
Id: colposcopy-diagnostic-report-lt-cervical
Title: "DiagnosticReport: Colposcopy"
Description: "Diagnostic report summarizing findings and procedures performed during colposcopy in the Lithuanian cervical cancer screening pathway."
* ^url = $colposcopy-diagnostic-report-lt-cervical-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#392003006 "Colposcopy (procedure)"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* issued 1..1
* performer 1..*
* performer only Reference(PractitionerLt or PractitionerRoleLt)
* resultsInterpreter 0..*
* resultsInterpreter only Reference(PractitionerLt or PractitionerRoleLt)
* result 0..*
* result only Reference(ColposcopyFindingLtCervical)
* supportingInfo 0..*
* supportingInfo.type 1..1
* supportingInfo.reference only Reference(ProcedureLt)
* supportingInfo.reference ^type.targetProfile[0] = Canonical(ColposcopyProcedureLtCervical)
* supportingInfo.reference ^type.targetProfile[+] = Canonical(ColposcopyBiopsyProcedureLtCervical)
* specimen 0..*
* specimen only Reference($EuSpecimenUrl)
* conclusion 0..1
