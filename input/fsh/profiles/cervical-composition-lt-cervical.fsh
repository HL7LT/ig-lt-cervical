Profile: CervicalCompositionLtCervical
Parent: ImagingCompositionLt
Id: cervical-composition-lt-cervical
Title: "Cervical Composition (LT Cervical)"
Description: "Cervical cancer screening episode composition extending the base imaging composition. Links all diagnostic reports (HPV, cytology, colposcopy, histopathology) produced during the cervical cancer screening and diagnostic pathway into a single clinical document."
* ^url = $cervical-composition-lt-cervical-url
* ^status = #active

// History section — cervical-specific clinical history
* section[history].entry ^slicing.discriminator.type = #profile
* section[history].entry ^slicing.discriminator.path = "$this"
* section[history].entry ^slicing.ordered = false
* section[history].entry ^slicing.rules = #open
* section[history].entry contains
    clinicalHistory 0..* and
    colposcopyHistory 0..*
* section[history].entry[clinicalHistory] only Reference(CervicalScreeningClinicalHistoryLtCervical)
* section[history].entry[clinicalHistory] ^short = "Pre-analytic clinical history (cycle day, menopause, therapy, conization)"
* section[history].entry[colposcopyHistory] only Reference(ColposcopyHistoryLtCervical)
* section[history].entry[colposcopyHistory] ^short = "Previous colposcopy history"

// Procedure section — colposcopy and biopsy procedures
* section[procedure].entry ^slicing.discriminator.type = #profile
* section[procedure].entry ^slicing.discriminator.path = "$this"
* section[procedure].entry ^slicing.ordered = false
* section[procedure].entry ^slicing.rules = #open
* section[procedure].entry contains
    colposcopyProcedure 0..* and
    biopsyProcedure 0..*
* section[procedure].entry[colposcopyProcedure] only Reference(ColposcopyProcedureLtCervical)
* section[procedure].entry[colposcopyProcedure] ^short = "Colposcopy procedure"
* section[procedure].entry[biopsyProcedure] only Reference(ColposcopyBiopsyProcedureLtCervical)
* section[procedure].entry[biopsyProcedure] ^short = "Biopsy procedure during colposcopy"

// Findings section — HPV, cytology, colposcopy findings
* section[findings].entry contains
    hpvResult 0..* and
    cytologyConclusion 0..* and
    colposcopyFinding 0..* and
    histopathologyConclusion 0..*
* section[findings].entry[hpvResult] only Reference(HpvTestResultLtCervical)
* section[findings].entry[hpvResult] ^short = "HPV DNA test result with genotyping"
* section[findings].entry[cytologyConclusion] only Reference(CytologyConclusionLtCervical)
* section[findings].entry[cytologyConclusion] ^short = "Cytology Bethesda classification conclusion"
* section[findings].entry[colposcopyFinding] only Reference(ColposcopyFindingLtCervical)
* section[findings].entry[colposcopyFinding] ^short = "Colposcopy finding (adequacy, Swede score)"
* section[findings].entry[histopathologyConclusion] only Reference(HistopathologyConclusionLtCervical)
* section[findings].entry[histopathologyConclusion] ^short = "Histopathology diagnostic conclusion"

// Additional cervical-specific sections for sub-report linking
* section ^slicing.rules = #open
* section contains
    hpvReport 0..1 and
    cytologyReport 0..1 and
    colposcopyReport 0..1 and
    histologyReport 0..1 and
    lifestyle 0..1 and
    vitals 0..1

* section[hpvReport].title = "HPV Testing"
* section[hpvReport].code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* section[hpvReport].entry only Reference(HpvDiagnosticReportLtCervical)

* section[cytologyReport].title = "Cervical Cytology (Pap Test)"
* section[cytologyReport].code = $sct#416107004 "Cervical cytology test (procedure)"
* section[cytologyReport].entry only Reference(CytologyDiagnosticReportLtCervical)

* section[colposcopyReport].title = "Colposcopy Examination"
* section[colposcopyReport].code = $sct#392003006 "Colposcopy (procedure)"
* section[colposcopyReport].entry only Reference(ColposcopyDiagnosticReportLtCervical)

* section[histologyReport].title = "Histopathology"
* section[histologyReport].code = $sct#714797009 "Histologic test (procedure)"
* section[histologyReport].entry only Reference(HistopathologyDiagnosticReportLtCervical)

* section[lifestyle].title = "Lifestyle Factors"
* section[lifestyle].code = $sct#284535002 "Lifestyle (observable entity)"
* section[lifestyle].entry only Reference(Observation)
* section[lifestyle] ^short = "Cross-IG references to lifestyle observations (tobacco use, physical activity)"

* section[vitals].title = "Vital Signs"
* section[vitals].code = $sct#118227000 "Measurements and tests (procedure)"
* section[vitals].entry only Reference(Observation)
* section[vitals] ^short = "Cross-IG references to vital sign observations (BMI, blood pressure)"
