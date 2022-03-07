## Deployment instructions

To use it, just do:

```sh
$ docker run -v $(pwd):/work -it -v $(pwd):/work --rm anjos/latex:latest
```

This will start the image on the ``/work`` directory.  Then, just do business
as usual.


## Building instructions

To build a readily deployable docker image on the current platform, do:

```sh
$ docker build --rm -t anjos/latex:latest .
```

To build (and deploy) a multi-platform version (Intel and ARM) of the docker
image, do:

```sh
$ docker buildx build --push --platform linux/arm64,linux/amd64 --rm -t anjos/latex:latest .
```

> N.B.: `arm64` (alias for `arm64/v8`) is compatible with Mac M1 chips which
> use the ARMv8.4-A instruction set.

> N.B.2: To setup Docker to support multi-platform builds the first time, you
> must create your own builder with `docker buildx create --name multibuilder`,
> `docker buildx use multibuilder` and then `docker buildx inspect
> --bootstrap`.  After that, you are clear to run the multi-architecture build
> command above.
