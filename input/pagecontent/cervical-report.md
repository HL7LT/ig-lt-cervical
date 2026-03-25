# Cervical Diagnostic Report

This page describes the Cervical Diagnostic Report profile used in the Lithuanian Cervical Cancer Implementation Guide.

## Overview

The CervicalDiagnosticReportLtCervical profile represents a comprehensive diagnostic report for cervical cancer screening and diagnostics. It aggregates findings from various tests and examinations in the screening pathway.

## Profile Details

- **Parent**: DiagnosticReport
- **ID**: cervical-diagnostic-report-lt-cervical
- **URL**: https://hl7.lt/fhir/cervical/StructureDefinition/cervical-diagnostic-report-lt-cervical

## Key Elements

- **Status**: Required
- **Category**: Exam
- **Code**: Screening for malignant neoplasm of cervix
- **Subject**: Patient
- **Effective Date/Time**: Required
- **Issued**: Required
- **Results**: References to various observations and findings
- **Supporting Info**: References to other reports, imaging studies, procedures
- **Specimen**: References to specimens
- **Conclusion**: Optional narrative conclusion
- **Conclusion Code**: Optional coded conclusions

## Usage

This report is used to provide an overall summary of the cervical cancer screening process for a patient, linking to specific test results and procedures.