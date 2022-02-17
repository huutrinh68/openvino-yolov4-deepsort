DEMO_PATH=/opt/intel/openvino_2021.4.752/deployment_tools/open_model_zoo/demos
DEMO_NAME=multi_camera_multi_target_tracking_demo
cd ${DEMO_PATH}/${DEMO_NAME}/python

# INPUT_VIDEO=/app/data/video/store-aisle-detection.mp4
# OUTPUT_VIDEO=/app/data/result/store-aisle-detection.mp4
INPUT_VIDEO=/app/data/video/20211122_video2.mp4
OUTPUT_VIDEO=/app/data/result/20211122_video2.mp4

python3 ${DEMO_NAME}.py \
    -i $INPUT_VIDEO \
    --m_detector ${DEMO_PATH}/${DEMO_NAME}/python/intel/person-detection-retail-0013/FP32/person-detection-retail-0013.xml \
    --m_reid ${DEMO_PATH}/${DEMO_NAME}/python/intel/person-reidentification-retail-0277/FP32/person-reidentification-retail-0277.xml \
    --output_video $OUTPUT_VIDEO \
    --config configs/person.py 
