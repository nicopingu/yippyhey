# Yippy Hey
macOS open source clipboard manager - Fork for Apple Silicon

![screenshot](images/screenshot.jpg)

## About

This is a fork of Yippy by Matthew Davidson, recompiled for **Apple Silicon (M1/M2/M3) compatibility**.

**Fork by Nicolas Feschotte**

Source: https://github.com/nicopingu/yippya

## Installation
Download from [releases](https://github.com/nicopingu/yippya/releases)

## Developing Yippy Hey
### Contributions
All contributions are welcome, whether they are pull requests, bug reports, feature requests or general feedback.

### Project Structure
There are 3 different schemes:
- Yippy Hey
- Yippy Hey Beta
- Yippy Hey XCTest

__Yippy Hey__ is used for running and archiving a production build. __Yippy Hey Beta__ is used for development and archiving a beta release. __Yippy Hey XCTest__ is used exclusively for running the unit and UI tests.

### Using `create-installer.sh`
First install <a href="https://github.com/andreyvit/create-dmg" target="_blank">create-dmg</a>. Then place `X.app` in the same folder as `create-installer.sh`. Execute script:
```
./create-installer.sh X
```

You will find the installer disk image `X.dmg` in the same folder.

