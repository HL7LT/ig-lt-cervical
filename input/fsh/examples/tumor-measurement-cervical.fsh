Instance: observation-tumor-measurement-cervical-example
InstanceOf: TumorMeasurementLtLab
Usage: #example
Title: "Observation: Cervical Tumor Measurement (example)"
Description: "Example of a cervical lesion measurement showing dimensions obtained from histopathological examination."
* status = #final
* code = $sct#263605001 "Tumor size"
* subject = Reference(patient-female-example)
* effectiveDateTime = "2025-04-10T09:00:00+02:00"
* performer = Reference(practitioner-example)
* specimen = Reference(specimen-cervical-biopsy-example)
* method = $sct#104157003 "Light microscopy (procedure)"

* component[largest].code = $sct#371479009 "Tumor size, largest dimension"
* component[largest].valueQuantity = 8 'mm' "mm"

* component[dimension1].code = $sct#372299002 "Tumor size, dimension 1"
* component[dimension1].valueQuantity = 8 'mm' "mm"

* component[dimension2].code = $sct#372300005 "Tumor size, dimension 2"
* component[dimension2].valueQuantity = 5 'mm' "mm"

* component[dimension3].code = $sct#372301009 "Tumor size, dimension 3"
* component[dimension3].valueQuantity = 2 'mm' "mm"
