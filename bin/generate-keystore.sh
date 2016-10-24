#!/bin/bash

cd $(dirname "$0")
cd ..

source ./bin/config.sh

# generating private key
keytool -genkey -v -keystore $KEYSTORE_PATH -alias $APK_ALIAS -keyalg RSA -keysize $KEYSTORE_SIZE -validity $KEYSTORE_VALIDITY

