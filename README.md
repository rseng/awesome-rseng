<p align="center">
  <br>
    <img width="50%" src="awesome.svg" />
  <br>
  <br>
  <br>
</p>

## Awesome Research Software Engineering [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome) [![https://good-labs.github.io/greater-good-affirmation/assets/images/badge.svg](https://good-labs.github.io/greater-good-affirmation/assets/images/badge.svg)](https://good-labs.github.io/greater-good-affirmation) [![Gitter](https://badges.gitter.im/rseng/community.svg)](https://gitter.im/rseng/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

> A curated list of GitHub organizations that primarily serve open source or academic software projects.

If you want to get involved with science and research software engineering, this is a good place to start! If you want to use the GitHub action, [see below](#github-action).

## Contents

 - [Overview](#overview)
 - [Astrophysics](#astrophysics)
 - [Genomics](#genomics)
 - [Geoscience](#geoscience)
 - [High Performance Computing](#high-performance-computing)
 - [Institutions](#institutions)
   - [Academic Groups](#academic-groups) 
   - [Academic Labs](#academic-labs) 
   - [National Labs](#national-labs) 
 - [Neuroscience](#neuroscience)
 - [Psychology](#psychology)
 - [Reproducible Science](#reproducible-science)
   - [Containers](#containers)
   - [Workflows](#workflows)
 - [Contributing](#contributing)


## Overview

If you are interested in research software engineering, and especially looking to
help with research software, this is a small, manually curated list of GitHub
organizations that have primarily this focus. The projects are organized by domain,
and then subtopics. Please feel free to suggest a new project, or update the organization.

## Astrophysics

 - [LSST](https://github.com/lsst) the legacy survey of space and time
 - [LSST Camera Data Handling](https://github.com/lsst-camera-dh/)

## Genomics

 - [The ENCODE Data Consortium](https://github.com/encode-dcc) or "Encode DCC" serving the Encode Data Portal.

## Geoscience

 - [Pangeo](https://github.com/pangeo-data): A community effort for big data geoscience

## High Performance Computing

 - [CEED](https://github.com/CEED): ECP Co-Design Center for Efficient Exascale Discretizations (CEED)
 - [spack](https://github.com/spack/) a flexible package manager for multiple versions, configurations, and compilers

## Institutions

### Academic Groups

- [Imperial College London](https://github.com/ImperialCollegeLondon/)

### Academic Labs

 - [Nolan Lab](https://github.com/nolanlab) at Stanford University focuses on signaling in the immune system and study of oncogenic process.
 - [Poldrack Lab](https://github.com/poldracklab) at Stanford University focuses on standard
   workflows for processing structural and functional neuroimaging (MRI) data.

### National Labs

 - [SLAC](https://github.com/slaclab) National Accelerator Laboratory
 - [LINAC Coherent Light Source](https://github.com/slac-lcls/) at SLAC for experiments with High Energy Physics, Materials Science, Biologists, etc.
 - [ORNL](https://github.com/ORNL/) Oak Ridge National Laboratory
 - [OLCF](https://github.com/OLCF/) Oak Ridge Leadership Computing Facility
 - [BNL](https://github.com/BrookhavenNationalLaboratory/) Brookhaven National Laboratory
 - [BNL-SDCC](https://github.com/bnl-sdcc/) Brookhaven National Laboratory Scientific Data and Computing Center
 - [NSLS-II](https://github.com/NSLS-II) National Synchrotron Light Source II at Brookhaven National Laboratory
 - [BNL-NPP](https://github.com/BNLNPPS) Brookhaven National Laboratory Nuclear and Particle Physics Software Group

## Neuroscience

 - [nipreps](https://github.com/nipreps) standard workflows for processing a wide
   variety of neuroimaging (MRI) data.
 - [nipy](https://github.com/nipy) utilities for working with neuroimaging (MRI) data

## Psychology

 - [The Experiment Factory](https://github.com/expfactory) tools, containers, and web based experiments

## Reproducible Science

## Containers

 - [singularityhub](https://github.com/singularityhub/) open source tools to support Singularity containers.


## Workflows

 - [Snakemake](https://github.com/snakemake/) scientific workflow manager written in Python
 

## Contributing

Please don't hesitate to contribute a new link. To do so, check out the [CONTRIBUTING.md](CONTRIBUTING.md) for details about how to contribute.

### Add Organization to the Awesome List
The awesome list here is intended for organizations.
You can edit the README.md file here and add your link in the correct spot. If 
a category is missing, please go ahead and add it, and make sure that all
additions are in alphabetical order. Then [open a pull request](https://www.github.com/rseng/awesome-opensource-rseng/issues). 

### Add Repository

This repository also serves a "Good First Issues" portal, primarily for specific
repos that belong to the organizations listed above. If you are interested in
adding a specific repository, add it to the [repos list](.github/repos.txt).
You can add comma separated tags that you want to use as categories or topics
to identify the repository. Here is an example:

```
https://github.com/singularityhub/sregistry containers,singularity
```

## GitHub Action

The repository serves it's own GitHub action to generate a web interface
each night with an updated set of issues. This means that:

 - the interface is created under docs/
 - issues are populated in docs/_issues
 - the site is served via Jekyll

This means that you can use the action in your workflows too.

## Inputs

### `repos-file`

**Optional** The path to the repos.txt (or otherwise named) file. 
Defaults to .github/repos.txt in the root of the repository.
The file should include a single list
of repository URLS, and (optionally) one or more comma separated tags:

```
https://github.com/spack/spack hpc,package-management
https://github.com/singularityhub/sregistry containers,singularity
```

The filename path defaults to [.github/repos.txt](.github/repos.txt) and you
can change this if desired.


## Example usage

```yaml
    steps:
    - name: Checkout Code
      uses: actions/checkout@v1
    - name: Generate First Issues
      uses: rseng/awesome-rseng@ff385e1f162f0c395f59f1123fb2f17935d6496b
      with:
        repos-file: '.github/repos.txt'
        token: ${{ secrets.GITHUB_TOKEN }}
```

You only need to define repos-file if you change the path. It's
highly recommended that you don't use master branch, but instead
a version release or commit (as shown above).

You can look at the workflow in [.github/workflows](.github/workflows)
for an example of running the action to generate content in docs,
and then pushing to a new branch and opening a pull request to it.
You can of course use different actions for opening the pull request,
or some other method (e.g., push directly to a branch).

## License

[![Creative Commons License](http://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
