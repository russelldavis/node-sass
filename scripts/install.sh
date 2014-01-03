#!/bin/bash
# This expects to be called from the top-level node-sass directory

mkdir -p libsass
if [ -z "$(ls libsass/)" ]; then
	# This downloads libsass at the specified revision, and untars it into the
	# libsass dir (github mangles the directory name, so we remove it with
	# strip-components and put it directly into libsass).
	#
	# Keep the revision here in sync with the libsass submodule.
	curl -L https://github.com/hcatlin/libsass/tarball/0388a62b764c062bbcd45782ec09476c4673efcd | tar -xz -C libsass --strip-components 1
fi

node build.js
