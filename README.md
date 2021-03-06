# Docker Build Image - GoBGP

CMD Parameters: 

```text
Usage:
  gobgpd [OPTIONS]

Application Options:
  -f, --config-file=      specifying a config file
  -t, --config-type=      specifying config type (toml, yaml, json) (default: toml)
  -l, --log-level=        specifying log level
  -p, --log-plain         use plain format for logging (json by default)
  -s, --syslog=           use syslogd
      --syslog-facility=  specify syslog facility
      --disable-stdlog    disable standard logging
      --cpus=             specify the number of CPUs to be used
      --api-hosts=        specify the hosts that gobgpd listens on (default: :50051)
  -r, --graceful-restart  flag restart-state in graceful-restart capability
  -d, --dry-run           check configuration
      --pprof-host=       specify the host that gobgpd listens on for pprof (default: localhost:6060)
      --pprof-disable     disable pprof profiling
      --sdnotify          use sd_notify protocol
      --tls               enable TLS authentication for gRPC API
      --tls-cert-file=    The TLS cert file
      --tls-key-file=     The TLS key file
      --version           show version number

Help Options:
  -h, --help              Show this help message
```