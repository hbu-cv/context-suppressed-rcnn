#!/bin/bash
set -e
echo -e "----------------------------- test script ------------------------------\n"

time1=$(date "+%Y-%m-%d %H:%M:%S")
echo -e "-----> Date: $time1\n"
read -p "-----> input model: " model
echo -e "\n-----> test $model !!!\n"
read -p "-----> input checkpoint: " point
echo -e "\n-----> test $point !!!\n"

if [ "$model" == "baseline" ]
then
        python train_baseline.py --num-gpus 1 --config-file configs/sparsercnn.crowdhuman.res50.500pro.50e.yaml --eval-only MODEL.WEIGHTS output/output_cot_cbam_crowdhuman/model_$point.pth
elif [ "$model" == "res2msa" ]
then
        python train_2msa.py --num-gpus 1 --config-file configs/sparsercnn.crowdhuman.res50.500pro.50e.yaml --eval-only MODEL.WEIGHTS output/output_2msa_crowdhuman/model_$point.pth
elif [ "$model" == "cot2msa" ]
then
        python train_cotnet.py --num-gpus 1 --config-file configs/sparsercnn.crowdhuman.cot50.500pro.50e.yaml --eval-only MODEL.WEIGHTS output/output_cot_cbam_crowdhuman/model_$point.pth

else
        echo -e "-----> model is unavailable !!!\n"
fi
echo "-------------------------------------------------------------------------"