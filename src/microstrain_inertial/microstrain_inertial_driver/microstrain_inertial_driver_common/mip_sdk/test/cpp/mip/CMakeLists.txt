add_mip_test(
    NAME TestMipPerf
    SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/mip_parser_performance.cpp"
    COMMAND TestMipPerf
    USE_CPP TRUE
)

add_mip_test(
    NAME TestMipCpp
    SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/test_mip.cpp"
    COMMAND TestMipCpp
    USE_CPP TRUE
)

add_mip_test(
    NAME TestMipPacket
    SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/test_packet_interface.cpp"
    COMMAND TestMipPacket
    USE_CPP TRUE
)

# Force C++17 for log4cxx compatibility
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
