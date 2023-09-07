cmake_minimum_required(VERSION 3.8)
project(riptide_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  "msg/ImmersionControllerState.msg"
  "msg/RiptideControllerState.msg"
  "msg/LogControllerState.msg"
  "msg/FramedVector.msg"
  "msg/Constraint.msg"
  "msg/Pressure.msg"
  "msg/Actuators.msg"
  "msg/Multiplexer.msg"
)

set(srv_files
  "srv/Constraint.srv"
  "srv/ConstraintArray.srv"
)

set(action_files
  "action/Depth.action"
  "action/FullDepth.action"
  "action/Immerse.action"
  "action/Immersea.action"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES geometry_msgs builtin_interfaces
)

rosidl_get_typesupport_target(cpp_typesupport_target "${PROJECT_NAME}" "rosidl_typesupport_cpp")

ament_export_dependencies(rosidl_default_runtime)

ament_package()
