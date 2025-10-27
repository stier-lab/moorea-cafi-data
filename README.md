# Mo'orea Coral Reef CAFI Field Experiments (2019-2021)

**Cryptic Associated Fauna and Invertebrates (CAFI) Communities in Coral Reef Ecosystems**

![Status](https://img.shields.io/badge/status-complete-brightgreen)
![Data Quality](https://img.shields.io/badge/data-original%20preserved-blue)
![Files](https://img.shields.io/badge/files-25-orange)

---

## 📖 About This Dataset

This repository contains **complete, publication-ready data** from two field experiments and one observational survey investigating how cryptic invertebrate communities affect coral reef ecosystems in Mo'orea, French Polynesia (2019-2021).

**What are CAFI?** Cryptic Associated Fauna and Invertebrates are small organisms (crabs, shrimp, worms, snails) that live hidden within coral branches. These cryptic communities can significantly influence coral health and growth.

### Key Features:
- ✅ **Original data 100% preserved** - All data as collected in the field
- ✅ **Numeric columns added** - For statistical analysis (see below)
- ✅ **25 data files** - Covering 2 experiments and 1 survey
- ✅ **Complete metadata** - 13 README files with detailed methods
- ✅ **FAIR principles** - Findable, Accessible, Interoperable, Reusable

### Principal Investigators:
- **Adrian Stier**, UC Santa Barbara (astier@ucsb.edu)
- **Craig Osenberg**, University of Georgia

### Funding:
- NSF OCE-2224354 (Ocean Sciences)

---

## 🗂️ Repository Structure

```
Moorea_Coral_CAFI_Data/
├── README.md                          # This file - START HERE
├── DATA_DICTIONARY.md                 # Column descriptions for all files
├── GETTING_STARTED.md                 # Quick start guide
├── data/                              # 25 data files (CSV + Excel)
│   ├── maatea_size_*.csv             # Maatea Size experiment (9 files)
│   ├── moorea_survey_*.csv           # Mo'orea Survey (5 files)
│   └── mrb_amount_*.csv              # MRB Amount experiment (11 files)
├── metadata/                          # Original metadata from field
│   ├── README_size_*.xlsx            # Maatea Size metadata
│   ├── README_survey_*.xlsx          # Survey metadata
│   ├── README_amount_*.xlsx          # MRB Amount metadata
│   └── README_*_project_overview.docx
├── documentation/                     # Human-readable docs
│   ├── methods_overview.md           # Experimental methods
│   ├── data_collection_protocols.md  # Field protocols
│   └── column_descriptions.txt       # Plain text column guide
└── code/                              # Data processing scripts
    └── 00_process_round2_properly.py  # How data was prepared
```

---

## 🚀 Quick Start

### For First-Time Users:

1. **Start with [GETTING_STARTED.md](GETTING_STARTED.md)**
   - Overview of the three experiments
   - Which files to use for your analysis
   - Common workflows

2. **Check [DATA_DICTIONARY.md](DATA_DICTIONARY.md)**
   - Descriptions of every column in every file
   - Data types and units
   - Special codes and categories

3. **Choose your data files from `data/`**
   - All files have clear, descriptive names
   - See [File Naming Convention](#file-naming-convention) below

### For R Users:
```r
# Example: Load CAFI taxonomy data
cafi_data <- read.csv("data/maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv")

# Use original column for viewing
head(cafi_data$cafi_size_mm)  # Shows: "5.2", "<5", "L", etc.

# Use _numeric column for analysis
mean(cafi_data$cafi_size_mm_numeric, na.rm=TRUE)  # Calculates mean
```

### For Python Users:
```python
import pandas as pd

# Example: Load CAFI taxonomy data
cafi_data = pd.read_csv("data/maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv")

# Use original column for viewing
print(cafi_data['cafi_size_mm'].head())  # Shows: "5.2", "<5", "L", etc.

# Use _numeric column for analysis
cafi_data['cafi_size_mm_numeric'].mean()  # Calculates mean
```

---

## 📊 Two Experiments + One Survey

### 1. **Maatea Size Experiment** (9 files)
**Question:** Does coral colony size affect CAFI communities?

**Location:** Maatea, Mo'orea
**Years:** 2019-2021
**Coral colonies:** 60 *Pocillopora* colonies
**Treatments:** Different colony sizes with/without CAFI removal

**Key files:**
- `maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv` - CAFI invertebrate data
- `maatea_size_physiology_master_long_2019_2021_v3.csv` - Coral health metrics
- `maatea_size_fish_surveys_2019_2021_v1.csv` - Fish community data

### 2. **MRB Amount Experiment** (11 files)
**Question:** Does CAFI removal amount affect coral growth?

**Location:** MRB reef, Mo'orea
**Years:** 2019-2021
**Coral colonies:** 54 *Pocillopora* colonies
**Treatments:** 0%, 50%, 100% CAFI removal

**Key files:**
- `mrb_amount_cafi_field_experiment_summer_2021_v4.csv` - CAFI data
- `mrb_amount_coral_growth_surface_area_change_v1.csv` - Growth measurements
- `mrb_amount_physiology_master_2019_2021_v5.csv` - Coral physiology

### 3. **Mo'orea Survey** (5 files)
**Question:** What are natural CAFI communities like across Mo'orea?

**Location:** Multiple sites around Mo'orea
**Year:** 2019
**Coral colonies:** 114 *Pocillopora* colonies surveyed

**Key files:**
- `moorea_survey_cafi_taxonomy_summer_2019_v5.csv` - CAFI biodiversity
- `moorea_survey_coral_characteristics_merged_2019_v2.csv` - Coral traits
- `moorea_survey_physiology_master_2019_v3.csv` - Physiological measurements

---

## 📏 File Naming Convention

All files follow this pattern:
```
{experiment}_{datatype}_{temporal}_{version}.{ext}
```

**Examples:**
- `maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv`
  - **maatea_size** = Maatea Size experiment
  - **cafi_taxonomy** = CAFI species identification data
  - **merged_2019_2021** = Combined data from both years
  - **v2** = Version 2

- `mrb_amount_physiology_master_2019_2021_v5.csv`
  - **mrb_amount** = MRB Amount experiment
  - **physiology_master** = Complete physiological measurements
  - **2019_2021** = Data span 2019-2021
  - **v5** = Version 5

---

## ⚠️ IMPORTANT: Understanding Columns

### Many files have BOTH original and numeric columns:

**Original columns** (e.g., `cafi_size_mm`):
- Contains data **exactly as recorded in the field**
- May include: `<5`, `<1`, `L`, `M`, `S`, or numeric values
- **Use for:** Understanding what was recorded, data provenance

**Numeric columns** (e.g., `cafi_size_mm_numeric`):
- Contains **only numeric values** (non-numeric → NA)
- **Use for:** Statistical analysis, calculations, plots

**Example:**
```
Row 1:  cafi_size_mm = "8.5"     cafi_size_mm_numeric = 8.5
Row 2:  cafi_size_mm = "<5"      cafi_size_mm_numeric = NA
Row 3:  cafi_size_mm = "L"       cafi_size_mm_numeric = NA
Row 4:  cafi_size_mm = "12.3"    cafi_size_mm_numeric = 12.3
```

### Why both columns?
- **Original** = Preserves field notes like "too small to measure (<5mm)"
- **Numeric** = Enables calculations without losing original information

---

## 🔍 Data Codes and Categories

### Common CAFI Size Codes:
- `<5` = Less than 5mm (too small for precise measurement)
- `<1` = Less than 1mm (very small larvae/juveniles)
- `L` = Large (size category, not measurement)
- `M` = Medium (size category, not measurement)
- `S` = Small (size category, not measurement)

### Missing Data Codes:
- `NA` = Not available / not recorded
- Blank cells = Missing data
- `.` = Sometimes used for missing data

### Coral ID Format:
- Standard: `SITE-POC##` (e.g., `MAT-POC01`, `MRB-POC45`)
- **MAT** = Maatea site
- **MRB** = MRB site
- **FE** = Survey site code
- **HAU** = Survey site code
- **POC** = *Pocillopora* species
- Suffixes:
  - `D` = Dead colony (e.g., `FE-POC16D`)
  - `A` = Alternate sampling (e.g., `FE-POC11A`)

---

## 📐 Measurement Methods

### CAFI (Cryptic Associated Fauna and Invertebrates):
- **Collection:** Coral colonies wrapped in mesh bags, transported to lab
- **Extraction:** Clove oil anesthetization to expel invertebrates
- **Identification:** Sorted, measured, identified to lowest taxonomic level
- **Size:** Body length in millimeters (excluding appendages)

### Coral Photogrammetry:
- **Method:** Structure-from-Motion (SfM) 3D reconstruction
- **Software:** Agisoft Metashape
- **Measurements:** Surface area (cm²), height (cm), volume (cm³)
- **Note:** Heights measured relative to horizontal reference plane
  - Negative min heights = coral base below reference (valid!)

### Coral Physiology:
- **Tissue slurry:** Airbrushed coral tissue homogenized
- **Protein:** Bradford assay (mg/cm²)
- **Carbohydrates:** Phenol-sulfuric acid assay (mg/cm²)
- **Zooxanthellae:** Hemocytometer cell counts (cells/cm²)

---

## 🗃️ Complete File List

### Maatea Size Experiment (9 files):
1. `maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv` - 8,965 rows
2. `maatea_size_colony_measurements_wide_2019_2021_v1.csv` - 60 rows
3. `maatea_size_experimental_treatments_v1.csv` - 945 rows
4. `maatea_size_fish_surveys_2019_2021_v1.csv` - 4,581 rows
5. `maatea_size_genetic_samples_metadata_v3.xlsx` - 60 rows
6. `maatea_size_photogrammetry_summary_dec_2019_v1.csv` - 58 rows
7. `maatea_size_photogrammetry_summary_may_2021_v1.csv` - 59 rows
8. `maatea_size_photogrammetry_summer_2019_v1.xlsx` - 60 rows
9. `maatea_size_physiology_master_long_2019_2021_v3.csv` - 118 rows

### Mo'orea Survey (5 files):
10. `moorea_survey_cafi_taxonomy_summer_2019_v5.csv` - 3,989 rows
11. `moorea_survey_coral_characteristics_merged_2019_v2.csv` - 114 rows
12. `moorea_survey_physiology_master_2019_v3.csv` - 108 rows
13. `moorea_survey_tip_stump_comparison_dec_2019_v1.xlsx` - 21 rows
14. `moorea_survey_tip_stump_zoox_counts_dec_2019_v1.xlsx` - 108 rows

### MRB Amount Experiment (11 files):
15. `mrb_amount_cafi_field_experiment_summer_2021_v4.csv` - 4,119 rows
16. `mrb_amount_coral_growth_surface_area_change_filtered_v1.csv` - 44 rows
17. `mrb_amount_coral_growth_surface_area_change_v1.csv` - 54 rows
18. `mrb_amount_coral_id_position_treatment_v1.csv` - 54 rows
19. `mrb_amount_experimental_treatments_v1.csv` - 54 rows
20. `mrb_amount_fish_surveys_may_2021_v1.csv` - 999 rows
21. `mrb_amount_manual_colony_measurements_2019_2021_v1.xlsx` - 54 rows
22. `mrb_amount_photogrammetry_200k_mesh_dec_2019_v1.csv` - 134 rows
23. `mrb_amount_photogrammetry_200k_mesh_may_2021_v1.csv` - 130 rows
24. `mrb_amount_photogrammetry_measures_2019_2021_v1.csv` - 108 rows
25. `mrb_amount_physiology_master_2019_2021_v5.csv` - 53 rows

**Total:** 24,920 rows of data

---

## 🎯 Common Analysis Workflows

### 1. Analyze CAFI Community Composition
```r
# Load data
cafi <- read.csv("data/maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv")

# Summarize by family
library(dplyr)
cafi %>%
  filter(!is.na(family)) %>%
  group_by(family) %>%
  summarize(
    count = n(),
    mean_size = mean(cafi_size_mm_numeric, na.rm=TRUE)
  ) %>%
  arrange(desc(count))
```

### 2. Compare Coral Growth Between Treatments
```r
# Load data
growth <- read.csv("data/mrb_amount_coral_growth_surface_area_change_v1.csv")
treatments <- read.csv("data/mrb_amount_experimental_treatments_v1.csv")

# Merge and analyze
library(dplyr)
merged <- growth %>%
  left_join(treatments, by="coral_id") %>%
  group_by(treatment) %>%
  summarize(
    mean_growth = mean(delta_surface_area, na.rm=TRUE),
    se = sd(delta_surface_area, na.rm=TRUE)/sqrt(n())
  )
```

### 3. Link CAFI to Coral Physiology
```r
# Load both datasets
cafi <- read.csv("data/maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv")
phys <- read.csv("data/maatea_size_physiology_master_long_2019_2021_v3.csv")

# Count CAFI per colony
cafi_counts <- cafi %>%
  group_by(coral_id, time_point) %>%
  summarize(cafi_count = n())

# Merge with physiology
library(dplyr)
merged <- phys %>%
  left_join(cafi_counts, by=c("coral_id", "time_point"))

# Analyze relationship
cor.test(merged$cafi_count, merged$protein_mg_cm2)
```

---

## 📚 Additional Documentation

- **[GETTING_STARTED.md](GETTING_STARTED.md)** - Detailed introduction for new users
- **[DATA_DICTIONARY.md](DATA_DICTIONARY.md)** - Complete column descriptions
- **`metadata/`** - Original README files from data collection
- **`documentation/`** - Human-readable method descriptions

---

## 📄 Citation

If you use this data, please cite:

```
Stier, A.C. and Osenberg, C.W. (2025). Mo'orea Coral Reef CAFI Field
Experiments Data Package (2019-2021). Dataset.
https://github.com/stier-lab/moorea-cafi-data
```

---

## 📧 Contact

**Questions about the data?**
- Adrian Stier: astier@ucsb.edu
- Craig Osenberg: osenberg@uga.edu

**Technical issues with this repository?**
- Open an issue on GitHub

---

## 📜 License

This data is released under **CC-BY-4.0** (Creative Commons Attribution 4.0 International)

You are free to:
- Share — copy and redistribute
- Adapt — remix, transform, and build upon

Under these terms:
- Attribution — cite the dataset
- No additional restrictions

---

## ✅ Data Quality

- ✅ **Original data preserved** - No deletions or modifications
- ✅ **Numeric columns added** - For statistical analysis
- ✅ **Complete metadata** - Detailed methods for every file
- ✅ **Reproducible** - Processing code included
- ✅ **FAIR compliant** - Findable, Accessible, Interoperable, Reusable

---

## 🔄 Version History

- **v2.0** (2025) - NSF OCE and LTER/EDI compliant release
  - 25 data files from 2 experiments + 1 survey (added 2 tip/stump comparison files)
  - Complete metadata and documentation
  - All original data preserved with numeric columns added
  - Comprehensive data verification and quality control completed

---

**Last Updated:** 2025-10-24
**Repository Maintained By:** Stier Lab, UC Santa Barbara
