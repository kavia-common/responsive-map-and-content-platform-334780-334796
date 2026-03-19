#!/bin/bash
cd /home/kavia/workspace/code-generation/responsive-map-and-content-platform-334780-334796/frontend_web_app
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

