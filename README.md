# docker-azuretools

Contains:

- Docker (CLI)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/)
- [AzCopy](https://learn.microsoft.com/en-us/azure/storage/common/storage-ref-azcopy)

Usage:

```shell
docker run --rm -it jamesits/azuretools:latest bash
```

## Development Notes

Rebuild:

```shell
docker build --push -t jamesits/azuretools:latest .
```
