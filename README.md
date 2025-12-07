# EchoBot

A tiny bot to test Tox audio and video.

## Compiling

1. Install libsodium x264 opus vpx libavcodec libavutil (the development versions)
   ```bash
   # commands for debian based systems
   sudo apt install libsodium-dev libx264-dev \
     libopus-dev libvpx-dev libavcodec-dev libavutil-dev
   ```
3. Run ``make``
4. Run ``./echobot`` to start EchoBot.
