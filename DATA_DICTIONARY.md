# Data Dictionary

Complete descriptions of all columns across all 23 data files.

---

## Quick Column Reference

### Common Identifiers (in most files):
- **`coral_id`** - Unique coral colony ID (format: SITE-POC##, e.g., MAT-POC01)
- **`time_point`** - Sampling time (initial, intermediate, final)
- **`date`** / **`date_collected`** / **`date_observed`** - Sampling date
- **`site`** - Reef site name (Maatea, MRB, FE, HAU)
- **`position`** - Grid position (e.g., "A1", "B3")

### CAFI Measurements:
- **`cafi_size_mm`** - Original size field data (may include "<5", "L", "M")
- **`cafi_size_mm_numeric`** - Numeric-only version for calculations
- **`count`** - Number of individuals

### Taxonomic Columns:
- **`phylum`** - Taxonomic phylum
- **`class`** - Taxonomic class
- **`order`** - Taxonomic order
- **`family`** - Taxonomic family
- **`genus`** - Genus name
- **`species`** - Species name
- **`lowest_level`** - Most specific taxonomic identification achieved

### Coral Measurements:
- **`surface_area`** / **`surface_area_cm2`** - Coral surface area (cm²)
- **`max_height`** / **`max_height_cm`** - Maximum height (cm)
- **`min_height`** / **`min_height_cm`** - Minimum height (cm)
- **`volume`** / **`volume_cm3`** - Coral volume (cm³)

### Physiology:
- **`protein_mg_cm2`** - Protein content (mg/cm²)
- **`carb_mg_cm2`** - Carbohydrate content (mg/cm²)
- **`zoox_cells_cm2`** - Zooxanthellae density (cells/cm²)

---

## Column Details by File Type

### CAFI Taxonomy Files

**Files:**
- `maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv`
- `mrb_amount_cafi_field_experiment_summer_2021_v4.csv`
- `moorea_survey_cafi_taxonomy_summer_2019_v5.csv`

**Column Descriptions:**

| Column | Type | Description | Special Values |
|--------|------|-------------|----------------|
| `coral_id` | Text | Coral colony identifier | MAT-POC01, MRB-POC45, etc. |
| `date_collected` | Date | Collection date | YYYY-MM-DD format |
| `date_observed` | Date | Observation date | YYYY-MM-DD format |
| `time_point` | Category | Sampling period | initial, intermediate, final |
| `site` | Category | Reef site | Maatea, MRB, FE, HAU |
| `type` | Category | Organism type | crab, shrimp, worm, etc. |
| `code` | Text | Taxonomic code | Family-level abbreviations |
| `count` | Number | Number of individuals | 1, 2, 3, ... |
| `cafi_size_mm` | Text/Number | Original size measurement | Numeric, "<5", "<1", "L", "M", "S" |
| `cafi_size_mm_numeric` | Number | Numeric-only size | NA where original was non-numeric |
| `alt_size_mm` | Number | Alternative measurement | When primary failed |
| `photo_type` | Category | Photo documentation | micro, macro, etc. |
| `photo_num` | Text | Photo file number | Reference to images |
| `notes` | Text | Field notes | Free text |
| `worms_id` | Number | WoRMS database ID | Taxonomic database reference |
| `phylum` | Text | Phylum name | Arthropoda, Annelida, etc. |
| `subphylum` | Text | Subphylum | Crustacea, etc. |
| `superclass` | Text | Superclass | Multicrustacea, etc. |
| `class` | Text | Class name | Malacostraca, Polychaeta, etc. |
| `subclass` | Text | Subclass | Eumalacostraca, etc. |
| `superorder` | Text | Superorder | Eucarida, etc. |
| `order` | Text | Order name | Decapoda, Amphipoda, etc. |
| `suborder` | Text | Suborder | Pleocyemata, etc. |
| `infraorder` | Text | Infraorder | Brachyura, Caridea, etc. |
| `superfamily` | Text | Superfamily | Xanthoidea, etc. |
| `family` | Text | Family name | Xanthidae, Alpheidae, etc. |
| `subfamily` | Text | Subfamily | When applicable |
| `genus` | Text | Genus name | *Alpheus*, *Trapezia*, etc. |
| `species` | Text | Species name | Full binomial |
| `lowest_level` | Category | ID confidence | family, genus, species |

**Special Codes:**
- **`<5`** in `cafi_size_mm` = Organism too small for precise measurement (<5mm)
- **`<1`** in `cafi_size_mm` = Very small organism (<1mm)
- **`L`**, **`M`**, **`S`** = Size categories (Large, Medium, Small) not measurements

---

### Physiology Files

**Files:**
- `maatea_size_physiology_master_long_2019_2021_v3.csv`
- `mrb_amount_physiology_master_2019_2021_v5.csv`
- `moorea_survey_physiology_master_2019_v3.csv`

**Column Descriptions:**

| Column | Type | Unit | Description |
|--------|------|------|-------------|
| `coral_id` | Text | - | Coral colony identifier |
| `slurry_date` | Date | - | Date tissue sampled |
| `slurry_notes` | Text | - | Field notes from sampling |
| `surface_area` | Number | cm² | Coral surface area |
| `protein_mg_cm2` | Number | mg/cm² | Protein content normalized to surface area |
| `carb_mg_cm2` | Number | mg/cm² | Carbohydrate content normalized to surface area |
| `zoox_cells_cm2` | Number | cells/cm² | Zooxanthellae density |
| `protein_analysis_date` | Date | - | Lab analysis date |
| `carb_analysis_date` | Date | - | Lab analysis date |
| `dna_collection_date` | Date | - | When DNA sample taken |
| `haplotype` | Category | - | Genetic haplotype |
| `branch_width` | Category | - | Size category (thin, medium, thick) |

**Methods:**
- **Protein:** Bradford assay
- **Carbohydrates:** Phenol-sulfuric acid assay
- **Zooxanthellae:** Hemocytometer counts

---

### Photogrammetry Files

**Files:**
- `maatea_size_photogrammetry_2019_2021_v1.csv` (combined Dec 2019 + May 2021 with sampling_date column)
- `mrb_amount_photogrammetry_measures_2019_2021_v1.csv` (cleaned for analysis)
- `mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv` (raw data - supplemental)

**Column Descriptions:**

| Column | Type | Unit | Description |
|--------|------|------|-------------|
| `Chunk` / `chunk` | Text | - | Metashape chunk name |
| `Model` / `model` | Text | - | 3D model identifier |
| `Model.type` / `model_type` | Category | - | Model quality level |
| `coral_id` | Text | - | Colony identifier |
| `Projected.area..cm2.` | Number | cm² | Projected 2D area |
| `Surface.area..cm2.` | Number | cm² | 3D surface area |
| `Volume..cm3.` | Number | cm³ | Colony volume |
| `Max.height..cm.` / `max_height_cm` | Number | cm | Maximum height above reference |
| `Min.height..cm.` / `min_height_cm` | Number | cm | Minimum height (can be negative!) |
| `sampling_date` | Date | YYYY-MM-DD | Date of photogrammetry data collection (2019-12-01 or 2021-05-01) |
| `version` | Text | - | Model version number (in raw 200k mesh file only) |
| `issues_with_model` | Text | yes/no | Quality flag for model issues (in raw 200k mesh file only) |

**Important Notes:**
- Heights measured relative to **horizontal reference plane**
- **Negative min heights are VALID** - coral base below reference plane
- Common when corals attached in depressions or to undersides

---

### Growth Files

**Files:**
- `mrb_amount_coral_growth_surface_area_change_v1.csv`
- `mrb_amount_coral_growth_surface_area_change_filtered_v1.csv`

**Column Descriptions:**

| Column | Type | Unit | Description |
|--------|------|------|-------------|
| `coral_id` | Text | - | Colony identifier |
| `delta_surface_area` | Number | cm² | Change in surface area (can be negative) |
| `delta_max_height` | Number | cm | Change in max height (can be negative) |
| `initial_surface_area` | Number | cm² | Surface area at start |
| `final_surface_area` | Number | cm² | Surface area at end |
| `reef` | Category | - | Reef location |

**Important Notes:**
- **Negative deltas are VALID** - indicate shrinkage/mortality
- Common biological phenomenon in stressed corals

---

### Treatment Assignment Files

**Files:**
- `maatea_size_experimental_treatments_v1.csv`
- `mrb_amount_experimental_treatments_v1.csv`
- `mrb_amount_coral_id_position_treatment_v1.csv`

**Column Descriptions:**

| Column | Type | Description | Values |
|--------|------|-------------|--------|
| `coral_id` / `coral` | Text | Colony identifier | SITE-POC## |
| `position` | Text | Grid position | A1, B3, etc. |
| `treatment` | Category | Experimental treatment | varies by experiment |
| `row` | Number | Grid row number | 1-9 |
| `column` | Number | Grid column number | 1-6 |
| `branch_width` | Category | Size category | thin, medium, thick |
| `size_class` | Category | Size category | varies |

**Treatment Codes:**
- **Maatea:** CAFI present/absent × Size categories
- **MRB:** 0%, 50%, 100% CAFI removal

---

### Fish Survey Files

**Files:**
- `maatea_size_fish_surveys_2019_2021_v1.csv`
- `mrb_amount_fish_surveys_may_2021_v1.csv`

**Column Descriptions:**

| Column | Type | Description |
|--------|------|-------------|
| `obs` | Text | Observer initials |
| `date` | Date | Survey date |
| `row` | Number | Grid row |
| `column` | Number | Grid column |
| `resident_transient` | Category | Fish behavior (resident/transient) |
| `location` | Text | Microhabitat location |
| `code` | Text | Species code |
| `count` | Number | Number observed |
| `cafi_size_mm` | Text/Number | Fish length (mm) |
| `family` | Text | Fish family |
| `genus` | Text | Fish genus |
| `species` | Text | Fish species |
| `notes` | Text | Field notes |

---

## Data Type Legend

- **Text** - String/character data
- **Number** - Numeric (integer or decimal)
- **Date** - Date format (usually YYYY-MM-DD)
- **Category** - Categorical/factor data (limited set of values)

---

## Missing Data Handling

**Standard**: All missing data is represented by **blank/empty cells** (BCO-DMO compliant).

**Note**: This dataset does NOT use placeholder codes like `NA`, `.`, or `-` for missing values. Empty cells indicate missing data.

### Special Data Flags (Not Missing Values)

These codes represent meaningful field observations, NOT missing data:

| Code | Meaning | Column |
|------|---------|--------|
| `<5` | Less than 5mm (too small to measure precisely) | cafi_size_mm |
| `<1` | Less than 1mm (very small larvae/juveniles) | cafi_size_mm |
| `L`, `M`, `S` | Size categories (Large, Medium, Small) | cafi_size_mm |

### Timezone

All dates and times in this dataset are in **Tahiti Time (UTC-10)**.

---

---

## Metadata Reference Files

### New Metadata Files (Added 2025-10-27)

**[metadata/site_locations.csv](metadata/site_locations.csv)**
- GPS coordinates for all study sites (decimal degrees)
- Depth ranges and habitat types
- Distance from reef crest

**Columns:**
- `site_code` - Site abbreviation (MRB, MAT, HAU, etc.)
- `site_name` - Full site name
- `latitude_dd` - Latitude in decimal degrees
- `longitude_dd` - Longitude in decimal degrees
- `depth_range_m` - Depth range in meters
- `distance_from_crest_m` - Distance from reef crest
- `habitat_type` - Backreef, forereef, etc.
- `description` - Detailed site description
- `study` - Which experiment/survey

**[metadata/personnel.csv](metadata/personnel.csv)**
- Research team members and roles
- Contact information and contributions

**Columns:**
- `name` - Full name
- `role` - Position (PI, Field Technician, etc.)
- `affiliation` - Institution
- `email` - Contact email
- `orcid` - ORCID identifier
- `contribution` - Description of contributions

### Additional Metadata

See the `metadata/` folder for:
- **5 .txt files** - Plain text method overviews
- **9 .xlsx files** - Detailed column descriptions
- **Original .docx files** - Complete experimental protocols

---

**Last Updated:** 2025-01-03

**BCO-DMO Compliance Update:** All date columns converted to ISO 8601 format (YYYY-MM-DD), column names standardized, missing values represented as blank cells. Dataset organization consolidated to 3 datasets (Biological Data, Coral Morphometry, Experimental Design).
