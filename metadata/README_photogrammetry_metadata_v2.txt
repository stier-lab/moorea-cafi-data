# Photogrammetry-Based Coral Measurements Metadata

## Applies To These Files:
- `mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv` (combined raw data, both time points)
- `maatea_size_photogrammetry_summer_2019_v1.xlsx`

**Note:** The cleaned/combined files (`mrb_amount_photogrammetry_measures_2019_2021_v1.csv` and
`maatea_size_photogrammetry_summary_*.csv`) contain selected measurements from these raw files.

**Important:** The original separate time-point files (`mrb_amount_photogrammetry_200k_mesh_dec_2019_v1.csv`
and `mrb_amount_photogrammetry_200k_mesh_may_2021_v1.csv`) have been combined into a single file with a
`sampling_date` column for easier analysis.

See `data/README_PHOTOGRAMMETRY_FILES.md` for guidance on which file to use.

## Dataset Information
- **Original dataset name**: Maatea_Dec_2019_data_measurements.csv
- **Data source**: 3D photogrammetry models of coral colonies
- **Software**: Agisoft Metashape

## Overview
This dataset contains measurements of coral colonies derived from 3D photogrammetry models.
Each coral was processed into three distinct model types to enable different measurements.

## Model Types

### 1. Raw Model (`_raw`)
- **Description**: Complete, unprocessed model
- **Includes**: Coral colony + base + surrounding substrate (sand, blocks, etc.)
- **Usage**: Included in dataset but **should be omitted from analyses**

### 2. Open Model (`_open`)
- **Description**: Cropped version of raw model
- **Includes**: Coral colony only, with open (uncapped) base
- **Usage**: Surface area measurements

### 3. Closed Model (`_closed`)
- **Description**: Further processed open model with capped bottom
- **Includes**: Watertight coral structure
- **Usage**: Volume, height, and planar area measurements

## Column Definitions

| Column Name              | Description                                           | Model Type  |
|--------------------------|-------------------------------------------------------|-------------|
| **Chunk**                | Coral colony identifier                               | All         |
|                          | Format: `<block>-<colony_id> (species_code)`          |             |
| **Model**                | Specific model type (`_raw`, `_open`, `_closed`)      | All         |
| **Model Type**           | Type of 3D representation (typically `Mesh`)          | All         |
| **Surface Area (cm²)**   | Total surface area of the model                       | `_open`     |
| **Area (cm²)**           | Top-down planar area (2D footprint)                   | `_closed`   |
| **Max Height (cm)**      | Highest point of the coral model                      | `_closed`   |
| **Min Height (cm)**      | Lowest point of the coral model                       | `_closed`   |
| **Height Range (cm)**    | Vertical height difference (Max - Min)                | `_closed`   |
| **Volume (cm³)**         | Total enclosed volume                                 | `_closed`   |
| **Extent Volume (cm³)**  | Bounding volume (maximum space occupied)              | `_closed`   |
| **Convex Hull Volume (cm³)** | Volume of smallest convex shape enclosing model   | `_closed`   |

## Measurement Details

### Chunk
Identifies individual coral colonies using the format: `<block>-<colony_id> (species_code)`

### Surface Area (cm²)
Total surface area measured from the `_open` model to exclude the base from calculations.

### Area (cm²)
Top-down planar area representing the 2D footprint of the coral when viewed from above.
Measured from `_closed` model.

### Height Metrics
- **Max Height**: Highest point on the coral structure
- **Min Height**: Lowest point on the coral structure
- **Height Range**: Calculated as `Max Height - Min Height`

All height measurements are from `_closed` models.

### Volume (cm³)
Total enclosed volume of the coral colony. Only valid for `_closed` models because they
are watertight.

### Convex Hull Volume (cm³)
Volume of the smallest convex shape that fully encloses the coral model. Calculated by
creating a convex hull—a geometric boundary that wraps around all points of the 3D model
without any inward indentations. This measurement provides an estimate of the maximum
possible space the coral could occupy, ignoring concavities or internal voids.

## Recommended Usage

### For Surface Area Measurements
Use **Surface Area (cm²)** from `_open` model

### For Volume Measurements
Use **Volume (cm³)** from `_closed` model

### For Height Measurements
Use **Height Range (cm)** from `_closed` model

### For Planar Area Measurements
Use **Area (cm²)** from `_closed` model

### For Structural Complexity Analysis
Compare **Convex Hull Volume** with **Actual Volume** (both from `_closed` model):
- **High ratio** (Actual/Convex Hull → 1): Compact, dense coral structure
- **Low ratio** (Actual/Convex Hull → 0): Complex, porous structure with many voids

This ratio estimates the proportion of space the coral actually occupies within its
bounding structure, providing insight into architectural complexity.
