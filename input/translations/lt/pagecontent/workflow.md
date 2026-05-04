### Gimdos kaklelio vėžio atrankos darbo eiga

Šiame puslapyje aprašoma Lietuvos gimdos kaklelio vėžio prevencijos įgyvendinimo vadovo modeliuojama klinikinė darbo eiga. Kelias atitinka nacionalinę gimdos kaklelio vėžio ankstyvos diagnostikos programą (ADP).

#### Apžvalga

Gimdos kaklelio vėžio atrankos kelias susideda iš keturių nuoseklių diagnostinių etapų, kiekvienas iš kurių sukuria struktūrizuotą DiagnosticReport:

1. **ŽPV tyrimas** — Pirminė atranka aptiekant didelės rizikos ŽPV DNR
2. **Gimdos kaklelio citologija (Pap testas)** — Mikroskopinis gimdos kaklelio ląstelių tyrimas
3. **Kolposkopija** — Klinikinis gimdos kaklelio tyrimas su vertinimu
4. **Histopatologija** — Audinių analizė iš biopsijos arba ekscizinių mėginių

Visos ataskaitos sujungiamos į vieną [Cervical Cancer Screening Episode Composition](StructureDefinition-cervical-composition-lt-cervical.html), apgaubtą [Cervical Report](StructureDefinition-cervical-report-lt-cervical.html).

---

#### 1. ŽPV tyrimas

Atrankos programoje dalyvaujančios moterys atlieka didelės rizikos ŽPV DNR tyrimą kaip pirminį atrankos metodą. ŽPV tyrimo procedūros kodas visada yra SNOMED `35904009` (HPV DNA detection). Atrankos kontekstas (pirminis, įprastas, tikslintas, kartotinis arba kontrolinis po gydymo) perduodamas per `ServiceRequest.reason`, nurodant atrankos programą, o ne per DiagnosticReport kodą.

**Profilis**: [HpvDiagnosticReportLtCervical](StructureDefinition-hpv-diagnostic-report-lt-cervical.html)

ŽPV diagnostinė ataskaita apima:
- [HPV Test Result](StructureDefinition-hpv-test-result-lt-cervical.html) — bendrasis rezultatas (aptiktas/neaptiktas/netinkamas)
- Genotipų skydelis — atskiri ŽPV tipai (16, 18, 31, 33, 35, 39, 45, 51, 52, 56, 58, 59, 66, 68)
- Rizikos grupės klasifikacija — aukščiausia (16, 18), vidutinė (31, 33, 35, 45, 52, 58), žemesnė (AR HPV)

**Pavyzdžiai**:
- [HPV Positive Result (types 16 & 45)](Observation-observation-hpv-result-example.html)
- [HPV Diagnostic Report](DiagnosticReport-diagnosticreport-hpv-example.html)

---

#### 2. Gimdos kaklelio citologija (Pap testas)

Gimdos kaklelio citologija atliekama arba kartu su ŽPV, arba kaip tolesnė priemonė po teigiamų ŽPV rezultatų. Konkretus tyrimo tipas nurodytas `DiagnosticReport.code` naudojant [CervicalCytologyTestTypeVS](ValueSet-cervical-cytology-test-type.html), kuriame yra įprastas PAP (440623000), skysčiu pagrįsta atranka (417036008), bendrinė gimdos kaklelio citologija (416107004), diagnostinė citologija po kolposkopijos (609040007) ir imunocitochemija p16/Ki-67 (395126005).

Morfologiniai sub-požymiai Bethesda kategorijose (pvz., koilocitozė LSIL, reparaciniai pokyčiai NILM) fiksuojami per ESPBI klausimynus, o ne struktūrizuotuose stebėjimo profiliuose.

**Profilis**: [CytologyDiagnosticReportLtCervical](StructureDefinition-cytology-diagnostic-report-lt-cervical.html)

Citologijos ataskaita apima:
- [Cytology Conclusion](StructureDefinition-cytology-conclusion-lt-cervical.html) — Bethesda klasifikacija (NILM, ASC-US, LSIL, ASC-H, HSIL, AGC, AIS, SCC)
- Mėginio tinkamumo įvertinimas
- Patogenų radiniai (kandida, trichomonas, aktinomicetas, herpesas)
- Mikroflorų klasifikacija
- Imunocitochemija (p16/Ki-67 dvigubas dažymas)

**Pavyzdžiai**:
- [LSIL Cytology Conclusion](Observation-observation-cytology-conclusion-example.html)
- [Cytology Diagnostic Report](DiagnosticReport-diagnosticreport-cytology-example.html)

---

#### 3. Kolposkopija

Kolposkopija yra indikuota, kai ŽPV teigiamas ir (arba) citologija rodo pakitimus (ASC-US+).

**Profilis**: [ColposcopyDiagnosticReportLtCervical](StructureDefinition-colposcopy-diagnostic-report-lt-cervical.html)

Kolposkopijos ataskaita apima:
- [Colposcopy Procedure](StructureDefinition-colposcopy-procedure-lt-cervical.html) — tyrimo procedūra
- [Colposcopy Finding](StructureDefinition-colposcopy-finding-lt-cervical.html) — tinkamumas (patenkinamas/nepatenkinamas), Swede balas (0–10, koduojamas naudojant SNOMED 1389350002), rizikos klasifikacija (maža 0–3 / didelė 4–10)
- [Colposcopy Biopsy Procedure](StructureDefinition-colposcopy-biopsy-procedure-lt-cervical.html) — jei imama biopsija (punkcija, LEEP, konusas, kiuretažas)
- [Colposcopy History](StructureDefinition-colposcopy-history-lt-cervical.html) — ankstesnė kolposkopijos būklė

**Pavyzdžiai**:
- [Colposcopy Finding (Swede Score 3, Low Risk)](Observation-observation-colposcopy-finding-example.html)
- [Colposcopy Procedure](Procedure-procedure-colposcopy-example.html)
- [Colposcopy Diagnostic Report](DiagnosticReport-diagnosticreport-colposcopy-example.html)

---

#### 4. Histopatologija

Histopatologinis tyrimas atliekamas su audinio mėginiais, gautais iš biopsijos arba ekscizinių procedūrų. Šiame etape pakartotinai naudojami [Laboratorijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) profiliai mėginių valdymui, naviko matavimui ir patologijos ataskaitų teikimui.

**Profilis**: [HistopathologyDiagnosticReportLtCervical](StructureDefinition-histopathology-diagnostic-report-lt-cervical.html)

Histopatologijos ataskaita apima:
- [Histopathology Conclusion](StructureDefinition-histopathology-conclusion-lt-cervical.html) — PSO klasifikacijos diagnozė, histologinis laipsnis (G1–G3), pLVI (6 lygių klasifikacija iš Laboratorijų IG), chirurginės paraštės
- [Pathology Composition](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-composition-lt-lab.html) — sinoptinis dokumentas su Pre-analitiniais, Makroskopiniais, Mikroskopiniais ir Sintezės skyriais (pakartotinai naudojama iš Laboratorijų IG)
- [Specimen Measurement](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-measurement-lt-lab.html) — audinių fragmentų matmenys (x,y,z mm kiekvienam konteineriui) ir ektocervix matavimai (pakartotinai naudojama iš Laboratorijų IG)
- [Tumor Measurement](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-tumor-measurement-lt-lab.html) — 3D naviko matmenys mm (pakartotinai naudojama iš Laboratorijų IG)
- [Specimen](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) — gimdos kaklelio audinių mėginys su fiksavimo tipu per `processing.additive` (formalinas = SNOMED 434162003) (pakartotinai naudojama iš Laboratorijų IG)
- [Cervical Condition (TNM Staging)](StructureDefinition-cervical-condition-lt-cervical.html) — pT (pTX–pT4), pN (pNX–pN2), pR (pRX–pR2) stadijinimas su ICD-O morfologija

**Gydytojų vaidmenys**: `performer` elementas fiksuoja tyrimo vykdytoją (patologą); `resultsInterpreter` fiksuoja patvirtintoją/tvirtintoją (vyresnįjį patologą). Siuntimo gydytojas siejamas per `basedOn` → `ServiceRequest.requester`.

**Pavyzdžiai**:
- [Histopathology Report (HSIL/CIN2)](DiagnosticReport-diagnosticreport-histopathology-example.html)
- [Histopathology Conclusion](Observation-observation-histopathology-conclusion-example.html)
- [Cervical Cancer TNM Staging](Condition-condition-cervical-cancer-stage-example.html)
- [Cervical Specimen](Specimen-specimen-cervical-biopsy-example.html)
- [Tumor Measurement](Observation-observation-tumor-measurement-cervical-example.html)

---

#### 5. Atrankos epizodo kompozicija

Diagnostinės darbo eigos pabaigoje visos ataskaitos sujungiamos į vieną struktūrizuotą dokumentą — [Cervical Composition](StructureDefinition-cervical-composition-lt-cervical.html).

Kompozicijos skyriai apima:
- **Klinikinė istorija** — pre-analitiniai stebėjimai (ciklo diena, menopauzė, terapijos, konizacijos istorija)
- **ŽPV ataskaita** — ŽPV DiagnosticReport
- **Citologijos ataskaita** — Citologijos DiagnosticReport
- **Kolposkopijos ataskaita** — Kolposkopijos DiagnosticReport
- **Histologijos ataskaita** — Histopatologijos DiagnosticReport
- **Gyvenimo būdo veiksniai** — kryžminės IG nuorodos į [Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) (tabako vartojimas, fizinis aktyvumas)
- **Gyvybiniai rodikliai** — kryžminės IG nuorodos į [Gyvybinių rodiklių IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) (KMI)

Kompozicija apgaubiama [Cervical Report](StructureDefinition-cervical-report-lt-cervical.html), kuris apibendrina visus struktūrizuotus rezultatus.

**Pavyzdžiai**:
- [Cervical Screening Episode Composition](Composition-composition-cervical-screening-episode-example.html)
- [Cervical Cancer Screening Report](DiagnosticReport-diagnosticreport-cervical-report-example.html)

---

#### Klinikinės istorijos kontekstas

Pre-analitiniai klinikiniai stebėjimai fiksuojami naudojant [Cervical Screening Clinical History](StructureDefinition-cervical-screening-clinical-history-lt-cervical.html) profilį su komponentais, skirtais:
- Mėnesinių ciklo dienai (SNOMED 161713000)
- Menopauzės būklei (SNOMED 276477006)
- Hormonų terapijai (SNOMED 1346510001)
- Nėštumui (SNOMED 77386006)
- Laktacijai (SNOMED 225604004)
- Radioterapijos istorijai (SNOMED 429479009)
- Chemoterapijos istorijai (SNOMED 161653008)
- Gimdos spiralei (SNOMED 312081001)
- Ankstesnei konizacijai (SNOMED 1089410001)
- Mėginio paėmimo vietai
- ŽPV vakcinacijos būklei

**Pavyzdžiai**:
- [Routine Clinical History](Observation-observation-clinical-history-routine-example.html)
- [Complex Clinical History](Observation-observation-clinical-history-complex-example.html)
