Profile: CervicalDiagnosticSummaryLt
Parent: Composition
Id: cervical-diagnostic-summary-lt
Title: "Composition: Cervical Cancer Diagnostic Summary (LT ADP)"
Description: "Clinical summary document linking diagnostic reports produced during the Lithuanian cervical cancer screening and diagnostic pathway (ADP)."
* ^publisher = "HL7 Lithuania"
* status 1..1
* type 1..1
* type = $sct#721981007 "Diagnostic studies report (record artifact)"
* subject 1..1
* subject only Reference(LTBasePatient)
* date 1..1
* author 1..*
* author only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization)
* title 1..1
// Sections
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    hpv 0..1 and
    cytology 0..1 and
    colposcopy 0..1 and
    histology 0..1
* section[hpv].title = "HPV Testing"
* section[hpv].code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* section[hpv].entry only Reference(HpvDiagnosticReportCervixLt)
* section[cytology].title = "Cervical Cytology (Pap Test)"
* section[cytology].code = $sct#416107004 "Cervical cytology test (procedure)"
* section[cytology].entry only Reference(CytologyDiagnosticReportCervixLt)
* section[colposcopy].title = "Colposcopy Examination"
* section[colposcopy].code = $sct#392003006 "Colposcopy (procedure)"
* section[colposcopy].entry only Reference(ColposcopyDiagnosticReportCervixLt)
// Histology will be added later
* section[histology].title = "Histology"
* section[histology].text.status = #generated
* section[histology].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Histology diagnostic report will be added in a future version of the implementation guide.</div>"


Instance: composition-cervical-diagnostic-summary-example
InstanceOf: CervicalDiagnosticSummaryLt
Usage: #example
Title: "Composition: Cervical Cancer Screening Diagnostic Summary"
* status = #final
* type = $sct#721981007 "Diagnostic studies report (record artifact)"
* title = "Cervical Cancer Screening Diagnostic Summary"
* date = "2025-02-10T12:00:00+02:00"
* subject = Reference(example-patient-female)
* author = Reference(example-practitioner)
// HPV section
* section[hpv].entry = Reference(diagnosticreport-cervix-hpv-example)
// Cytology section
* section[cytology].entry = Reference(diagnosticreport-cervix-cytology-example)
// Colposcopy section
* section[colposcopy].entry = Reference(diagnosticreport-colposcopy-example)