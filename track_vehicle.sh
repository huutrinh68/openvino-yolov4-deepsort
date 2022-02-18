DEMO_PATH=/opt/intel/openvino_2021.4.752/deployment_tools/open_model_zoo/demos
DEMO_NAME=multi_camera_multi_target_tracking_demo
cd ${DEMO_PATH}/${DEMO_NAME}/python

INPUT_VIDEO=/app/data/video/20211215_102922.mp4
OUTPUT_VIDEO=/app/data/result/20211215_102922_adas.mp4
# INPUT_VIDEO=/app/data/video/20211211_194750.mp4
# OUTPUT_VIDEO=/app/data/result/20211211_194750.mp4

# python3 ${DEMO_NAME}.py \
#     -i $INPUT_VIDEO \
#     --m_detector /app/intel/vehicle-detection-adas-0002/FP32/vehicle-detection-adas-0002.xml \
#     --m_reid /app/public/vehicle-reid-0001/FP32/vehicle-reid-0001.xml \
#     --output_video $OUTPUT_VIDEO \
#     --device MYRIAD \
#     --config configs/vehicle.py 
python3 ${DEMO_NAME}.py \
    -i $INPUT_VIDEO \
    --m_detector /app/intel/vehicle-detection-0202/FP32/vehicle-detection-0202.xml \
    --m_reid /app/public/vehicle-reid-0001/FP32/vehicle-reid-0001.xml \
    --output_video $OUTPUT_VIDEO \
    --device MYRIAD \
    --config configs/vehicle.py 
