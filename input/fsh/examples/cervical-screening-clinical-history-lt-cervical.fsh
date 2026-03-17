Instance: observation-clinical-history-routine-example
InstanceOf: CervicalScreeningClinicalHistoryLtCervical
Usage: #example
Title: "Observation: Clinical History - Routine (example)"
Description: "A standard history for a young patient with no prior treatments."
* status = #final
* category = $observation-category#exam
* code = $sct#270427003 "Patient-initiated encounter (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2026-02-27"
* component[cycleDay].valueInteger = 12
* component[pregnancy].valueCodeableConcept = $sct#60001007 "Not pregnant (finding)"
* component[lactation].valueCodeableConcept = $sct#373067005 "No (qualifier value)"
* component[iud].valueCodeableConcept = $sct#373067005 "No (qualifier value)"
* component[sampleLocation].valueCodeableConcept = $sct#28349006 "Exocervical structure (body structure)"
* component[hpvVaccination].valueCodeableConcept = $sct#171258008 "Up-to-date with immunizations (finding)"

Instance: observation-clinical-history-complex-example
InstanceOf: CervicalScreeningClinicalHistoryLtCervical
Usage: #example
Title: "Observation: Clinical History - Complex (example)"
Description: "A clinical history illustrating the usage of >1 year comparator for chemotherapy, DateTime for previous conization, and Yes/No/Unknown codeable concepts."
* status = #final
* category = $observation-category#exam
* code = $sct#270427003 "Patient-initiated encounter (procedure)"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2026-02-27"
* component[menopause].valueQuantity = 52 'a' "years"
* component[hormoneTherapy].valueCodeableConcept = $sct#373067005 "No (qualifier value)"
* component[chemotherapy].valueQuantity.value = 1
* component[chemotherapy].valueQuantity.comparator = #>
* component[chemotherapy].valueQuantity.unit = "years"
* component[chemotherapy].valueQuantity.system = "http://unitsofmeasure.org"
* component[chemotherapy].valueQuantity.code = #a
* component[iud].valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* component[iudHormonal].valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* component[conization].valueDateTime = "2022-05"
* component[sampleLocation].valueCodeableConcept = $sct#36973007 "Endocervical structure (body structure)"
* component[hpvVaccination].valueCodeableConcept = $sct#171278000 "Immunization status unknown (finding)"
