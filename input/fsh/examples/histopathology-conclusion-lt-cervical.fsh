Instance: observation-histopathology-conclusion-example
InstanceOf: HistopathologyConclusionLtCervical
Usage: #example
Title: "Observation: Cervical Histopathology Conclusion – HSIL/CIN2 (example)"
Description: "Example of a cervical histopathology conclusion showing HSIL/CIN2 with G2 grade, clear margins, and no lymphovascular invasion."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $sct#371528001 "Pathology report (record artifact)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-04-10T09:00:00+02:00"
* performer = Reference(practitioner-example)
* valueCodeableConcept = $sct#400049009 "Squamous intraepithelial neoplasia grade 2 (morphologic abnormality)"
* specimen = Reference(specimen-cervical-biopsy-example)

* component[histologicalGrade].code = $sct#371469007 "Histopathological grading status (observable entity)"
* component[histologicalGrade].valueCodeableConcept = $sct#1228850007 "American Joint Committee on Cancer grade G2 (qualifier value)"

* component[pLVI].code = $sct#371513001 "Presence of direct invasion by primary malignant neoplasm to lymphatic vessel and/or small blood vessel (observable entity)"
* component[pLVI].valueCodeableConcept = $sct#373067005 "No (qualifier value)"

* component[surgicalMargins].code = $sct#396631001 "Surgical margin observable (observable entity)"
* component[surgicalMargins].valueCodeableConcept = $sct#310342002 "Excision - clear margin (finding)"
