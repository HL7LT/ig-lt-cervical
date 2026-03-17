Profile: CervicalDiagnosticSummaryLtCervical
Parent: Composition
Id: cervical-diagnostic-summary-lt-cervical
Title: "Composition: Cervical Cancer Diagnostic Summary"
Description: "Clinical summary document linking diagnostic reports produced during the Lithuanian cervical cancer screening and diagnostic pathway (ADP)."
* ^url = $cervical-diagnostic-summary-lt-cervical-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* type 1..1
* type = $sct#721981007 "Diagnostic studies report (record artifact)"
* subject 1..1
* subject only Reference(PatientLt)
* date 1..1
* author 1..*
* author only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt)
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
* section[hpv].entry only Reference(HpvDiagnosticReportLtCervical)
* section[cytology].title = "Cervical Cytology (Pap Test)"
* section[cytology].code = $sct#416107004 "Cervical cytology test (procedure)"
* section[cytology].entry only Reference(CytologyDiagnosticReportLtCervical)
* section[colposcopy].title = "Colposcopy Examination"
* section[colposcopy].code = $sct#392003006 "Colposcopy (procedure)"
* section[colposcopy].entry only Reference(ColposcopyDiagnosticReportLtCervical)
* section[histology] ^short = "Histology diagnostic report will be added in a future version of the implementation guide."
* section[histology].title = "Histology"
* section[histology].code = $sct#714797009 "Histologic test (procedure)"
