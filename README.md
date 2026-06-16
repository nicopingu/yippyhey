# Yippy Hey
macOS open source clipboard manager - Fork of Yippy

![screenshot](images/screenshot.jpg)

## About

This is a fork of [Yippy](https://github.com/mattDavo/Yippy) by Matthew Davidson, who maintained the original project until 2024.

**Fork by Nicolas Feschotte** - Recompiled for Apple Silicon compatibility.

Source: https://github.com/nicopingu/yippya

## Installation
Download from [releases](https://github.com/nicopingu/yippya/releases) or install with [Homebrew Cask](https://github.com/Homebrew/homebrew-cask):
```
brew install --cask yippy-hey
```

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

### TODO
- [ ] Support more types of pasteboard items
- [ ] Allow setting preferences for keyboard shortcuts
    - [x] Customize toggle hotkey
- [ ] Automatic updates (maybe use Sparkle?)
- [ ] Create a bug reporter, if places in code are reached that should not be possible create a unique error and a prompt to report the bug.
- [ ] Don’t let any of the app be used until access is granted
- [x] Toggle for attributed text
- [x] Launch at login
- [x] Convert history storage to storing each piece of data into a file organised by directory of indexes
- [ ] Favourites
- [ ] Search (https://github.com/krisk/fuse-swift)
- [x] Max history length
- [ ] Cell height cache improvements. Will improve window size changes and launch time.
    - [ ] Find a cheap way to clear the cell height cache
    - [ ] Store cell heights on disk
