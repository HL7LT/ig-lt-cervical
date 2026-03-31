// ══════════════════════════════════════════════════════════════
// Narrative mapping – Questionnaire items → FHIR profiles/examples
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

Instance: questionnaire-cervical-cytology-hpv-espbi
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire: Cervical Cytology and HPV ESPBI Form"
Description: "ESPBI form for cervical cancer screening: HPV testing and cytological examination. Based on ADP Table 7.1 (cervical cancer prevention program cytology and HPV kit)."
* url = "https://hl7.lt/fhir/cervical/Questionnaire/questionnaire-cervical-cytology-hpv-espbi"
* name = "CervicalCytologyHpvESPBI"
* title = "Cervical Cytology and HPV ESPBI Form"
* status = #active

// ═══════════════════════════════════════
// Group 1: Healthcare Institution
// ═══════════════════════════════════════
* item[0].linkId = "facility"
* item[0].text = "Healthcare institution"
* item[0].type = #group

* item[0].item[0].linkId = "facility.name"
* item[0].item[0].text = "Institution name"
* item[0].item[0].type = #string

* item[0].item[1].linkId = "facility.code"
* item[0].item[1].text = "Institution code"
* item[0].item[1].type = #string

* item[0].item[2].linkId = "facility.division"
* item[0].item[2].text = "Division / department"
* item[0].item[2].type = #string

// ═══════════════════════════════════════
// Group 2: Patient Identification
// ═══════════════════════════════════════
* item[1].linkId = "patient"
* item[1].text = "Patient identification"
* item[1].type = #group

* item[1].item[0].linkId = "patient.personalCode"
* item[1].item[0].text = "Personal code"
* item[1].item[0].type = #string
* item[1].item[0].required = true

* item[1].item[1].linkId = "patient.name"
* item[1].item[1].text = "Name"
* item[1].item[1].type = #string
* item[1].item[1].required = true

* item[1].item[2].linkId = "patient.surname"
* item[1].item[2].text = "Surname"
* item[1].item[2].type = #string
* item[1].item[2].required = true

* item[1].item[3].linkId = "patient.address"
* item[1].item[3].text = "Address"
* item[1].item[3].type = #string

// ═══════════════════════════════════════
// Group 3: Referring Physician
// ═══════════════════════════════════════
* item[2].linkId = "referringDoctor"
* item[2].text = "Referring physician"
* item[2].type = #group

* item[2].item[0].linkId = "referringDoctor.name"
* item[2].item[0].text = "Doctor name"
* item[2].item[0].type = #string
* item[2].item[0].required = true

* item[2].item[1].linkId = "referringDoctor.phone"
* item[2].item[1].text = "Phone number"
* item[2].item[1].type = #string

* item[2].item[2].linkId = "referringDoctor.email"
* item[2].item[2].text = "Email"
* item[2].item[2].type = #string

// ═══════════════════════════════════════
// Group 4: Commissioned Test
// ═══════════════════════════════════════
* item[3].linkId = "orderedTest"
* item[3].text = "Commissioned test"
* item[3].type = #group

* item[3].item[0].linkId = "orderedTest.testType"
* item[3].item[0].text = "Test type"
* item[3].item[0].type = #coding
* item[3].item[0].answerOption[0].valueCoding = $sct#416107004 "Cervical cytology test (procedure)"
* item[3].item[0].answerOption[1].valueCoding = $sct#609040007 "Microscopic cytologic examination of smear of specimen from female genital tract prepared using Papanicolaou technique (procedure)"
* item[3].item[0].answerOption[2].valueCoding = $sct#35904009 "Human papillomavirus deoxyribonucleic acid detection (procedure)"
* item[3].item[0].answerOption[3].valueCoding = $sct#395126005 "Immunocytochemistry test (procedure)"

// ═══════════════════════════════════════
// Group 5: Sample Collection Details
// ═══════════════════════════════════════
* item[4].linkId = "sampleCollection"
* item[4].text = "Sample collection"
* item[4].type = #group

* item[4].item[0].linkId = "sampleCollection.collectionDate"
* item[4].item[0].text = "Collection date and time"
* item[4].item[0].type = #dateTime
* item[4].item[0].required = true

* item[4].item[1].linkId = "sampleCollection.sampleCode"
* item[4].item[1].text = "Sample code"
* item[4].item[1].type = #string

* item[4].item[2].linkId = "sampleCollection.collectorName"
* item[4].item[2].text = "Collector name"
* item[4].item[2].type = #string
* item[4].item[2].required = true

* item[4].item[3].linkId = "sampleCollection.collectorSurname"
* item[4].item[3].text = "Collector surname"
* item[4].item[3].type = #string
* item[4].item[3].required = true

* item[4].item[4].linkId = "sampleCollection.professionalQualification"
* item[4].item[4].text = "Professional qualification"
* item[4].item[4].type = #string

// ═══════════════════════════════════════
// Group 6: Clinical History
// ═══════════════════════════════════════
* item[5].linkId = "clinicalHistory"
* item[5].text = "Other clinical information"
* item[5].type = #group

* item[5].item[0].linkId = "clinicalHistory.cycleDay"
* item[5].item[0].text = "Day of menstrual cycle"
* item[5].item[0].type = #integer
* item[5].item[0].code = $sct#161713000 "Menstrual cycle day (observable entity)"

* item[5].item[1].linkId = "clinicalHistory.menopauseAge"
* item[5].item[1].text = "Age at menopause (years)"
* item[5].item[1].type = #integer
* item[5].item[1].code = $sct#276477006 "Age at menopause (observable entity)"

* item[5].item[2].linkId = "clinicalHistory.hormoneTherapy"
* item[5].item[2].text = "Hormone therapy"
* item[5].item[2].type = #coding
* item[5].item[2].code = $sct#1346510001 "Hormone therapy (procedure)"
* item[5].item[2].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[5].item[2].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[3].linkId = "clinicalHistory.pregnancy"
* item[5].item[3].text = "Pregnancy"
* item[5].item[3].type = #coding
* item[5].item[3].code = $sct#77386006 "Pregnant (finding)"
* item[5].item[3].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[5].item[3].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[4].linkId = "clinicalHistory.lactation"
* item[5].item[4].text = "Lactation"
* item[5].item[4].type = #coding
* item[5].item[4].code = $sct#225604004 "Lactation established (finding)"
* item[5].item[4].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[5].item[4].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[5].linkId = "clinicalHistory.radiotherapy"
* item[5].item[5].text = "Radiotherapy"
* item[5].item[5].type = #group
* item[5].item[5].code = $sct#429479009 "History of radiation therapy (situation)"

* item[5].item[5].item[0].linkId = "clinicalHistory.radiotherapy.status"
* item[5].item[5].item[0].text = "Radiotherapy received"
* item[5].item[5].item[0].type = #coding
* item[5].item[5].item[0].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[5].item[5].item[0].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[5].item[1].linkId = "clinicalHistory.radiotherapy.yearsAgo"
* item[5].item[5].item[1].text = "Years ago"
* item[5].item[5].item[1].type = #integer

* item[5].item[6].linkId = "clinicalHistory.chemotherapy"
* item[5].item[6].text = "Chemotherapy"
* item[5].item[6].type = #group
* item[5].item[6].code = $sct#161653008 "History of chemotherapy (situation)"

* item[5].item[6].item[0].linkId = "clinicalHistory.chemotherapy.status"
* item[5].item[6].item[0].text = "Chemotherapy received"
* item[5].item[6].item[0].type = #coding
* item[5].item[6].item[0].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[5].item[6].item[0].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[6].item[1].linkId = "clinicalHistory.chemotherapy.yearsAgo"
* item[5].item[6].item[1].text = "Years ago"
* item[5].item[6].item[1].type = #integer

* item[5].item[7].linkId = "clinicalHistory.iud"
* item[5].item[7].text = "Intrauterine device (IUD)"
* item[5].item[7].type = #coding
* item[5].item[7].code = $sct#312081001 "Uses intrauterine device contraception (finding)"
* item[5].item[7].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[5].item[7].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"

* item[5].item[8].linkId = "clinicalHistory.conization"
* item[5].item[8].text = "Conization"
* item[5].item[8].type = #group
* item[5].item[8].code = $sct#1089410001 "History of cervical conization (situation)"

* item[5].item[8].item[0].linkId = "clinicalHistory.conization.status"
* item[5].item[8].item[0].text = "Conization performed"
* item[5].item[8].item[0].type = #coding
* item[5].item[8].item[0].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[5].item[8].item[0].answerOption[1].valueCoding = $sct#373067005 "No (qualifier value)"
* item[5].item[8].item[0].answerOption[2].valueCoding = $sct#261665006 "Unknown (qualifier value)"

* item[5].item[8].item[1].linkId = "clinicalHistory.conization.date"
* item[5].item[8].item[1].text = "Date of conization"
* item[5].item[8].item[1].type = #date

// ═══════════════════════════════════════
// Group 7: Sample Collection Site
// ═══════════════════════════════════════
* item[6].linkId = "sampleSite"
* item[6].text = "Sample collection site"
* item[6].type = #group

* item[6].item[0].linkId = "sampleSite.site"
* item[6].item[0].text = "Anatomical site"
* item[6].item[0].type = #coding
* item[6].item[0].repeats = true
* item[6].item[0].answerOption[0].valueCoding = $sct#36973007 "Endocervical structure (body structure)"
* item[6].item[0].answerOption[1].valueCoding = $sct#28349006 "Exocervical structure (body structure)"
* item[6].item[0].answerOption[2].valueCoding = $sct#76784001 "Vaginal structure (body structure)"
* item[6].item[0].answerOption[3].valueCoding = $sct#45292006 "Vulval structure (body structure)"

// ═══════════════════════════════════════
// Group 8: HPV Vaccination Status
// ═══════════════════════════════════════
* item[7].linkId = "hpvVaccination"
* item[7].text = "HPV vaccination status"
* item[7].type = #group

* item[7].item[0].linkId = "hpvVaccination.status"
* item[7].item[0].text = "Vaccination status"
* item[7].item[0].type = #coding
* item[7].item[0].answerOption[0].valueCoding = $sct#171258008 "Up-to-date with immunizations (finding)"
* item[7].item[0].answerOption[1].valueCoding = $sct#171259000 "Not up to date with immunizations (finding)"
* item[7].item[0].answerOption[2].valueCoding = $sct#171278000 "Immunization status unknown (finding)"

// ═══════════════════════════════════════
// Group 9: HPV Test Results
// ═══════════════════════════════════════
* item[8].linkId = "hpvResults"
* item[8].text = "HPV test results"
* item[8].type = #group

* item[8].item[0].linkId = "hpvResults.overallResult"
* item[8].item[0].text = "Overall HPV result"
* item[8].item[0].type = #coding
* item[8].item[0].answerOption[0].valueCoding = $sct#77851000146104 "High risk human papillomavirus deoxyribonucleic acid not detected (finding)"
* item[8].item[0].answerOption[1].valueCoding = $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* item[8].item[0].answerOption[2].valueCoding = $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"

// --- HPV Genotype sub-group ---
* item[8].item[1].linkId = "hpvResults.genotype"
* item[8].item[1].text = "Detected HPV genotypes"
* item[8].item[1].type = #group

* item[8].item[1].item[0].linkId = "hpvResults.genotype.hpv16"
* item[8].item[1].item[0].text = "HPV 16"
* item[8].item[1].item[0].type = #boolean
* item[8].item[1].item[0].code = $sct#115326008 "Human papillomavirus, type 16 (organism)"

* item[8].item[1].item[1].linkId = "hpvResults.genotype.hpv18"
* item[8].item[1].item[1].text = "HPV 18"
* item[8].item[1].item[1].type = #boolean
* item[8].item[1].item[1].code = $sct#115327004 "Human papillomavirus, type 18 (organism)"

* item[8].item[1].item[2].linkId = "hpvResults.genotype.hpv31"
* item[8].item[1].item[2].text = "HPV 31"
* item[8].item[1].item[2].type = #boolean
* item[8].item[1].item[2].code = $sct#1269503003 "Human papillomavirus type 31 (organism)"

* item[8].item[1].item[3].linkId = "hpvResults.genotype.hpv33"
* item[8].item[1].item[3].text = "HPV 33"
* item[8].item[1].item[3].type = #boolean
* item[8].item[1].item[3].code = $sct#1269504009 "Human papillomavirus type 33 (organism)"

* item[8].item[1].item[4].linkId = "hpvResults.genotype.hpv35"
* item[8].item[1].item[4].text = "HPV 35"
* item[8].item[1].item[4].type = #boolean
* item[8].item[1].item[4].code = $sct#1269505005 "Human papillomavirus type 35 (organism)"

* item[8].item[1].item[5].linkId = "hpvResults.genotype.hpv39"
* item[8].item[1].item[5].text = "HPV 39"
* item[8].item[1].item[5].type = #boolean
* item[8].item[1].item[5].code = $sct#1269506006 "Human papillomavirus type 39 (organism)"

* item[8].item[1].item[6].linkId = "hpvResults.genotype.hpv45"
* item[8].item[1].item[6].text = "HPV 45"
* item[8].item[1].item[6].type = #boolean
* item[8].item[1].item[6].code = $sct#1269507002 "Human papillomavirus type 45 (organism)"

* item[8].item[1].item[7].linkId = "hpvResults.genotype.hpv51"
* item[8].item[1].item[7].text = "HPV 51"
* item[8].item[1].item[7].type = #boolean
* item[8].item[1].item[7].code = $sct#1269508007 "Human papillomavirus type 51 (organism)"

* item[8].item[1].item[8].linkId = "hpvResults.genotype.hpv52"
* item[8].item[1].item[8].text = "HPV 52"
* item[8].item[1].item[8].type = #boolean
* item[8].item[1].item[8].code = $sct#1269509004 "Human papillomavirus type 52 (organism)"

* item[8].item[1].item[9].linkId = "hpvResults.genotype.hpv56"
* item[8].item[1].item[9].text = "HPV 56"
* item[8].item[1].item[9].type = #boolean
* item[8].item[1].item[9].code = $sct#1269510009 "Human papillomavirus type 56 (organism)"

* item[8].item[1].item[10].linkId = "hpvResults.genotype.hpv58"
* item[8].item[1].item[10].text = "HPV 58"
* item[8].item[1].item[10].type = #boolean
* item[8].item[1].item[10].code = $sct#1269511008 "Human papillomavirus type 58 (organism)"

* item[8].item[1].item[11].linkId = "hpvResults.genotype.hpv59"
* item[8].item[1].item[11].text = "HPV 59"
* item[8].item[1].item[11].type = #boolean
* item[8].item[1].item[11].code = $sct#1269512001 "Human papillomavirus type 59 (organism)"

* item[8].item[1].item[12].linkId = "hpvResults.genotype.hpv66"
* item[8].item[1].item[12].text = "HPV 66"
* item[8].item[1].item[12].type = #boolean
* item[8].item[1].item[12].code = $sct#1269513006 "Human papillomavirus type 66 (organism)"

* item[8].item[1].item[13].linkId = "hpvResults.genotype.hpv68"
* item[8].item[1].item[13].text = "HPV 68"
* item[8].item[1].item[13].type = #boolean
* item[8].item[1].item[13].code = $sct#1269514000 "Human papillomavirus type 68 (organism)"

// --- HPV Risk Group ---
* item[8].item[2].linkId = "hpvResults.riskGroup"
* item[8].item[2].text = "HPV risk group"
* item[8].item[2].type = #coding
* item[8].item[2].answerOption[0].valueCoding = $hpv-risk-group-lt-cervical-url#highest "Highest risk genotype group (16, 18)"
* item[8].item[2].answerOption[1].valueCoding = $hpv-risk-group-lt-cervical-url#medium "Medium-risk genotype group (31, 33, 35, 45, 52, 58)"
* item[8].item[2].answerOption[2].valueCoding = $hpv-risk-group-lt-cervical-url#lower "Lower risk genotype group (39, 51, 56, 59, 68)"
* item[8].item[2].answerOption[3].valueCoding = $hpv-risk-group-lt-cervical-url#low "Low-risk HPV genotype group (53, 66, others)"

// ═══════════════════════════════════════
// Group 10: Cytology Examination Results
// ═══════════════════════════════════════
* item[9].linkId = "cytologyResults"
* item[9].text = "Cytology examination results"
* item[9].type = #group

* item[9].item[0].linkId = "cytologyResults.institution"
* item[9].item[0].text = "Examining institution"
* item[9].item[0].type = #string
* item[9].item[0].required = true

* item[9].item[1].linkId = "cytologyResults.specimenType"
* item[9].item[1].text = "Specimen type"
* item[9].item[1].type = #coding
* item[9].item[1].answerOption[0].valueCoding = $sct#1179252003 "Slide submitted as specimen (specimen)"
* item[9].item[1].answerOption[1].valueCoding = $sct#430346005 "Liquid based cytologic material (specimen)"

* item[9].item[2].linkId = "cytologyResults.suitability"
* item[9].item[2].text = "Specimen suitability"
* item[9].item[2].type = #coding
* item[9].item[2].answerOption[0].valueCoding = $sct#125152006 "Specimen satisfactory for evaluation (finding)"
* item[9].item[2].answerOption[1].valueCoding = $sct#373880007 "Specimen rejected / not processed (finding)"
* item[9].item[2].answerOption[2].valueCoding = $sct#125160007 "Unsatisfactory for evaluation due to broken slide (finding)"
* item[9].item[2].answerOption[3].valueCoding = $sct#125159002 "Sample unlabeled (finding)"
* item[9].item[2].answerOption[4].valueCoding = $sct#281268007 "Insufficient sample (finding)"

// --- Pathogen findings sub-group ---
* item[9].item[3].linkId = "cytologyResults.pathogens"
* item[9].item[3].text = "Pathogen findings"
* item[9].item[3].type = #group

* item[9].item[3].item[0].linkId = "cytologyResults.pathogens.candida"
* item[9].item[3].item[0].text = "Candida"
* item[9].item[3].item[0].type = #boolean
* item[9].item[3].item[0].code = $sct#168418000 "Cervical smear - candida (finding)"

* item[9].item[3].item[1].linkId = "cytologyResults.pathogens.trichomonas"
* item[9].item[3].item[1].text = "Trichomonas"
* item[9].item[3].item[1].type = #boolean
* item[9].item[3].item[1].code = $sct#168417005 "Cervical smear - trichomonas (finding)"

* item[9].item[3].item[2].linkId = "cytologyResults.pathogens.actinomyces"
* item[9].item[3].item[2].text = "Actinomyces"
* item[9].item[3].item[2].type = #boolean
* item[9].item[3].item[2].code = $sct#168422005 "Cervical smear - actinomyces (finding)"

* item[9].item[3].item[3].linkId = "cytologyResults.pathogens.herpes"
* item[9].item[3].item[3].text = "Herpes simplex"
* item[9].item[3].item[3].type = #boolean
* item[9].item[3].item[3].code = $sct#373875003 "Cellular changes consistent with Herpes simplex (finding)"

// --- Bethesda diagnosis ---
* item[9].item[4].linkId = "cytologyResults.bethesdaDiagnosis"
* item[9].item[4].text = "Bethesda diagnosis"
* item[9].item[4].type = #coding
* item[9].item[4].answerOption[0].valueCoding = $sct#373887005 "Negative for intraepithelial lesion or malignancy (finding)"
* item[9].item[4].answerOption[1].valueCoding = $sct#441087007 "Atypical squamous cells of undetermined significance on cervical Papanicolaou smear (finding)"
* item[9].item[4].answerOption[2].valueCoding = $sct#62051000119105 "Low-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"
* item[9].item[4].answerOption[3].valueCoding = $sct#441088002 "Atypical squamous cells on cervical Papanicolaou smear cannot exclude high-grade squamous intraepithelial lesion (finding)"
* item[9].item[4].answerOption[4].valueCoding = $sct#62061000119107 "High-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"
* item[9].item[4].answerOption[5].valueCoding = $sct#1162767002 "Squamous cell carcinoma (morphologic abnormality)"
* item[9].item[4].answerOption[6].valueCoding = $sct#373883009 "Atypical glandular cells, favor neoplastic (morphologic abnormality)"
* item[9].item[4].answerOption[7].valueCoding = $sct#51642000 "Adenocarcinoma in situ (morphologic abnormality)"
* item[9].item[4].answerOption[8].valueCoding = $sct#373885002 "Endometrial cells in a woman forty years of age or older, negative for squamous intraepithelial lesion (finding)"

// ═══════════════════════════════════════
// Group 11: Immunocytochemistry (p16/Ki-67)
// ═══════════════════════════════════════
* item[10].linkId = "immunocytochemistry"
* item[10].text = "Immunocytochemistry (p16/Ki-67)"
* item[10].type = #group

* item[10].item[0].linkId = "immunocytochemistry.p16Ki67Result"
* item[10].item[0].text = "p16/Ki-67 dual staining result"
* item[10].item[0].type = #coding
* item[10].item[0].answerOption[0].valueCoding = $sct#10828004 "Positive (qualifier value)"
* item[10].item[0].answerOption[1].valueCoding = $sct#260385009 "Negative (qualifier value)"

// ═══════════════════════════════════════
// Group 12: Conducted By
// ═══════════════════════════════════════
* item[11].linkId = "conductedBy"
* item[11].text = "Test conducted by"
* item[11].type = #group

* item[11].item[0].linkId = "conductedBy.name"
* item[11].item[0].text = "Name"
* item[11].item[0].type = #string
* item[11].item[0].required = true

* item[11].item[1].linkId = "conductedBy.surname"
* item[11].item[1].text = "Surname"
* item[11].item[1].type = #string
* item[11].item[1].required = true

* item[11].item[2].linkId = "conductedBy.pressNumber"
* item[11].item[2].text = "Press number (stamp)"
* item[11].item[2].type = #string
* item[11].item[2].required = true

* item[11].item[3].linkId = "conductedBy.responseDate"
* item[11].item[3].text = "Response date"
* item[11].item[3].type = #dateTime
* item[11].item[3].required = true

// ═══════════════════════════════════════
// Group 13: Confirmed By
// ═══════════════════════════════════════
* item[12].linkId = "confirmedBy"
* item[12].text = "Test confirmed by"
* item[12].type = #group

* item[12].item[0].linkId = "confirmedBy.name"
* item[12].item[0].text = "Name"
* item[12].item[0].type = #string
* item[12].item[0].required = true

* item[12].item[1].linkId = "confirmedBy.surname"
* item[12].item[1].text = "Surname"
* item[12].item[1].type = #string
* item[12].item[1].required = true

* item[12].item[2].linkId = "confirmedBy.pressNumber"
* item[12].item[2].text = "Press number (stamp)"
* item[12].item[2].type = #string
* item[12].item[2].required = true

* item[12].item[3].linkId = "confirmedBy.confirmationDate"
* item[12].item[3].text = "Confirmation date"
* item[12].item[3].type = #dateTime
* item[12].item[3].required = true
