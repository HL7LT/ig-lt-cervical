Profile: CervicalConditionLtCervical
Parent: ConditionLt
Id: cervical-condition-lt-cervical
Title: "Condition: Cervical Cancer (LT Cervical)"
Description: "Cervical cancer condition with pathological TNM staging (pT, pN, pR) and morphology classification. Follows the pattern established by ProstateConditionLtLab."
* ^url = $cervical-condition-lt-cervical-url
* ^status = #draft

* code from $icd-10-vs (required)
* code ^short = "ICD-10 diagnosis code for cervical cancer"

* stage MS
* stage ^slicing.discriminator.type = #value
* stage ^slicing.discriminator.path = "type"
* stage ^slicing.rules = #open
* stage ^slicing.description = "Slicing based on TNM stage components"
* stage contains
    tumourStageT 0..1 MS and
    tumourStageR 0..1 MS and
    morphology 0..* MS

* stage[tumourStageT].type = $sct#78873005 "T category (observable entity)"
* stage[tumourStageT].summary from CervicalTnmPtVS (required)
* stage[tumourStageT] ^short = "Pathological T stage (pTX–pT1b2)"

* stage[tumourStageR].type = $sct#395537004 "Involvement of surgical margins by the tumor cannot be assessed (finding)"
* stage[tumourStageR].summary from CervicalTnmPrVS (required)
* stage[tumourStageR] ^short = "Residual tumor classification (pRX–pR2)"

* stage[morphology].type = $sct#116676008 "Associated morphology (attribute)"
* stage[morphology].summary from $icd-o-3-vs (required)
* stage[morphology] ^short = "ICD-O-3 morphology code"
