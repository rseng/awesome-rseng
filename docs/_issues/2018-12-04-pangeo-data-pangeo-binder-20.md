---
tags: geoscience
title: "Use binder appendix to inject dask/pangeo configs and dependencies"
html_url: "https://github.com/pangeo-data/pangeo-binder/issues/20"
user: jhamman
repo: pangeo-data/pangeo-binder
---

Using the repo2docker/binder appendix, we could:

- populate all user images with some default dask configurations (put in /etc/dask)
- make sure certain packages are installed (maybe dask/distributed/dask-kubernetes)
- install any extensions we think everyone may want

example application: https://github.com/jupyterhub/binderhub/tree/b32ad4425be3319f7a2c59cf8253e979512b955d/examples/appendix