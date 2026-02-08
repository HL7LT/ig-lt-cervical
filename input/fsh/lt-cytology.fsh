ValueSet: CytologyConclusionCervixLtVS
Id: cytology-conclusion-cervix-lt
Title: "ValueSet: Cervix - Cytology Conclusion (LT ADP)"
Description: "Cytological diagnostic conclusions and specimen adequacy categories used in the Lithuanian cervical cancer screening and diagnostic pathway (ADP), aligned with Bethesda terminology."
* ^status = #active
* ^publisher = "HL7 Lithuania"
// --- Specimen adequacy
* $sct#125152006 "Specimen satisfactory for evaluation (finding)"
* $sct#50110003  "Cervical smear - endocervical cells absent (finding)"
* $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* $sct#123836007 "Unsatisfactory for evaluation due to obscuring blood (finding)"
* $sct#123837003 "Unsatisfactory for evaluation due to obscuring inflammation (finding)"
* $sct#125162004 "Unsatisfactory for evaluation due to air drying artifact (finding)"
* $sct#125161006 "Unsatisfactory for evaluation due to scant squamous epithelial component (finding)"
// --- Normal / NILM
* $sct#373887005 "Negative for intraepithelial lesion or malignancy (finding)"
* $sct#416032004 "Cervicovaginal cytology normal or benign (finding)"
// --- ASC-US / ASC-H
* $sct#441087007 "Atypical squamous cells of undetermined significance on cervical Papanicolaou smear (finding)"
* $sct#441088002 "Atypical squamous cells on cervical Papanicolaou smear cannot exclude high-grade squamous intraepithelial lesion (finding)"
// --- LSIL / HSIL
* $sct#62051000119105 "Low-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"
* $sct#62061000119107 "High-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"
// --- Glandular abnormalities
* $sct#441219009 "Atypical glandular cells on cervical Papanicolaou smear (finding)"
* $sct#373883009 "Atypical glandular cells, favor neoplastic (morphologic abnormality)"
// --- Carcinoma
* $sct#1162767002 "Squamous cell carcinoma (morphologic abnormality)"
* $sct#51642000   "Adenocarcinoma in situ (morphologic abnormality)"
* $sct#1187332001 "Adenocarcinoma (morphologic abnormality)"
// --- Special Bethesda category
* $sct#373885002 "Endometrial cells in a woman forty years of age or older, negative for squamous intraepithelial lesion (finding)"



ValueSet: CytologyPreparationMethodCervixLtVS
Id: cytology-preparation-method-cervix-lt
Title: "ValueSet: Cervix - Cytology Preparation Method (LT ADP)"
Description: "Specimen preparation methods for cervical cytology in the Lithuanian cervical cancer screening pathway (conventional smear vs liquid-based cytology)."
* ^status = #active
* ^publisher = "HL7 Lithuania"
// Conventional smear
* $sct#440623000 "Microscopic examination of cervical Papanicolaou smear (procedure)"
// Liquid-based cytology
* $sct#417036008 "Liquid based cervical cytology screening (procedure)"
* $sct#726444000 "Liquid-based preparation technique (qualifier value)"



Profile: CytologyConclusionCervixLt
Parent: LTBaseObservation
Id: cytology-conclusion-cervix-lt
Title: "Cytology Conclusion (LT Cervix ADP)"
Description: "Final cytological diagnostic conclusion of cervical cytology examination in the Lithuanian cervical cancer screening and diagnostic pathway (ADP)."
* ^publisher = "HL7 Lithuania"
// Core
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
// What test was done
* code 1..1
* code = $sct#416107004 "Cervical cytology test (procedure)"
// Subject
* subject 1..1
// * subject only Reference(LTBasePatient)
// Result
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from CytologyConclusionCervixLtVS (required)
// Specimen (important for liquid-based vs smear)
* specimen 0..1
* specimen only Reference($EuSpecimenUrl)
// Lab / performer
* performer 1..*
// * performer only Reference($EuOrganizationUrl or $EuPractitionerRoleUrl)
// method binding
* method 0..1
* method from CytologyPreparationMethodCervixLtVS (extensible)
// Narrative
* note 0..1
* note.text 1..1



Instance: observation-cervix-cytology-conclusion-example
InstanceOf: CytologyConclusionCervixLt
Usage: #example
Title: "Observation: Cervix - Cytology Conclusion Example"
* status = #final
* category = $observation-category#exam
* code = $sct#416107004 "Cervical cytology test (procedure)"
* subject = Reference(example-patient)
* valueCodeableConcept = $sct#62051000119105 "Low-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"
* effectiveDateTime = "2025-01-12"
* performer = Reference(example-organization)


