# README

### 1. download code

```bash
git clone https://gitee.com/one2l/sparsercnns.git
```

### 2. Install cupy

```bash
pip install cupy-cuda113
```

### 3. Install detectron2

```bash
cd sparsercnn
python -m pip install -e detectron2
```

### 4. Make softlink for crowdhuman datasset

for linux environment

```bash
ln -s [dataset path] [project datasets path]

ln -s ~/autodl-tmp/COCOCrowdHuman/annotations ~/autodl-tmp/srcnn/exp/datasets/crowdhuman/annotations
ln -s ~/autodl-tmp/COCOCrowdHuman/CrowdHuman_train/Images ~/autodl-tmp/srcnn/exp/datasets/crowdhuman/CrowdHuman_train
ln -s ~/autodl-tmp/COCOCrowdHuman/CrowdHuman_val/Images ~/autodl-tmp/srcnn/exp/datasets/crowdhuman/CrowdHuman_val
```

for win environment

```bash
mklink /d [project datasets path] [dataset path]

mklink /d F:\workspace\sparsercnn\projects\datasets\crowdhuman\annotations D:\Datasets\COCOCrowdHuman\annotations 
mklink /d F:\workspace\sparsercnn\projects\datasets\crowdhuman\CrowdHuman_train D:\Datasets\COCOCrowdHuman\CrowdHuman_train\Images
mklink /d F:\workspace\sparsercnn\projects\datasets\crowdhuman\CrowdHuman_val D:\Datasets\COCOCrowdHuman\CrowdHuman_val\Images 
```

### 5.Train

```bash
# train baseline
python train_baseline.py --num-gpus 1 --config-file configs/sparsercnn.crowdhuman.res50.500pro.68e.yaml OUTPUT_DIR output/output_baseline
```

### 6. Test

```bash
python train_baseline.py --num-gpus 1 --config-file configs/sparsercnn.crowdhuman.res50.500pro.50e.yaml --eval-only MODEL.WEIGHTS output/output_vbox_crowdhuman/model_points.pth
```

### 7. Eval

```bash
python  crowdhuman-evl/crowdhuman_eval.py --result output/output_vbox_crowdhuman/inference/coco_instances_results.json --gt datasets/crowdhuman/annotations/val.json
```

