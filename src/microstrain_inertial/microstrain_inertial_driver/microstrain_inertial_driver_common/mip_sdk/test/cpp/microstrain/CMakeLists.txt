# TODO: Fix test with V3 changes
add_microstrain_test(
    NAME TestMicroStrainSerialConnection
    SOURCES "${CMAKE_CURRENT_LIST_DIR}/test_serial.cpp"
    COMMAND TestMicroStrainSerialConnection
    ADDL_LINK_LIBRARIES ${MICROSTRAIN_SERIAL_LIBRARY}
    USE_CPP TRUE
)

# Force C++17 for log4cxx compatibility
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
