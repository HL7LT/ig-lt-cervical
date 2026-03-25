Instance: composition-cervical-screening-episode-example
InstanceOf: CervicalCompositionLtCervical
Usage: #example
Title: "Composition: Cervical Cancer Screening Episode (example)"
Description: "Example of a cervical cancer screening episode composition linking HPV, cytology, and colposcopy diagnostic reports."
* identifier.system = "urn:oid:2.16.840.1.113883.4.330.1"
* identifier.value = "CERVICAL-COMP-2025-0001"
* status = #final
* type = $sct#721981007 "Diagnostic studies report (record artifact)"
* category[imaging] = $loinc#18748-4 "Diagnostic imaging study"
* subject = Reference(patient-female-example)
* date = "2025-03-20"
* author = Reference(practitioner-example)
* title = "Cervical Cancer Screening Episode"
* extension[diagnosticreport-reference].valueReference = Reference(diagnosticreport-cervical-report-example)

// Required events from ImagingCompositionLt
* event[imagingstudy].detail.concept = $DCM#US "Ultrasound"
* event[procedure].detail.concept = $sct#71341001 "Screening for malignant neoplasm of cervix (procedure)"

// Required imagingstudy section from ImagingCompositionLt
* section[imagingstudy].title = "Imaging Study"
* section[imagingstudy].text.status = #generated
* section[imagingstudy].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Not applicable for this cervical screening episode.</p></div>"
* section[imagingstudy].entry[imagingstudy].display = "No imaging study"

// Required order section
* section[order].title = "Order"
* section[order].text.status = #generated
* section[order].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Cervical cancer screening referral.</p></div>"

// Required comparison section
* section[comparison].title = "Comparison"
* section[comparison].text.status = #generated
* section[comparison].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No prior studies available for comparison.</p></div>"

// Inherited imaging sections (required by ImagingCompositionLt)
* section[history].title = "Clinical History"
* section[history].text.status = #generated
* section[history].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Regular menstrual cycle, day 14. No hormone therapy. No previous conization.</p></div>"
* section[history].entry[clinicalHistory] = Reference(observation-clinical-history-routine-example)

* section[procedure].title = "Colposcopy Procedure"
* section[procedure].text.status = #generated
* section[procedure].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Colposcopy performed on 2025-02-10.</p></div>"
* section[procedure].entry[colposcopyProcedure] = Reference(procedure-colposcopy-example)

* section[findings].title = "Findings"
* section[findings].text.status = #generated
* section[findings].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>HPV 16 detected. Cytology: LSIL. Colposcopy: adequate, Swede score 3, low risk.</p></div>"
* section[findings].entry[hpvResult] = Reference(observation-hpv-result-example)
* section[findings].entry[cytologyConclusion] = Reference(observation-cytology-conclusion-example)
* section[findings].entry[colposcopyFinding] = Reference(observation-colposcopy-finding-example)

* section[impression].title = "Impression"
* section[impression].text.status = #generated
* section[impression].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Low-risk findings. Follow-up in 12 months recommended.</p></div>"

* section[recommendation].title = "Recommendations"
* section[recommendation].text.status = #generated
* section[recommendation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Repeat HPV and cytology in 12 months.</p></div>"

// Cervical-specific sub-report sections
* section[hpvReport].title = "HPV Testing"
* section[hpvReport].code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* section[hpvReport].text.status = #generated
* section[hpvReport].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>HPV DNA detected: type 16.</p></div>"
* section[hpvReport].entry = Reference(diagnosticreport-hpv-example)

* section[cytologyReport].title = "Cervical Cytology (Pap Test)"
* section[cytologyReport].code = $sct#416107004 "Cervical cytology test (procedure)"
* section[cytologyReport].text.status = #generated
* section[cytologyReport].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Cytology conclusion: LSIL.</p></div>"
* section[cytologyReport].entry = Reference(diagnosticreport-cytology-example)

* section[colposcopyReport].title = "Colposcopy Examination"
* section[colposcopyReport].code = $sct#392003006 "Colposcopy (procedure)"
* section[colposcopyReport].text.status = #generated
* section[colposcopyReport].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Colposcopy: adequate, Swede score 3, low risk.</p></div>"
* section[colposcopyReport].entry = Reference(diagnosticreport-colposcopy-example)

* section[lifestyle].title = "Lifestyle Factors"
* section[lifestyle].code = $sct#284535002 "Lifestyle (observable entity)"
* section[lifestyle].text.status = #generated
* section[lifestyle].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>See <a href=\"https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-use-example.html\">Tobacco Use</a> and <a href=\"https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-physical-activity-example.html\">Physical Activity</a> examples from the Lifestyle IG.</p></div>"

* section[vitals].title = "Vital Signs"
* section[vitals].code = $sct#118227000 "Measurements and tests (procedure)"
* section[vitals].text.status = #generated
* section[vitals].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>See <a href=\"https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-bmi-example.html\">BMI</a> example from the VitalSigns IG.</p></div>"
