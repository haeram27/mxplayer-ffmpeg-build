#!/usr/bin/bash
MX_VERSION=1.87.0
FFMPEG_VERSION=4.2

mkdir -p mx-ffmpeg/${MX_VERSION} &>/dev/null
cp libs/armeabi-v7a/neon/libffmpeg.mx.so mx-ffmpeg/${MX_VERSION}/libffmpeg.mx.so.neon.${MX_VERSION}
cp libs/arm64-v8a/libffmpeg.mx.so mx-ffmpeg/${MX_VERSION}/libffmpeg.mx.so.arm64.${MX_VERSION}
zip -rv mx-ffmpeg-${MX_VERSION}.zip mx-ffmpeg/${MX_VERSION}