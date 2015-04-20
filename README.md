# Skydns

These are docker images for skydns running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/)


## Usage

```
docker run -ti --name skydns webhippie/skydns:latest bash

# Execute this for further available commands
docker exec -ti skydns manage help
```


## Versions

* [latest](https://github.com/dockhippie/skydns/tree/master)
  available as ```webhippie/skydns:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/skydns/)


## Available environment variables

```bash
ENV SKYDNS_CA_CERT # As string or filename
ENV SKYDNS_DISCOVER false
ENV SKYDNS_DNSSEC
ENV SKYDNS_DOMAIN skydns.local.
ENV SKYDNS_HOSTMASTER hostmaster@skydns.local.
ENV SKYDNS_LOCAL
ENV SKYDNS_MACHINES
ENV SKYDNS_NAMESERVERS
ENV SKYDNS_RCACHE 0
ENV SKYDNS_RCACHE_TTL 60
ENV SKYDNS_ROUND_ROBIN true
ENV SKYDNS_RTIMEOUT 2s
ENV SKYDNS_SCACHE 10000
ENV SKYDNS_TLS_KEY # As string or filename
ENV SKYDNS_TLS_PEM # As string or filename
ENV SKYDNS_VERBOSE false
```


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   bash      Start a shell on container
   commands  List all available sub commands
   pid       Return the process id
   prepare   Prepare environment
   reload    Reload the main process
   running   Check if main process is running
   start     Start the main process
   stop      Stop the main process
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
