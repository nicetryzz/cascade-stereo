#!/usr/bin/env bash
# MVS_TRAINING="/home/hqlab/workspace/reconstruction/dataset/DTU/mvs_training/dtu/"
MVS_TRAINING="/home/hqlab/workspace/reconstruction/dataset/blendedMVS/dataset_low_res"

LOG_DIR=$2
if [ ! -d $LOG_DIR ]; then
    mkdir -p $LOG_DIR
fi

# torchrun --nproc_per_node=$1 train.py --logdir $LOG_DIR --dataset=dtu_yao --batch_size=1 --trainpath=$MVS_TRAINING \
                # --trainlist lists/dtu/train.txt --testlist lists/dtu/test.txt --numdepth=192 ${@:3} | tee -a $LOG_DIR/log.txt

torchrun --nproc_per_node=$1 train.py --logdir $LOG_DIR --dataset=blended_dataset --batch_size=1 --trainpath=$MVS_TRAINING \
                --trainlist lists/blended/train.txt --testlist lists/blended/val.txt --numdepth=128 ${@:3} | tee -a $LOG_DIR/log.txt