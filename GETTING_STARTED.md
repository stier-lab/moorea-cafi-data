# Getting Started with Mo'orea CAFI Data

Welcome! This guide will help you navigate the dataset and start your analysis.

---

## Step 1: Understand the Research Questions

### Three Experiments, One Goal:
**How do cryptic invertebrates (CAFI) affect coral reef ecosystems?**

### Experiment 1: Maatea Size
- **Question:** Does coral size affect CAFI communities?
- **Design:** 60 corals of different sizes, with/without CAFI
- **Location:** Maatea fringing reef, Mo'orea
- **Duration:** 2019-2021

### Experiment 2: MRB Amount
- **Question:** How much CAFI removal affects coral growth?
- **Design:** 54 corals with 0%, 50%, or 100% CAFI removal
- **Location:** MRB back reef, Mo'orea
- **Duration:** 2019-2021

### Survey: Mo'orea-wide
- **Question:** What's the natural variation in CAFI?
- **Design:** 114 corals surveyed across multiple sites
- **Location:** 4 sites around Mo'orea
- **When:** Summer 2019

---

## Step 2: Choose Your Files

### I want to study... CAFI communities
**Use these files:**
- `maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv` (8,965 invertebrates)
- `mrb_amount_cafi_field_experiment_summer_2021_v4.csv` (4,119 invertebrates)
- `moorea_survey_cafi_taxonomy_summer_2019_v5.csv` (3,989 invertebrates)

**Key columns:**
- `family`, `genus`, `species` - Taxonomic identification
- `cafi_size_mm` - Original size (may include "<5", "L", "M")
- `cafi_size_mm_numeric` - Numeric-only for analysis
- `coral_id` - Links to coral colony
- `time_point` - When sampled (initial/intermediate/final)

### I want to study... Coral growth
**Use these files:**
- `mrb_amount_coral_growth_surface_area_change_v1.csv` (54 corals)
- `mrb_amount_photogrammetry_measures_2019_2021_v1.csv` (108 measurements)

**Key columns:**
- `delta_surface_area` - Change in coral surface area (cm²)
- `delta_max_height` - Change in max height (cm)
- `coral_id` - Colony identifier

### I want to study... Coral physiology
**Use these files:**
- `maatea_size_physiology_master_long_2019_2021_v3.csv` (118 samples)
- `mrb_amount_physiology_master_2019_2021_v5.csv` (53 samples)
- `moorea_survey_physiology_master_2019_v3.csv` (108 samples)

**Key columns:**
- `protein_mg_cm2` - Tissue protein content
- `carb_mg_cm2` - Carbohydrate content
- `zoox_cells_cm2` - Zooxanthellae density
- `surface_area` - Coral surface area

### I want to study... Fish communities
**Use these files:**
- `maatea_size_fish_surveys_2019_2021_v1.csv` (4,581 observations)
- `mrb_amount_fish_surveys_may_2021_v1.csv` (999 observations)

**Key columns:**
- `family`, `genus`, `species` - Fish taxonomy
- `count` - Number observed
- `cafi_size_mm` - Fish size

---

## Step 3: Load Your Data

### In R:
```r
# Set working directory
setwd("path/to/Moorea_Coral_CAFI_Data")

# Load CAFI data
cafi <- read.csv("data/maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv")

# Check structure
str(cafi)
head(cafi)

# Summary statistics
summary(cafi$cafi_size_mm_numeric)  # Use _numeric for calculations
```

### In Python:
```python
import pandas as pd
import os

# Set working directory
os.chdir("path/to/Moorea_Coral_CAFI_Data")

# Load CAFI data
cafi = pd.read_csv("data/maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv")

# Check structure
print(cafi.info())
print(cafi.head())

# Summary statistics
print(cafi['cafi_size_mm_numeric'].describe())  # Use _numeric for calculations
```

---

## Step 4: Understand Original vs Numeric Columns

### The Problem:
Field data often includes **non-numeric values** that carry meaning:
- `<5` = "too small to measure precisely, less than 5mm"
- `L`, `M`, `S` = size categories
- These are important information, not errors!

### The Solution:
We provide **both columns**:

1. **Original column** (e.g., `cafi_size_mm`):
   - Exactly what was written in field notes
   - Preserves all information
   - **Use for:** Understanding what was recorded

2. **Numeric column** (e.g., `cafi_size_mm_numeric`):
   - Only numeric values (non-numeric → NA)
   - **Use for:** Calculations, statistics, plots

### Example:
```r
# View original data
cafi$cafi_size_mm
#  [1] "8.5"  "<5"   "L"    "12.3" "6.1"  "<1"

# Calculate mean (use numeric column)
mean(cafi$cafi_size_mm_numeric, na.rm = TRUE)
#  [1] 8.97

# How many were too small to measure?
sum(cafi$cafi_size_mm == "<5", na.rm = TRUE)
#  [1] 234
```

---

## Step 5: Link Data Across Files

### All files share common identifiers:

**`coral_id`** - Links everything to a specific coral colony
- Format: `SITE-POC##` (e.g., `MAT-POC01`, `MRB-POC45`)
- Present in: CAFI, physiology, photogrammetry, treatments

**`time_point`** - Links to sampling time
- Values: `initial`, `intermediate`, `final`
- Present in: Most experimental files

**`date`** - Links to specific date
- Format varies by file (see DATA_DICTIONARY)
- Present in: Most files

### Example: Link CAFI to Physiology
```r
library(dplyr)

# Load data
cafi <- read.csv("data/maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv")
phys <- read.csv("data/maatea_size_physiology_master_long_2019_2021_v3.csv")

# Count CAFI per colony
cafi_counts <- cafi %>%
  group_by(coral_id) %>%
  summarize(total_cafi = n())

# Merge
merged <- phys %>%
  left_join(cafi_counts, by = "coral_id")

# Analyze
plot(merged$total_cafi, merged$protein_mg_cm2)
```

---

## Step 6: Handle Missing Data

### Missing data codes:
- `NA` - Not available
- Blank cells - Not recorded
- `.` - Sometimes used

### In R:
```r
# Remove NA values
cafi_clean <- cafi[!is.na(cafi$cafi_size_mm_numeric), ]

# Or use na.rm in functions
mean(cafi$cafi_size_mm_numeric, na.rm = TRUE)
```

### In Python:
```python
# Remove NA values
cafi_clean = cafi.dropna(subset=['cafi_size_mm_numeric'])

# Or use skipna in functions
cafi['cafi_size_mm_numeric'].mean(skipna=True)
```

---

## Step 7: Common Pitfalls & Solutions

### Pitfall 1: Using original columns in calculations
```r
# ❌ WRONG - will error on non-numeric values
mean(cafi$cafi_size_mm)
# Error: argument is not numeric or logical

# ✅ CORRECT - use _numeric column
mean(cafi$cafi_size_mm_numeric, na.rm = TRUE)
```

### Pitfall 2: Losing information from "<5" values
```r
# ❌ WRONG - treats as missing
cafi_clean <- cafi[!is.na(cafi$cafi_size_mm_numeric), ]
# Lost 234 observations that were recorded as "<5"!

# ✅ CORRECT - analyze separately or impute
small_cafi <- cafi[cafi$cafi_size_mm == "<5", ]
nrow(small_cafi)  # 234 - these are real observations!
```

### Pitfall 3: Wrong join keys
```r
# ❌ WRONG - will create duplicates
merged <- left_join(cafi, phys, by = "coral_id")
# Problem: Multiple CAFI per coral, wrong matches!

# ✅ CORRECT - aggregate first
cafi_summary <- cafi %>%
  group_by(coral_id, time_point) %>%
  summarize(cafi_count = n())

merged <- left_join(phys, cafi_summary, by = c("coral_id", "time_point"))
```

---

## Step 8: Check Metadata

### For detailed methods, see:
- `metadata/README_*_project_overview.docx` - Experimental overview
- `metadata/README_*_cafi_metadata_v*.xlsx` - CAFI column descriptions
- `metadata/README_*_phys_metadata_v*.xlsx` - Physiology methods
- `DATA_DICTIONARY.md` - All column descriptions

---

## Example Analyses

### 1. CAFI Diversity by Coral Size
```r
library(dplyr)
library(ggplot2)

# Load data
cafi <- read.csv("data/maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv")
sizes <- read.csv("data/maatea_size_colony_measurements_wide_2019_2021_v1.csv")

# Calculate diversity per colony
diversity <- cafi %>%
  group_by(coral_id) %>%
  summarize(
    richness = n_distinct(family, na.rm = TRUE),
    abundance = n()
  )

# Merge with size data
merged <- left_join(diversity, sizes, by = "coral_id")

# Plot
ggplot(merged, aes(x = sa_june_cm2, y = richness)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(x = "Coral Surface Area (cm²)",
       y = "CAFI Family Richness",
       title = "CAFI Diversity Increases with Coral Size")
```

### 2. Treatment Effect on Coral Growth
```r
library(dplyr)
library(ggplot2)

# Load data
growth <- read.csv("data/mrb_amount_coral_growth_surface_area_change_v1.csv")
treatments <- read.csv("data/mrb_amount_experimental_treatments_v1.csv")

# Merge
merged <- left_join(growth, treatments, by = "coral_id")

# Summary by treatment
summary_stats <- merged %>%
  group_by(treatment) %>%
  summarize(
    mean_growth = mean(delta_surface_area, na.rm = TRUE),
    se = sd(delta_surface_area, na.rm = TRUE) / sqrt(n()),
    n = n()
  )

# Plot
ggplot(summary_stats, aes(x = treatment, y = mean_growth)) +
  geom_bar(stat = "identity") +
  geom_errorbar(aes(ymin = mean_growth - se, ymax = mean_growth + se), width = 0.2) +
  labs(x = "CAFI Removal Treatment",
       y = "Change in Surface Area (cm²)",
       title = "Effect of CAFI Removal on Coral Growth")
```

### 3. Taxonomic Composition
```r
library(dplyr)
library(ggplot2)

# Load data
cafi <- read.csv("data/moorea_survey_cafi_taxonomy_summer_2019_v5.csv")

# Top 10 families
top_families <- cafi %>%
  filter(!is.na(family)) %>%
  count(family, sort = TRUE) %>%
  head(10)

# Plot
ggplot(top_families, aes(x = reorder(family, n), y = n)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(x = "Family",
       y = "Count",
       title = "Top 10 CAFI Families in Mo'orea Survey")
```

---

## Need Help?

### Resources:
1. **DATA_DICTIONARY.md** - Complete column descriptions
2. **README.md** - Repository overview
3. **`metadata/` folder** - Original field metadata
4. **GitHub Issues** - Ask questions, report problems

### Contact:
- Adrian Stier: astier@ucsb.edu
- Craig Osenberg: osenberg@uga.edu

---

**Happy analyzing! 🐠🪸**
