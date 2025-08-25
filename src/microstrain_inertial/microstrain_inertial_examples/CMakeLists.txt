cmake_minimum_required(VERSION 3.0.2)
project(microstrain_inertial_examples)

find_package(catkin REQUIRED)
catkin_package()

# Install the launch and config files
install(DIRECTORY launch config 
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
# Force C++17 for log4cxx compatibility
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
