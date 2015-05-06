# Skydns

These are docker images for [SkyDNS](https://github.com/skynetservices/skydns) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).
The current container size is ```51.49 MB```


## Usage

```
docker run -ti --name skydns webhippie/skydns:latest
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


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
