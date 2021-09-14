FROM envoyproxy/envoy-dev:latest

CMD ["/usr/local/bin/envoy", "-c", "/envoy/envoy.yaml", "-l", "debug", "--service-cluster", "proxy"]
