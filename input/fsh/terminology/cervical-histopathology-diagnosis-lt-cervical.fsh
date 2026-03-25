ValueSet: CervicalHistopathologyDiagnosisVS
Id: cervical-histopathology-diagnosis
Title: "Cervical Histopathology Diagnosis"
Description: "Histopathological diagnostic conclusions for cervical tissue examination, aligned with WHO Classification of Female Genital Tumours (2020)."
* ^url = $cervical-histopathology-diagnosis-vs-url
* ^status = #active
* insert SNOMEDCopyrightForVS

// Normal / benign
* $sct#30389008 "Normal tissue (finding)"
* $sct#125513006 "Reactive cellular changes (morphologic abnormality)"
* $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"

// Non-invasive changes
* $sct#400002005 "Squamous intraepithelial neoplasia grade 1 (morphologic abnormality)"
* $sct#400049009 "Squamous intraepithelial neoplasia grade 2 (morphologic abnormality)"
* $sct#1162893000 "Squamous cell carcinoma in situ (morphologic abnormality)"
* $sct#12478003 "Squamous cell carcinoma, microinvasive (morphologic abnormality)"

// Adenocarcinoma in situ variants
* $sct#1157180003 "Human papillomavirus-associated adenocarcinoma in situ (morphologic abnormality)"
* $sct#1157186009 "Human papillomavirus-independent adenocarcinoma in situ (morphologic abnormality)"
* $sct#51642000 "Adenocarcinoma in situ (morphologic abnormality)"

// Invasive squamous cell carcinoma
* $sct#783212001 "Human papillomavirus positive squamous cell carcinoma (morphologic abnormality)"
* $sct#783213006 "Human papillomavirus negative squamous cell carcinoma (morphologic abnormality)"
* $sct#1162767002 "Squamous cell carcinoma (morphologic abnormality)"

// Invasive adenocarcinoma variants
* $sct#1157177004 "Human papillomavirus-associated adenocarcinoma (morphologic abnormality)"
* $sct#703569004 "Mucinous adenocarcinoma, endocervical, gastric type (morphologic abnormality)"
* $sct#30546008 "Clear cell adenocarcinoma (morphologic abnormality)"
* $sct#2221008 "Mesonephroma, malignant (morphologic abnormality)"
* $sct#1187332001 "Adenocarcinoma (morphologic abnormality)"

// Other malignant types
* $sct#63264007 "Carcinosarcoma (morphologic abnormality)"
* $sct#59367005 "Adenosquamous carcinoma (morphologic abnormality)"
* $sct#4079000 "Mucoepidermoid carcinoma (morphologic abnormality)"
* $sct#128637002 "Adenoid basal carcinoma (morphologic abnormality)"
* $sct#38549000 "Carcinoma, undifferentiated (morphologic abnormality)"
* $sct#1286767006 "Neuroendocrine carcinoma (morphologic abnormality)"
* $sct#14799000 "Neoplasms, metastatic (morphologic abnormality)"

// Mixed
* $sct#40293003 "Adenomyoma (morphologic abnormality)"
* $sct#31470003 "Adenosarcoma (morphologic abnormality)"
