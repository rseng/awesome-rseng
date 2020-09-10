---
tags: UX,bug,container,neuroscience,python
title: "set correct date and time in fmriprep-docker"
html_url: "https://github.com/poldracklab/fmriprep/issues/2261"
user: alistairwalsh
repo: poldracklab/fmriprep
---

<!--
For your feature request, include the following:
------------------------
What would you like changed/added and why?
What would be the benefit? Does the change make something easier to use?
-->
The date and time on the output of the running docker container isn't correct, adding a volume "-v /etc/localtime:/etc/localtime:ro" might fix this?

This would help me know how long a process has been running