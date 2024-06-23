# README

This project is to build a container image with the latest APEX files. There is sometimes a gap between ORDS and APEX release, so the ORDS container has the older APEX version bundled.

To build run:

```sh
./build.sh
```

This creates an image tagged `localhost/ords:latest` - derived from `container-registry.oracle.com/database/ords:latest`.
