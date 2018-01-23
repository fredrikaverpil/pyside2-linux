# pyside2-linux

[![Build Status](https://travis-ci.org/fredrikaverpil/pyside2-linux.svg?branch=master)](https://travis-ci.org/fredrikaverpil/pyside2-linux) [![Latest release](http://github-release-version.herokuapp.com/github/fredrikaverpil/pyside2-linux/release.svg?style=flat)](https://github.com/fredrikaverpil/pyside2-linux/releases/latest)


<br><br>

## Sister projects

- pyside2-linux (this project)
- [pyside2-macos](https://github.com/fredrikaverpil/pyside2-macos)
- [pyside2-windows](https://github.com/fredrikaverpil/pyside2-windows)


<br><br>


## Download the standalone wheels

[Releases](https://github.com/fredrikaverpil/pyside2-windows/releases) contain built PySide2 wheels.

<br><br>


## Known issues

### Build issues

None.

### Upstream issues

All upstream issues should be reported in the [official PySide issue tracker](https://bugreports.qt.io/projects/PYSIDE/issues).

Note: PRs attempting to fix upstream fixes will not be accepted. Please send your PR upstream instead.

<br><br>


## How does this work?

### Dockerhub setup

Dockerhub will build a Docker image on manual trigger, which will result in a container image equipped with all requirements in order to build PySide2. This involves Python, Qt, clang, cmake, libclang etc.

The docker images serve as a cache of sorts, and makes the CI wheel building process much faster.


<br><br>

### Travis CI setup

A build matrix is set up which will create jobs for each PySide2 wheel build. For each build, the Docker image is pulled down and then used to initiate the build.

<br><br>


### Tagging creates a new relese

Manual tagging causes a Github release to be created through CI deploy. PySide2 wheels will be attached to the release notes as they are fully built. Tag using semver (`[v]major.minor.patch` or `YY.MM.DD`), e.g. `2018.01.01`, since PySide2 does not yet have a maintained version string.

```bash
git commit -am "Commit all changes..."
git push  # triggers an AppVeyor build
git tag 2018.01.01
git push origin 2018.01.01  # cancels previous build, starts new build and generates release
```


<br><br>


## Temporary notes

> regarding anylinux, if you mean within the same minor python version, then the packages will only work on systems that have the same version requirements of standard packages or higher. So when building pyside, the older the distro the better. I suspect that building on ubuntu, and then using on centos might not work, because package versions are usually lower on centos
>
> anylinux -> manylinux
>
> this is on condition that the python minor versions are the same across the distros (aka, pyside built on centos, python 3.4, will only work on ubuntu python 3.4, and not ubuntu python 3.5)
>
> or rather it might work, but don't be surprised if you ever get undefined behavior


Github issues:
- Trigger Dockerhub build on Dockerfile change: https://github.com/docker/hub-feedback/issues/403
- Github token insecure (?) for ghr: https://github.com/tcnksm/ghr/issues/76
