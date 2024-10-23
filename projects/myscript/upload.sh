#!/bin/bash
set -e

cd ./output
# 压缩包名称
file="output-cot-crowdhuman-$(date "+%Y%m%d-%H%M%S").zip"
# 把 result 目录做成 zip 压缩包
zip -q -r "${file}" output_cot_crowdhuman
# 通过 oss 上传到个人数据中的 backup 文件夹中
oss cp "${file}" oss://backup/
rm -f "${file}"

# 传输成功后关机
shutdown
