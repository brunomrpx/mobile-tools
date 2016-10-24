#!/bin/bash

APP_VERSION=0.1.0
APP_NAME=HelloApp

KEYSTORE_SIZE=2048
KEYSTORE_VALIDITY=365000 # 1000 years
KEYSTORE_PATH=./release-key.keystore # location of release key

# Cordova example:
# APK_PATH=./platforms/android/build/outputs/apk/android-release-unsigned.apk
APK_PATH=./android-release-unsigned.apk
APK_DEST_PATH="./apks/$APP_NAME-$APP_VERSION.apk"
APK_ALIAS=hello_app

ZIPALIGN_PATH=~/android-sdk-macosx/build-tools/23.0.3/zipalign

