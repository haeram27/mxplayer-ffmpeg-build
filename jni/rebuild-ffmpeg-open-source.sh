#!/bin/bash
ROOT=$(cd "$(dirname "$0")"; pwd)
source ./shell_util.sh

# haeram27 start
ln -s /usr/bin/aclocal /usr/bin/aclocal-1.17
# haeram27 end

# haeram27 start
ANDROID_HOME=.
# haeram27 end
if test -z $ANDROID_HOME
then
  echo "ANDROID_HOME isn't found."
  echo "It should something like this."
  echo "export ANDROID_HOME=/Users/jake/Library/Android/sdk"
  echo "now we guess one."
  home=$(guessAndroidSdk)
  echo "ANDROID_HOME is $home"
  export ANDROID_HOME=$home
fi

# haeram27 start
export NDK=/work/jni/android-ndk-r27c
export CPU_CORE=$(nproc --all)
# haeram27 end

#/bin/rm -rf libs

export SKIP_COPY=true

./rebuild-ffmpeg.sh all

