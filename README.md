# Docker environment for Harp

**WiP** - do not expect this to run smoothly for now!

For installing harp in a docker environment.

Note that you may need to use sudo when running docker commands.


## Building

```shell
docker build -t harp .
```

## Running

```shell
docker run --rm -e PASSWORD=harp12  -v ./data:/data -p 8787:8787 harp 
```

Open a browser, and go to http://localhost:8787/. Log in with username `rstudio` and password `harp12`.

In your browser interface, data in the `/data/` folder will be the same as the `data/` folder from where you run docker.

