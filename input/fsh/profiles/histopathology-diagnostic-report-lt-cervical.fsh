Profile: HistopathologyDiagnosticReportLtCervical
Parent: DiagnosticReportLt
Id: histopathology-diagnostic-report-lt-cervical
Title: "DiagnosticReport: Cervical Histopathology (LT Cervical)"
Description: "Histopathological examination report for cervical tissue obtained from biopsy or excisional procedures. Based on DiagnosticReportLt with pathology-specific constraints for cervical cancer."
* ^url = $histopathology-diagnostic-report-lt-cervical-url
* ^status = #draft

* category = $loinc#11526-1 "Pathology study"
* code 1..1 MS
* code = $sct#714797009 "Histologic test (procedure)"

* subject 1..1 MS
* subject only Reference(PatientLt)

* specimen MS
* specimen only Reference(SpecimenLtLab)

* result MS
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "$this"
* result ^slicing.rules = #open
* result contains
    histopathologyConclusion 0..* and
    tumorMeasurement 0..* and
    specimenAdequacy 0..*
* result[histopathologyConclusion] only Reference(HistopathologyConclusionLtCervical)
* result[histopathologyConclusion] ^short = "Histopathology diagnostic conclusion (diagnosis, grade, margins, pLVI)"
* result[tumorMeasurement] only Reference(TumorMeasurementLtLab)
* result[tumorMeasurement] ^short = "Tumor measurement (dimensions in mm)"
* result[specimenAdequacy] only Reference(SpecimenAdequacyLtLab)
* result[specimenAdequacy] ^short = "Specimen adequacy assessment"

* conclusion MS
* conclusionCode MS
* conclusionCode.coding ^slicing.discriminator.type = #value
* conclusionCode.coding ^slicing.discriminator.path = "system"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains
    icd10 1..1 MS and
    icdo3 0..1 MS
* conclusionCode.coding[icd10].system = $icd-10
* conclusionCode.coding[icd10] from $icd-10-vs (required)
* conclusionCode.coding[icdo3].system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* conclusionCode.coding[icdo3] from $icd-o-3-vs (required)
