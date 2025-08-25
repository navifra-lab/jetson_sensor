# TODO: Fix microstrain tests with V3 changes
#add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/microstrain")
add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/mip")

# Force C++17 for log4cxx compatibility
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
