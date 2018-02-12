#!/bin/bash
./autogen.sh && \
./configure --prefix=/usr \
            --disable-static \
            --disable-mmx && \
./nodebug.sh && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install