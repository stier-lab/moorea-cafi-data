# BCO-DMO Submission Checklist

**Dataset:** Mo'orea Coral Reef CAFI Field Experiments (2019-2021)
**PIs:** Adrian Stier (UCSB) and Craig Osenberg (UGA)
**NSF Awards:** OCE-1851510 and OCE-1851032
**Last Updated:** 2025-01-03

---

## Current Status Summary

| Category | Status | Notes |
|----------|--------|-------|
| Data Format Compliance | ✅ Complete | ISO 8601 dates, clean column names, blank missing values |
| Parameter Metadata | ✅ Complete | All 23 files have definitions with units |
| File Descriptions | ✅ Complete | BCO_DMO_FILE_DESCRIPTIONS.csv |
| Dataset Organization | ✅ Complete | 6 proposed datasets by data type |
| Species Validation | ✅ Complete | WoRMS AphiaIDs validated |
| Submission Materials | 🟡 Ready | Pending final review |

---

## ✅ BCO-DMO Data Format Requirements (COMPLETED)

### Date/Time Format
- [x] All dates in ISO 8601 format (YYYY-MM-DD)
- [x] Timezone documented (UTC-10 Tahiti Time)
- [x] Timezone noted in DATA_DICTIONARY.md and parameter metadata

### Column Naming
- [x] Column names begin with letters
- [x] Only letters, numbers, underscores used
- [x] No periods, spaces, or special characters
- [x] Consistent naming across files

### Missing Data
- [x] Blank/empty cells for missing data (not NA, ., or -)
- [x] Data flags documented (e.g., `<5` = less than 5mm)
- [x] Missing data handling explained in DATA_DICTIONARY.md

### Geographic Coordinates
- [x] Decimal degrees format
- [x] Negative for south latitude (-17.5)
- [x] Negative for west longitude (-149.8)
- [x] Coordinates in site_locations.csv

### Units
- [x] Units NOT embedded in data cells
- [x] Units documented in parameter metadata files
- [x] Units in column headers where appropriate (e.g., surface_area_cm2)

---

## ✅ Parameter Metadata (COMPLETED)

### Required for Each Parameter
- [x] Column name
- [x] Units of measurement
- [x] Description/definition

### Metadata Files Created

| Data File | Metadata File | Status |
|-----------|---------------|--------|
| maatea_size_cafi_taxonomy_*.csv | README_size_cafi_metadata_v1.xlsx + units supplement | ✅ |
| moorea_survey_cafi_taxonomy_*.csv | README_survey_cafi_metadata_v1.xlsx + units supplement | ✅ |
| mrb_amount_cafi_field_experiment_*.csv | README_amount_cafi_metadata_v1.csv | ✅ |
| maatea_size_physiology_*.csv | README_size_phys_metadata_v3.xlsx | ✅ |
| moorea_survey_physiology_*.csv | README_survey_physio_metadata_v4.xlsx | ✅ |
| mrb_amount_physiology_*.csv | README_amount_physio_metadata_v6.xlsx | ✅ |
| maatea_size_photogrammetry_*.csv | README_photogrammetry_metadata_v2.txt | ✅ |
| mrb_amount_photogrammetry_*.csv | README_photogrammetry_metadata_v2.txt | ✅ |
| maatea_size_fish_surveys_*.csv | README_size_fish_metadata_v1.xlsx | ✅ |
| mrb_amount_fish_surveys_*.csv | README_amount_fish_metadata_v1.xlsx | ✅ |
| moorea_survey_coral_characteristics_*.csv | README_survey_coral_characteristics_metadata_v2.xlsx | ✅ |
| maatea_size_colony_measurements_*.csv | README_size_colony_measurements_metadata_v1.csv | ✅ |
| maatea_size_experimental_treatments_*.csv | README_size_treatments_metadata_v1.csv | ✅ |
| mrb_amount_experimental_treatments_*.csv | README_amount_treatments_metadata_v1.csv | ✅ |
| mrb_amount_coral_id_position_*.csv | README_amount_position_treatment_metadata_v1.csv | ✅ |
| mrb_amount_coral_growth_*.csv | README_amount_growth_metadata_v1.csv | ✅ |

---

## ✅ Dataset Organization (COMPLETED)

BCO-DMO organizes by DATA TYPE, not experiment. Proposed structure:

| BCO-DMO Dataset | Data Type | Files | Primary/Supplemental |
|-----------------|-----------|-------|---------------------|
| Dataset 1 | CAFI Community Composition | 3 | All Primary |
| Dataset 2 | Coral Physiology | 3 + 2 supplemental | 3 Primary, 2 Supplemental |
| Dataset 3 | Coral Photogrammetry | 2 + 4 supplemental | 2 Primary, 4 Supplemental |
| Dataset 4 | Fish Community Surveys | 2 | All Primary |
| Dataset 5 | Coral Characteristics & Design | 4 + 2 supplemental | 4 Primary, 2 Supplemental |
| Dataset 6 | Genetic Sample Metadata | 1 | Primary |

See **BCO_DMO_FILE_DESCRIPTIONS.csv** for complete file-by-file details.

---

## ✅ Species/Taxonomic Data (COMPLETED)

- [x] Scientific names validated via WoRMS
- [x] WoRMS AphiaIDs included in CAFI taxonomy files
- [x] Taxonomic hierarchy complete (phylum through species)
- [x] `lowest_level` column indicates identification confidence

---

## ✅ Documentation (COMPLETED)

- [x] README.md - Complete project overview
- [x] DATA_DICTIONARY.md - All column definitions
- [x] GETTING_STARTED.md - Quick start guide
- [x] CITATION.cff - Citation metadata
- [x] LICENSE - CC-BY-4.0
- [x] BCO_DMO_FILE_DESCRIPTIONS.csv - File-by-file descriptions
- [x] CLAUDE.md - Repository context and compliance guide

---

## ✅ Image Metadata (COMPLETED)

- [x] Image inventory created (images/image_inventory.csv)
- [x] Filenames, dates, coordinates documented
- [x] Species photos include WoRMS AphiaIDs
- [x] Photographer credited

---

## 🟡 Final Pre-Submission Tasks

### Data Manager Communication
- [x] Responded to Shannon Rauch (BCO-DMO) with file descriptions
- [ ] Schedule Zoom call if needed for complex questions
- [ ] Confirm 6-dataset organization is acceptable

### Quality Assurance
- [ ] Spot-check 2-3 CSV files for format compliance
- [ ] Verify all file counts match documentation (23 data files)
- [ ] Confirm all metadata files are in repository

### Submission Materials to Provide

**For Each Dataset:**
1. Data files (CSV preferred)
2. Parameter metadata (column definitions with units)
3. Acquisition description (methods)
4. Instruments used

**Project-Level:**
1. Project abstract
2. Geographic coordinates
3. Temporal coverage (2019-12-01 to 2021-05-31)
4. Personnel list with ORCIDs
5. Funding information (NSF OCE-1851510, OCE-1851032)

---

## 📋 Files to Submit (23 Data Files)

### Dataset 1: CAFI Community Composition (3 files)
- [x] `maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv`
- [x] `moorea_survey_cafi_taxonomy_summer_2019_v5.csv`
- [x] `mrb_amount_cafi_field_experiment_summer_2021_v4.csv`

### Dataset 2: Coral Physiology (5 files)
- [x] `maatea_size_physiology_master_long_2019_2021_v3.csv`
- [x] `moorea_survey_physiology_master_2019_v3.csv`
- [x] `mrb_amount_physiology_master_2019_2021_v5.csv`
- [x] `moorea_survey_tip_stump_comparison_dec_2019_v1.xlsx` (Supplemental)
- [x] `moorea_survey_tip_stump_zoox_counts_dec_2019_v1.xlsx` (Supplemental)

### Dataset 3: Coral Photogrammetry (6 files)
- [x] `maatea_size_photogrammetry_2019_2021_v1.csv`
- [x] `mrb_amount_photogrammetry_measures_2019_2021_v1.csv`
- [x] `mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv` (Supplemental)
- [x] `mrb_amount_coral_growth_surface_area_change_v1.csv`
- [x] `mrb_amount_coral_growth_surface_area_change_filtered_v1.csv` (Supplemental)
- [x] `maatea_size_photogrammetry_summer_2019_v1.xlsx` (Supplemental)

### Dataset 4: Fish Community Surveys (2 files)
- [x] `maatea_size_fish_surveys_2019_2021_v1.csv`
- [x] `mrb_amount_fish_surveys_may_2021_v1.csv`

### Dataset 5: Coral Characteristics & Experimental Design (6 files)
- [x] `moorea_survey_coral_characteristics_merged_2019_v2.csv`
- [x] `maatea_size_colony_measurements_wide_2019_2021_v1.csv`
- [x] `maatea_size_experimental_treatments_v1.csv`
- [x] `mrb_amount_experimental_treatments_v1.csv`
- [x] `mrb_amount_coral_id_position_treatment_v1.csv` (Supplemental)
- [x] `mrb_amount_manual_colony_measurements_2019_2021_v1.xlsx` (Supplemental)

### Dataset 6: Genetic Sample Metadata (1 file)
- [x] `maatea_size_genetic_samples_metadata_v3.xlsx`

---

## 📧 BCO-DMO Contact Information

**Data Manager:** Shannon Rauch (shannon@bco-dmo.org)
**General:** info@bco-dmo.org
**Website:** https://www.bco-dmo.org/contribute

---

## 📝 After Submission

### Immediate Tasks
- [ ] Save BCO-DMO confirmation email
- [ ] Note submission ID number
- [ ] Respond to data manager questions promptly

### After DOI Assignment
- [ ] Add DOI to README.md
- [ ] Add DOI to CITATION.cff
- [ ] Update NSF final report with DOI
- [ ] Add DOI to manuscript data availability statement
- [ ] Submit to EDI/LTER (MCR Data Manager)
- [ ] Link GitHub to Zenodo for additional DOI

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| v2.5 | 2025-01-03 | Added parameter metadata for all files |
| v2.4 | 2025-01-03 | File consolidation (24→23 files) |
| v2.3 | 2025-01-02 | BCO-DMO format compliance complete |
| v2.0 | 2024-10-24 | Initial checklist |

---

*For questions about this checklist, contact Adrian (astier@ucsb.edu)*
