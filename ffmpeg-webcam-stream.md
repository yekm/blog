Low CPU ffmpeg v4l2 udp video stream

```
ffmpeg -f v4l2 -input_format mjpeg -framerate 30 -video_size 1280x720 -i /dev/video0 -c:v copy -f mpegts udp://host:port

ffmpeg -y -i udp://host:port -map 0:d -c copy -copy_unknown -f data - | mpv -v --demuxer-lavf-format=mjpeg -
```

meh.. https://stackoverflow.com/questions/55439184
