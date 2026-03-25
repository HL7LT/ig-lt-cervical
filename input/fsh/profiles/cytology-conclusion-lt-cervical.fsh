Profile: CytologyConclusionLtCervical
Parent: ObservationLt
Id: cytology-conclusion-lt-cervical
Title: "Cytology Conclusion"
Description: "Final cytological diagnostic conclusion of cervical cytology examination in the Lithuanian cervical cancer screening and diagnostic pathway (ADP)."
* ^url = $cytology-conclusion-lt-cervical-url
* ^publisher = "HL7 Lithuania"
// Core
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#416107004 "Cervical cytology test (procedure)"
* subject 1..1
// Result
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from CytologyConclusionLtCervicalVS (required)
// Specimen (important for liquid-based vs smear)
* specimen 0..1
* specimen only Reference($EuSpecimenUrl)
// Lab / performer
* performer 1..*
* method 0..1
* method from CytologyPreparationMethodLtCervicalVS (extensible)
// Components from ADP dataset
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component contains
    pathogenFindings 0..* MS and
    microfloraType 0..* MS and
    immunocytochemistry 0..1 MS and
    specimenSuitability 0..1 MS

* component[pathogenFindings].code = $sct#264395009 "Microorganism (organism)"
* component[pathogenFindings].value[x] only CodeableConcept
* component[pathogenFindings].valueCodeableConcept from CervicalPathogenVS (extensible)
* component[pathogenFindings] ^short = "Pathogens identified (candida, trichomonas, actinomyces, herpes)"

* component[microfloraType].code = $sct#310210008 "Microbiota of genitourinary system normal (finding)"
* component[microfloraType].value[x] only CodeableConcept
* component[microfloraType].valueCodeableConcept from CervicalMicrofloraVS (extensible)
* component[microfloraType] ^short = "Microflora type (rod-shaped, coccobacillary, clue cells, etc.)"

* component[immunocytochemistry].code = $sct#127798001 "Immunocytochemical procedure (procedure)"
* component[immunocytochemistry].value[x] only CodeableConcept
* component[immunocytochemistry] ^short = "p16/Ki-67 dual staining result (positive/negative)"

* component[specimenSuitability].code = $sct#371507005 "Adequacy of specimen (observable entity)"
* component[specimenSuitability].value[x] only CodeableConcept
* component[specimenSuitability] ^short = "Specimen suitability for evaluation (suitable/unsuitable with reason)"

// Narrative
* note 0..1
* note.text 1..1
