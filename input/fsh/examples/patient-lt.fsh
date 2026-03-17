Instance: patient-female-example
InstanceOf: PatientLt
Usage: #example
Title: "Patient: Female (example)"
Description: "An example Patient conforming to the Lithuanian Base Profile."
* identifier[0].use = #official
* identifier[0].system = "urn:oid:1.2.3.4.5.6.7.8.9.11"
* identifier[0].value = "48501019999"
* identifier[1].use = #usual
* identifier[1].system = "http://hospital-lt.lt/patient-id"
* identifier[1].value = "HOSPLT-10005"
* name[0].use = #official
* name[0].family = "Petrauskaite"
* name[0].given[0] = "Janette"
* name[0].text = "Janette Petrauskaite"
* active = true
* gender = #female
* birthDate = "1985-01-01"
* telecom[0].system = #phone
* telecom[0].value = "+370 65551234"
* telecom[0].use = #mobile
* address[0].use = #home
* address[0].line[0] = "Gedimino pr. 10"
* address[0].city = "Vilnius"
* address[0].country = "LT"
* address[0].postalCode = "LT-01103"
