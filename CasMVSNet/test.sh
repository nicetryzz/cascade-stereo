#!/usr/bin/env bash
# TESTPATH="/home/hqlab/workspace/reconstruction/dataset/DTU/mvs_testing/dtu/"
TESTPATH="/home/hqlab/workspace/reconstruction/dataset/blendedMVS/dataset_low_res"
# TESTLIST="lists/dtu/test.txt"
TESTLIST="lists/blended/val.txt"
# CKPT_FILE="/home/hqlab/workspace/reconstruction/CasMVSNet_output/DTU/model_000006.ckpt"
CKPT_FILE="/home/hqlab/workspace/reconstruction/CasMVSNet_output/blended/checkpoint1/model_000006.ckpt"
# python test.py --dataset=general_eval --batch_size=1 --testpath=$TESTPATH  --testlist=$TESTLIST --loadckpt $CKPT_FILE ${@:1}
python test.py --dataset=general_eval --batch_size=1 --testpath=$TESTPATH  --testlist=$TESTLIST --loadckpt $CKPT_FILE ${@:1} --dataset=blended_eval