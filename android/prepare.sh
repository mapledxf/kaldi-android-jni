#!/bin/bash

wget https://dl.google.com/android/repository/android-ndk-r20-linux-x86_64.zip
unzip android-ndk-r20.zip

wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
tar -xzvf android-sdk*-linux.tgz
ln -s android-ndk-r20 android-sdk-linux/ndk-bundle
cd android-sdk-linux/tools
./android update sdk --no-ui --filter platform-tools,tools
touch ~/.android/repositories.cfg
./bin/sdkmanager --update
./bin/sdkmanager --licenses


