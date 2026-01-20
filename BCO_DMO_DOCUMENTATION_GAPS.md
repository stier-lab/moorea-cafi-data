# BCO-DMO Documentation Gaps Analysis

**Dataset:** Mo'orea Coral Reef CAFI Field Experiments (2019-2021)
**Date:** 2026-01-20
**Purpose:** Identify gaps between current documentation and BCO-DMO requirements

---

## Summary

| Category | Status | Issues Found |
|----------|--------|--------------|
| Parameter Definitions | ⚠️ Needs consolidation | Parameters were in separate files, not uploaded to BCO-DMO portal |
| File Descriptions | ✅ Complete | BCO_DMO_FILE_DESCRIPTIONS.csv created |
| Personnel Metadata | ⚠️ Incomplete | Missing emails and ORCIDs for 9 of 11 team members |
| Image Inventory | ⚠️ Incomplete | 3 images missing from inventory |
| Excel Files | ⚠️ May need conversion | 5 Excel files - Shannon may prefer CSV |
| Separate Submissions | 🔴 Required | Need to create 3 separate BCO-DMO submissions |

---

## CRITICAL GAPS (Must Address)

### 1. PARAMETERS FILE NOT UPLOADED TO BCO-DMO PORTAL

**Issue:** Shannon said "I think that I'm missing that file" regarding the 111 column definitions.

**Current Status:**
- Parameters exist across 16 metadata files in the `metadata/` directory
- Files are in Excel (.xlsx) and CSV formats
- NOT consolidated and NOT uploaded to BCO-DMO submission portal

**Solution Created:**
- `BCO_DMO_MASTER_PARAMETERS.csv` - 203 unique parameters with units and descriptions
- Shows which data files use each parameter

**Action Required:**
- Upload `BCO_DMO_MASTER_PARAMETERS.csv` to BCO-DMO submission portal
- OR create individual parameter files per data file (Shannon's preference)

---

### 2. SEPARATE SUBMISSIONS REQUIRED

**Issue:** Shannon states "we'll need...a separate submission for each dataset or data type"

**Current Status:**
- All 23 files submitted as single submission
- BCO-DMO expects separate submissions

**Proposed Organization (3 datasets):**

| Dataset | Primary Files | Supplemental Files | Needs Separate Submission |
|---------|---------------|-------------------|--------------------------|
| Dataset 1: Biological Data | 8 | 2 | Yes |
| Dataset 2: Coral Morphometry | 5 | 4 | Yes |
| Dataset 3: Experimental Design | 3 | 1 | Yes |

**Action Required:**
- Confirm 3-dataset organization with Shannon
- Create separate BCO-DMO submissions for each dataset

---

### 3. EXCEL FILES MAY NEED CONVERSION

**Issue:** BCO-DMO prefers CSV format. 5 data files are in Excel format.

**Excel Files in Submission:**
1. `maatea_size_genetic_samples_metadata_v3.xlsx` (60 rows)
2. `maatea_size_photogrammetry_summer_2019_v1.xlsx` (60 rows)
3. `moorea_survey_tip_stump_comparison_dec_2019_v1.xlsx` (21 rows)
4. `moorea_survey_tip_stump_zoox_counts_dec_2019_v1.xlsx` (108 rows)
5. `mrb_amount_manual_colony_measurements_2019_2021_v1.xlsx` (54 rows)

**Action Required:**
- Ask Shannon if Excel format is acceptable
- If not, convert to CSV with proper BCO-DMO formatting (blank cells for NA, ISO dates)

---

## MODERATE GAPS (Should Address)

### 4. PERSONNEL METADATA INCOMPLETE

**Issue:** Only 2 of 11 team members have complete information (email + ORCID).

**Current Status in `personnel.csv`:**

| Name | Email | ORCID | Status |
|------|-------|-------|--------|
| Adrian C. Stier | ✅ | ✅ | Complete |
| Craig W. Osenberg | ✅ | ✅ | Complete |
| Joseph Curtis | ❌ | ❌ | Missing |
| Alex Primo | ❌ | ❌ | Missing |
| Dan Cryan | ❌ | ❌ | Missing |
| Molly Brzezinski | ❌ | ❌ | Missing |
| Kelsey Vaughn | ❌ | ❌ | Missing |
| Ninah Munk | ❌ | ❌ | Missing |
| Lily Zhao | ❌ | ❌ | Missing |
| Kai Kopecky | ❌ | ❌ | Missing |
| Christian Deneka | ❌ | ❌ | Missing |

**Action Required:**
- Contact team members for ORCID iDs (if they have them)
- Add emails where permissible
- Document intentionally omitted fields

---

### 5. IMAGE INVENTORY INCOMPLETE

**Issue:** 3 images exist in repository but are missing from `image_inventory.csv`.

**Missing Images:**
1. `trapezia-coral-crab-hiding.jpg` - NOT in inventory
2. `trapezia-coral-crab-red-spotted.jpg` - NOT in inventory
3. `flame-hawkfish.jpg` - NOT in inventory

**Action Required:**
- Add these 3 images to `image_inventory.csv` with:
  - Date taken
  - Coordinates (approximate)
  - Photographer
  - Species AphiaID (for species photos)
  - Description

---

### 6. PHOTO SUBMISSION DECISION

**Issue:** Shannon asked "do you plan to submit the photos as well?"

**Current Status:**
- 12 photos in `images/` directory
- Image inventory exists but incomplete
- Not clear if photos should be included

**Action Required:**
- Decide if photos should be part of BCO-DMO submission
- If yes, complete image inventory
- If yes, consider as separate "image dataset" or supplemental to biological data

---

## MINOR GAPS (Nice to Fix)

### 7. INDIVIDUAL PARAMETER FILES

**Issue:** Shannon suggested "Ideally, we would have one parameters file for each data file."

**Current Status:**
- Master parameters file created (BCO_DMO_MASTER_PARAMETERS.csv)
- Individual metadata files exist in metadata/ directory
- Not all in consistent CSV format

**Action Required:**
- Ask Shannon: master file OR individual files?
- If individual preferred, export consistent CSVs for all 23 data files

---

### 8. METHODS DOCUMENTATION FORMAT

**Issue:** Methods are in .txt files. BCO-DMO may prefer structured format.

**Current Status:**
- 5 text files with detailed methods
- Well-written but not in BCO-DMO standard format

**Files:**
- README_amount_project_overview.txt
- README_size_project_overview.txt
- README_survey_project_overview.txt
- README_photogrammetry_metadata_v2.txt
- README_tip_stump_comparison_dec_2019.txt

**Action Required:**
- Ask Shannon if current format is acceptable
- May need to transfer into BCO-DMO submission form fields

---

### 9. SOFTWARE/CODE DOCUMENTATION

**Issue:** BCO-DMO requests software/code documentation if applicable.

**Current Status:**
- Agisoft Metashape version not specified
- No analysis code included in repository
- No software archive with DOI

**Action Required:**
- Document Agisoft Metashape version used for photogrammetry
- If analysis code exists, consider archiving to Zenodo
- Add R/Python versions if scripts were used

---

## COMPLIANCE CHECKLIST

### Already Complete ✅

- [x] ISO 8601 date format (YYYY-MM-DD)
- [x] Blank cells for missing data (not NA)
- [x] Clean column names (lowercase, underscores)
- [x] Decimal degrees for coordinates
- [x] WoRMS AphiaIDs for species
- [x] Timezone documented (UTC-10)
- [x] NSF award numbers corrected

### Still Needed 🔴

- [ ] Upload parameters file to BCO-DMO portal
- [ ] Create separate submissions for 3 datasets
- [ ] Complete image inventory (add 3 missing photos)
- [ ] Confirm file organization with Shannon
- [ ] Add missing personnel ORCIDs (if available)
- [ ] Decide on photo submission
- [ ] Convert Excel files to CSV (if required)

---

## RECOMMENDED RESPONSE TO SHANNON

Based on this analysis, propose the following in your email:

1. **Offer to upload:**
   - `BCO_DMO_FILE_DESCRIPTIONS_SIMPLE.csv` - simplified file descriptions
   - `BCO_DMO_MASTER_PARAMETERS.csv` - all 203 parameters with units

2. **Ask for clarification on:**
   - Is master parameters file acceptable, or do you need individual files per data file?
   - Should photos be included in submission?
   - Is Excel format acceptable for 5 supplemental files, or convert to CSV?
   - Is 3-dataset organization acceptable?

3. **Offer a Zoom call** to discuss organization and resolve questions quickly.

---

## FILES CREATED FOR BCO-DMO

| File | Purpose | Rows |
|------|---------|------|
| `BCO_DMO_MASTER_PARAMETERS.csv` | All unique parameters with units and descriptions | 203 |
| `BCO_DMO_FILE_DESCRIPTIONS_SIMPLE.csv` | Simplified file descriptions for Shannon | 23 |
| `BCO_DMO_FILE_DESCRIPTIONS.csv` | Detailed file descriptions (existing) | 23 |
| `BCO_DMO_SUBMISSION_CHECKLIST.md` | Submission tracking (existing) | - |

---

*Generated: 2026-01-20*
