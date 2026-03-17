ValueSet: HpvTestResultLtCervicalVS
Id: hpv-test-result-lt-cervical
Title: "Cervix - HPV Test Result (LT Cervical)"
Description: "Overall result codes for HPV DNA testing."
* ^url = $hpv-test-result-vs-lt-cervical-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
// --- Negative
* $sct#77851000146104 "High risk human papillomavirus deoxyribonucleic acid not detected (finding)"
// --- Positive
* $sct#720005005 "Human papillomavirus deoxyribonucleic acid detected, high risk on cervical specimen (finding)"
// --- Unsatisfactory / Rejected
* $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* $sct#373880007 "Specimen rejected / not processed (finding)"
