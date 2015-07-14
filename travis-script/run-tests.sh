#!/bin/bash

set -ev

if [ ! -z "${ANDROID_APP1}" ]; then
	cd ${ANDROID_DIR}/${ANDROID_APP1_NAME}
	chmod -R +x
	./gradlew build connectedCheck
fi

if [ ! -z "${ANDROID_APP2}" ]; then
	cd ${ANDROID_DIR}/${ANDROID_APP2_NAME}
	./gradlew build ${ANDROID_APP2}
fi
