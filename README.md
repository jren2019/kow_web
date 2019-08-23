# kow_web
Use tensorflowjs to load the trained model with python tensorflow

# save the model as saved_model
ops = encoder.inference_decoder_output
import tensorflow as tf

```python
tf.saved_model.simple_save(session, '/tmp/saved_model', inputs={'input': encoder.input_data,
                                                                'out': encoder.output_data,
                                                                's_token': encoder.start_tokens,
                                                                'go_token': encoder.go_tokens,
                                                                's_len': encoder.sequence_length,
                                                                'mask': encoder.mask,
                                                                'tget_len': encoder.target_sequence_length,
                                                                'src_len': encoder.source_sequence_length,
                                                                'lr': encoder.learning_rate,
                                                                'bz': encoder.batch_size
                                                                },
                           outputs={'output': ops.rnn_output, })```


# install tensorflowjs
pip install tensorflowjs==0.8.6

# convert the trained model with python
tensorflowjs_converter \
--input_format=tf_saved_model \
--output_node_names 'decode_1/decoder/transpose' \
--saved_model_tags=serve \
--output_json model.json \
./saved_model \
./web_model

# start the django project, go to the console to see the result 
