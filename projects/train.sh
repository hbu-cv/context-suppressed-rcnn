#!/bin/bash

# CBAM-ROI + CoT50 ——> Head:6 ——> BLR:0.000025 ——> epoch 68  
python train_cbam_roi_cot.py --num-gpus 1 --config-file configs/sparsercnn.crowdhuman.cot50.500pro.68e.yaml OUTPUT_DIR output/output_cbam_roi_cot
