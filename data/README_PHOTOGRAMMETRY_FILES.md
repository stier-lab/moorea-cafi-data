# Photogrammetry Data Files Guide

## Understanding MRB Amount Photogrammetry Files

There are **TWO photogrammetry files** for the MRB Amount experiment. Here's which one to use:

### ✅ RECOMMENDED FOR ANALYSIS:
**`mrb_amount_photogrammetry_measures_2019_2021_v1.csv`** (108 rows)
- **USE THIS FILE** for coral growth and surface area analyses
- Combined data from both Dec 2019 and May 2021
- Cleaned and organized with coral_id, year, and treatment information
- Contains selected best measurements (closed models for volume, open for surface area)
- One row per colony per time point
- 54 colonies × 2 time points = 108 rows

### 📊 TECHNICAL/RAW MODEL FILE:
**`mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv`** (264 rows)
- **NEW:** Combined raw data from both Dec 2019 and May 2021 in ONE file
- Contains ALL model versions (open, closed) for each colony at each time point
- Includes `sampling_date` column (2019-12-01 or 2021-05-01)
- Includes technical QC columns (version, issues_with_model)
- Multiple rows per colony: 2 model types × 2 time points = 4 rows per colony
- Use only if you need to:
  - Verify specific model versions
  - Check QC flags
  - Compare open vs closed model measurements
  - Troubleshoot measurements

**Note:** The original separate time-point files (`mrb_amount_photogrammetry_200k_mesh_dec_2019_v1.csv`
and `mrb_amount_photogrammetry_200k_mesh_may_2021_v1.csv`) have been archived. Craig correctly pointed out
these should be combined with a sampling date column for easier analysis.

---

## Understanding Maatea Size Photogrammetry Files

### Main Files:
**`maatea_size_photogrammetry_summary_dec_2019_v1.csv`** (58 rows)
- Summary measurements for Dec 2019 colonies

**`maatea_size_photogrammetry_summary_may_2021_v1.csv`** (59 rows)
- Summary measurements for May 2021 colonies

**`maatea_size_photogrammetry_summer_2019_v1.xlsx`** (60 rows)
- Detailed measurements including multiple model types

---

## Quick Reference Table

| File | Rows | Use For | Time Points |
|------|------|---------|-------------|
| `mrb_amount_photogrammetry_measures_2019_2021_v1.csv` | 108 | **Analysis** ✅ | Both (combined) |
| `mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv` | 264 | QC/verification | Both (combined) |
| `maatea_size_photogrammetry_summary_dec_2019_v1.csv` | 58 | Analysis | Dec 2019 only |
| `maatea_size_photogrammetry_summary_may_2021_v1.csv` | 59 | Analysis | May 2021 only |
| `maatea_size_photogrammetry_summer_2019_v1.xlsx` | 60 | Detailed data | Summer 2019 |

---

## Key Points:

1. **For analysis**: Use the "measures" or "summary" files ✅
2. **For QC/technical work**: Use the "200k_mesh" file
3. **MRB files now combined**: One file with `sampling_date` column (following Craig's suggestion)
4. **Multiple models per colony**: The raw 200k_mesh file has both open and closed model types
5. **Measures file = best measurements**: Already selected the appropriate model for each measurement type

---

## Understanding Model Types

Each coral colony was processed into different 3D model types:

### Model Types in Raw Data:
- **`_open_200K`** = Open base model (best for surface area measurements)
  - Includes coral surface but excludes base
  - Surface area column is most accurate here
  - Volume = 0 (because base is open, not watertight)

- **`_closed_200K`** = Closed base model (best for volume and height)
  - Watertight model with capped base
  - Volume measurements are accurate
  - Height measurements are accurate
  - Surface area slightly higher (includes capped base)

### Which Model to Use?
The "measures" file already did this for you! But if using the raw file:
- **For surface area**: Use `_open` model
- **For volume**: Use `_closed` model
- **For height**: Use `_closed` model

---

## Example: Working with the Combined File

### R Example:
```r
# Load the combined raw data
raw_data <- read.csv("data/mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv")

# Filter to specific time point
dec2019 <- subset(raw_data, sampling_date == "2019-12-01")
may2021 <- subset(raw_data, sampling_date == "2021-05-01")

# Get surface area from open models only
surface_area <- subset(raw_data, grepl("_open_", model))

# Calculate growth between time points
# (Better to use the measures file for this!)
```

### Python Example:
```python
import pandas as pd

# Load the combined raw data
raw_data = pd.read_csv("data/mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv")

# Filter by sampling date
dec2019 = raw_data[raw_data['sampling_date'] == '2019-12-01']
may2021 = raw_data[raw_data['sampling_date'] == '2021-05-01']

# Get only closed models for volume analysis
closed_models = raw_data[raw_data['model'].str.contains('_closed_')]
```

---

## Summary

**For 99% of analyses, use `mrb_amount_photogrammetry_measures_2019_2021_v1.csv`**

The raw 200k_mesh file is there if you need to:
- Verify QC flags
- Check specific model versions
- Compare different model types
- Debug unexpected measurements

See [README_photogrammetry_metadata_v2.txt](../metadata/README_photogrammetry_metadata_v2.txt) for complete technical details about model types and measurement methods.
