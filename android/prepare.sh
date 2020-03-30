#!/bin/bash

wget https://dl.google.com/android/repository/android-ndk-r20-linux-x86_64.zip
unzip android-ndk-r20.zip

wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
tar -xzvf android-sdk*-linux.tgz
ln -s android-ndk-r20 android-sdk-linux/ndk-bundle
# Need to use command line tool to get sdkmanager
cd android-sdk-linux/
https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip
unzip commandlinetools-linux-*.zip
export ANDROID_HOME=$PWD
yes | ./tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses

#cd android-sdk-linux/tools
#./android update sdk --no-ui --filter platform-tools,tools
#touch ~/.android/repositories.cfg
#./bin/sdkmanager --update
#./bin/sdkmanager --licenses
