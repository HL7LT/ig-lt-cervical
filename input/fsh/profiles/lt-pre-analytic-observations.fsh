
ValueSet: HpvVaccinationStatusLtVS
Id: hpv-vaccination-status-lt
Title: "ValueSet: HPV Vaccination Status"
Description: "Status of HPV vaccination."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* $sct#171258008 "Up-to-date with immunizations (finding)"
* $sct#171259000 "Not up to date with immunizations (finding)"
* $sct#171278000 "Immunization status unknown (finding)"

ValueSet: CervicalSampleCollectionSiteLtVS
Id: cervical-sample-collection-site-lt
Title: "ValueSet: Cervical Sample Collection Site (LT ADP)"
Description: "Anatomical locations for sample collection."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* $sct#36973007 "Endocervical structure (body structure)"
* $sct#28349006 "Exocervical structure (body structure)"
* $sct#76784001 "Vaginal structure (body structure)"
* $sct#45292006 "Vulval structure (body structure)"

Profile: CervicalScreeningClinicalHistoryLt
Parent: Observation
Id: cervical-screening-clinical-history-lt
Title: "Observation: Clinical History (LT Cervix ADP)"
Description: "A panel of pre-analytic clinical observations."
* ^publisher = "HL7 Lithuania"
* status = #final
* category = $observation-category#exam
* code = $sct#270427003 "Patient-initiated encounter (procedure)"
* subject 1..1
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// 1. Cycle Day
* component contains cycleDay 0..1
* component[cycleDay].code = $sct#161713000 "Last menstrual period - First day (observable entity)"
* component[cycleDay].value[x] only DateTime or integer

// 2. Menopause
* component contains menopause 0..1
* component[menopause].code = $sct#276477006 "Menopause present (finding)"
* component[menopause].value[x] only Quantity
* component[menopause].valueQuantity from http://hl7.org/fhir/ValueSet/age-units

// 3. Hormone Therapy
* component contains hormoneTherapy 0..1
* component[hormoneTherapy].code = $sct#134651000119108 "History of estrogen therapy (situation)"
* component[hormoneTherapy].value[x] only boolean

// 4. Pregnancy
* component contains pregnancy 0..1
* component[pregnancy].code = $sct#364320009 "Pregnancy observable (observable entity)"
// add loinc code
// remove booleans
* component[pregnancy].value[x] only http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips

// 5. Lactation
* component contains lactation 0..1
* component[lactation].code = $sct#364381005 "Lactation observable (observable entity)"
* component[lactation].value[x] only boolean

// 6. Radiotherapy (Pelvic)
* component contains radiotherapy 0..1
* component[radiotherapy].code = $sct#429479009 "History of radiation therapy (situation)"
* component[radiotherapy].value[x] only Quantity
* component[radiotherapy].valueQuantity from http://hl7.org/fhir/ValueSet/age-units

// 7. Chemotherapy
* component contains chemotherapy 0..1
* component[chemotherapy].code = $sct#161653008 "History of chemotherapy (situation)"
* component[chemotherapy].value[x] only Quantity
* component[chemotherapy].valueQuantity from http://hl7.org/fhir/ValueSet/age-units
//add an instance with a comparator, history of more than 1y



// 8. Intrauterine Device (IUD)
* component contains iud 0..1
* component[iud].code = $sct#161773007 "History of intrauterine contraceptive device usage (situation)"
* component[iud].value[x] only boolean

// 9. IUD with Progestogens
* component contains iudHormonal 0..1
* component[iudHormonal].code = $sct#473099003 "History of use of hormone releasing intrauterine device contraception (situation)" //473099003 |History of use of hormone releasing intrauterine device contraception (situation)|
* component[iudHormonal].value[x] only boolean

// 10. Condition after Conization
* component contains conization 0..1
* component[conization].code = $sct#108941000119102 "History of cervical conization (situation)"
* component[conization].value[x] only boolean or DateTime

// 11. Sample Collection Location
* component contains sampleLocation 0..1
* component[sampleLocation].code = $sct#2620001000004108 "Specimen collection procedure (observable entity)"
* component[sampleLocation].value[x] only CodeableConcept
* component[sampleLocation].valueCodeableConcept from CervicalSampleCollectionSiteLtVS (required)

// 12. HPV Vaccination
* component contains hpvVaccination 0..1
* component[hpvVaccination].code = $sct#99501000119107 "Human papilloma virus vaccination given (situation)"
* component[hpvVaccination].value[x] only CodeableConcept
* component[hpvVaccination].valueCodeableConcept from HpvVaccinationStatusLtVS (required)

Instance: observation-history-routine-example
InstanceOf: CervicalScreeningClinicalHistoryLt
Usage: #example
Title: "Observation: Clinical History - Routine"
Description: "A standard history for a young patient with no prior treatments."
* status = #final
* category = $observation-category#exam
* code = $sct#270427003 "Patient-initiated encounter (procedure)"
* subject = Reference(Patient/example-patient-female)
* effectiveDateTime = "2026-02-27"

// 1. Cycle Day (Using Integer option)
* component[cycleDay].code = $sct#161713000 "Last menstrual period - First day (observable entity)"
* component[cycleDay].valueInteger = 12

// 4. Pregnancy (Not pregnant)
* component[pregnancy].code = $sct#289908002 "Pregnancy, function (observable entity)"
* component[pregnancy].valueCodeableConcept = $sct#60001007 "Not pregnant (finding)"

// 5. Lactation: No
* component[lactation].code = $sct#364381005 "Lactation observable (observable entity)"
* component[lactation].valueBoolean = false

// 8. IUD: No
* component[iud].code = $sct#312081001 "Uses intrauterine device contraception (finding)"
* component[iud].valueBoolean = false

// 11. Sample Location: Exocervix
* component[sampleLocation].code = $sct#2620001000004108 "Specimen collection procedure (observable entity)"
* component[sampleLocation].valueCodeableConcept = $sct#28349006 "Exocervical structure (body structure)"

// 12. HPV Vaccination: Up to date
* component[hpvVaccination].code = $sct#99501000119107 "Human papilloma virus vaccination given (situation)"
* component[hpvVaccination].valueCodeableConcept = $sct#171258008 "Up-to-date with immunizations (finding)"