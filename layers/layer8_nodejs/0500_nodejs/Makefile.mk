include ../../../adm/root.mk
include ../../package.mk

export NAME=nodejs
export VERSION=10.16.0
export EXTENSION=tar.xz
export CHECKTYPE=MD5
export CHECKSUM=c8222839f80ea586aa24d1ee792e1d93
export ARCHIVE=node-v10.16.0-linux-x64.tar.xz
DESCRIPTION=\
Node.js is a JavaScript runtime built on Chrome s V8 JavaScript engine. \
npm, provided with Node.js, is a software registry used to share and borrow packages, \
and to manage development as well.
WEBSITE=http://nodejs.org
LICENSE=X11

all:: $(PREFIX)/bin/node
$(PREFIX)/bin/node:
	$(MAKE) --file=../../Makefile.standard PREFIX=$(PREFIX) download uncompress
	cd build/node-v$(VERSION)-linux-x64 && cp -Rf * $(PREFIX)/
