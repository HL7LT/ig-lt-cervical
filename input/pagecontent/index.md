# Lithuanian Cervical Cancer Prevention and Early Diagnosis Implementation Guide

## Introduction and Purpose

This Implementation Guide specifies how to consistently represent and exchange structured clinical data related to the **Lithuanian Cervical Cancer Prevention Programme** using the **HL7® FHIR® standard**.

The guide supports the national programme for **early detection and prevention of cervical cancer**, with a primary focus on **human papillomavirus (HPV) testing, cytological examination (Pap test), colposcopy, and histopathological diagnosis**, together with structured capture of clinically relevant patient information and diagnostic results.

Its purpose is to enable:

* consistent and high-quality data capture across healthcare providers and laboratories,
* semantic interoperability between **primary care, gynaecology, laboratory, pathology, and national screening systems**,
* structured reporting for **programme coordination, quality assurance, monitoring, and secondary use**,
* and reliable tracking of patients across **screening, diagnostic follow-up, and treatment pathways**.

The guide is developed as part of the national **ADP project**, which aims to support coordinated, data-driven management of preventive and early diagnostic programmes in Lithuania.

## Scope

This guide focuses on the **cervical cancer prevention and early diagnosis workflow**, covering screening, diagnostic testing, and pathological confirmation processes.

It covers the following clinical domains:

* **HPV testing**, including high-risk HPV detection and genotype information,
* **cytological screening (Pap test)** and structured classification of epithelial cell abnormalities,
* **colposcopic examination** and associated diagnostic procedures,
* **histopathological examination of cervical tissue samples**, including biopsy analysis and tumour classification,
* **patient clinical context**, including relevant medical history and risk factors,
* and **longitudinal diagnostic pathways**, allowing tracking of screening results and follow-up procedures over time.

The guide models cervical cancer prevention as a **screening-driven diagnostic pathway**, where HPV testing and cytology act as primary detection methods and where further diagnostic procedures (colposcopy and histopathology) are triggered by abnormal screening results.

## Key Modelling Principles

The modelling approach is based on the following core principles:

1. **Separation of screening, diagnostic procedures, and pathology results**  
   Screening tests, follow-up diagnostic procedures, and final pathological findings are represented as distinct but connected parts of the clinical workflow.

2. **Structured representation of laboratory and cytological results**  
   HPV testing and cytological findings are captured in a structured format that supports standardized classification and comparison across healthcare institutions.

3. **Integration of multiple diagnostic modalities**  
   The data model supports the full diagnostic pathway, including HPV testing, cytology, colposcopy, biopsy procedures, and histopathological examination.

4. **Explicit modelling of diagnostic conclusions**  
   Observations represent clinical findings, while diagnostic interpretations and pathology conclusions represent the confirmed clinical assessment and disease classification.

5. **Support for longitudinal patient pathways**  
   Cervical cancer prevention programmes rely on repeated screening and follow-up examinations. The data model supports tracking patient screening history, follow-up tests, and diagnostic outcomes over time.

6. **Terminology-based interoperability**  
   The guide relies on internationally recognised terminologies and classifiers, especially **SNOMED CT**, and where relevant also **LOINC, ICD-10-AM, and ICD-O**, to ensure semantic consistency and interoperability between systems.

## Content of the Guide

This guide provides:

* **FHIR profiles and extensions** for representing cervical cancer screening and diagnostic workflows,
* structured modelling of **HPV testing and cytological examinations**,
* support for **colposcopy procedures and findings**,
* structured representation of **histopathological examination results and tumour classification**,
* terminology bindings using **SNOMED CT, LOINC, ICD-10-AM, and ICD-O**,
* structured **example instances** illustrating realistic programme scenarios,
* mappings from the national cervical cancer prevention dataset to interoperable **FHIR artefacts**,
* and identification of gaps and future development needs.

At the current stage, the guide focuses on the **core data structures required to support the cervical cancer prevention programme**, including laboratory testing, cytology reporting, and histopathological diagnosis. Further refinement, terminology expansion, and workflow alignment will be performed in subsequent iterations.

## Why Use This Guide?

By adopting this guide, implementers and healthcare institutions can:

1. **Interoperability:** Ensure consistent and comparable cervical cancer screening and diagnostic data across healthcare systems and institutions.
2. **Data Quality:** Improve the consistency, completeness, and reusability of screening and diagnostic data.
3. **Clinical Utility:** Support structured reporting, diagnostic decision-making, and coordinated follow-up care.
4. **Programme Monitoring:** Enable population-level analysis of screening participation, test outcomes, and diagnostic pathways.
5. **Longitudinal Care:** Support tracking of patients across repeated screening cycles and diagnostic procedures.

Navigate the sections below to access the profiles, terminology bindings, and detailed examples needed to implement the standard.

### Contributors

| Name | Role | Organization |
|-----|-----|-----|
| Audra Stepanauskaite | Primary Author | [LMB](https://lmb.lt) |
| Albert Kuslevic | Primary Author | [LMB](https://lmb.lt) |
| [Igor Bossenko](https://about.askigor.eu) | Primary Author | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Co-Author | [LMB](https://lmb.lt) |

