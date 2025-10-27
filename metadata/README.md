# Metadata Folder

This folder contains detailed metadata, methods documentation, and data dictionaries for the Mo'orea Coral CAFI dataset.

---

## 📁 File Organization

### Plain Text Method Overviews (.txt files)

**[README_amount_project_overview.txt](README_amount_project_overview.txt)**
- MRB Amount experiment complete methods
- Experimental design and density treatments
- Field protocols and measurements
- 17-month study timeline (Dec 2019 - May 2021)

**[README_size_project_overview.txt](README_size_project_overview.txt)**
- Maatea Size experiment complete methods
- Coral size gradient design
- CAFI removal protocols
- 24-month study timeline (2019-2021)

**[README_survey_project_overview.txt](README_survey_project_overview.txt)**
- Mo'orea survey study methods
- Neighborhood and size survey protocols
- CAFI extraction and identification procedures
- Summer 2019 field season

**[README_photogrammetry_metadata_v2.txt](README_photogrammetry_metadata_v2.txt)**
- 3D photogrammetry methods
- Model types: raw, open, closed
- Measurement descriptions and recommended usage
- Agisoft Metashape processing workflow

**[README_tip_stump_comparison_dec_2019.txt](README_tip_stump_comparison_dec_2019.txt)**
- Tip vs. stump comparison study
- Physiological measurements
- Sample processing and analysis
- December 2019 supplementary study

### Spatial and Personnel Metadata (NEW - Added 2025-10-27)

**[site_locations.csv](site_locations.csv)**
- GPS coordinates for all study sites (decimal degrees)
- MRB: -17.476703, -149.813681
- Maatea: -17.599607, -149.808107
- Survey sites around Mo'orea
- Depth ranges and habitat types

**Columns:**
- `site_code` - Site abbreviation
- `site_name` - Full site name
- `latitude_dd` - Latitude (decimal degrees)
- `longitude_dd` - Longitude (decimal degrees)
- `depth_range_m` - Depth range (meters)
- `distance_from_crest_m` - Distance from reef crest
- `habitat_type` - Backreef, forereef, etc.
- `description` - Detailed site description
- `study` - Associated experiment/survey

**[personnel.csv](personnel.csv)**
- Research team members and roles
- Contact information and ORCID IDs
- Contribution descriptions

**Columns:**
- `name` - Full name
- `role` - Position (PI, Field Technician, etc.)
- `affiliation` - Institution
- `email` - Contact email
- `orcid` - ORCID identifier
- `contribution` - Description of contributions

### Data Dictionaries (.xlsx files)

**Dataset-specific column descriptions:**
- `README_amount_physio_metadata_v6.xlsx` - MRB Amount physiology
- `README_amount_fish_metadata_v1.xlsx` - MRB Amount fish surveys
- `README_size_phys_metadata_v3.xlsx` - Maatea Size physiology
- `README_size_cafi_metadata_v1.xlsx` - Maatea Size CAFI
- `README_size_fish_metadata_v1.xlsx` - Maatea Size fish surveys
- `README_survey_cafi_metadata_v1.xlsx` - Survey CAFI taxonomy
- `README_survey_physio_metadata_v4.xlsx` - Survey physiology
- `README_survey_coral_characteristics_metadata_v2.xlsx` - Survey coral traits
- `README_photogrammetry_metadata_v2.docx` - Photogrammetry (Word format)

### Original Documentation (.docx files)

**Complete project overviews (original formats):**
- `README_survey_project_overview.docx`
- `README_size_project_overview.docx`
- `README_amount_project_overview.docx`
- `README_tip_stump_comparison_dec_2019.docx`

---

## 🗺️ Study Site Information

### MRB (North Shore Backreef)
- **Coordinates**: 17.476703°S, 149.813681°W
- **Habitat**: North shore backreef
- **Depth**: 2-3m
- **Distance from crest**: ~200m
- **Used in**: MRB Amount Experiment

### Maatea (South Shore Backreef)
- **Coordinates**: 17.599607°S, 149.808107°W
- **Habitat**: South shore backreef, east of Atiha pass
- **Depth**: 2-3m
- **Distance from crest**: ~300m
- **Used in**: Maatea Size Experiment

### Survey Sites
- **MRB, HAU, MAT** - Multiple locations around Mo'orea
- **General coordinates**: 17.5°S, 149.8°W
- **Depth**: 2-3m
- **Distance from crest**: 30-150m

### Time Zone
**All data collected in Tahiti Time (UTC-10)**

---

## 👥 Research Team

### Principal Investigators
- **Adrian C. Stier** (UCSB) - astier@ucsb.edu, ORCID: 0000-0002-5075-5759
- **Craig W. Osenberg** (UGA) - osenberg@uga.edu, ORCID: 0000-0002-9519-9525

### Field Team
- **Joseph Curtis** - Field Technician, UC Santa Barbara
- **Alex Primo** - Graduate Student Researcher, University of Georgia

### Funding
- **Grant**: NSF OCE-2224354
- **Program**: Ocean Sciences
- **Period**: 2021-2025

---

## 📖 How to Use This Metadata

### For Quick Reference
Start with the **.txt files** - they're human-readable plain text with clear formatting.

### For Detailed Column Descriptions
See the **.xlsx files** - each matches a specific data file and provides:
- Column names and definitions
- Units and data types
- Special codes and categories
- Measurement methods

### For Complete Methods
Read the **project overview files** (.txt or .docx) for:
- Experimental designs
- Field protocols
- Laboratory procedures
- Data collection timelines

### For Spatial Analysis
Use **site_locations.csv** to:
- Map study sites
- Add spatial context to analyses
- Link to external geographic data
- Calculate distances and areas

### For Proper Attribution
Use **personnel.csv** to:
- Cite contributors appropriately
- Contact researchers
- Understand team roles
- Link ORCID IDs

---

## 🔄 Version History

- **2025-10-27** - Added site_locations.csv and personnel.csv
- **2025-10-24** - Initial release with 5 .txt and 9 .xlsx files
- **2025-10-26** - Improved formatting of .txt overview files

---

## 📧 Questions?

For questions about:
- **Experimental methods**: See project overview .txt files
- **Column definitions**: See dataset-specific .xlsx files
- **Study sites**: See site_locations.csv
- **Team members**: See personnel.csv
- **Anything else**: Contact PIs listed above

---

**Last Updated**: 2025-10-27
**Total Files**: 21 (5 .txt + 2 .csv + 9 .xlsx + 4 .docx + 1 README.md)
