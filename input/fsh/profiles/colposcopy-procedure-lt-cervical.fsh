Profile: ColposcopyProcedureLtCervical
Parent: Procedure
Id: colposcopy-procedure-lt-cervical
Title: "Procedure: Colposcopy"
Description: "Colposcopy procedure performed as part of the Lithuanian cervical cancer screening and diagnostic pathway (ADP)."
* ^url = $colposcopy-procedure-lt-cervical-url
* ^publisher = "HL7 Lithuania"
// Core
* status 1..1
* code 1..1
* code = $sct#392003006 "Colposcopy (procedure)"
* subject 1..1
* subject only Reference(PatientLt)
// Timing
* occurrence[x] 1..1
// Performer
* performer 1..*
// Reason (HPV+, abnormal cytology, etc.)
* reason 0..*
// Notes
* note 0..*
