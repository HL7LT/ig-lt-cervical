Instance: observation-cytology-conclusion-example
InstanceOf: CytologyConclusionLtCervical
Usage: #example
Title: "Observation: Cytology Conclusion (example)"
* status = #final
* category = $observation-category#exam
* code = $sct#416107004 "Cervical cytology test (procedure)"
* subject = Reference(patient-female-example)
* valueCodeableConcept = $sct#62051000119105 "Low-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"
* effectiveDateTime = "2025-01-12"
* performer = Reference(organization-example)
