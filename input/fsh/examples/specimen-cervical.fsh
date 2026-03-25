Instance: specimen-cervical-biopsy-example
InstanceOf: SpecimenLtLab
Usage: #example
Title: "Specimen: Cervical Cone Biopsy (example)"
Description: "Example of a cervical tissue specimen obtained via cone biopsy for histopathological examination."
* identifier.system = "urn:oid:2.16.840.1.113883.4.330.1"
* identifier.value = "SPEC-CERV-2025-0042"
* type = $sct#119376003 "Tissue specimen (specimen)"
* type.text = "Cervical cone biopsy specimen"
* subject = Reference(patient-female-example)
* receivedTime = "2025-04-10T10:30:00+02:00"
* collection.collectedDateTime = "2025-04-10T09:00:00+02:00"
* collection.collector = Reference(practitioner-example)
* collection.bodySite = $sct#71252005 "Cervix uteri structure (body structure)"
* collection.method = $sct#54535009 "Cone biopsy of cervix (procedure)"
