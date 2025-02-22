include ../../../adm/root.mk
include ../../package.mk

export NAME=gdal
export VERSION=2.2.4
#Version 2.3.0 would need gcc >= 4.7, not standard in CentOS6
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=798c66cc8df26f204f6248358fe4fceb
DESCRIPTION=\
GDAL is a set of libraries and tools for raster and vector geospatial data formats. \
As a library, it presents a single raster abstract data model and single vector abstract data model \
to the calling application for all supported formats. It also comes with a variety of useful command line utilities \
and APIs for data translation and processing.
WEBSITE=http://www.gdal.org
LICENSE=MIT

all:: $(PREFIX)/lib/libgdal.so
$(PREFIX)/lib/libgdal.so:
	$(MAKE) --file=../../Makefile.standard PREFIX=$(PREFIX) OPTIONS="--enable-shared --disable-static --with-pg=$(PREFIX)/bin/pg_config --with-png=$(PREFIX) --with-openjpeg=$(PREFIX) --with-jasper=$(PREFIX) --with-hdf5=$(PREFIX) --with-sqlite3=$(PREFIX)/../core --with-libjson-c=$(PREFIX)/../core --with-spatialite=$(PREFIX) --with-netcdf --with-python=no" download uncompress configure build install
