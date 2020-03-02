---
tags: optimization,memory,potential-hackathon-project,effort-low,impact-medium,neuroscience,python
title: "Better estimate uncompressed file size"
html_url: "https://github.com/poldracklab/fmriprep/issues/1100"
user: effigies
repo: poldracklab/fmriprep
---

Currently we estimate the memory usage of BOLD files by reading their input sizes, compressed or uncompressed.

https://github.com/poldracklab/fmriprep/blob/bb716985021885524c0b19f62e503e7070a5c800/fmriprep/workflows/bold/base.py#L875-L884

We can instead directly calculate the file size by reading the offset, dtype and dimensions from the NIFTI headers.

```Python
total_size_in_bytes = offset + dtype().itemsize * np.prod(img.shape)
```