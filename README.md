# docker-npm-cache
Docker container that implements a very basic npm cache via nginx
as outlined by [this post from Yammer][1].

## Usage
Grab a copy of this from hub:

    docker pull tswicegood/npm-cache

Run this:

    docker run -d -P tswicegood/npm-cache

Check the output from `docker ps` to see what port it's running on, then adjust your
npm registry appropriately.  For example, if you're running on port `49153` and
the host is `192.168.59.103`, adjust your config like this:

    npm config set registry http://192.168.59.103:49153/

Have fun!


## Caveats

Note, you're probably going to want to build this yourself.  It currently
relies on running on port `49153` as mentioned above.  To fix that, you need to
adjust the `nginx.conf` file to make sure things are rewritten to the correct
port.  That, or manually bind to port `49153` via something like `-p 49153:80`
when you run `docker run`.

[1]: http://eng.yammer.com/a-private-npm-cache/
