# Photogrammetry Data Files Guide

## Understanding MRB Amount Photogrammetry Files

There are **three different photogrammetry files** for the MRB Amount experiment. Here's which one to use:

### ✅ RECOMMENDED FOR ANALYSIS:
**`mrb_amount_photogrammetry_measures_2019_2021_v1.csv`**
- **USE THIS FILE** for coral growth and surface area analyses
- Combined data from both Dec 2019 and May 2021
- Cleaned and organized with coral_id, year, and treatment information
- Contains measurements from closed models (best for volume) and open models (best for surface area)
- 108 rows (54 colonies × 2 time points)

### 📊 TECHNICAL/RAW MODEL FILES:
**`mrb_amount_photogrammetry_200k_mesh_dec_2019_v1.csv`** (134 rows)
- Raw output from Agisoft Metashape for December 2019
- Contains ALL model versions (open, closed, raw) for each colony
- Includes technical columns and QC notes
- Use only if you need to verify specific model versions or troubleshoot measurements

**`mrb_amount_photogrammetry_200k_mesh_may_2021_v1.csv`** (130 rows)
- Raw output from Agisoft Metashape for May 2021
- Contains ALL model versions (open, closed, raw) for each colony
- Use only if you need to verify specific model versions or troubleshoot measurements

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

## Key Points:

1. **Different time points** = Different files (Dec 2019 vs May 2021)
2. **MRB "measures" file combines both time points** in one clean file ✅
3. **MRB "200k_mesh" files** are raw technical outputs with multiple model versions per colony
4. For **analysis**: Use the "measures" or "summary" files
5. For **technical verification**: Use the "200k_mesh" files

---

## Why Multiple Models?

Each coral colony was processed into 3 model types:
- **`_open`** = Best for surface area (includes coral surface, excludes base)
- **`_closed`** = Best for volume and height (watertight model)
- **`_raw`** = Includes everything (coral + base + substrate) - DO NOT USE for analysis

See [README_photogrammetry_metadata_v2.txt](../metadata/README_photogrammetry_metadata_v2.txt) for full details.
