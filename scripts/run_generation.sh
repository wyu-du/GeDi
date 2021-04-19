
export device_id=1

CUDA_VISIBLE_DEVICES=$device_id python ../test_GeDi.py \
 --gen_length 60 \
 --model_type gpt2 \
 --gen_model_name_or_path ~/baseline-dialogue/src/microsoft/DialoGPT-medium_dailydialog_raw_base_2021-04-14-09-25-54/checkpoint-8946/ \
 --gedi_model_name_or_path ../dailydialog_GeDi_DialoGPT/checkpoint-400000 \
 --disc_weight 200 \
 --rep_penalty_scale 10 \
 --filter_p 0.8 \
 --target_p 0.8 \
 --gen_type "gedi" \
 --repetition_penalty 1.2 \
 --mode "topic" \
 --penalize_cond
