### Patched FlorisBoard

[FlorisBoard](https://florisboard.org/) is an excellent third-party open-source app that implements custom IME for Android.

This repository contains a Git patch file that can be applied on top of FlorisBoard source code.

### Building locally

First, clone this repo and check what's the latest tag:

```sh
git clone https://github.com/mpclipboard/android-florisboard.git
git tag --list
```

Remember the latest tag, we mirror FlorisBoard's versions. Now clone FlorisBoard:

```sh
git clone --depth 1 --branch "PUT_THE_TAG_HERE" https://github.com/florisboard/florisboard.git
```

And apply the patch:

```sh
cd florisboard && git apply ../0001-integrate-mpclipboard.patch
```

Now (assuming that you have all dependencies to build "stock" version of FlorisBoard) run:

```sh
./gradlew assembleDebug
```

And the app will be compiled and placed at `app/build/outputs/apk/debug/app-debug.apk`.
