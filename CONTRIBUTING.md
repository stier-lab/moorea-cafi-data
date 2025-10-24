# Contributing to Mo'orea CAFI Dataset

Thank you for your interest in this dataset! This guide explains how to report issues, suggest improvements, and contribute to the dataset.

---

## Table of Contents
- [Reporting Issues](#reporting-issues)
- [Suggesting Enhancements](#suggesting-enhancements)
- [Data Usage Guidelines](#data-usage-guidelines)
- [Citation Requirements](#citation-requirements)
- [Contact Information](#contact-information)

---

## Reporting Issues

If you find problems with the data or documentation, please help us improve by reporting them.

### Types of Issues to Report:
1. **Data Quality Issues**
   - Suspected errors in measurements
   - Inconsistencies between files
   - Missing data that should be present
   - Incorrect taxonomic identifications

2. **Documentation Problems**
   - Unclear instructions
   - Missing column descriptions
   - Broken links or references
   - Typos or formatting issues

3. **Technical Issues**
   - File encoding problems
   - Errors when loading data
   - Compatibility issues with software

### How to Report:
1. Open a GitHub Issue in this repository
2. Use a descriptive title (e.g., "Incorrect coral_id format in MRB physiology file")
3. Include:
   - File name(s) affected
   - Specific row(s) or column(s) if applicable
   - What you expected vs. what you found
   - Your software environment (R version, Python version, etc.)

### Example Issue:
```
Title: Missing coral_id values in maatea_size_cafi_taxonomy file

Description:
I found 3 rows in maatea_size_cafi_taxonomy_merged_2019_2021_v2.csv
where the coral_id column is blank (rows 234, 567, 890). Based on the
date_collected and time_point values, these appear to belong to MAT-POC12.

Expected: All rows should have coral_id values
Found: 3 rows with blank coral_id

Software: R 4.3.1, readr package
```

---

## Suggesting Enhancements

We welcome suggestions for improving the dataset and documentation!

### Types of Enhancements:
1. **Additional Data Products**
   - Derived metrics (e.g., diversity indices pre-calculated)
   - Summary tables
   - Merged datasets for common analyses

2. **Documentation Improvements**
   - Additional example analyses
   - Tutorials for specific questions
   - Translations to other languages

3. **Metadata Enhancements**
   - Additional context or methods details
   - Links to related datasets
   - Updated taxonomic classifications

### How to Suggest:
1. Open a GitHub Issue with label "enhancement"
2. Explain the enhancement and its benefits
3. If suggesting code/analysis, provide example

---

## Data Usage Guidelines

### Before Using This Data:

1. **Read the Documentation**
   - Start with [README.md](README.md)
   - Review [GETTING_STARTED.md](GETTING_STARTED.md)
   - Check [DATA_DICTIONARY.md](DATA_DICTIONARY.md)

2. **Understand the Data Structure**
   - Original columns preserve field data (including non-numeric codes)
   - `_numeric` columns are for calculations
   - Never modify original data files

3. **Check for Updates**
   - This repository may be updated with corrections
   - Check the version number in file names
   - Review commit history for changes

### Common Questions:

**Q: Can I modify the data files?**
A: Please do not modify the original files. Instead:
- Create derived datasets in your own analysis scripts
- Document any transformations you apply
- If you find errors, report them as issues

**Q: What if I need data in a different format?**
A: The data is provided in CSV format for maximum compatibility. You can:
- Convert to your preferred format in your analysis scripts
- Share your conversion scripts with the community
- Suggest we add additional formats (via enhancement issue)

**Q: Can I combine multiple files?**
A: Yes! See examples in [GETTING_STARTED.md](GETTING_STARTED.md). Common joins:
- Use `coral_id` to link across file types
- Use `coral_id` + `time_point` for temporal data
- Always check for duplicate matches before joining

---

## Citation Requirements

### Required Citation:

If you use this dataset in publications, presentations, or other work, please cite:

**APA Format:**
```
Stier, A. C., & Osenberg, C. W. (2025). Mo'orea Coral Reef CAFI (Cryptic
Associated Fauna and Invertebrates) Experiments: Size and Amount Manipulations
2019-2021 [Dataset]. GitHub. https://github.com/OWNER/REPO
```

**BibTeX:**
```bibtex
@dataset{stier2025moorea,
  author = {Stier, Adrian C. and Osenberg, Craig W.},
  title = {Mo'orea Coral Reef CAFI (Cryptic Associated Fauna and
           Invertebrates) Experiments: Size and Amount Manipulations
           2019-2021},
  year = {2025},
  publisher = {GitHub},
  url = {https://github.com/OWNER/REPO},
  license = {CC-BY-4.0}
}
```

### Additional Acknowledgments:

Please also acknowledge:
- Mo'orea Coral Reef (MCR) LTER program
- UC Santa Barbara
- University of Georgia
- Any funding sources mentioned in publications

### Sharing Your Work:

If you publish work using this dataset:
1. Send us a copy of the citation (email addresses below)
2. We'll add it to our "Publications Using This Dataset" list
3. This helps demonstrate the value of open data!

---

## Contact Information

### Data Authors:

**Adrian C. Stier**
- Email: astier@ucsb.edu
- Affiliation: University of California, Santa Barbara
- ORCID: 0000-0002-5075-5759

**Craig W. Osenberg**
- Email: osenberg@uga.edu
- Affiliation: University of Georgia
- ORCID: 0000-0002-9519-9525

### For Questions About:

**Data Collection Methods:**
- Contact either author above
- See detailed methods in `metadata/` folder

**Data Processing:**
- Open a GitHub issue
- Contact Adrian Stier

**Taxonomic Identifications:**
- Contact Adrian Stier
- Note: All taxa verified against WoRMS database

**LTER/EDI Submission:**
- Contact Mo'orea Coral Reef LTER Data Manager
- Website: https://mcr.lternet.edu

---

## License

This dataset is licensed under [CC-BY-4.0](LICENSE).

You are free to:
- Share — copy and redistribute the material
- Adapt — remix, transform, and build upon the material

Under the following terms:
- **Attribution** — You must give appropriate credit, provide a link to the
  license, and indicate if changes were made

---

## Code of Conduct

### Our Standards:

- Be respectful and professional
- Provide constructive feedback
- Focus on what is best for the scientific community
- Show empathy towards other community members

### Unacceptable Behavior:

- Harassment or discriminatory language
- Personal attacks
- Publishing others' private information
- Other conduct which could reasonably be considered inappropriate

### Enforcement:

Instances of unacceptable behavior may be reported to the data authors. All
complaints will be reviewed and investigated promptly and fairly.

---

## Thank You!

Your contributions help make this dataset more valuable for the scientific
community. We appreciate your time and effort!

---

**Last Updated:** 2025-10-24
