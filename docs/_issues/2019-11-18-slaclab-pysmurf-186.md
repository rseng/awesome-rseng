---
tags: enhancement,national-lab,python
title: "Add option to output fitted white noise level from take_noise_psd"
html_url: "https://github.com/slaclab/pysmurf/issues/186"
user: msilvafe
repo: slaclab/pysmurf
---

Currently take_noise_psd returns a .dat and mask file to the filepath/outputs directory. If the save_data argument is passed as true an additional .txt file is returned into the plots directory that has a list of frequency, median noise between low_freq + high_freq, and the fitted f_knee. Since the plots already fit for the white noise level, the knee, and the index it makes sense to output those fitted parameters in this optional saved output text file (since this fitted value can be different from the median returned if there is significant 1/f in the data) so that you don't have to go back and rerun the fitting functions on the raw data output to get these data in post processing.