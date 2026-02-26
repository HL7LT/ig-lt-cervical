
ValueSet: HpvGenotypeCervixLtVS
Id: hpv-genotype-cervix-lt
Title: "ValueSet: Cervix - HPV Genotypes (LT ADP)"
Description: "High-risk Human Papillomavirus (HPV) genotypes and groups detected in cervical cancer screening."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#115326008 "Human papillomavirus, type 16 (organism)"
* $sct#115327004 "Human papillomavirus, type 18 (organism)"

* $sct#1269503003 "Human papillomavirus type 31 (organism)"
* $sct#1269504009 "Human papillomavirus type 33 (organism)"
* $sct#1269505005 "Human papillomavirus type 35 (organism)"
* $sct#1269506006 "Human papillomavirus type 39 (organism)"
* $sct#1269507002 "Human papillomavirus type 45 (organism)"
* $sct#1269508007 "Human papillomavirus type 51 (organism)"
* $sct#1269509004 "Human papillomavirus type 52 (organism)"
* $sct#1269510009 "Human papillomavirus type 56 (organism)"
* $sct#1269511008 "Human papillomavirus type 58 (organism)"
* $sct#1269512001 "Human papillomavirus type 59 (organism)"
* $sct#1269513006 "Human papillomavirus type 66 (organism)"
* $sct#1269514000 "Human papillomavirus type 68 (organism)"

* $sct#9482002   "Human papillomavirus (organism)"





ValueSet: HpvTestResultCervixLtVS
Id: hpv-test-result-cervix-lt
Title: "ValueSet: Cervix - HPV Test Result (LT ADP)"
Description: "Overall result codes for HPV DNA testing."
* ^status = #active
* ^publisher = "HL7 Lithuania"
// --- Negative
* $sct#77851000146104 "High risk human papillomavirus deoxyribonucleic acid not detected (finding)"
// --- Positive
* $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
// --- Unsatisfactory / Rejected
* $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* $sct#373880007 "Specimen rejected / not processed (finding)"




ValueSet: AdpHpvRiskGroupLtVS
Id: adp-hpv-risk-group-lt
Title: "ValueSet: HPV Risk Groups (LT ADP)"
Description: "ValueSet containing the ADP-specific risk buckets."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* include codes from system AdpHpvRiskGroupLtCS

CodeSystem: AdpHpvRiskGroupLtCS
Id: adp-hpv-risk-group-lt
Title: "CodeSystem: HPV Risk Groups (LT ADP)"
Description: "Specific HPV risk groupings"
* ^status = #active
* ^publisher = "HL7 Lithuania"
* ^caseSensitive = true
* #group-highest "Highest risk genotype group (16, 18)"
* #group-medium  "Medium-risk genotype group (31, 33, 35, 45, 52, 58)"
* #group-lower   "Lower risk genotype group (39, 51, 56, 59, 68)"
* #group-low     "Low-risk HPV genotype group (53, 66, others)"





Profile: HpvTestResultCervixLt
Parent: LTBaseObservation
Id: hpv-test-result-cervix-lt
Title: "HPV Test Result (LT Cervix ADP)"
Description: "HPV DNA test result with optional component for specifying detected high-risk genotypes."
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#laboratory
* code 1..1
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from HpvTestResultCervixLtVS (required)
* specimen 0..1
* specimen only Reference($EuSpecimenUrl)
* performer 1..*
// * performer only Reference($EuOrganizationUrl or $EuPractitionerRoleUrl)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains detectedGenotype 0..*
* component[detectedGenotype].code = $sct#9482002 "Human papillomavirus (organism)"
* component[detectedGenotype].value[x] only CodeableConcept
* component[detectedGenotype].valueCodeableConcept from HpvGenotypeCervixLtVS (extensible)

* component contains detectedRiskGroup 0..*
* component[detectedRiskGroup].code = $sct#243584004 "Genus Papillomavirus (organism)"
* component[detectedRiskGroup].value[x] only CodeableConcept
* component[detectedRiskGroup].valueCodeableConcept from AdpHpvRiskGroupLtVS (required)

* note 0..1
* note.text 1..1

Instance: observation-cervix-hpv-example
InstanceOf: HpvTestResultCervixLt
Usage: #example
Title: "Observation: Cervix - HPV Positive (Type 16 & 45)"
* status = #final
* category = $observation-category#laboratory
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject = Reference(example-patient-female)
* effectiveDateTime = "2025-01-12"
// Overall Result: High Risk Detected
* valueCodeableConcept = $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
// Component 1: HPV 16 Detected
* component[detectedGenotype][0].code = $sct#9482002 "Human papillomavirus (organism)"
* component[detectedGenotype][0].valueCodeableConcept = $sct#115326008 "Human papillomavirus, type 16 (organism)"
// Component 2: HPV 45 Detected
* component[detectedGenotype][1].code = $sct#9482002 "Human papillomavirus (organism)"
* component[detectedGenotype][1].valueCodeableConcept = $sct#1269507002 "Human papillomavirus type 45 (organism)"
* performer = Reference(example-organization)

Instance: observation-cervix-hpv-group-example
InstanceOf: HpvTestResultCervixLt
Usage: #example
Title: "Observation: Cervix - HPV Positive (Medium Risk Group)"
* status = #final
* category = $observation-category#laboratory
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject = Reference(example-patient-female)
* effectiveDateTime = "2025-02-18"

* valueCodeableConcept = $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
// Component: Medium Risk Group
* component[detectedRiskGroup].code = $sct#243584004 "Genus Papillomavirus (organism)"
* component[detectedRiskGroup].valueCodeableConcept = AdpHpvRiskGroupLtCS#group-medium "Medium-risk genotype group (31, 33, 35, 45, 52, 58)"
* performer = Reference(example-organization)


Instance: observation-cervix-hpv-complex-mixed
InstanceOf: HpvTestResultCervixLt
Usage: #example
Title: "Observation: HPV Complex - Type 16 AND Medium Risk Group"
Description: "A scenario where the patient is coinfected. The lab identified HPV 16 specifically, but also found a positive signal for the Medium Risk pool."
* status = #final
* category = $observation-category#laboratory
* code = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* subject = Reference(example-patient-female)
* effectiveDateTime = "2026-02-27"
// Overall Result: Positive
* valueCodeableConcept = $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
// Finding: HPV 16
* component[detectedGenotype][0].code = $sct#9482002 "Human papillomavirus (organism)"
* component[detectedGenotype][0].valueCodeableConcept = $sct#115326008 "Human papillomavirus, type 16 (organism)"
// Finding: Medium Risk Group (31, 33, 35...)
* component[detectedRiskGroup][0].code = $sct#243584004 "Genus Papillomavirus (organism)"
* component[detectedRiskGroup][0].valueCodeableConcept = AdpHpvRiskGroupLtCS#group-medium "Medium-risk genotype group (31, 33, 35, 45, 52, 58)"
* performer = Reference(example-organization)

