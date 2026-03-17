ValueSet: CytologyConclusionLtCervicalVS
Id: cytology-conclusion-lt-cervical
Title: "Cervix - Cytology Conclusion (LT Cervical)"
Description: "Cytological diagnostic conclusions and specimen adequacy categories used in the Lithuanian cervical cancer screening and diagnostic pathway (ADP), aligned with Bethesda terminology."
* ^url = $cytology-conclusion-vs-lt-cervical-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
// --- Specimen adequacy
* $sct#125152006 "Specimen satisfactory for evaluation (finding)"
* $sct#50110003  "Cervical smear - endocervical cells absent (finding)"
* $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* $sct#123836007 "Unsatisfactory for evaluation due to obscuring blood (finding)"
* $sct#123837003 "Unsatisfactory for evaluation due to obscuring inflammation (finding)"
* $sct#125162004 "Unsatisfactory for evaluation due to air drying artifact (finding)"
* $sct#125161006 "Unsatisfactory for evaluation due to scant squamous epithelial component (finding)"
// --- Normal / NILM
* $sct#373887005 "Negative for intraepithelial lesion or malignancy (finding)"
* $sct#416032004 "Cervicovaginal cytology normal or benign (finding)"
// --- ASC-US / ASC-H
* $sct#441087007 "Atypical squamous cells of undetermined significance on cervical Papanicolaou smear (finding)"
* $sct#441088002 "Atypical squamous cells on cervical Papanicolaou smear cannot exclude high-grade squamous intraepithelial lesion (finding)"
// --- LSIL / HSIL
* $sct#62051000119105 "Low-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"
* $sct#62061000119107 "High-grade squamous intraepithelial lesion on cervical Papanicolaou smear (finding)"
// --- Glandular abnormalities
* $sct#441219009 "Atypical glandular cells on cervical Papanicolaou smear (finding)"
* $sct#373883009 "Atypical glandular cells, favor neoplastic (morphologic abnormality)"
// --- Carcinoma
* $sct#1162767002 "Squamous cell carcinoma (morphologic abnormality)"
* $sct#51642000   "Adenocarcinoma in situ (morphologic abnormality)"
* $sct#1187332001 "Adenocarcinoma (morphologic abnormality)"
// --- Special Bethesda category
* $sct#373885002 "Endometrial cells in a woman forty years of age or older, negative for squamous intraepithelial lesion (finding)"
