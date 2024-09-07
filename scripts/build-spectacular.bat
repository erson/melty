@echo off
REM Pull the latest submodule updates
git submodule update --remote

REM Change directory to extensions/spectacular
cd extensions\spectacular

REM Install dependencies
npm install
cd webview-ui
npm install
cd ..

REM Build the project
npm run compile
npm run build:webview
