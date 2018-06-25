It is a fork of https://hub.docker.com/r/cbolt/dehydrated/ for rpi hardware.

I use it to generate LetsEncrypt certs and register my current IP to DuckDNS automatically.
Example Usage:
```
sudo docker run -d \
  --name dehydrated \
  --mount 'type=bind,src=/gluster/data/dehydrated_config/,dst=/etc/dehydrated' \
  --mount 'type=bind,src=/gluster/data/dehydrated_data/,dst=/data' \
  --no-resolve-image \
tringler/rpi-dehydrated
```