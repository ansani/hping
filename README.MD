Hi guys,
if you need HPING3 built and running in Android, this is the right place!

This repo contains all dependancies amd all libraries need to build HPING3 for Android OS.

* First of all you need a working Android toolchain. 
By default I use CLANG-3.6. 
You must execute something like that:

```
/opt/android-ndk-r10e/build/tools/make-standalone-toolchain.sh \
--toolchain=arm-linux-androideabi-clang3.6 --platform=android-21 --install-dir=./androidToolchain
```

* Then I suggest to use cc.sh script downloaded from https://dl.dropboxusercontent.com/u/23869279/Files/cc.sh 
(refer to this website http://forum.xda-developers.com/showthread.php?t=2723240 if you need more help).

PS: I copied a cc.sh script on my repo so you can just change NDK and NDKTC path so you can use directly

* Last you must execute ./compile_for_android.sh command. This generate a statical linked HPING3 file.
