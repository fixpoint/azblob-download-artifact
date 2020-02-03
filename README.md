# azblob-download-artifact

![Test](https://github.com/fixpoint/azblob-download-artifact/workflows/Test/badge.svg)

This downloads artifacts from [Azure Blob Storage](https://azure.microsoft.com/ja-jp/services/storage/blobs/).
It follows usage of [actions/download-artifact](https://github.com/actions/download-artifact) for easy migration.

See also [azblob-upload-artifact](https://github.com/fixpoint/azblob-upload-artifact).

## Usage

Get [Azure Storage connection strings](https://docs.microsoft.com/en-us/azure/storage/common/storage-configure-connection-string) and specify it to `connection-string` through Github secrets like:

```yaml
steps:
- uses: actions/checkout@v1

- uses: fixpoint/azblob-download-artifact@v1
  with:
    connection-string: ${{ secrets.AZURE_STORAGE_CONNECTION_STRING }}
    name: my-artifact

-run: cat my-artifact
```

Download to specific directory:

```yaml
steps:
  - uses: actions/checkout@v1

  - uses: fixpoint/azblob-download-artifact@v1
    with:
      connection-string: ${{ secrets.AZURE_STORAGE_CONNECTION_STRING }}
      name: my-artifact
      path: path/to/artifact

  - run: cat path/to/artifact
```

See [action.yml](./action.yml) for more detail.

## License

This scripts and documentation in this project are released under the [MIT License](./LICENSE).
