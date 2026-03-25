// ══════════════════════════════════════════════════════════════
// Narrative mapping – QuestionnaireResponse items → FHIR profiles/examples
// ══════════════════════════════════════════════════════════════
// Group 1 (facility)     → Organization (OrganizationLt)
// Group 2 (patient)      → Patient (PatientLt)
// Group 3 (referringDoc) → Practitioner (PractitionerLt)
// Group 4 (orderedTest)  → ServiceRequest code
// Group 5 (sampleCollection) → Specimen (SpecimenLtLab)
// Group 6 (clinicalHistory)  → CervicalScreeningClinicalHistoryLtCervical
//   See also: https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/ (tobacco, nutrition)
//   See also: https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/ (BMI, blood pressure)
// Group 7 (sampleSite)   → CervicalSampleCollectionSiteLtCervicalVS
// Group 8 (hpvVaccination) → HpvVaccinationStatusLtCervicalVS
// Group 9 (hpvResults)   → HpvTestResultLtCervical, HpvDiagnosticReportLtCervical
// Group 10 (cytologyResults) → CytologyConclusionLtCervical, CytologyDiagnosticReportLtCervical
// Group 11 (immunocytochemistry) → CytologyConclusionLtCervical.component[immunocytochemistry]
// ══════════════════════════════════════════════════════════════

Instance: questionnaireresponse-cervical-cytology-hpv-espbi-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Cervical Cytology and HPV ESPBI Form (example)"
Description: "Completed ESPBI form for routine cervical screening: HPV 16 detected (highest risk), LSIL on cytology, p16/Ki-67 positive."
* questionnaire = "https://hl7.lt/fhir/cervical/Questionnaire/cervical-cytology-hpv-espbi"
* status = #completed
* subject = Reference(patient-female-example)
* authored = "2025-03-10T10:30:00+02:00"

// ═══════════════════════════════════════
// Group 1: Healthcare Institution
// ═══════════════════════════════════════
* item[0].linkId = "facility"
* item[0].text = "Healthcare institution"

* item[0].item[0].linkId = "facility.name"
* item[0].item[0].text = "Institution name"
* item[0].item[0].answer.valueString = "Vilniaus miesto poliklinika"

* item[0].item[1].linkId = "facility.code"
* item[0].item[1].text = "Institution code"
* item[0].item[1].answer.valueString = "123456789"

* item[0].item[2].linkId = "facility.division"
* item[0].item[2].text = "Division / department"
* item[0].item[2].answer.valueString = "Ginekologijos skyrius"

// ═══════════════════════════════════════
// Group 2: Patient Identification
// ═══════════════════════════════════════
* item[1].linkId = "patient"
* item[1].text = "Patient identification"

* item[1].item[0].linkId = "patient.personalCode"
* item[1].item[0].text = "Personal code"
* item[1].item[0].answer.valueString = "48501019999"

* item[1].item[1].linkId = "patient.name"
* item[1].item[1].text = "Name"
* item[1].item[1].answer.valueString = "Janette"

* item[1].item[2].linkId = "patient.surname"
* item[1].item[2].text = "Surname"
* item[1].item[2].answer.valueString = "Petrauskaite"

* item[1].item[3].linkId = "patient.address"
* item[1].item[3].text = "Address"
* item[1].item[3].answer.valueString = "Gedimino pr. 10, Vilnius"

// ═══════════════════════════════════════
// Group 3: Referring Physician
// ═══════════════════════════════════════
* item[2].linkId = "referringDoctor"
* item[2].text = "Referring physician"

* item[2].item[0].linkId = "referringDoctor.name"
* item[2].item[0].text = "Doctor name"
* item[2].item[0].answer.valueString = "Dr. Petras Kazlauskas"

* item[2].item[1].linkId = "referringDoctor.phone"
* item[2].item[1].text = "Phone number"
* item[2].item[1].answer.valueString = "+370 5 123 4567"

* item[2].item[2].linkId = "referringDoctor.email"
* item[2].item[2].text = "Email"
* item[2].item[2].answer.valueString = "p.kazlauskas@clinic.lt"

// ═══════════════════════════════════════
// Group 4: Commissioned Test
// ═══════════════════════════════════════
* item[3].linkId = "orderedTest"
* item[3].text = "Commissioned test"

* item[3].item[0].linkId = "orderedTest.testType"
* item[3].item[0].text = "Test type"
* item[3].item[0].answer.valueCoding = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"

// ═══════════════════════════════════════
// Group 5: Sample Collection Details
// ═══════════════════════════════════════
* item[4].linkId = "sampleCollection"
* item[4].text = "Sample collection"

* item[4].item[0].linkId = "sampleCollection.collectionDate"
* item[4].item[0].text = "Collection date and time"
* item[4].item[0].answer.valueDateTime = "2025-03-07T09:15:00+02:00"

* item[4].item[1].linkId = "sampleCollection.sampleCode"
* item[4].item[1].text = "Sample code"
* item[4].item[1].answer.valueString = "CYT-2025-00412"

* item[4].item[2].linkId = "sampleCollection.collectorName"
* item[4].item[2].text = "Collector name"
* item[4].item[2].answer.valueString = "Petras"

* item[4].item[3].linkId = "sampleCollection.collectorSurname"
* item[4].item[3].text = "Collector surname"
* item[4].item[3].answer.valueString = "Kazlauskas"

* item[4].item[4].linkId = "sampleCollection.professionalQualification"
* item[4].item[4].text = "Professional qualification"
* item[4].item[4].answer.valueString = "Ginekologas"

// ═══════════════════════════════════════
// Group 6: Clinical History
// ═══════════════════════════════════════
* item[5].linkId = "clinicalHistory"
* item[5].text = "Other clinical information"

* item[5].item[0].linkId = "clinicalHistory.cycleDay"
* item[5].item[0].text = "Day of menstrual cycle"
* item[5].item[0].answer.valueInteger = 14

* item[5].item[1].linkId = "clinicalHistory.hormoneTherapy"
* item[5].item[1].text = "Hormone therapy"
* item[5].item[1].answer.valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[2].linkId = "clinicalHistory.pregnancy"
* item[5].item[2].text = "Pregnancy"
* item[5].item[2].answer.valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[3].linkId = "clinicalHistory.lactation"
* item[5].item[3].text = "Lactation"
* item[5].item[3].answer.valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[4].linkId = "clinicalHistory.radiotherapy"
* item[5].item[4].text = "Radiotherapy"

* item[5].item[4].item[0].linkId = "clinicalHistory.radiotherapy.status"
* item[5].item[4].item[0].text = "Radiotherapy received"
* item[5].item[4].item[0].answer.valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[5].linkId = "clinicalHistory.chemotherapy"
* item[5].item[5].text = "Chemotherapy"

* item[5].item[5].item[0].linkId = "clinicalHistory.chemotherapy.status"
* item[5].item[5].item[0].text = "Chemotherapy received"
* item[5].item[5].item[0].answer.valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[6].linkId = "clinicalHistory.iud"
* item[5].item[6].text = "Intrauterine device (IUD)"
* item[5].item[6].answer.valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[7].linkId = "clinicalHistory.conization"
* item[5].item[7].text = "Conization"

* item[5].item[7].item[0].linkId = "clinicalHistory.conization.status"
* item[5].item[7].item[0].text = "Conization performed"
* item[5].item[7].item[0].answer.valueCoding = $sct#373067005 "No (qualifier value)"

// ═══════════════════════════════════════
// Group 7: Sample Collection Site
// ═══════════════════════════════════════
* item[6].linkId = "sampleSite"
* item[6].text = "Sample collection site"

* item[6].item[0].linkId = "sampleSite.site"
* item[6].item[0].text = "Anatomical site"
* item[6].item[0].answer.valueCoding = $sct#28349006 "Exocervical structure (body structure)"

// ═══════════════════════════════════════
// Group 8: HPV Vaccination Status
// ═══════════════════════════════════════
* item[7].linkId = "hpvVaccination"
* item[7].text = "HPV vaccination status"

* item[7].item[0].linkId = "hpvVaccination.status"
* item[7].item[0].text = "Vaccination status"
* item[7].item[0].answer.valueCoding = $sct#171259000 "Not up to date with immunizations (finding)"

// ═══════════════════════════════════════
// Group 9: HPV Test Results
// ═══════════════════════════════════════
* item[8].linkId = "hpvResults"
* item[8].text = "HPV test results"

* item[8].item[0].linkId = "hpvResults.overallResult"
* item[8].item[0].text = "Overall HPV result"
* item[8].item[0].answer.valueCoding = $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"

// --- Genotype results ---
* item[8].item[1].linkId = "hpvResults.genotype"
* item[8].item[1].text = "Detected HPV genotypes"

* item[8].item[1].item[0].linkId = "hpvResults.genotype.hpv16"
* item[8].item[1].item[0].text = "HPV 16"
* item[8].item[1].item[0].answer.valueBoolean = true

* item[8].item[1].item[1].linkId = "hpvResults.genotype.hpv18"
* item[8].item[1].item[1].text = "HPV 18"
* item[8].item[1].item[1].answer.valueBoolean = false

* item[8].item[1].item[2].linkId = "hpvResults.genotype.hpv31"
* item[8].item[1].item[2].text = "HPV 31"
* item[8].item[1].item[2].answer.valueBoolean = false

* item[8].item[1].item[3].linkId = "hpvResults.genotype.hpv33"
* item[8].item[1].item[3].text = "HPV 33"
* item[8].item[1].item[3].answer.valueBoolean = false

* item[8].item[1].item[4].linkId = "hpvResults.genotype.hpv35"
* item[8].item[1].item[4].text = "HPV 35"
* item[8].item[1].item[4].answer.valueBoolean = false

* item[8].item[1].item[5].linkId = "hpvResults.genotype.hpv39"
* item[8].item[1].item[5].text = "HPV 39"
* item[8].item[1].item[5].answer.valueBoolean = false

* item[8].item[1].item[6].linkId = "hpvResults.genotype.hpv45"
* item[8].item[1].item[6].text = "HPV 45"
* item[8].item[1].item[6].answer.valueBoolean = false

* item[8].item[1].item[7].linkId = "hpvResults.genotype.hpv51"
* item[8].item[1].item[7].text = "HPV 51"
* item[8].item[1].item[7].answer.valueBoolean = false

* item[8].item[1].item[8].linkId = "hpvResults.genotype.hpv52"
* item[8].item[1].item[8].text = "HPV 52"
* item[8].item[1].item[8].answer.valueBoolean = false

* item[8].item[1].item[9].linkId = "hpvResults.genotype.hpv56"
* item[8].item[1].item[9].text = "HPV 56"
* item[8].item[1].item[9].answer.valueBoolean = false

* item[8].item[1].item[10].linkId = "hpvResults.genotype.hpv58"
* item[8].item[1].item[10].text = "HPV 58"
* item[8].item[1].item[10].answer.valueBoolean = false

* item[8].item[1].item[11].linkId = "hpvResults.genotype.hpv59"
* item[8].item[1].item[11].text = "HPV 59"
* item[8].item[1].item[11].answer.valueBoolean = false

* item[8].item[1].item[12].linkId = "hpvResults.genotype.hpv66"
* item[8].item[1].item[12].text = "HPV 66"
* item[8].item[1].item[12].answer.valueBoolean = false

* item[8].item[1].item[13].linkId = "hpvResults.genotype.hpv68"
* item[8].item[1].item[13].text = "HPV 68"
* item[8].item[1].item[13].answer.valueBoolean = false

// --- Risk group ---
* item[8].item[2].linkId = "hpvResults.riskGroup"
* item[8].item[2].text = "HPV risk group"
* item[8].item[2].answer.valueCoding = $hpv-risk-group-lt-cervical-url#highest "Highest risk genotype group (16, 18)"

// ═══════════════════════════════════════
// Group 10: Cytology Examination Results
// ═══════════════════════════════════════
* item[9].linkId = "cytologyResults"
* item[9].text = "Cytology examination results"

* item[9].item[0].linkId = "cytologyResults.institution"
* item[9].item[0].text = "Examining institution"
* item[9].item[0].answer.valueString = "Nacionalinis patologijos centras"

* item[9].item[1].linkId = "cytologyResults.specimenType"
* item[9].item[1].text = "Specimen type"
* item[9].item[1].answer.valueCoding = $sct#430346005 "Liquid based cytologic material (specimen)"

* item[9].item[2].linkId = "cytologyResults.suitability"
* item[9].item[2].text = "Specimen suitability"
* item[9].item[2].answer.valueCoding = $sct#125152006 "Specimen satisfactory for evaluation (finding)"

// --- Pathogen findings (all negative) ---
* item[9].item[3].linkId = "cytologyResults.pathogens"
* item[9].item[3].text = "Pathogen findings"

* item[9].item[3].item[0].linkId = "cytologyResults.pathogens.candida"
* item[9].item[3].item[0].text = "Candida"
* item[9].item[3].item[0].answer.valueBoolean = false

* item[9].item[3].item[1].linkId = "cytologyResults.pathogens.trichomonas"
* item[9].item[3].item[1].text = "Trichomonas"
* item[9].item[3].item[1].answer.valueBoolean = false

* item[9].item[3].item[2].linkId = "cytologyResults.pathogens.actinomyces"
* item[9].item[3].item[2].text = "Actinomyces"
* item[9].item[3].item[2].answer.valueBoolean = false

* item[9].item[3].item[3].linkId = "cytologyResults.pathogens.herpes"
* item[9].item[3].item[3].text = "Herpes simplex"
* item[9].item[3].item[3].answer.valueBoolean = false

// --- Bethesda diagnosis: LSIL ---
* item[9].item[4].linkId = "cytologyResults.bethesdaDiagnosis"
* item[9].item[4].text = "Bethesda diagnosis"
* item[9].item[4].answer.valueCoding = $sct#62051000119105 "Low-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"

// ═══════════════════════════════════════
// Group 11: Immunocytochemistry (p16/Ki-67)
// ═══════════════════════════════════════
* item[10].linkId = "immunocytochemistry"
* item[10].text = "Immunocytochemistry (p16/Ki-67)"

* item[10].item[0].linkId = "immunocytochemistry.p16Ki67Result"
* item[10].item[0].text = "p16/Ki-67 dual staining result"
* item[10].item[0].answer.valueCoding = $sct#10828004 "Positive (qualifier value)"

// ═══════════════════════════════════════
// Group 12: Conducted By
// ═══════════════════════════════════════
* item[11].linkId = "conductedBy"
* item[11].text = "Test conducted by"

* item[11].item[0].linkId = "conductedBy.name"
* item[11].item[0].text = "Name"
* item[11].item[0].answer.valueString = "Rasa"

* item[11].item[1].linkId = "conductedBy.surname"
* item[11].item[1].text = "Surname"
* item[11].item[1].answer.valueString = "Jonaite"

* item[11].item[2].linkId = "conductedBy.pressNumber"
* item[11].item[2].text = "Press number (stamp)"
* item[11].item[2].answer.valueString = "CYT-0042"

* item[11].item[3].linkId = "conductedBy.responseDate"
* item[11].item[3].text = "Response date"
* item[11].item[3].answer.valueDateTime = "2025-03-10T09:00:00+02:00"

// ═══════════════════════════════════════
// Group 13: Confirmed By
// ═══════════════════════════════════════
* item[12].linkId = "confirmedBy"
* item[12].text = "Test confirmed by"

* item[12].item[0].linkId = "confirmedBy.name"
* item[12].item[0].text = "Name"
* item[12].item[0].answer.valueString = "Vytautas"

* item[12].item[1].linkId = "confirmedBy.surname"
* item[12].item[1].text = "Surname"
* item[12].item[1].answer.valueString = "Stankevicius"

* item[12].item[2].linkId = "confirmedBy.pressNumber"
* item[12].item[2].text = "Press number (stamp)"
* item[12].item[2].answer.valueString = "PAT-0105"

* item[12].item[3].linkId = "confirmedBy.confirmationDate"
* item[12].item[3].text = "Confirmation date"
* item[12].item[3].answer.valueDateTime = "2025-03-10T10:30:00+02:00"
