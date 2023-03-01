#!/bin/bash

cd $output_directory

if [ -n "$password" ]; then
    zip -e --password=$password ${work_directory}/${file_name}.zip ${output_directory}/*.*
else
    zip  ${work_directory}/${file_name}.zip ${output_directory}/*.*
fi

echo " zip done"

# 出力ディレクトリにコピー
mv ${work_directory}/${file_name}.zip ./
