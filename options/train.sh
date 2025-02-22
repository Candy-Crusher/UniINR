export CUDA_VISIBLE_DEVICES="0,1,3"
# export CUDA_VISIBLE_DEVICES="0"
# export PYTHONPATH="./3rdparty/":$PYTHONPATH
export PYTHONPATH="./":$PYTHONPATH

# python egrsdb/main.py \
#   --yaml_file=YAML_FILE \
#   --log_dir=LOG_DIR \
#   --alsologtostderr=True

# # for example

TIMESTAMP="random_embedding"
# TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
LOG_DIR="logs/mrsdb-esl-ev-sim-demo_$TIMESTAMP"

python egrsdb/main.py \
  --yaml_file=options/mrsdb-esl-ev-sim-demo.yaml \
  --log_dir=$LOG_DIR \
  --alsologtostderr=True

# python egrsdb/main.py \
#   --yaml_file=options/mrsdb-esl-fastec-demo.yaml \
#   --log_dir=logs/mrsdb-esl-fastec-demo \
#   --alsologtostderr=True