#!/bin/bash

$HOME/rover/src/rover_launcher/bin/start_rosclean.sh

sleep 1

echo 'Starting nodes:'
echo '    - roscore'

screen -d -m -S roscore $HOME/rover/src/rover_launcher/bin/start_roscore.sh

sleep 5
echo '    - rosbridge'

screen -d -m -S rosbridge $HOME/rover/src/rover_launcher/bin/start_rosbridge.sh

sleep 5
echo '    - realsense'

screen -d -m -S realsense $HOME/rover/src/rover_launcher/bin/start_realsense.sh

sleep 5
echo '    - april tag detections'

screen -d -m -S april_tags $HOME/rover/src/rover_launcher/bin/start_tag_detection.sh

sleep 5
echo '    - imu'

screen -d -m -S imu $HOME/rover/src/rover_launcher/bin/start_imu.sh

sleep 5
echo '    - drive system'

screen -d -m -S drive $HOME/rover/src/rover_launcher/bin/start_drive.sh

sleep 5
echo '    - lidar'

screen -d -m -S lidar $HOME/rover/src/rover_launcher/bin/start_lidar.sh

sleep 5
echo '    - kalman filter'

screen -d -m -S ekf_inertial $HOME/rover/src/rover_launcher/bin/start_ekf_inertial.sh

sleep 5
echo '    - video stream'

screen -d -m -S video $HOME/rover/src/rover_launcher/bin/start_video_server.sh

sleep 5
echo '    - obstacle avoidance'

screen -d -m -S avoidance $HOME/rover/src/rover_launcher/bin/start_avoidance.sh

sleep 5
echo '    - navigation'

screen -d -m -S navigation $HOME/rover/src/rover_launcher/bin/start_nav.sh

sleep 5
echo '    - state observer'

screen -d -m -S state_obs $HOME/rover/src/rover_launcher/bin/start_state_observer.sh

sleep 5
