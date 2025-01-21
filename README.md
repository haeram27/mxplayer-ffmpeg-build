# mxplayer-ffmpeg-build
how to build

## 1. downloads mxplayer ffmpeg source
https://mx.j2inter.com/download
- Open-source code > FFmpeg

## 2. downloads android ndk
https://developer.android.com/ndk/downloads
- Latest LTS Version (r27c) > Linux 64bit(x86)

## 3. place android ndk into ffmpeg source
```<ffmpeg-src-root>/jni/android-ndk-r27c```

## 4. merge jni directory and fix some variables
- jni/rebuild-ffmpeg-open-source.sh
- jni/rebuild-ffmpeg.sh
- jni/collect-ffmpeg-libs.sh

## 5. run build
- build with jni/rebuild-ffmpeg-open-source.sh
- recommended to build in linux container which has native buildtools
### in case of rocky 9
#### recommnended build-tools
    dnf groupinstall -y "Development Tools"
    dnf install -y cmake meson ninja-build
    dnf install -y perl which

## 6. collect libraries
use ```jni/collect-ffmpeg-libs.sh```