# CLAUDE.md - Repository Context and BCO-DMO Compliance Guide

## Repository Overview

This repository contains the **Mo'orea Coral Reef CAFI (Cryptic Associated Fauna and Invertebrates) Data Package** from field experiments and surveys conducted in French Polynesia (2019-2021).

### Quick Stats
- **23 data files** (CSV + Excel) - consolidated from 24 files
- **25,054 total rows** of ecological data
- **17,073 individual invertebrates** identified to species level
- **228 coral colonies** studied across 3 studies
- **Funding**: NSF OCE-1851510 and OCE-1851032
- **License**: CC-BY-4.0

### Principal Investigators
- Adrian C. Stier, UC Santa Barbara (astier@ucsb.edu)
- Craig W. Osenberg, University of Georgia (osenberg@uga.edu)

---

## Repository Structure

```
moorea-cafi-data/
├── data/                    # 23 data files (consolidated)
│   ├── maatea_size_*       # Size experiment (8 files)
│   ├── moorea_survey_*     # Survey (5 files)
│   └── mrb_amount_*        # Amount experiment (10 files)
├── metadata/               # Method descriptions + data dictionaries
│   ├── *.txt               # Plain text method overviews (5 files)
│   ├── *.xlsx              # Excel data dictionaries (9 files)
│   ├── site_locations.csv  # GPS coordinates
│   └── personnel.csv       # Research team
├── images/                 # Visual documentation (10 files)
└── Documentation files:
    ├── README.md
    ├── DATA_DICTIONARY.md
    ├── GETTING_STARTED.md
    ├── CITATION.cff
    └── LICENSE
```

---

## Three Studies in This Dataset

| Study | Question | Colonies | Years | Files |
|-------|----------|----------|-------|-------|
| **Maatea Size** | How does coral size affect CAFI? | 60 | 2019-2021 | 8 |
| **MRB Amount** | How does coral density affect CAFI? | 54 | 2019-2021 | 10 |
| **Mo'orea Survey** | What is natural CAFI variation? | 114 | 2019 | 5 |

---

## BCO-DMO Compliance Assessment

### Current Status: NEEDS CORRECTIONS

Based on BCO-DMO standards, this repository has several compliance issues that must be addressed before submission.

---

## CRITICAL ISSUES (Must Fix)

### 1. DATE FORMAT NON-COMPLIANCE

**BCO-DMO Requirement**: ISO 8601 format (YYYY-MM-DD or YYYY-MM-DDThh:mm:ss)

**Current Issue**: Multiple files use M/D/YYYY format (e.g., `5/19/2021`, `6/25/2019`)

**Affected Files**:
- `maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv` - columns: `date_collected`, `date_observed`
- `mrb_amount_physiology_master_2019_2021_v5.csv` - columns: `slurry_date`, `protein_analysis_date`, `carb_analysis_date`
- `moorea_survey_coral_characteristics_merged_2019_v2.csv` - column: `date`
- All other files with date columns

**Required Fix**:
```
Before: 5/19/2021
After:  2021-05-19

Before: 6/25/2019
After:  2019-06-25
```

**Action Required**: Convert ALL date columns to ISO 8601 format (YYYY-MM-DD)

---

### 2. MISSING VALUE HANDLING

**BCO-DMO Requirement**: Leave cells BLANK for missing data. Do not use placeholders.

**Current Issue**: Files use `NA` as a string value for missing data.

**Current Documentation States**: "All missing data is represented as NA"

**Required Fix**:
- Replace all `NA` values with empty/blank cells
- Update documentation to reflect blank cells = missing data
- Document any data flags in metadata (if keeping codes like `<5` for "less than 5mm")

**Note**: BCO-DMO will remove placeholder values during processing. Using blank cells is preferred.

---

### 3. TIMEZONE DOCUMENTATION

**BCO-DMO Requirement**: Include timezone in headers or parameter metadata

**Current Issue**: Timezone mentioned only in README ("Tahiti Time UTC-10") but NOT in:
- Column headers
- Data dictionary entries
- Individual file metadata

**Required Fix**: Add timezone to all date/time columns. Options:
1. Add `_UTC-10` suffix to column names: `date_collected_UTC-10`
2. Add timezone column: `timezone` with value `UTC-10` or `Pacific/Tahiti`
3. Document prominently in each file's metadata

---

### 4. COLUMN NAMING COMPLIANCE

**BCO-DMO Requirement**: Column names must begin with a letter and contain only letters, numbers, and underscores. No special characters.

**Current Issues Found**:
- `Model.type` (contains period)
- `Projected.area..cm2.` (contains periods)
- `Surface.area..cm2.` (contains periods)
- `Max.height..cm.` (contains periods)
- `Min.height..cm.` (contains periods)
- `Volume..cm3.` (contains periods)

**Affected Files**:
- `mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv`
- Possibly Excel files exported with R-style column names

**Required Fix**:
```
Before: Model.type           After: model_type
Before: Projected.area..cm2. After: projected_area_cm2
Before: Surface.area..cm2.   After: surface_area_cm2
Before: Max.height..cm.      After: max_height_cm
Before: Volume..cm3.         After: volume_cm3
```

---

### 5. UNITS IN DATA CELLS

**BCO-DMO Requirement**: Units must NOT appear within data cells. Place in metadata or column headers.

**Current Status**: Generally compliant, but verify:
- No measurement values contain unit strings
- Units are documented in data dictionaries

**Verify these columns**: `cafi_size_mm`, `depth_range_m`, etc. - ensure no cells contain "5 mm" instead of just "5"

---

### 6. GEOGRAPHIC COORDINATES

**BCO-DMO Requirement**: Decimal degrees with positive=north/east, negative=south/west

**Current Status**: COMPLIANT in `site_locations.csv` and `moorea_survey_coral_characteristics_merged_2019_v2.csv`
- Latitude: -17.47428 (correctly negative for south)
- Longitude: -149.81492 (correctly negative for west)

**Verify**: Ensure no degree/minute/second symbols appear in any coordinate values.

---

## MODERATE ISSUES (Should Fix)

### 7. IMAGE METADATA INCOMPLETE

**BCO-DMO Requirement for Images**:
- File inventory table with filename, date, location, and description
- Photographer/equipment information
- For species photos: verified taxonomic names with LSIDs/AphiaIDs

**Current Status**: `images/README.md` provides basic descriptions but lacks:
- Dates photos were taken
- GPS coordinates where photos were taken
- Camera/equipment information
- WoRMS AphiaIDs for species shown (even though IDs exist in data files)

**Required Fix**: Create `images/image_inventory.csv`:
```csv
filename,date_taken,latitude_dd,longitude_dd,photographer,description,species_aphia_id,camera_equipment
trapezia_serenei.jpg,2019-06-25,-17.47428,-149.81492,J. Curtis,Coral guard crab specimen,208646,Canon PowerShot
...
```

---

### 8. PERSONNEL METADATA INCOMPLETE

**Current Issue**: `personnel.csv` has empty `email` and `orcid` fields for most team members.

**BCO-DMO Expectation**: Complete contributor information improves discoverability.

**Recommended**:
- Add available ORCID iDs for all researchers who have them
- Add emails where permissible
- If unavailable, document as intentionally omitted

---

### 9. SPECIES IDENTIFIERS (WoRMS)

**BCO-DMO Requirement**: For taxonomic data, include verified scientific names and LSIDs (WoRMS AphiaIDs)

**Current Status**: PARTIALLY COMPLIANT
- `worms_id` column exists in CAFI taxonomy files
- Some entries have AphiaIDs (e.g., 212812 for Chromis atripectoralis)

**Verify**:
1. All species have validated WoRMS AphiaIDs
2. Use WoRMS "Taxa Match" tool to verify names: https://www.marinespecies.org/aphia.php?p=match
3. Create a species list file with all unique taxa and their AphiaIDs

---

### 10. DATA FILE CONSOLIDATION

**BCO-DMO Recommendation**: Consider whether multiple files should be combined into single datasets.

**Current Structure**: Files are logically organized by experiment and data type.

**Suggestion**: For BCO-DMO submission, consider:
- One dataset per experiment (Maatea, MRB, Survey)
- Supplementary files (treatments, photogrammetry) as related files within each dataset
- Clear linking via `coral_id` foreign key

---

## MINOR ISSUES (Nice to Fix)

### 11. CITATION.cff VERSION MISMATCH

**Current**: `version: 2.0.0` with `date-released: 2025-10-24`
**README States**: `v2.2` with `2024-11-11`

**Fix**: Synchronize version information across all files.

---

### 12. REDUNDANT "_numeric" COLUMNS

**Current Design**: Dual columns like `cafi_size_mm` (original) and `cafi_size_mm_numeric` (parsed)

**BCO-DMO Perspective**:
- Original data preservation is excellent
- Consider whether both are needed in submission, or if one file could be "analysis-ready" version

**Recommendation**: Keep both - this preserves data provenance. Document clearly in metadata which to use for analysis.

---

## Recommended File Modifications

### Priority 1: Date Format Conversion (All CSV files)

```r
# R script to convert dates
library(tidyverse)

convert_dates <- function(file_path) {
  df <- read_csv(file_path)

  date_cols <- names(df)[grepl("date", names(df), ignore.case = TRUE)]

  for (col in date_cols) {
    df[[col]] <- format(as.Date(df[[col]], format = "%m/%d/%Y"), "%Y-%m-%d")
  }

  write_csv(df, file_path, na = "")  # Empty string for NA
}
```

### Priority 2: Column Name Cleanup

```r
# Fix column names
clean_names <- function(df) {
  names(df) <- gsub("\\.", "_", names(df))  # Replace . with _
  names(df) <- gsub("_+", "_", names(df))   # Remove double underscores
  names(df) <- gsub("_$", "", names(df))    # Remove trailing underscores
  names(df) <- tolower(names(df))           # Lowercase
  return(df)
}
```

### Priority 3: Create Image Inventory

Create `images/image_inventory.csv` with required BCO-DMO metadata fields.

---

## BCO-DMO Dataset Organization (Consolidated - 3 Datasets)

Consolidated from 6 to 3 datasets while keeping studies identifiable via filename prefixes and coral_id.

### Proposed BCO-DMO Datasets

| Dataset | Contents | Primary | Supplemental | Total |
|---------|----------|---------|--------------|-------|
| **Dataset 1: Biological Data** | CAFI taxonomy, coral physiology, fish surveys | 8 | 2 | 10 |
| **Dataset 2: Coral Morphometry** | Photogrammetry, growth, colony characteristics | 5 | 4 | 9 |
| **Dataset 3: Experimental Design** | Treatment assignments, genetic samples | 3 | 1 | 4 |

### Studies Remain Identifiable By:
- **Filename prefix**: `maatea_size_`, `moorea_survey_`, `mrb_amount_`
- **coral_id prefix**: MAT-POC (Maatea), FE-POC (MRB/Survey)
- **study column** in BCO_DMO_FILE_DESCRIPTIONS.csv

### File Descriptions

See **[BCO_DMO_FILE_DESCRIPTIONS.csv](BCO_DMO_FILE_DESCRIPTIONS.csv)** for complete file-by-file descriptions with:
- Data type classification
- Study identification
- Primary vs. supplemental designation
- BCO-DMO dataset assignment
- Related files for linking

### Key Distinctions

**Primary Data Files**: Final, cleaned, analysis-ready data
**Supplemental Files**: Raw data, intermediate processing, methodological validation

**Example**: For photogrammetry:
- Primary: `mrb_amount_photogrammetry_measures_2019_2021_v1.csv` (cleaned)
- Supplemental: `mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv` (raw technical output)

---

## BCO-DMO Submission Checklist

### Completed (v2.3)

- [x] Convert all dates to ISO 8601 (YYYY-MM-DD)
- [x] Replace NA values with blank cells
- [x] Fix column names (remove periods, special characters)
- [x] Add timezone documentation (UTC-10 Tahiti Time)
- [x] Verify all coordinates are decimal degrees
- [x] Create image inventory CSV
- [x] Fix NSF award numbers (OCE-1851510, OCE-1851032)

### Still Needed

- [ ] Validate all species names via WoRMS Taxa Match
- [ ] Create separate parameter definitions for each data file
- [ ] Organize submission by data type (6 datasets)
- [ ] Complete personnel ORCID/email where available

### Submission Materials

1. **Data files** (CSV format preferred)
2. **Metadata documentation** (methods, data dictionaries)
3. **Site locations** with GPS coordinates
4. **Personnel/contributors** list
5. **Image inventory** (if including images)
6. **Funding information** (NSF OCE-1851510, OCE-1851032)
7. **File descriptions** (BCO_DMO_FILE_DESCRIPTIONS.csv)

---

## Code and Software Documentation

**BCO-DMO Requirement**: If code was used in data processing, archive with DOI

**Current Status**: No analysis code included in repository

**Recommended Actions**:
1. If R/Python scripts were used for data processing, include in repository
2. Archive code release to Zenodo for DOI
3. Document software versions used (R version, packages)
4. Reference Agisoft Metashape version for photogrammetry

---

## Data Processing Notes

### Special Value Codes (Document in Metadata)

| Code | Meaning | Column(s) |
|------|---------|-----------|
| `<5` | Less than 5mm | cafi_size_mm |
| `<1` | Less than 1mm | cafi_size_mm |
| `L`, `M`, `S` | Size categories | cafi_size_mm |
| `-D` suffix | Dead colony | coral_id |
| `-A` suffix | Alternate sample | coral_id |

These are valid data flags, not missing values. Document in parameter metadata.

---

## Key Contacts

**For data questions**: Adrian Stier (astier@ucsb.edu)
**For BCO-DMO submission**: https://www.bco-dmo.org/how-to/submit-data
**NSF Program**: OCE Biological Oceanography

---

## File Consolidation (v2.4)

To reduce file count while keeping studies separate, the following files were consolidated:

### Maatea Size Experiment
- **MERGED**: `maatea_size_photogrammetry_summary_dec_2019_v1.csv` + `maatea_size_photogrammetry_summary_may_2021_v1.csv`
- **INTO**: `maatea_size_photogrammetry_2019_2021_v1.csv` (117 records with `sampling_date` column)

This consolidation follows the same pattern used for other multi-timepoint files in the repository (e.g., `mrb_amount_photogrammetry_measures_2019_2021_v1.csv`).

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| v2.4 | 2025-01-03 | File consolidation (24→23 files) |
| v2.3 | 2025-01-02 | BCO-DMO full compliance, NSF award fix |
| v2.2 | 2024-11-11 | BCO-DMO preparation |
| v2.1 | 2024-10-27 | Enhanced metadata |
| v2.0 | 2024-10-24 | NSF/LTER compliant release |

---

## References

### BCO-DMO Standards Used
- [What is a Dataset](https://www.bco-dmo.org/how-to/prepare/what-is-a-dataset)
- [Data Sharing Expectations](https://www.bco-dmo.org/how-to/data-sharing-expectations-and-processes)
- [Organizing Data Tables](https://www.bco-dmo.org/how-to/prepare/organizing-data-tables)
- [Software and Code](https://www.bco-dmo.org/how-to/prepare/software-and-code)
- [Image/Video Datasets](https://www.bco-dmo.org/how-to/prepare/image-video-datasets)

### Related Resources
- WoRMS Taxa Match: https://www.marinespecies.org/aphia.php?p=match
- ISO 8601 Date Format: https://en.wikipedia.org/wiki/ISO_8601
- FAIR Data Principles: https://www.go-fair.org/fair-principles/

---

*Last updated: 2025-01-03*
*This document was created to guide BCO-DMO compliance improvements*
