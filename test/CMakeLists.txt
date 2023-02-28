file(GLOB_RECURSE HEADER_FILES
)

file(GLOB_RECURSE SOURCE_FILES
)

# list(FILTER SOURCE_FILES EXCLUDE REGEX ".*main[.](cpp)$")

find_package(GTest)

add_executable(
    template_test
    main.cpp
    ${HEADER_FILES}
    ${SOURCE_FILES}
)

set_target_properties( template_test
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
    
# Use the global target
target_link_libraries(template_test gtest::gtest)
