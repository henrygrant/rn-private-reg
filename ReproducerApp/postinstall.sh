#!/bin/bash

# macos syntax
echo "running postinstall"
sed -i '' '10i\
    maven { url = uri(\"https://my-repo.com/repo\") }\
' node_modules/@react-native/gradle-plugin/settings.gradle.kts
