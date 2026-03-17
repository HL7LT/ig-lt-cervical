Instance: composition-cervical-diagnostic-summary-example
InstanceOf: CervicalDiagnosticSummaryLtCervical
Usage: #example
Title: "Composition: Cervical Cancer Screening Diagnostic Summary (example)"
* status = #final
* type = $sct#721981007 "Diagnostic studies report (record artifact)"
* title = "Cervical Cancer Screening Diagnostic Summary"
* date = "2025-02-10T12:00:00+02:00"
* subject = Reference(patient-female-example)
* author = Reference(practitioner-example)
* section[hpv].entry = Reference(diagnosticreport-hpv-example)
* section[cytology].entry = Reference(diagnosticreport-cytology-example)
* section[colposcopy].entry = Reference(diagnosticreport-colposcopy-example)
