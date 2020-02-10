#!/bin/bash

/home/nvidia/rover/src/rover_launcher/bin/start_rosclean.sh

sleep 1

screen -d -m -S roscore /home/nvidia/rover/src/rover_launcher/bin/start_roscore.sh

sleep 5

screen -d -m -S rosbridge /home/nvidia/rover/src/rover_launcher/bin/start_rosbridge.sh

sleep 5

screen -d -m -S realsense /home/nvidia/rover/src/rover_launcher/bin/start_realsense.sh

sleep 5

screen -d -m -S imu /home/nvidia/rover/src/rover_launcher/bin/start_imu.sh

sleep 5

screen -d -m -S drive /home/nvidia/rover/src/rover_launcher/bin/start_drive.sh

sleep 5

screen -d -m -S lidar /home/nvidia/rover/src/rover_launcher/bin/start_lidar.sh

sleep 5

screen -d -m -S ekf_inertial /home/nvidia/rover/src/rover_launcher/bin/start_ekf_inertial.sh

sleep 5

screen -d -m -S video /home/nvidia/rover/src/rover_launcher/bin/start_video_server.sh

sleep 5

screen -d -m -S state_obs /home/nvidia/rover/src/rover_launcher/bin/start_state_observer.sh

sleep 5