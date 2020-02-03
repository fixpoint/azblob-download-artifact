# azblob-download-artifact

This downloads artifacts from [Azure Blob Storage](https://azure.microsoft.com/ja-jp/services/storage/blobs/).

See also [azblob-upload-artifact](https://github.com/fixpoint/azblob-upload-artifact).

## Usage

Get [Azure Storage connection strings](https://docs.microsoft.com/en-us/azure/storage/common/storage-configure-connection-string) and save it into secrets.

See [action.yml](./action.yml)

Basic:

```
steps:
- uses: actions/checkout@v1

- uses: fixpoint/azblob-download-artifact@v1
  with:
    connection-string: ${{ secrets.AZURE_STORAGE_CONNECTION_STRING }}
    name: my-artifact

-run: cat my-artifact
```

Download to specific directory:

```
steps:
- uses: actions/checkout@v1

- uses: fixpoint/azblob-download-artifact@master
  with:
    connection-string: ${{ secrets.AZURE_STORAGE_CONNECTION_STRING }}
    name: my-artifact
    path: path/to/artifact

- run: cat path/to/artifact
```

## License

This scripts and documentation in this project are released under the [MIT License](./LICENSE).
