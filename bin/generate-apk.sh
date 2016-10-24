#!/bin/bash

cd $(dirname "$0")
cd ..

source ./bin/config.sh

# signing apk with private key
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore $KEYSTORE_PATH $APK_PATH $APK_ALIAS

# optimizing apk
./bin/zipalign -v 4 $APK_PATH $APK_DEST_PATH

