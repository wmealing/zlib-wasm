
This is a demo on building zlib for wasm, lets hope this is the zlib options.


$ git clone https://github.com/madler/zlib.git
$ git submodule init
$ git submodule update

make

your deps will end up in ./deps/

Ideally you wanna static link to the .a files, rather than the shared objects. 
