# docker-npm-cache
Docker container that implements a very basic npm cache via nginx
as outlined by [this post from Yammer][1].

## Usage
Grab a copy of this from hub:

    docker pull tswicegood/npm-cache

You must provide a `PORT` environment variable when running this.  You should map that
port to the container's port 80 via `-p`.  For example, if you want to use port 8080,
you can do this:

    export PORT=8080
    docker run -d -e PORT=$PORT -p $PORT:80 tswicegood/npm-cache

Next you need to adjust npm to use this as your registry.  If you're on
boot2docker with a host IP address of `192.168.59.103`, you need to adjust your
config like this:

    npm config set registry http://192.168.59.103:8080/

### Configuring host
You can configure the host name using `-e HOST=<your host>` to run this from.  For
example, to run it on port 8080 of `npm.example.org`, you can run it like this:

    export PORT=8080
    export HOST=npm.example.org
    docker run -d -e HOST=$HOST -e PORT=$PORT -p $PORT:80 tswicegood/npm-cache

Have fun!


[1]: http://eng.yammer.com/a-private-npm-cache/
