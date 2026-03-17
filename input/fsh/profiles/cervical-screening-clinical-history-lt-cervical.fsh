Profile: CervicalScreeningClinicalHistoryLtCervical
Parent: Observation
Id: cervical-screening-clinical-history-lt-cervical
Title: "Observation: Clinical History"
Description: "A panel of pre-analytic clinical observations."
* ^url = $cervical-screening-clinical-history-lt-cervical-url
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
* component[cycleDay].value[x] only dateTime or integer

// 2. Menopause
* component contains menopause 0..1
* component[menopause].code = $sct#276477006 "Menopause observation"
* component[menopause].value[x] only Quantity
* component[menopause].valueQuantity from http://hl7.org/fhir/ValueSet/age-units

// 3. Hormone Therapy
* component contains hormoneTherapy 0..1
* component[hormoneTherapy].code = $sct#134651000119108 "History of estrogen therapy (situation)"
* component[hormoneTherapy].value[x] only CodeableConcept
* component[hormoneTherapy].valueCodeableConcept from YesNoUnknownLtCervicalVS (required)

// 4. Pregnancy
* component contains pregnancy 0..1
* component[pregnancy].code = $sct#364320009 "Pregnancy observable (observable entity)"
* component[pregnancy].value[x] from http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips (required)

// 5. Lactation
* component contains lactation 0..1
* component[lactation].code = $sct#364381005 "Lactation observable (observable entity)"
* component[lactation].value[x] only CodeableConcept
* component[lactation].valueCodeableConcept from YesNoUnknownLtCervicalVS (required)

// 6. Radiotherapy (Pelvic)
* component contains radiotherapy 0..1
* component[radiotherapy].code = $sct#429479009 "History of radiation therapy (situation)"
* component[radiotherapy].value[x] only Quantity or CodeableConcept
* component[radiotherapy].valueQuantity from http://hl7.org/fhir/ValueSet/age-units
* component[radiotherapy].valueCodeableConcept from YesNoUnknownLtCervicalVS (preferred)

// 7. Chemotherapy
* component contains chemotherapy 0..1
* component[chemotherapy].code = $sct#161653008 "History of chemotherapy (situation)"
* component[chemotherapy].value[x] only Quantity or CodeableConcept
* component[chemotherapy].valueQuantity from http://hl7.org/fhir/ValueSet/age-units
* component[chemotherapy].valueCodeableConcept from YesNoUnknownLtCervicalVS (preferred)

// 8. Intrauterine Device (IUD)
* component contains iud 0..1
* component[iud].code = $sct#161773007 "History of intrauterine contraceptive device usage (situation)"
* component[iud].value[x] only CodeableConcept
* component[iud].valueCodeableConcept from YesNoUnknownLtCervicalVS (required)

// 9. IUD with Progestogens
* component contains iudHormonal 0..1
* component[iudHormonal].code = $sct#473099003 "History of use of hormone releasing intrauterine device contraception (situation)"
* component[iudHormonal].value[x] only CodeableConcept
* component[iudHormonal].valueCodeableConcept from YesNoUnknownLtCervicalVS (required)

// 10. Condition after Conization
* component contains conization 0..1
* component[conization].code = $sct#108941000119102 "History of cervical conization (situation)"
* component[conization].value[x] only CodeableConcept or dateTime
* component[conization].valueCodeableConcept from YesNoUnknownLtCervicalVS (preferred)

// 11. Sample Collection Location
* component contains sampleLocation 0..1
* component[sampleLocation].code = $sct#2620001000004108 "Specimen collection procedure (observable entity)"
* component[sampleLocation].value[x] only CodeableConcept
* component[sampleLocation].valueCodeableConcept from CervicalSampleCollectionSiteLtCervicalVS (required)

// 12. HPV Vaccination
* component contains hpvVaccination 0..1
* component[hpvVaccination].code = $sct#99501000119107 "Human papilloma virus vaccination given (situation)"
* component[hpvVaccination].value[x] only CodeableConcept
* component[hpvVaccination].valueCodeableConcept from HpvVaccinationStatusLtCervicalVS (required)
