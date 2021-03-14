PROJECT_NAME=notram_v2
BUCKET_NAME=notram-west4-a
TPU_IP=10.121.163.42
RUN_PREFIX=T5_noTram2_BERT_norwegian_uncased
TRAIN_BATCH_SIZE=2760
PRETRAIN_DATA=corpus2_uncased_128
MODEL_CLASS=bert_base_norwegian_uncased
NUM_EPOCHS=14
MAX_SEQ_LENGTH=128
MAX_PREDICTIONS_PER_SEQ=19
LEARNING_RATE=76e-5
END_LEARNING_RATE=4e-5
STEPS_PER_LOOP=100
NUM_STEPS_PER_EPOCH=100000
WARMUP_STEPS=0
OPTIMIZER_TYPE=lamb
#INIT_CHECKPOINT=run_2021-02-05_15-40-29_585477_T5_noTram2_BERT_norwegian_uncased/ctl_step_700000.ckpt-7
INIT_CHECKPOINT=run_2021-02-14_15-32-24_525273_T5_noTram2_BERT_norwegian_uncased/ctl_step_1300000.ckpt-6
LOAD_MLM_NSP_WEIGHTS=True
#EXPECT_PARTIAL=True #Unable to load LAMB optimizer

python run_pretrain.py \
  --run_prefix $RUN_PREFIX \
  --project_name $PROJECT_NAME \
  --bucket_name $BUCKET_NAME \
  --tpu_ip $TPU_IP \
  --pretrain_data $PRETRAIN_DATA \
  --model_class $MODEL_CLASS \
  --train_batch_size $TRAIN_BATCH_SIZE \
  --num_epochs $NUM_EPOCHS \
  --max_seq_length $MAX_SEQ_LENGTH \
  --max_predictions_per_seq $MAX_PREDICTIONS_PER_SEQ \
  --learning_rate $LEARNING_RATE \
  --end_lr $END_LEARNING_RATE \
  --steps_per_loop $STEPS_PER_LOOP \
  --num_steps_per_epoch $NUM_STEPS_PER_EPOCH \
  --warmup_steps $WARMUP_STEPS \
  --optimizer_type $OPTIMIZER_TYPE \
  --init_checkpoint $INIT_CHECKPOINT \
  --load_mlm_nsp_weights $LOAD_MLM_NSP_WEIGHTS \
#  --expect_partial $EXPECT_PARTIAL
