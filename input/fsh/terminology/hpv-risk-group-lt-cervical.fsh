CodeSystem: HpvRiskGroupLtCervical
Id: hpv-risk-group-lt-cervical
Title: "HPV Risk Groups (LT Cervical)"
Description: "Specific HPV risk groupings"
* ^url = $hpv-risk-group-lt-cervical-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^caseSensitive = true
* #highest "Highest risk genotype group (16, 18)"
* #medium  "Medium-risk genotype group (31, 33, 35, 45, 52, 58)"
* #lower   "Lower risk genotype group (39, 51, 56, 59, 68)"
* #low     "Low-risk HPV genotype group (53, 66, others)"

ValueSet: HpvRiskGroupLtCervicalVS
Id: hpv-risk-group-vs-lt-cervical
Title: "HPV Risk Groups (LT Cervical)"
Description: "ValueSet containing the ADP-specific risk buckets."
* ^url = $hpv-risk-group-vs-lt-cervical-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include codes from system HpvRiskGroupLtCervical
