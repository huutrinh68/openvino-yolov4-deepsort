## docker-build
```bash
$ docker-compose build
```

## docker up
```bash
$ docker-compose up -d
```

## enter docker container
```
$ docker exec -itu root:root <container> bash
```

## download and convert model
```bash
$ cd /opt/intel/openvino/deployment_tools/open_model_zoo/demos/multi_camera_multi_target_tracking_demo/python
$ python3 /opt/intel/openvino/deployment_tools/open_model_zoo/tools/downloader/downloader.py --list models.lst
$ python3 /opt/intel/openvino/deployment_tools/open_model_zoo/tools/downloader/converter.py --list models.lst
```

## refer
- [multi-target-tracking-demo-python](https://docs.openvino.ai/2021.4/omz_demos_multi_camera_multi_target_tracking_demo_python.html#doxid-omz-demos-multi-camera-multi-target-tracking-demo-python)
- [sample video](https://github.com/intel-iot-devkit/sample-videos)
- [docker-build](https://hub.docker.com/r/openvino/ubuntu20_dev)
