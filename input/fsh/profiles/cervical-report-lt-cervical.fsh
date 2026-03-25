Profile: CervicalReportLtCervical
Parent: ImagingReportLt
Id: cervical-report-lt-cervical
Title: "Cervical Cancer Screening Report (LT Cervical)"
Description: "Overall cervical cancer diagnostic report covering the entire screening and diagnostic pathway. Wraps a CervicalCompositionLtCervical and aggregates structured results including HPV testing, cytology, colposcopy findings, and histopathology conclusions."
* ^url = $cervical-report-lt-cervical-url
* ^status = #active

* code.coding contains doc-type 1..1
* code.coding[doc-type] = $sct#721981007 "Diagnostic studies report (record artifact)"

* encounter only Reference(EncounterLt)

* composition only Reference(CervicalCompositionLtCervical)

* result MS
* result ^short = "Cervical diagnostic results: HPV test results, cytology conclusions, colposcopy findings, histopathology conclusions"
* result ^definition = "References to Observation resources that carry the structured findings of the cervical cancer diagnostic process."
