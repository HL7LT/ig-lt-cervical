Instance: observation-hpv-result-example
InstanceOf: HpvTestResultLtCervical
Usage: #example
Title: "Observation: HPV Positive - Type 16 & 45 (example)"
* status = #final
* category = $observation-category#laboratory
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-01-12"
* valueCodeableConcept = $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
* component[detectedGenotype][0].code = $sct#9482002 "Human papillomavirus (organism)"
* component[detectedGenotype][0].valueCodeableConcept = $sct#115326008 "Human papillomavirus, type 16 (organism)"
* component[detectedGenotype][1].code = $sct#9482002 "Human papillomavirus (organism)"
* component[detectedGenotype][1].valueCodeableConcept = $sct#1269507002 "Human papillomavirus type 45 (organism)"
* performer = Reference(organization-example)

Instance: observation-hpv-result-group-example
InstanceOf: HpvTestResultLtCervical
Usage: #example
Title: "Observation: HPV Positive - Medium Risk Group (example)"
* status = #final
* category = $observation-category#laboratory
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-02-18"
* valueCodeableConcept = $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
* component[detectedRiskGroup].code = $sct#243584004 "Genus Papillomavirus (organism)"
* component[detectedRiskGroup].valueCodeableConcept = HpvRiskGroupLtCervical#medium "Medium-risk genotype group (31, 33, 35, 45, 52, 58)"
* performer = Reference(organization-example)

Instance: observation-hpv-result-complex-mixed-example
InstanceOf: HpvTestResultLtCervical
Usage: #example
Title: "Observation: HPV Complex - Type 16 AND Medium Risk Group (example)"
Description: "A scenario where the patient is coinfected. The lab identified HPV 16 specifically, but also found a positive signal for the Medium Risk pool."
* status = #final
* category = $observation-category#laboratory
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2026-02-27"
* valueCodeableConcept = $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
* component[detectedGenotype][0].code = $sct#9482002 "Human papillomavirus (organism)"
* component[detectedGenotype][0].valueCodeableConcept = $sct#115326008 "Human papillomavirus, type 16 (organism)"
* component[detectedRiskGroup][0].code = $sct#243584004 "Genus Papillomavirus (organism)"
* component[detectedRiskGroup][0].valueCodeableConcept = HpvRiskGroupLtCervical#medium "Medium-risk genotype group (31, 33, 35, 45, 52, 58)"
* performer = Reference(organization-example)
