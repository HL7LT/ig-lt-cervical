Profile: ColposcopyDiagnosticReportCervixLt
Parent: DiagnosticReport
Id: colposcopy-diagnostic-report-cervix-lt
Title: "DiagnosticReport: Colposcopy (LT Cervix ADP)"
Description: "Diagnostic report summarizing findings and procedures performed during colposcopy in the Lithuanian cervical cancer screening pathway."
* ^publisher = "HL7 Lithuania"
* status 1..1
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#392003006 "Colposcopy (procedure)"
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* issued 1..1
* performer 1..*
* performer only Reference(LTBasePractitioner or LTBasePractitionerRole)
* resultsInterpreter 0..*
* resultsInterpreter only Reference(LTBasePractitioner or LTBasePractitionerRole)
* result 0..*
* result only Reference(ColposcopyFindingLt)
* supportingInfo 0..* //this is procedure
* supportingInfo.type 1..1
* supportingInfo.reference only Reference(Procedure) // shouldn't this be LTBaseProcedure ?
* supportingInfo.reference ^type.targetProfile[0] = Canonical(ColposcopyProcedureLt)
* supportingInfo.reference ^type.targetProfile[+] = Canonical(ColposcopyBiopsyProcedureLt)
* specimen 0..*
* specimen only Reference($EuSpecimenUrl)
* conclusion 0..1


Instance: diagnosticreport-colposcopy-example
InstanceOf: ColposcopyDiagnosticReportCervixLt
Usage: #example
Title: "DiagnosticReport: Colposcopy Examination Example"
* status = #final
* category = $observation-category#exam
* code = $sct#392003006 "Colposcopy (procedure)"
* subject = Reference(example-patient-female)
* effectiveDateTime = "2025-02-10T10:15:00+02:00"
* issued = "2025-02-10T11:00:00+02:00"
* performer = Reference(example-practitioner)
* supportingInfo[0].type = $sct#103693007 "Diagnostic procedure (procedure)"
* supportingInfo[0].reference = Reference(example-colposcopy-procedure)
* result[0] = Reference(observation-colposcopy-finding-example)
* conclusion = "Colposcopy adequate for assessment. Swede score 3 indicating low risk."