Profile: ColposcopyBiopsyProcedureLtCervical
Parent: ProcedureLt
Id: colposcopy-biopsy-procedure-lt-cervical
Title: "Procedure: Cervical Biopsy during Colposcopy"
Description: "Biopsy or excisional procedures performed during colposcopy as part of the Lithuanian cervical cancer screening pathway."
* ^url = $colposcopy-biopsy-procedure-lt-cervical-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* code 1..1
* code from ColposcopyProcedureTypeLtCervicalVS (required)
* subject 1..1
* occurrence[x] 1..1
// Anatomical site
* bodySite 1..*
* bodySite from CervicalBiopsySiteLtCervicalVS (required)
// Link back to colposcopy
* partOf 0..*
