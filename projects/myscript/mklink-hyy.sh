#!/bin/bash
set -e
echo "----- make hyy soft link -----"
if [ "$1" == "COCOCrowdHuman" ]
then
        ln -s /hy-tmp/COCOCrowdHuman/annotations ../datasets/crowdhuman/annotations
        ln -s /hy-tmp/COCOCrowdHuman/CrowdHuman_train/Images ../datasets/crowdhuman/CrowdHuman_train
        ln -s /hy-tmp/COCOCrowdHuman/CrowdHuman_val/Images ../datasets/crowdhuman/CrowdHuman_val
        echo "----- make crowdhuman soft link successfully -----"
elif [ "$1" == "coco" ]
then
        ln -s /hy-tmp/coco/annotations ../datasets/coco/annotations
        ln -s /hy-tmp/coco/train2017 ../datasets/coco/train2017
        ln -s /hy-tmp/coco/val2017 ../datasets/coco/val2017
        echo "----- make coco soft link successfully -----"
else
        echo "----- arg is error -----"
fi