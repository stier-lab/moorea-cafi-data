# DOI and Versioning Guide

## About Digital Object Identifiers (DOIs)

A DOI (Digital Object Identifier) is a permanent identifier that ensures long-term access to your dataset, even if the location (URL) changes.

## Planned DOIs for This Dataset

This dataset will receive **multiple DOIs** from different repositories to meet NSF requirements and maximize accessibility:

### 1. **BCO-DMO** (Required by NSF)
- **Repository**: Biological and Chemical Oceanography Data Management Office
- **URL**: https://www.bco-dmo.org/
- **Purpose**: NSF OCE requirement for Ocean Sciences data
- **Timeline**: Submit by November 30, 2024 (before final report)
- **Access**: Public, but can request embargo until publication

### 2. **EDI/LTER** (MCR-LTER)
- **Repository**: Environmental Data Initiative / Long Term Ecological Research
- **URL**: https://portal.edirepository.org/
- **Purpose**: Integration with Moorea Coral Reef LTER data
- **Contact**: Hillary Young (MCR Data Manager)
- **Timeline**: Submit concurrently with BCO-DMO

### 3. **Zenodo** (via GitHub)
- **Repository**: Zenodo (CERN)
- **URL**: https://zenodo.org/
- **Purpose**: Permanent archive linked to GitHub repository
- **How**: Link GitHub repo to Zenodo, create release
- **Timeline**: After BCO-DMO submission
- **Benefit**: Automatic DOI generation for each GitHub release

---

## Understanding DOIs and Dataset Updates

### Can You Update Data After Getting a DOI?

**Yes**, but it works through **versioning**:

1. **Original DOI remains unchanged** and points to Version 1
2. **New versions get new DOIs** (e.g., v1.0, v1.1, v2.0)
3. **Landing page links all versions** so users can find the latest
4. **Old versions remain accessible** for reproducibility

### How It Works in Practice:

#### BCO-DMO Versioning:
- Submit Version 1 → Get DOI: `10.26008/12345`
- Need to fix error? Submit Version 2 → Get DOI: `10.26008/12346`
- Both versions remain available, Version 2 marked as "latest"

#### Zenodo Versioning:
- Create GitHub release v1.0 → Get DOI: `10.5281/zenodo.123456`
- Create GitHub release v1.1 → Get DOI: `10.5281/zenodo.123457`
- Zenodo provides a "concept DOI" that always points to the latest version
- Individual version DOIs remain stable for citations

---

## Best Practices

### Before Requesting DOI:
1. ✅ **Thorough quality control** - Check data carefully
2. ✅ **Complete metadata** - All README files finalized
3. ✅ **Clear documentation** - Methods and column descriptions complete
4. ✅ **Consistent formatting** - File naming and structure standardized
5. ✅ **Co-author review** - Have Craig (and others) review everything

### After Receiving DOI:
1. **Minor fixes** (typos in README, clarifications) → Create new version
2. **Data corrections** (fixed values, added columns) → Create new version, document changes
3. **Major updates** (new data, different methods) → Consider new dataset with new DOI

### Version Documentation:
Always document what changed between versions in:
- `README.md` Version History section
- `CHANGELOG.md` file (create if needed)
- Repository release notes (GitHub)
- Submission notes to BCO-DMO/EDI

---

## Current Version

**Version 2.2** (2024-11-11)
- Fixed funding information (NSF OCE-1851510 and OCE-1851503)
- Added complete research team to personnel (11 team members)
- Clarified measurement methods
- Standardized missing data codes
- Organized photogrammetry file documentation
- Archived old reports and backup files
- Ready for BCO-DMO submission

### Version History:
- **v2.1** (2024-10-27) - Enhanced metadata release
- **v2.0** (2024-10-24) - NSF OCE and LTER/EDI compliant release
- **v1.x** - Internal development versions

---

## Updating This Dataset in the Future

### If you need to make changes after DOI assignment:

1. **For GitHub/Zenodo**:
   ```bash
   # Make your changes to files
   git add .
   git commit -m "v2.3: [describe changes]"
   git tag -a v2.3 -m "Version 2.3: [describe changes]"
   git push origin main --tags
   ```
   Zenodo will automatically create a new version with a new DOI.

2. **For BCO-DMO**:
   - Contact BCO-DMO data managers
   - Submit updated files with version notes
   - They will create a new version entry

3. **For EDI/LTER**:
   - Contact Hillary (MCR Data Manager)
   - Submit updated files with version notes
   - EDI will create a new version entry

### Always Include:
- **Version number** in file names (e.g., `data_v2.3.csv`)
- **Change log** documenting what's different
- **Date** of the update
- **Reason** for the update

---

## Questions About DOIs?

- **BCO-DMO**: info@bco-dmo.org or https://www.bco-dmo.org/contribute
- **EDI**: support@edirepository.org
- **Zenodo**: https://help.zenodo.org/

---

## Key Takeaway

**DOIs are permanent, but datasets are not frozen.** You can always create new versions with new DOIs. The DOI system is designed to balance permanence (for citations) with flexibility (for corrections and updates).
