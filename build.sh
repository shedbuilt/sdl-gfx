#!/bin/bash
./autogen.sh && \
./configure --prefix=/usr \
            --disable-static \
            --disable-mmx && \
./nodebug.sh && \
make -j $SHED_NUM_JOBS && \
make DESTDIR="$SHED_FAKE_ROOT" install