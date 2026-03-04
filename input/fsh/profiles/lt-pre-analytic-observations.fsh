
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

ValueSet: YesNoUnknownLtVS
Id: yes-no-unknown-lt-vs
Title: "ValueSet: Yes / No / Unknown (SNOMED CT)"
Description: "Codes used to represent clinical presence or absence."
^status = #active
^publisher = "HL7 Lithuania"
$sct#373066001 "Yes (qualifier value)"
$sct#373067005 "No (qualifier value)"
$sct#261665006 "Unknown (qualifier value)"

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
* component[hormoneTherapy].value[x] only CodeableConcept
* component[hormoneTherapy].valueCodeableConcept from YesNoUnknownLtVS (required)

// 4. Pregnancy
* component contains pregnancy 0..1
* component[pregnancy].code = $sct#364320009 "Pregnancy observable (observable entity)"
* component[pregnancy].value[x] only http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips

// 5. Lactation
* component contains lactation 0..1
* component[lactation].code = $sct#364381005 "Lactation observable (observable entity)"
* component[lactation].value[x] only CodeableConcept
* component[lactation].valueCodeableConcept from YesNoUnknownLtVS (required)

// 6. Radiotherapy (Pelvic)
* component contains radiotherapy 0..1
* component[radiotherapy].code = $sct#429479009 "History of radiation therapy (situation)"
* component[radiotherapy].value[x] only Quantity or CodeableConcept
* component[radiotherapy].valueQuantity from http://hl7.org/fhir/ValueSet/age-units
* component[radiotherapy].valueCodeableConcept from YesNoUnknownLtVS (preferred)


// 7. Chemotherapy
* component contains chemotherapy 0..1
* component[chemotherapy].code = $sct#161653008 "History of chemotherapy (situation)"
* component[chemotherapy].value[x] only Quantity or CodeableConcept
* component[chemotherapy].valueQuantity from http://hl7.org/fhir/ValueSet/age-units
* component[chemotherapy].valueCodeableConcept from YesNoUnknownLtVS (preferred)

// 8. Intrauterine Device (IUD)
* component contains iud 0..1
* component[iud].code = $sct#161773007 "History of intrauterine contraceptive device usage (situation)"
* component[iud].value[x] only CodeableConcept
* component[iud].valueCodeableConcept from YesNoUnknownLtVS (required)

// 9. IUD with Progestogens
* component contains iudHormonal 0..1
* component[iudHormonal].code = $sct#473099003 "History of use of hormone releasing intrauterine device contraception (situation)"
* component[iudHormonal].value[x] only CodeableConcept
* component[iudHormonal].valueCodeableConcept from YesNoUnknownLtVS (required)

// 10. Condition after Conization
* component contains conization 0..1
* component[conization].code = $sct#108941000119102 "History of cervical conization (situation)"
* component[conization].value[x] only CodeableConcept or DateTime
* component[conization].valueCodeableConcept from YesNoUnknownLtVS (preferred)

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
* component[lactation].valueCodeableConcept = $sct#373067005 "No (qualifier value)"

// 8. IUD: No
* component[iud].code = $sct#312081001 "Uses intrauterine device contraception (finding)"
* component[iud].valueCodeableConcept = $sct#373067005 "No (qualifier value)"

// 11. Sample Location: Exocervix
* component[sampleLocation].code = $sct#2620001000004108 "Specimen collection procedure (observable entity)"
* component[sampleLocation].valueCodeableConcept = $sct#28349006 "Exocervical structure (body structure)"

// 12. HPV Vaccination: Up to date
* component[hpvVaccination].code = $sct#99501000119107 "Human papilloma virus vaccination given (situation)"
* component[hpvVaccination].valueCodeableConcept = $sct#171258008 "Up-to-date with immunizations (finding)"

Instance: observation-history-complex-example
InstanceOf: CervicalScreeningClinicalHistoryLt
Usage: #example
Title: "Observation: Clinical History - Complex (>1y history)"
Description: "A clinical history illustrating the usage of >1 year comparator for chemotherapy, DateTime for previous conization, and Yes/No/Unknown codeable concepts."
status = #final
category = $observation-category#exam
code = $sct#270427003 "Patient-initiated encounter (procedure)"
subject = Reference(Patient/example-patient-female)
effectiveDateTime = "2026-02-27"

// 2. Menopause
* component[menopause].code = $sct#276477006 "Menopause present (finding)"
* component[menopause].valueQuantity = 52 'a' "years"
// 3. Hormone Therapy: No
* component[hormoneTherapy].code = $sct#134651000119108 "History of estrogen therapy (situation)"
* component[hormoneTherapy].valueCodeableConcept = $sct#373067005 "No (qualifier value)"
// 7. Chemotherapy: > 1 year ago
* component[chemotherapy].code = $sct#161653008 "History of chemotherapy (situation)"
* component[chemotherapy].valueQuantity.value = 1
* component[chemotherapy].valueQuantity.comparator = #>
* component[chemotherapy].valueQuantity.unit = "years"
* component[chemotherapy].valueQuantity.system = "http://unitsofmeasure.org"
* component[chemotherapy].valueQuantity.code = #a
// 8. IUD: Yes
* component[iud].code = $sct#312081001 "Uses intrauterine device contraception (finding)"
* component[iud].valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
// 9. IUD Hormonal: Yes
* component[iudHormonal].code = $sct#449038007 "Uses hormone releasing intrauterine device contraception (finding)"
* component[iudHormonal].valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
// 10. Conization: Yes, indicated by presence of DateTime (year/month)
* component[conization].code = $sct#108941000119102 "History of cervical conization (situation)"
* component[conization].valueDateTime = "2022-05"
// 11. Sample Location: Endocervix
* component[sampleLocation].code = $sct#2620001000004108 "Specimen collection procedure (observable entity)"
* component[sampleLocation].valueCodeableConcept = $sct#36973007 "Endocervical structure (body structure)"
// 12. HPV Vaccination: Unknown
* component[hpvVaccination].code = $sct#99501000119107 "Human papilloma virus vaccination given (situation)"
* component[hpvVaccination].valueCodeableConcept = $sct#171278000 "Immunization status unknown (finding)"