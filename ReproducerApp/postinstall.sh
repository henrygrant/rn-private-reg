#!/bin/bash
if grep -q nexus "node_modules/@react-native/gradle-plugin/settings.gradle.kts"; then true; else
    sed -i '' '10i\
    maven { url = uri(\"https://myrepo.com/nexus/repository\") }\
' node_modules/@react-native/gradle-plugin/settings.gradle.kts
    sed -i '' '1i\
dependencyResolutionManagement {\
    repositories {\
        clear()\
        maven { url = uri(\"https://myrepo.com/nexus/repository\") }\
    }\
}\
' node_modules/@react-native/gradle-plugin/settings.gradle.kts
fi