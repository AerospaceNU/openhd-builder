# OpenHD Builder

## Build Image

```bash
docker build . -t openhd-builder
```

## Use Image (compile)

```bash
docker run --rm -v /path/to/local/openhd:/openhd openhd-builder
```
