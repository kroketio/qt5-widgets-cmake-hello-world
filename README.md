## Sample Qt 5.15 (QtWidgets) CMake hello world

Sample QtWidgets application with some extras:

- Qt 17, CMake, CCache
- Main and About window
- Embedded Qt resource (QRC) 
- static utils class
- Config directory + config file

### Installation (Linux / Mac OS)

To build, run:

```text
cmake -Bbuild .
make -Cbuild -j4
```

And if you have Qt installed in a custom directory, use this CMake command instead:

```text
cmake -DCMAKE_PREFIX_PATH="/home/user/qt5.15/gcc_64" -Bbuild .
```

Which will produce the dynamically linked executable `build/bin/hello`
