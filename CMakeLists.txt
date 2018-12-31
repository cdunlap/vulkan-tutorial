cmake_minimum_required(VERSION 3.13)
project(01_VulkanWindow)

set(CMAKE_CXX_STANDARD 17)

find_package(PkgConfig REQUIRED)
pkg_search_module(GLFW REQUIRED glfw3)
pkg_search_module(vulkan REQUIRED vulkan)

include_directories(${GLFW_INCLUDE_DIRS})

add_executable(01_VulkanWindow main.cpp)
target_link_libraries(01_VulkanWindow ${GLFW_STATIC_LIBRARIES} vulkan)