set(MICROSTRAIN_CONNECTION_SOURCES
    "${CMAKE_CURRENT_LIST_DIR}/connection.hpp"
)

if(MICROSTRAIN_ENABLE_SERIAL)
    add_subdirectory(serial)
endif()

if(MICROSTRAIN_ENABLE_TCP)
    add_subdirectory(tcp)
endif()

# Don't include recording connection if no connections are enabled.
if(MICROSTRAIN_ENABLE_SERIAL OR MICROSTRAIN_ENABLE_TCP)
    add_subdirectory(recording)
endif()

set(MICROSTRAIN_LIBRARIES_TMP ${MICROSTRAIN_LIBRARIES_TMP} PARENT_SCOPE)

# Force C++17 for log4cxx compatibility
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
