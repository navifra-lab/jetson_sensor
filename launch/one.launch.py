from launch.actions import SetEnvironmentVariable
from launch import LaunchDescription
from launch.actions import IncludeLaunchDescription
from launch_ros.actions import Node
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import PathJoinSubstitution
from launch_ros.substitutions import FindPackageShare
import os

from ament_index_python.packages import get_package_share_directory

def generate_launch_description():
    ouster_launch_dir = os.path.join(get_package_share_directory('ouster_ros'), 'launch')
    microstrain_launch_dir = os.path.join(get_package_share_directory('microstrain_inertial_driver'), 'launch')
    nvjpeg_package_dir = get_package_share_directory('gstreamer_nvjpegenc_node')  # 🔧 추가

    return LaunchDescription([
        SetEnvironmentVariable(name='HOME', value='/root'),
        SetEnvironmentVariable(name='ROS_LOG_DIR', value='/home/mapping/.ros/logs'),

        # Ouster LiDAR
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource(os.path.join(ouster_launch_dir, 'driver.launch.py')),
            launch_arguments={
                'ouster_ns': 'hrz',
                'viz': 'false',
                'params_file': PathJoinSubstitution([
                    FindPackageShare('ouster_ros'),
                    'config',
                    'driver_params.yaml'
                ])
            }.items()
        ),

        # MicroStrain IMU
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource(
                PathJoinSubstitution([
                    FindPackageShare('microstrain_inertial_driver'),
                    'launch',
                    'microstrain_launch.py'
                ])
            ),
            launch_arguments={
                'configure': 'true',
                'activate': 'true',
                'params_file': PathJoinSubstitution([
                    FindPackageShare('microstrain_inertial_examples'),
                    'config',
                    'cv7',
                    'cv7.yml'
                ])
            }.items()
        ),

        # 🔥 추가: gstreamer_nvjpegenc_node 실행 노드
        Node(
            package='gstreamer_nvjpegenc_node',
            executable='nvjpeg_ros_node',
            name='nvjpeg_camera_node',
            output='screen'
        )
    ])

