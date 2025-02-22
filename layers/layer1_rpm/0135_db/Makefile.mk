include ../../../adm/root.mk
include ../../package.mk

export NAME=db
export VERSION=4.5.20
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=b0f1c777708cb8e9d37fb47e7ed3312d
DESCRIPTION=\
Berkeley DB is a family of embedded key-value database libraries. \
(it is used only as embedded RPM dependency)
WEBSITE=http://www.oracle.com/technetwork/database/berkeleydb/overview/index.html
LICENSE=BSD

all:: $(PREFIX)/lib/libdb.so
$(PREFIX)/lib/libdb.so:
	$(MAKE) --file=../../Makefile.standard download uncompress
	cd build/$(NAME)-$(VERSION)/build_unix && ../dist/configure --enable-shared --disable-static --prefix=$(PREFIX) && make && make install
	rm -Rf $(PREFIX)/docs
