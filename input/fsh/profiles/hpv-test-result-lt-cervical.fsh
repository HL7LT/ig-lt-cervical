Profile: HpvTestResultLtCervical
Parent: ObservationLt
Id: hpv-test-result-lt-cervical
Title: "HPV Test Result"
Description: "HPV DNA test result with optional component for specifying detected high-risk genotypes."
* ^url = $hpv-test-result-lt-cervical-url
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
* valueCodeableConcept from HpvTestResultLtCervicalVS (required)
* specimen 0..1
* specimen only Reference($EuSpecimenUrl)
* performer 1..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains detectedGenotype 0..*
* component[detectedGenotype].code = $sct#9482002 "Human papillomavirus (organism)"
* component[detectedGenotype].value[x] only CodeableConcept
* component[detectedGenotype].valueCodeableConcept from HpvGenotypeLtCervicalVS (extensible)

* component contains detectedRiskGroup 0..*
* component[detectedRiskGroup].code = $sct#243584004 "Genus Papillomavirus (organism)"
* component[detectedRiskGroup].value[x] only CodeableConcept
* component[detectedRiskGroup].valueCodeableConcept from HpvRiskGroupLtCervicalVS (required)

* note 0..1
* note.text 1..1
