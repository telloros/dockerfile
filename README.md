# What's Tis Project
DockerFile of ROS environment for Tello drone

# Versions
|ver|changes|note|
|:---|:---|:---|
|1.00|Confirm building and running ROS||

# How to BUILD
```bash
$ git checkout 1.00 # your desired version
$ docker build -t telloros:1.00 .
```

# How to RUN
```bash
$ xhost +si:localuser:root # X Window System certification
$ docker run --env=QT_X11_NO_MITSHM=1 -ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw --privileged -p 80:80 telloros:1.00