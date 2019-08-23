#!/usr/bin/env bash


# 1) install tensorflowjs
pip install tensorflowjs==0.8.6

# 2) convert the trained model with python
tensorflowjs_converter \
--input_format=tf_saved_model \
--output_node_names 'decode_1/decoder/transpose' \
--saved_model_tags=serve \
--output_json model.json \
./saved_model \
./web_model11


# saved_model is inside this folder: https://github.com/jren2019/kow_web/tree/master/static/saved_model

# Question?
# I got the result with the random input, the output should be in range [0,1], but my output is shown in figure error.png https://github.com/jren2019/kow_web/blob/master/error.png
