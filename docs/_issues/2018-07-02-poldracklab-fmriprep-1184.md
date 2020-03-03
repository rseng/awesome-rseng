---
tags: feature,help-wanted,neuroscience,python
title: "Provide BOLD to T1w affine transform in the output folder"
html_url: "https://github.com/poldracklab/fmriprep/issues/1184"
user: gkaguirre
repo: poldracklab/fmriprep
---

This issue regards a [question](https://neurostars.org/t/fmriprep-saving-forward-transforms-from-bold-to-t1-and-or-mni-space/1908) raised by @bbfrederick on neurostars.

`bbregister` is used to register a BOLD template image to the T1-weighted structural in the routine `init_bbreg_wf` ([link](https://github.com/poldracklab/fmriprep/blob/5747a6d744fc076f829a5e6132e65c9bc3d71851/fmriprep/workflows/bold/registration.py#L266)). The request is to by default save the transforms that map BOLD to T1w space. This would allow users to subsequently transform volumes between subject native space, MNI space, and between T1w and EPI resolutions with greater ease. 

Tagging @oesteban and @chrisfilo, who were also in the discussion.