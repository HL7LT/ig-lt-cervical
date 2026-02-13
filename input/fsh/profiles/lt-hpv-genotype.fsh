
ValueSet: HpvGenotypeCervixLtVS
Id: hpv-genotype-cervix-lt
Title: "ValueSet: Cervix - HPV Genotypes (LT ADP)"
Description: "High-risk Human Papillomavirus (HPV) genotypes and groups detected in cervical cancer screening, based on the Lithuanian ADP methodology."
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
Description: "Overall result codes for HPV DNA testing (detected, not detected, or invalid) in the Lithuanian ADP."
* ^status = #active
* ^publisher = "HL7 Lithuania"
// --- Negative
* $sct#77851000146104 "High risk human papillomavirus deoxyribonucleic acid not detected (finding)"
// --- Positive
* $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
// --- Unsatisfactory / Rejected
* $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* $sct#373880007 "Specimen rejected / not processed (finding)"


Profile: HpvTestResultCervixLt
Parent: LTBaseObservation
Id: hpv-test-result-cervix-lt
Title: "HPV Test Result (LT Cervix ADP)"
Description: "HPV DNA test result with optional component for specifying detected high-risk genotypes. Used in the Lithuanian cervical cancer prevention program."
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
* component[detectedGenotype].code = $sct#441837004 "Human papillomavirus genotype (observable entity)"
* component[detectedGenotype].value[x] only CodeableConcept
* component[detectedGenotype].valueCodeableConcept from HpvGenotypeCervixLtVS (extensible)
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
* component[detectedGenotype][0].code = $sct#441837004 "Human papillomavirus genotype (observable entity)"
* component[detectedGenotype][0].valueCodeableConcept = $sct#115326008 "Human papillomavirus, type 16 (organism)"
// Component 2: HPV 45 Detected
* component[detectedGenotype][1].code = $sct#441837004 "Human papillomavirus genotype (observable entity)"
* component[detectedGenotype][1].valueCodeableConcept = $sct#1269507002 "Human papillomavirus type 45 (organism)"
* performer = Reference(example-organization)