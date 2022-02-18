DEMO_PATH=/opt/intel/openvino_2021.4.752/deployment_tools/open_model_zoo/demos
DEMO_NAME=object_detection_demo
cd ${DEMO_PATH}/${DEMO_NAME}/python

# INPUT_VIDEO=/app/data/video/store-aisle-detection.mp4
# OUTPUT_VIDEO=/app/data/result/store-aisle-detection_yolov4.mp4
INPUT_VIDEO=/app/data/video/20211215_102922.mp4
OUTPUT_VIDEO=/app/data/result/20211215_102922_mobilenet_ssd_v2.mp4
# INPUT_VIDEO=/app/data/video/20211211_194750.mp4
# OUTPUT_VIDEO=/app/data/result/20211211_194750.mp4

python3 ${DEMO_NAME}.py \
    -i $INPUT_VIDEO \
    -d MYRIAD \
    -m /app/public/ssd_mobilenet_v2_coco/FP32/ssd_mobilenet_v2_coco.xml \
    -at ssd
