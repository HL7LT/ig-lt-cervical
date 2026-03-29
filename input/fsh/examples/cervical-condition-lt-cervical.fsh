Instance: condition-cervical-cancer-stage-example
InstanceOf: CervicalConditionLtCervical
Usage: #example
Title: "Condition: Cervical Cancer pT1a1 Stage (example)"
Description: "Example of a cervical cancer condition with pathological TNM staging and ICD-O morphology."
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $icd-10#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* subject = Reference(patient-female-example)
* recordedDate = "2025-04-15"

* stage[tumourStageT].type = $sct#78873005 "T category (observable entity)"
* stage[tumourStageT].summary = $sct#1228960004 "American Joint Committee on Cancer pT1a1 (qualifier value)"

* stage[tumourStageR].type = $sct#396631001 "Surgical margin observable (observable entity)"
* stage[tumourStageR].summary = $sct#1222638005 "American Joint Committee on Cancer R0 (qualifier value)"
