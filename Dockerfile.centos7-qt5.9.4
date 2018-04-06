# Always review the official build instructions before updating:
# https://wiki.qt.io/PySide2_GettingStarted#Building_PySide2
# https://wiki.qt.io/PySide2_X11

FROM centos:7

RUN yum install -y deltarpm && \
    yum install -y epel-release && \
    yum install -y centos-release-scl && \
    yum install -y devtoolset-6-gcc* devtoolset-6-binutils && \
    # yum groupinstall "Development Tools" -y && \
    yum install -y llvm llvm-devel && \
    yum install -y mesa-libGL-devel && \
    yum install -y fontconfig freetype freetype-devel fontconfig-devel libstdc++ && \
    yum install -y python-libs python-devel python-pip && \
    yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
    yum --enablerepo=ius-archive install -y python35u-libs python35u-devel python35u-pip && \
    yum --enablerepo=ius-archive install -y python36u-libs python36u-devel python36u-pip && \
    yum install -y libxslt libxml2 libxml2-devel libxslt-devel cmake3 openssl && \
    yum erase -y git && \
    yum --enablerepo=ius-archive install -y git2u && \
    yum install -y which curl p7zip


WORKDIR /workdir


# Activate devtoolset-6 gcc 6.3.1
RUN source /opt/rh/devtoolset-6/enable
ENV PATH="/opt/rh/devtoolset-6/root/usr/bin:${PATH}"
ENV CC=/opt/rh/devtoolset-6/root/usr/bin/gcc
ENV CXX=/opt/rh/devtoolset-6/root/usr/bin/g++


# Qt 5.9
ADD qt-installer-5.9.4-noninteractive.qs /tmp
RUN curl -L -o /tmp/qt-installer.run https://download.qt.io/archive/qt/5.9/5.9.4/qt-opensource-linux-x64-5.9.4.run && \
    chmod +x /tmp/*.run && \
    /tmp/qt-installer.run --script /tmp/qt-installer-5.9.4-noninteractive.qs -platform minimal -verbose && \
    rm -rf /tmp/qt-installer.run


# libclang (Qt 5.9 only)
RUN curl -L -o /tmp/libclang.7z http://download.qt.io/development_releases/prebuilt/libclang/libclang-release_50-linux-Rhel7.2-gcc5.3-x86_64-clazy.7z && \
    7za x /tmp/libclang.7z -o${HOME}/libclang_release_50 && \
    rm -rf /tmp/libclang.7z
ENV CLANG_INSTALL_DIR="/root/libclang_release_50/libclang"


# Pip requirements
RUN /usr/bin/pip install  --user --upgrade pip && \
    /usr/bin/pip3.5 install  --user --upgrade pip && \
    /usr/bin/pip3.6 install --user --upgrade pip && \
    /usr/bin/pip install --user --upgrade setuptools wheel && \
    /usr/bin/pip3.5 install --user --upgrade setuptools wheel && \
    /usr/bin/pip3.6 install --user --upgrade setuptools wheel

# Increase verbosity
# ENV QT_LOGGING_RULES=qt.shiboken.debug=true
