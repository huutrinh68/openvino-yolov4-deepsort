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

## dowload model for people
```bash
$ cd /app
$ omz_downloader --name person-detection-retail-0013
$ omz_downloader --name person-reidentification-retail-0277 
```

## dowload model for vehicle
```bash
$ cd /app
$ omz_downloader --name vehicle-detection-adas-0002
$ omz_downloader --name vehicle-reid-0001
$ omz_convert vehicle-reid-0001
```

## refer
- [multi-target-tracking-demo-python](https://docs.openvino.ai/2021.4/omz_demos_multi_camera_multi_target_tracking_demo_python.html#doxid-omz-demos-multi-camera-multi-target-tracking-demo-python)
- [sample video](https://github.com/intel-iot-devkit/sample-videos)
- [docker-build](https://hub.docker.com/r/openvino/ubuntu20_dev)

## tips
find file in container
```bash
$ find / -iname <filename>
```
