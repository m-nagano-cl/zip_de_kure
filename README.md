# 圧縮処理

対象ディレクトリのファイルを`zip`処理します

## docker
```sh
docker build -t zip_de_kura:1 .
docker run -e output_directory=/data/test -e work_directory=/data/ -e password=s-jis -e file_name=data --rm -it --name zip_de_kura zip_de_kura:1 /bin/bash
```