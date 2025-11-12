# BCO-DMO Submission Checklist

**Dataset:** Mo'orea Coral Reef CAFI Field Experiments (2019-2021)
**PIs:** Adrian Stier (UCSB) and Craig Osenberg (UGA)
**NSF Awards:** OCE-1851510 and OCE-1851503
**Target Submission Date:** November 30, 2024

---

## ✅ Pre-Submission Review (Complete These First)

### Documentation Review
- [x] README.md is complete and accurate
- [x] All column names are defined in DATA_DICTIONARY.md
- [x] Measurement methods are clearly described
- [x] Missing data codes are explained
- [x] Personnel information is complete
- [x] Funding information is correct (OCE-1851510 and OCE-1851503)
- [x] All files have clear naming conventions

### Data Files Review
- [x] All 24 data files are present in `data/` folder
- [x] No duplicate or backup files in main data folder
- [x] File formats are appropriate (CSV for tables, XLSX for complex metadata)
- [x] All data files have corresponding metadata/README files
- [x] Photogrammetry files are properly documented

### Metadata Review
- [x] All experiments have project overview files
- [x] Photogrammetry methods are documented
- [x] Site locations and coordinates are included
- [x] Personnel list includes all contributors
- [x] Plain text (.txt) versions of methods are available

### Quality Control
- [ ] Review one CSV file to verify: no blank cells (should be NA), consistent date formats
- [ ] Check that all referenced files exist
- [ ] Verify GPS coordinates are correct (Mo'orea: ~17.5°S, 149.8°W)
- [ ] Confirm data ranges are reasonable (no obvious errors)

---

## 📋 BCO-DMO Submission Process

### Step 1: Create BCO-DMO Account
- [ ] Go to https://www.bco-dmo.org/
- [ ] Create account or log in
- [ ] Verify PI/co-PI status

### Step 2: Initiate Data Submission
- [ ] Navigate to "Contribute Data" section
- [ ] Select "Submit New Dataset"
- [ ] Fill in NSF award numbers: **OCE-1851510** and **OCE-1851503**

### Step 3: Provide Dataset Overview
Fill in the following information:

**Dataset Title:**
```
Mo'orea Coral Reef CAFI (Cryptic Associated Fauna and Invertebrates) Field Experiments and Survey (2019-2021)
```

**Brief Description (150-200 words):**
```
This dataset contains complete data from two field experiments and one observational survey
investigating how cryptic invertebrate communities (CAFI) affect coral reef ecosystems in
Mo'orea, French Polynesia (2019-2021). The Maatea Size Experiment examined how coral colony
size affects CAFI communities using 60 Pocillopora colonies. The MRB Amount Experiment
tested how coral habitat density affects CAFI community assembly using 54 Pocillopora colonies
in low, medium, and high density treatments. The Mo'orea Survey characterized natural CAFI
communities across 114 Pocillopora colonies at multiple reef sites. Data include: CAFI species
identification and abundance (17,073 organism records), coral photogrammetry measurements
(3D surface area, volume, height), coral physiology (protein, carbohydrates, zooxanthellae),
fish community surveys, genetic samples metadata, and experimental treatment information.
All measurements span pre- and post-experiment time points (Dec 2019 and May 2021).
```

**Keywords:**
```
coral reefs, cryptic invertebrates, CAFI, Pocillopora, Mo'orea, French Polynesia,
symbiosis, biodiversity, community ecology, field experiment, coral health,
photogrammetry, crustaceans, coral-dwelling fauna
```

**Geographic Coverage:**
```
Mo'orea, French Polynesia
Latitude: 17.45°S to 17.60°S
Longitude: 149.75°W to 149.90°W
```

**Temporal Coverage:**
```
2019-12-01 to 2021-05-31
```

**Principal Investigators:**
```
Adrian C. Stier (University of California, Santa Barbara) - astier@ucsb.edu - ORCID: 0000-0002-5075-5759
Craig W. Osenberg (University of Georgia) - osenberg@uga.edu - ORCID: 0000-0002-9519-9525
```

**Additional Personnel:**
```
Joseph Curtis (UC Santa Barbara) - Field Technician
Alex Primo (University of Georgia) - Graduate Student Researcher
Dan Cryan (University of Georgia) - PhD Student
Molly Brzezinski (UC Santa Barbara) - Lab Manager
Kelsey Vaughn (University of Georgia) - PhD Student
Ninah Munk (UC Santa Barbara) - MS Student
Lily Zhao (UC Santa Barbara) - PhD Student
Kai Kopecky (UC Santa Barbara) - PhD Student
Christian Deneka (University of Georgia) - Undergraduate Researcher
```

### Step 4: Upload Files

**Data Files to Submit (24 files):**

Core CAFI and Experiment Files:
- [ ] `maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv`
- [ ] `maatea_size_colony_measurements_wide_2019_2021_v1.csv`
- [ ] `maatea_size_experimental_treatments_v1.csv`
- [ ] `maatea_size_fish_surveys_2019_2021_v1.csv`
- [ ] `maatea_size_genetic_samples_metadata_v3.xlsx`
- [ ] `maatea_size_photogrammetry_summary_dec_2019_v1.csv`
- [ ] `maatea_size_photogrammetry_summary_may_2021_v1.csv`
- [ ] `maatea_size_photogrammetry_summer_2019_v1.xlsx`
- [ ] `maatea_size_physiology_master_long_2019_2021_v3.csv`
- [ ] `moorea_survey_cafi_taxonomy_summer_2019_v5.csv`
- [ ] `moorea_survey_coral_characteristics_merged_2019_v2.csv`
- [ ] `moorea_survey_physiology_master_2019_v3.csv`
- [ ] `moorea_survey_tip_stump_comparison_dec_2019_v1.xlsx`
- [ ] `moorea_survey_tip_stump_zoox_counts_dec_2019_v1.xlsx`
- [ ] `mrb_amount_cafi_field_experiment_summer_2021_v4.csv`
- [ ] `mrb_amount_coral_growth_surface_area_change_filtered_v1.csv`
- [ ] `mrb_amount_coral_growth_surface_area_change_v1.csv`
- [ ] `mrb_amount_coral_id_position_treatment_v1.csv`
- [ ] `mrb_amount_experimental_treatments_v1.csv`
- [ ] `mrb_amount_fish_surveys_may_2021_v1.csv`
- [ ] `mrb_amount_manual_colony_measurements_2019_2021_v1.xlsx`
- [ ] `mrb_amount_photogrammetry_200k_mesh_2019_2021_v1.csv`
- [ ] `mrb_amount_photogrammetry_measures_2019_2021_v1.csv`
- [ ] `mrb_amount_physiology_master_2019_2021_v5.csv`

**Metadata Files to Submit:**
- [ ] `README.md` (main documentation)
- [ ] `DATA_DICTIONARY.md`
- [ ] `GETTING_STARTED.md`
- [ ] `metadata/README_amount_project_overview.txt`
- [ ] `metadata/README_size_project_overview.txt`
- [ ] `metadata/README_survey_project_overview.txt`
- [ ] `metadata/README_photogrammetry_metadata_v2.txt`
- [ ] `metadata/README_tip_stump_comparison_dec_2019.txt`
- [ ] `metadata/personnel.csv`
- [ ] `metadata/site_locations.csv`
- [ ] `data/README_PHOTOGRAMMETRY_FILES.md`

**Supporting Files:**
- [ ] `CITATION.cff`
- [ ] `LICENSE`
- [ ] `DOI_AND_VERSIONING.md`

### Step 5: Define Parameters and Variables

BCO-DMO will ask you to define parameters for each data file. Use the information in:
- `DATA_DICTIONARY.md` for column definitions
- README files for units and measurement methods

**Common Parameter Definitions Needed:**
- coral_id: Unique identifier for coral colony
- cafi_size_mm: Body length of cryptic invertebrate (millimeters)
- surface_area_cm2: Coral surface area from photogrammetry (square centimeters)
- protein_mg_cm2: Protein content normalized to surface area (milligrams per square centimeter)
- treatment: Experimental treatment (control, removal, low, medium, high)
- lat/lon: GPS coordinates (decimal degrees)
- date: Sampling date (YYYY-MM-DD)

### Step 6: Data Access and Embargo (Optional)

**Embargo Options:**
- [ ] **Public immediately** (recommended after NSF report)
- [ ] **Embargo until publication** (select this if data not yet published)
- [ ] **Embargo until specific date** (e.g., manuscript submission date)

**Recommendation:** Request embargo until manuscript is published, but note that NSF requires data to be publicly available within ~1 year of collection. Check with BCO-DMO about their embargo policies.

### Step 7: Review and Submit

- [ ] Review all uploaded files
- [ ] Verify all metadata is complete
- [ ] Check that contact information is correct
- [ ] Submit dataset
- [ ] Note submission confirmation number

---

## 📞 BCO-DMO Contact Information

**General Questions:**
- Email: info@bco-dmo.org
- Website: https://www.bco-dmo.org/contribute

**Data Manager Contact:**
- Check BCO-DMO website for assigned data manager
- They will review your submission and may request clarifications

**Typical Timeline:**
- Initial review: 1-2 weeks
- Back-and-forth for clarifications: 2-4 weeks
- Final DOI assignment: After all reviews complete

---

## 📧 After Submission

### Immediate Tasks:
- [ ] Save BCO-DMO confirmation email
- [ ] Note submission ID number
- [ ] Email Craig with update and submission details

### When BCO-DMO Contacts You:
- [ ] Respond to data manager questions promptly
- [ ] Provide clarifications as needed
- [ ] Review their formatted data tables

### After DOI Assignment:
- [ ] Add DOI to README.md
- [ ] Add DOI to CITATION.cff
- [ ] Update NSF final report with DOI
- [ ] Add DOI to manuscript data availability statement
- [ ] Submit to EDI/LTER (MCR Data Manager: Hillary)
- [ ] Link GitHub to Zenodo for additional DOI

---

## 🔗 Related Submissions

### EDI/LTER (Environmental Data Initiative)
**Contact:** Hillary (MCR LTER Data Manager)
**Purpose:** Integration with Moorea Coral Reef LTER database
**Timeline:** Can submit concurrently with BCO-DMO

Submit the same files to EDI/LTER through the MCR Data Manager.

### Zenodo (via GitHub)
**Purpose:** Permanent archive of GitHub repository
**How:**
1. Link GitHub repository to Zenodo account
2. Create a GitHub release (e.g., v2.2)
3. Zenodo automatically generates DOI

**Timeline:** After BCO-DMO submission is complete

---

## 📝 Notes for Final NSF Report

Include in your NSF final report:

```
Data from this project have been deposited in the BCO-DMO repository (DOI: [insert DOI])
and are publicly available. The dataset includes [X] data files spanning [dates] and
containing comprehensive measurements of cryptic invertebrate communities, coral health
metrics, and experimental treatments from field experiments in Mo'orea, French Polynesia.
Data and complete documentation are also available on GitHub
(https://github.com/stier-lab/moorea-cafi-data) and will be archived with Zenodo.
```

---

## ✅ Final Check Before Submission

Before clicking "Submit" on BCO-DMO:

- [ ] Craig has reviewed and approved the dataset
- [ ] All file names match what's listed in README
- [ ] No sensitive data included (no personal emails, no confidential info)
- [ ] All required NSF award numbers are included (OCE-1851510 and OCE-1851503)
- [ ] You have time to respond to BCO-DMO data manager questions
- [ ] NSF final report due date is clear (target: before November 30, 2024)

---

**Good luck with your submission! The dataset looks comprehensive and well-documented.**

For questions about this checklist, contact Adrian (astier@ucsb.edu).
