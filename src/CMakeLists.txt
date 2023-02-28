file(GLOB_RECURSE HEADER_FILES
)

file(GLOB_RECURSE SOURCE_FILES
)

add_executable(
    template
    main.cpp
    ${HEADER_FILES}
    ${SOURCE_FILES}
)

target_include_directories(template
    PRIVATE
    include
)

target_link_libraries(template
    PRIVATE
)

set_target_properties( template
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})