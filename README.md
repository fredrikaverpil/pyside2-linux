# pyside2-linux

[![Build Status](https://travis-ci.org/fredrikaverpil/pyside2-linux.svg?branch=master)](https://travis-ci.org/fredrikaverpil/pyside2-linux)

Unoffical PySide2 standalone wheels for Linux.

:fire: _Official_ wheels are now available as [Qt for Python](https://www.qt.io/qt-for-python) (PySide2) has officially been released by The Qt Company. I am **no longer going to maintain this repository** for this reason. Go get the official wheels!


## Sister projects

- pyside2-linux (this project)
- [pyside2-macos](https://github.com/fredrikaverpil/pyside2-macos)
- [pyside2-windows](https://github.com/fredrikaverpil/pyside2-windows)


## Download the standalone wheels

[Releases](https://github.com/fredrikaverpil/pyside2-linux/releases) contain built PySide2 wheels.


## How does this work?

### Dockerhub setup

The Dockerfiles, when built, will result in containers equipped with all requirements in order to build PySide2. This involves Python, Qt, gcc, libclang etc.

The docker images serve as a cache of sorts, and makes the CI wheel building process much faster.

CentOS 6.6 and 7.x are used for PySide2-5.6 and PySide2-5.9 respectively, because the lowest Linux distro Qt builds are as follows:
- Qt 5.6: RHEL 6.6
- Qt 5.9: RHEL 7.x

The Qt binaries in the Docker containers are precompiled with gcc. Therefore, gcc is also being used to build PySide2.


### Travis CI setup

A build matrix is set up which will create jobs for each PySide2 wheel build. For each build, the Docker image is pulled down and then runned to build PySide2.

If a `git tag` initiated the build, a Github release is peformed. All built wheels are deployed and attached to the Github release.

Job auto cancellation is enabled for this project in Travis CI, which means that queued up jobs are cancelled if a new job is initiated within the same branch.


### A note on Upstream issues

All upstream issues should be reported in the [official PySide issue tracker](https://bugreports.qt.io/projects/PYSIDE/issues).

Note: PRs attempting to fix upstream fixes will not be accepted. Please send your PR upstream instead.


### Ask questions in the PySide/PySide2 gitter

If you have any general questions, please check out the [PySide2 Gitter community](https://gitter.im/PySide/pyside2). If you prefer IRC, check out `#qt-pyside` on irc.freenode.net.


### Useful links

- [PySide2 website](https://wiki.qt.io/PySide2)
- [Coin CI pyside-setup](https://testresults.qt.io/coin/?project=pyside%2Fpyside-setup)
- Supported platforms and configurations
  - [Qt 5.6](https://doc.qt.io/qt-5.6/supported-platforms-and-configurations.html)
  - [Qt 5.9](https://doc.qt.io/qt-5.9/supported-platforms-and-configurations.html)
  - [Qt 5.10](https://doc.qt.io/qt-5.10/supported-platforms-and-configurations.html)
