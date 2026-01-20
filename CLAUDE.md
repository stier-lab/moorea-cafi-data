# CLAUDE.md - Repository Context and BCO-DMO Compliance Guide

## Repository Overview

This repository contains the **Mo'orea Coral Reef CAFI (Coral Associated Fishes and Invertebrates) Data Package** from field experiments and surveys conducted in French Polynesia (2019-2021).

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
├── images/                 # Visual documentation (12 files)
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

## BCO-DMO Compliance Status: COMPLIANT ✅

All BCO-DMO data format requirements have been verified and met as of 2026-01-20.

---

# BCO-DMO COMPLETE REQUIREMENTS REFERENCE

This section contains the complete BCO-DMO requirements extracted from their official documentation. Use this as a checklist for future submissions.

**Source URLs:**
- https://www.bco-dmo.org/how-to/prepare/what-is-a-dataset
- https://www.bco-dmo.org/how-to/data-sharing-expectations-and-processes
- https://www.bco-dmo.org/how-to/prepare/organizing-data-tables
- https://www.bco-dmo.org/how-to/prepare/software-and-code
- https://www.bco-dmo.org/how-to/prepare/image-video-datasets

---

## 1. WHAT IS A DATASET

### Definition
BCO-DMO defines scientific data as "recorded factual material" that is "sufficient quality to validate and replicate research findings."

**Explicitly EXCLUDES:**
- Laboratory notebooks
- Preliminary analyses
- Case report forms
- Drafts
- Future plans
- Peer reviews
- Colleague communications
- Physical specimens

### Dataset Composition
A BCO-DMO dataset consists of:
- **Single data table** (CSV, Excel, TSV), OR
- **Collection of files of same data type** (e.g., multiple NetCDF model outputs, coral quadrat photos)
- Plus accompanying metadata and supporting files

**Key principle:** "One dataset does not necessarily equate to one data file."

### When to COMBINE Files
- Multiple tables of identical type and structure
- Same acquisition/processing methods
- Same parameters
- Same project/award

### When to KEEP SEPARATE
- Different acquisition or processing methods
- Different parameters
- Different projects or awards

### Required Data Elements for Field Observations
When data represents field observations, you MUST include:
- ✅ Dates
- ✅ Times
- ✅ Timezone information
- ✅ Latitude
- ✅ Longitude

### Required Metadata for ALL Datasets
- Who/what/where/how information
- Acquisition and processing descriptions
- All instruments used
- Parameter names and descriptions
- Funding information
- Investigator names and contact details
- Links to related datasets and publications

---

## 2. DATA SHARING EXPECTATIONS & PROCESS

### Timeline Requirements
| Stage | Timeline |
|-------|----------|
| Project Registration | Published within 2 business days |
| Data Receipt Acknowledgment | Response within 2 business days |
| Processing Queue | May take days to weeks |
| Collaboration Phase | 1 day to several weeks |
| Validation & DOI | Immediate upon final approval |

### Submission Process (5 Steps)
1. **Register** - Submit NSF-funded project through Submission Tool immediately after funding recommendation
2. **Prepare** - Organize and document data during research phase
3. **Submit** - Send "research-ready" datasets at any project stage
4. **Collaborate** - Work with assigned Data Manager on questions and revisions
5. **Validate** - Review and approve draft dataset pages for DOI assignment

### Key Submission Expectations
- ✅ Submit data **before** you begin writing the manuscript
- ✅ Submit "research-ready" data (processed, quality-controlled)
- ✅ Submit well in advance of reporting/publication deadlines
- ✅ Respond promptly to Data Manager communications
- ⚠️ Unresolved questions prevent publication

### Required Metadata Elements
- Position (latitude, longitude)
- Date and time
- Methods and procedures documentation
- Data organization details enabling reuse
- Complete and accurate dataset information for validation

### File Format Requirements
- ✅ Convert data files to **open formats** (CSV preferred)
- ✅ Position in **decimal degrees**
- ✅ Dates in **ISO 8601** format

---

## 3. DATA TABLE ORGANIZATION

### Column Naming Rules
| Rule | Example Good | Example Bad |
|------|--------------|-------------|
| Begin with a letter | `surface_area` | `3d_model` |
| Only letters, numbers, underscores | `max_height_cm` | `max.height.cm` |
| Decipherable and unique | `protein_mg_cm2` | `prot1` |
| No special characters | `date_collected` | `date-collected` |
| No Greek letters | `delta_surface` | `Δsurface` |

**Headers must be in the first row.**

### Geographic Coordinates
| Requirement | This Repository |
|-------------|-----------------|
| Decimal degrees | ✅ `-17.47428` |
| Positive = North/East | ✅ N/A (all coordinates are South/West) |
| Negative = South/West | ✅ `-149.81492` |
| No degree/minute/second symbols | ✅ Verified |
| Consistent formatting | ✅ Verified |

### Date and Time Formatting
| Requirement | Format | Example |
|-------------|--------|---------|
| ISO 8601 date | `YYYY-MM-DD` | `2021-05-19` |
| ISO 8601 datetime | `YYYY-MM-DDThh:mm:ss` | `2021-05-19T14:30:00` |
| Consistent formats | Same format throughout | ✅ |
| Timezone in headers or metadata | Document UTC offset | ✅ UTC-10 |
| Provide UTC when submitting local time | UTC column or conversion | Documented |

### Missing Data Handling
| Do | Don't |
|----|-------|
| ✅ Leave blank cells **empty** | ❌ Use "nd", "NA", "N/A", "-" |
| ✅ Document data flags in metadata | ❌ Use zeros (0) for missing data |
| ✅ Use "Bdl" for below-detection-limit | ❌ Embed flags in numeric columns |

**Document detection thresholds when using "Bdl".**

### Units Requirements
| Do | Don't |
|----|-------|
| ✅ Store `0.5` | ❌ Store `0.5 knots` |
| ✅ Put units in column names: `surface_area_cm2` | ❌ Embed units in cell values |
| ✅ Put units in parameter metadata | ❌ Mix units within a column |

### Table Structure Rules
- ✅ One table per spreadsheet file
- ✅ Each row = single observation
- ✅ Each column = one parameter
- ✅ Split ranges into separate min/max columns
- ✅ Standard deviations in separate columns
- ✅ Comments in separate columns (not embedded in values)
- ❌ No merged cells
- ❌ No color-coding for data (lost in CSV conversion)

---

## 4. SOFTWARE AND CODE REQUIREMENTS

### Archiving Requirements
**Primary recommendation:** Archive code and get a dedicated DOI.

For NSF OCE-funded projects: Code must be made public within **two years** of development.

**Alternative:** Submit code as supplemental files with a dataset (suboptimal - not independently citable).

### Required Documentation
Code must include:
- ✅ General description of what the code does
- ✅ How the code works
- ✅ Dependencies and prerequisites
- ✅ Programming language version
- ✅ Settings and configurations
- ✅ File-by-file descriptions
- ✅ For input data: source, contents, parameter names, descriptions, units

**Documentation locations:**
- GitHub README.md
- Supplemental files at Zenodo
- Dataset methodology submissions

### Archiving Process
**With GitHub:**
1. Connect repository to Zenodo
2. Create GitHub release
3. DOI is automatically assigned

**Without GitHub:**
1. Upload files directly to Zenodo
2. Include complete documentation and metadata

### Licensing
- ✅ All code requires an appropriate license
- ✅ MIT license commonly used for open-source
- ✅ BCO-DMO uses CC-BY-4.0 for dataset supplements

### Version Documentation for Datasets Created with Code
Document:
- ✅ Exact code version (version number, commit, release, or DOI)
- ✅ Language and package versions
- ✅ Configurations or settings applied

### This Repository's Software Documentation
| Software | Version | Purpose |
|----------|---------|---------|
| Agisoft Metashape | [Document version] | Photogrammetry 3D reconstruction |
| R | [Document version] | Data processing |
| [Other software] | [Version] | [Purpose] |

**TODO:** Document exact software versions used.

---

## 5. IMAGE AND VIDEO DATASET REQUIREMENTS

### File Size Limits
- Individual files: **10GB maximum**
- Transfer methods: Web upload, Dropbox, Google Drive, Globus, Box
- Published formats: `.zip` (zip64) or `.tar.gz`
- Folder hierarchy can be preserved

### Required Image Inventory Table
**Every image dataset MUST include a file inventory with:**

| Required Field | Description |
|----------------|-------------|
| `filename` | Including file extension |
| `folder` | If files are in subfolders |

**For field observations, ALSO include:**

| Field | Description |
|-------|-------------|
| `date` | Date taken |
| `time` or `datetime` | Time taken |
| `timezone` | Timezone specification |
| `latitude` | Decimal degrees |
| `longitude` | Decimal degrees |
| `depth` | If applicable |
| `cruise_id` | If applicable |
| `station` | If applicable |
| `sample_id` | If applicable |

**For lab experiments, ALSO include:**
- Date and time
- Treatment/control indicators

### File Format Requirements
- Submit format with **most reuse potential**
- Raw formats (TIFF) recommended alongside processed versions
- Preserve original resolution when possible

### Taxonomic Data in Images
| Requirement | Status |
|-------------|--------|
| Verify taxonomic names for accuracy | ✅ |
| Include LSID, AphiaID, or community identifiers | ✅ WoRMS AphiaIDs included |
| If using codes, provide supplementary species list | ✅ Full taxonomy in data files |
| Validate with WoRMS "Taxa Match" tool | ✅ |

### Critical Rule for File/Folder Naming
> "Any critical metadata encoded in folder or file names must ALSO be in an accompanying file inventory table or in the main data table."

### This Repository's Image Inventory
Location: `images/image_inventory.csv`

| Field | Included |
|-------|----------|
| filename | ✅ |
| file_type | ✅ |
| date_taken_approximate | ✅ |
| latitude_dd | ✅ |
| longitude_dd | ✅ |
| timezone | ✅ UTC-10 |
| photographer | ✅ |
| subject_category | ✅ |
| species_scientific_name | ✅ |
| species_aphia_id | ✅ WoRMS IDs |
| description | ✅ |
| camera_equipment | ⚠️ Not documented |
| usage_notes | ✅ |

---

## BCO-DMO COMPLIANCE CHECKLIST

### Data Format Requirements ✅ COMPLETE

- [x] All dates in ISO 8601 format (YYYY-MM-DD)
- [x] Blank cells for missing data (no NA, nd, or 0)
- [x] Column names: letters, numbers, underscores only
- [x] Column names begin with a letter
- [x] Coordinates in decimal degrees
- [x] Negative coordinates for South/West
- [x] No units embedded in data cells
- [x] Units documented in metadata/column headers
- [x] One table per file
- [x] Each row = one observation
- [x] Each column = one parameter
- [x] No merged cells
- [x] Timezone documented (UTC-10 Tahiti Time)

### Metadata Requirements ✅ COMPLETE

- [x] Parameter definitions for all columns
- [x] Units for all measurements
- [x] Methods documentation
- [x] Instrument descriptions
- [x] Funding information (NSF OCE-1851510, OCE-1851032)
- [x] PI contact information
- [x] File descriptions (BCO_DMO_FILE_DESCRIPTIONS.csv)
- [x] Site locations with GPS (metadata/site_locations.csv)
- [x] Personnel list (metadata/personnel.csv)

### Field Observation Requirements ✅ COMPLETE

- [x] Dates included
- [x] Times included where applicable
- [x] Timezone documented
- [x] Latitude included
- [x] Longitude included

### Image Requirements ✅ COMPLETE

- [x] Image inventory table created
- [x] Filenames documented
- [x] Dates documented
- [x] Coordinates documented
- [x] Timezone documented
- [x] Photographer documented
- [x] Species names verified
- [x] WoRMS AphiaIDs included

### Software/Code Requirements ⚠️ NEEDS ATTENTION

- [ ] Document Agisoft Metashape version
- [ ] Document R version and packages used
- [ ] Consider archiving analysis code to Zenodo
- [ ] Add software DOI if archived

### Dataset Organization ✅ COMPLETE

- [x] Proposed 3-dataset structure
- [x] Primary vs supplemental files designated
- [x] Related files linked via coral_id
- [x] File descriptions provided

---

## BCO-DMO Dataset Organization

### Proposed Structure (3 Datasets)

| Dataset | Contents | Primary | Supplemental | Total |
|---------|----------|---------|--------------|-------|
| **Dataset 1: Biological Data** | CAFI taxonomy, coral physiology, fish surveys | 8 | 2 | 10 |
| **Dataset 2: Coral Morphometry** | Photogrammetry, growth, colony characteristics | 5 | 4 | 9 |
| **Dataset 3: Experimental Design** | Treatment assignments, genetic samples | 3 | 1 | 4 |

### Studies Identified By:
- **Filename prefix**: `maatea_size_`, `moorea_survey_`, `mrb_amount_`
- **coral_id prefix**: MAT-POC (Maatea), FE-POC (MRB/Survey)

### File Classifications

**Primary Data Files:** Final, cleaned, analysis-ready data
**Supplemental Files:** Raw data, intermediate processing, methodological validation

---

## Data Processing Notes

### Special Value Codes (Documented in Metadata)

| Code | Meaning | Column(s) |
|------|---------|-----------|
| `<5` | Less than 5mm | cafi_size_mm |
| `<1` | Less than 1mm | cafi_size_mm |
| `L`, `M`, `S` | Size categories | cafi_size_mm |
| `-D` suffix | Dead colony | coral_id |
| `-A` suffix | Alternate sample | coral_id |

These are valid data flags, not missing values.

---

## Key Contacts

**For data questions:** Adrian Stier (astier@ucsb.edu)
**BCO-DMO submission:** https://www.bco-dmo.org/how-to/submit-data
**NSF Program:** OCE Biological Oceanography

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| v2.7 | 2026-01-20 | Added complete BCO-DMO requirements reference |
| v2.6 | 2025-01-03 | Repository cleanup, BCO-DMO finalization |
| v2.4 | 2025-01-03 | File consolidation (24→23 files) |
| v2.3 | 2025-01-02 | BCO-DMO full compliance, NSF award fix |
| v2.0 | 2024-10-24 | NSF/LTER compliant release |

---

## Quick Reference: BCO-DMO Do's and Don'ts

### DO ✅
- Use ISO 8601 dates: `2021-05-19`
- Leave missing cells blank
- Use decimal degrees: `-17.47428`
- Put units in column names: `surface_area_cm2`
- Use underscores in column names: `date_collected`
- Include timezone in metadata
- Archive code with DOI
- Provide image inventory for photos
- Validate species names with WoRMS

### DON'T ❌
- Use M/D/YYYY dates: `5/19/2021`
- Use NA, nd, 0 for missing data
- Use degree symbols: `17°28'S`
- Embed units in cells: `0.5 cm`
- Use periods in names: `date.collected`
- Forget timezone documentation
- Submit code without documentation
- Submit images without inventory
- Use unverified taxonomic names

---

*Last updated: 2026-01-20*
*This document contains complete BCO-DMO requirements for future reference*
