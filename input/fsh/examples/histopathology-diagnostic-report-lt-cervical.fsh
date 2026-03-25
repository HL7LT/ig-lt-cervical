Instance: diagnosticreport-histopathology-example
InstanceOf: HistopathologyDiagnosticReportLtCervical
Usage: #example
Title: "DiagnosticReport: Cervical Histopathology Report (example)"
Description: "Example of a cervical histopathology report documenting HSIL/CIN2 diagnosis from cone biopsy."
* identifier.system = "urn:oid:2.16.840.1.113883.4.330.1"
* identifier.value = "HIST-CERV-2025-0042"
* status = #final
* category = $loinc#11526-1 "Pathology study"
* code = $sct#714797009 "Histologic test (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-04-10T09:00:00+02:00"
* issued = "2025-04-15T16:00:00+02:00"
* performer = Reference(practitioner-example)
* specimen = Reference(specimen-cervical-biopsy-example)
* result[histopathologyConclusion] = Reference(observation-histopathology-conclusion-example)
* result[tumorMeasurement] = Reference(observation-tumor-measurement-cervical-example)
* conclusion = "High-grade squamous intraepithelial lesion (HSIL/CIN2). Clear surgical margins. No lymphovascular invasion."
* conclusionCode.coding[icd10] = $icd-10#D06.9 "Carcinoma in situ of cervix uteri, unspecified"
