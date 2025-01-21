# mxplayer-ffmpeg-build
how to build mxplayer ffmpeg 1.90.1

## downloads mxplayer ffmpeg source
https://mx.j2inter.com/download
- Open-source code > FFmpeg
    ```
    curl -fkLO https://amazon-source-code-downloads.s3.us-east-1.amazonaws.com/MXPlayer/client/mxplayer-v1.90.1-ffmpeg-v4.2-src.tar.gz
    ```
##  downloads android ndk
https://developer.android.com/ndk/downloads
- Latest LTS Version (r27c) > Linux 64bit(x86)
    ```
    curl -fkLO https://dl.google.com/android/repository/android-ndk-r27c-linux.zip
    ```

## place android ndk under ffmpeg source
```<ffmpeg-src-root>/jni/android-ndk-r27c```

## merge jni directory and fix some variables
- jni/rebuild-ffmpeg-open-source.sh
- jni/rebuild-ffmpeg.sh
- jni/collect-ffmpeg-libs.sh
- jni/config-ffmpeg-libs.sh

## run container and install build tools
### in case of rocky 9
#### run linux container
```
(host)$ cd <ffmpeg-src-root>
(host)$ docker run --rm --it -u0 -v ${PWD}:/work -w /work rockylinux/rockylinux:9.5
(cont)$ cd jni
(cont)$ ./rebuild-ffmpeg-open-source.sh
```

#### recommnended build-tools
```
dnf groupinstall -y "Development Tools"
dnf install -y cmake meson ninja-build
dnf install -y perl which
```

## run build
- build with jni/rebuild-ffmpeg-open-source.sh
- recommended to build in linux container which has native buildtools


## check build result
```
jni/libs/armeabi-v7a/neon/libffmpeg.mx.so
jni/libs/arm64-v8a/libffmpeg.mx.so
```

## collect libraries
use ```jni/collect-ffmpeg-libs.sh```


# mxplayer setting
mxplayer > configuration > decoder > HW+ audio code  
select "AC3", "EAC3"