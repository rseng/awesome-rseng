---
tags: enhancement,national-lab,python
title: "Save hardware configuration with data"
html_url: "https://github.com/slaclab/pysmurf/issues/11"
user: swh76
repo: slaclab/pysmurf
---

Most (all?) of the hardware knows its serial number and maybe even SLAC part number.  We should save this information with data.  The info can be retrieved using amcc_dump_bsi/etc. but Jesus had suggested using the low level IPMI commands directly, instead of those scripts.