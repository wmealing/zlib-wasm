export DOCKER_BUILDKIT=0

DEPS_OUT = $(PWD)/dist
CFLAGS=-I$(DEPS_OUT)/include -L$(DEPS_OUT)/lib -fPIC

all: $(DEPS_OUT)/lib/libz.a
	
$(DEPS_OUT)/lib/libz.a:
	export CFLAGS="-fPIC" 
	cd ./deps/zlib && \
		emconfigure ./configure  --prefix=$(DEPS_OUT)
	make -C ./deps/zlib
	make -C ./deps/zlib install


