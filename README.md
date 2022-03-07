## Deployment instructions

To use it, just do:

```sh
$ docker run -v $(pwd):/work -it -v $(pwd):/work --rm anjos/latex:latest
```

This will start the image on the ``/work`` directory.  Then, just do business
as usual.


## Building instructions

To build a readily deployable docker image, do

```sh
$ docker build --rm -t anjos/latex:latest .
$ docker push anjos/latex:latest
```
