[![Build Status](https://travis-ci.com/gfzriesgos/shakyground.svg?branch=master)](https://travis-ci.com/gfzriesgos/shakyground)

# Shakyground

Forked from [https://github.com/GFZ-Centre-for-Early-Warning/shakyground](https://github.com/GFZ-Centre-for-Early-Warning/shakyground)

This repository was created as a new repository instead of a GitHub fork since
we need Git LFS.\
See also [https://github.com/git-lfs/git-lfs/issues/1906](https://github.com/git-lfs/git-lfs/issues/1906)

openquake code is added here for convenience should be replaced in production
by an actual openquake installation on server

## Setup

Get the global vs30 grid:

```
unzip updated_lima_valparaiso_global_vs30_grd.zip
mv updated_lima_valparaiso_global_vs30.grd global_vs30.grd
```

Add to PYTHONPATH (had trouble using env.sh from openquake --> gmt was using
system gdal but openquake sqlite3 and complained):

```
export PYTHONPATH=$PYTHONPATH:/home/mhaas/openquake/lib/python3.5/site-packages/
```

Required python libs:
* mock
* psutil

currently requires gmt --> will be removed

service can be tested with:

```
bash ./run_and_validate.sh
```

You can look up some documentation about the used grid file for share wave velocity
on the usgs website:

[https://earthquake.usgs.gov/data/vs30/](https://earthquake.usgs.gov/data/vs30/)

This repository uses Git LFS (Large File Storage) which you can install with:
```
git lfs install
```
