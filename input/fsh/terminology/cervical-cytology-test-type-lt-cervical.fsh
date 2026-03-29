ValueSet: CervicalCytologyTestTypeVS
Id: cervical-cytology-test-type
Title: "Cervical Cytology Test Types"
Description: "Types of cytological examinations ordered in the cervical cancer prevention program. Used in ServiceRequest.code and DiagnosticReport.code to classify the specific test type."
* ^url = $cervical-cytology-test-type-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* insert SNOMEDCopyrightForVS
// Routine cytological Papanicolaou (PAP) test
* $sct#440623000 "Microscopic examination of cervical Papanicolaou smear (procedure)"
// Cervical cytology test (general)
* $sct#416107004 "Cervical cytology test (procedure)"
// Liquid-based cervical cytology screening
* $sct#417036008 "Liquid-based cervical cytology screening (procedure)"
// Diagnostic cytological examination (after colposcopy and/or treatment)
* $sct#609040007 "Microscopic cytologic examination of smear of specimen from female genital tract prepared using Papanicolaou technique (procedure)"
// Immunocytochemistry test (p16/Ki-67)
* $sct#395126005 "Immunocytochemistry test (procedure)"
