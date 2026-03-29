Instance: diagnosticreport-cervical-report-example
InstanceOf: CervicalReportLtCervical
Usage: #example
Title: "DiagnosticReport: Cervical Cancer Screening Report (example)"
Description: "Example of a cervical cancer screening report linking HPV, cytology, and colposcopy results."
* identifier.system = "urn:oid:2.16.840.1.113883.4.330.1"
* identifier.value = "CERVICAL-RPT-2025-0001"
* status = #final
* code.coding[doc-type] = $sct#721981007 "Diagnostic studies report (record artifact)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-03-15T10:00:00+02:00"
* issued = "2025-03-20T14:30:00+02:00"
* performer = Reference(practitioner-role-example)
* composition = Reference(composition-cervical-screening-episode-example)
* result[+] = Reference(observation-hpv-result-example)
* result[+] = Reference(observation-cytology-conclusion-example)
* result[+] = Reference(observation-colposcopy-finding-example)
* conclusion = "HPV 16 positive, LSIL on cytology, low-risk colposcopy (Swede score 3). Follow-up recommended in 12 months."
