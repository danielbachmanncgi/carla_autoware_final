# Install script for directory: /home/lukas/carla/carla-autoware/catkin_ws/src/ros-bridge/carla_ros_bridge

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lukas/carla/carla-autoware/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/lukas/carla/carla-autoware/catkin_ws/build/ros-bridge/carla_ros_bridge/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lukas/carla/carla-autoware/catkin_ws/build/ros-bridge/carla_ros_bridge/catkin_generated/installspace/carla_ros_bridge.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_ros_bridge/cmake" TYPE FILE FILES
    "/home/lukas/carla/carla-autoware/catkin_ws/build/ros-bridge/carla_ros_bridge/catkin_generated/installspace/carla_ros_bridgeConfig.cmake"
    "/home/lukas/carla/carla-autoware/catkin_ws/build/ros-bridge/carla_ros_bridge/catkin_generated/installspace/carla_ros_bridgeConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_ros_bridge" TYPE FILE FILES "/home/lukas/carla/carla-autoware/catkin_ws/src/ros-bridge/carla_ros_bridge/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/carla_ros_bridge" TYPE PROGRAM FILES "/home/lukas/carla/carla-autoware/catkin_ws/src/ros-bridge/carla_ros_bridge/src/carla_ros_bridge/bridge.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_ros_bridge" TYPE FILE FILES "/home/lukas/carla/carla-autoware/catkin_ws/src/ros-bridge/carla_ros_bridge/test/ros_bridge_client.test")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_ros_bridge" TYPE DIRECTORY FILES "/home/lukas/carla/carla-autoware/catkin_ws/src/ros-bridge/carla_ros_bridge/config")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_ros_bridge/launch" TYPE DIRECTORY FILES "/home/lukas/carla/carla-autoware/catkin_ws/src/ros-bridge/carla_ros_bridge/launch/")
endif()

