About klayout-python
====================

Feedstock license: [BSD-3-Clause](LICENSE)

Home: https://www.klayout.de/

Package license: GPL-3.0-or-later

Summary: KLayout standalone Python package

KLayout is an open-source layout viewer and editor for
semiconductor designs. This package provides the standalone
Python bindings without the KLayout GUI application.


Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-klayout--python-green.svg)](https://anaconda.org/anaconda/klayout-python) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda/klayout-python.svg)](https://anaconda.org/anaconda/klayout-python) | [![Conda Version](https://img.shields.io/conda/vn/anaconda/klayout-python.svg)](https://anaconda.org/anaconda/klayout-python) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda/klayout-python.svg)](https://anaconda.org/anaconda/klayout-python) |


Installing klayout-python
=========================

Installing `klayout-python` from the main channel can be achieved by:

```
conda install klayout-python
```

It is possible to list all versions of `klayout-python`
available on your platform with `conda`:

```
conda search klayout-python
```

The package provides the `klayout` Python module:

```python
import klayout.db as db
```
