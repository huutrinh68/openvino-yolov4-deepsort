DEMO_PATH=/opt/intel/openvino_2021.4.752/deployment_tools/open_model_zoo/demos
DEMO_NAME=multi_camera_multi_target_tracking_demo
cd ${DEMO_PATH}/${DEMO_NAME}/python

INPUT_VIDEO=/app/data/video/20211215_102922.mp4
OUTPUT_VIDEO=/app/data/result/20211215_102922.mp4

python3 ${DEMO_NAME}.py \
    -i $INPUT_VIDEO \
    --m_detector ${DEMO_PATH}/${DEMO_NAME}/python/intel/vehicle-detection-adas-0002/FP32/xxxx.xml \
    --m_reid ${DEMO_PATH}/${DEMO_NAME}/python/intel/vehicle-reid-0001/FP32/vehicle-reid-0001.xml \
    --output_video $OUTPUT_VIDEO \
    --config configs/vehicle.py 
