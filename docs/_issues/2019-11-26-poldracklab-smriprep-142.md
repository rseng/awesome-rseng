---
tags: documentation,impactmedium,effortmedium,neuroscience,python
title: "Ensure workflow docstrings include all inputnode/outputnode slots"
html_url: "https://github.com/poldracklab/smriprep/issues/142"
user: mgxd
repo: poldracklab/smriprep
---

For example, https://github.com/poldracklab/smriprep/blob/3213c38fdaf35a2fc7880fd8532d4086d5bd5463/smriprep/workflows/anatomical.py#L123-L161
is missing `template`, `t1w_realign_xfm`, `t1w_aseg`, `t1w_aparc`

https://github.com/poldracklab/smriprep/blob/3213c38fdaf35a2fc7880fd8532d4086d5bd5463/smriprep/workflows/anatomical.py#L200-L208