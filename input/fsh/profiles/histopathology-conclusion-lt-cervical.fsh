Profile: HistopathologyConclusionLtCervical
Parent: ObservationLt
Id: histopathology-conclusion-lt-cervical
Title: "Observation: Cervical Histopathology Conclusion (LT Cervical)"
Description: "Histopathological diagnostic conclusion for cervical tissue examination. Records the morphological diagnosis, histological grade, lymphovascular invasion (pLVI), and surgical margin status."
* ^url = $histopathology-conclusion-lt-cervical-url
* ^status = #draft

* code = $sct#371528001 "Pathology report (record artifact)"
* category 1..*
* category = $observation-category#laboratory "Laboratory"

* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effectiveDateTime 1..1

* performer 1..*
* performer only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt)

* value[x] only CodeableConcept
* valueCodeableConcept from CervicalHistopathologyDiagnosisVS (required)
* valueCodeableConcept ^short = "Histopathological diagnosis (WHO Classification of Female Genital Tumours)"

* specimen 1.. MS
* specimen only Reference(SpecimenLtLab)

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component contains
    histologicalGrade 0..1 MS and
    pLVI 0..1 MS and
    surgicalMargins 0..* MS

* component[histologicalGrade].code = $sct#371469007 "Histologic grade of neoplasm (observable entity)"
* component[histologicalGrade].value[x] only CodeableConcept
* component[histologicalGrade].valueCodeableConcept from CervicalHistologicalGradeVS (required)
* component[histologicalGrade] ^short = "Histological grade of differentiation (G1-G3, GX)"

* component[pLVI].code = $sct#371513001 "Presence of direct invasion by primary malignant neoplasm to lymphatic vessel and/or small blood vessel (observable entity)"
* component[pLVI].value[x] only CodeableConcept
* component[pLVI].valueCodeableConcept from $plvi-classification-vs-url (required)
* component[pLVI] ^short = "Lymphovascular invasion (pLVI) 6-level classification (pLVI-0 through pLVI-4, pLVI-9)"

* component[surgicalMargins].code = $sct#396631001 "Surgical margin observable (observable entity)"
* component[surgicalMargins].value[x] only CodeableConcept
* component[surgicalMargins].valueCodeableConcept from CervicalSurgicalMarginsVS (required)
* component[surgicalMargins] ^short = "Surgical margin status (clear, involved at exocervical/endocervical/deep edge)"
