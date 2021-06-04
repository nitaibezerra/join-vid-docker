# join-vid-docker

For those moments when you're streaming and you end up with a bunch of pieces that need to be joined in a single video

This script runs MP4Box to join all the videos in "input" folder and create a new single video called joined_video.mp4 in "output" folder.

# How to use

Add vídeos to `/input` folder and simply run:

> ```$ docker-compose up```

The merged video will be at `/output` folder.
