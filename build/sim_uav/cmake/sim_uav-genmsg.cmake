# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sim_uav: 0 messages, 4 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Imavros_msgs:/opt/ros/melodic/share/mavros_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Igeographic_msgs:/opt/ros/melodic/share/geographic_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/melodic/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sim_uav_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv" NAME_WE)
add_custom_target(_sim_uav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sim_uav" "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv" ""
)

get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv" NAME_WE)
add_custom_target(_sim_uav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sim_uav" "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv" "geometry_msgs/Vector3:mavros_msgs/GlobalPositionTarget:std_msgs/Header"
)

get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv" NAME_WE)
add_custom_target(_sim_uav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sim_uav" "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv" "geometry_msgs/Vector3:mavros_msgs/PositionTarget:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv" NAME_WE)
add_custom_target(_sim_uav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sim_uav" "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sim_uav
)
_generate_srv_cpp(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/GlobalPositionTarget.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sim_uav
)
_generate_srv_cpp(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/PositionTarget.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sim_uav
)
_generate_srv_cpp(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sim_uav
)

### Generating Module File
_generate_module_cpp(sim_uav
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sim_uav
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sim_uav_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sim_uav_generate_messages sim_uav_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_cpp _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_cpp _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_cpp _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_cpp _sim_uav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sim_uav_gencpp)
add_dependencies(sim_uav_gencpp sim_uav_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sim_uav_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sim_uav
)
_generate_srv_eus(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/GlobalPositionTarget.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sim_uav
)
_generate_srv_eus(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/PositionTarget.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sim_uav
)
_generate_srv_eus(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sim_uav
)

### Generating Module File
_generate_module_eus(sim_uav
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sim_uav
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sim_uav_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sim_uav_generate_messages sim_uav_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_eus _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_eus _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_eus _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_eus _sim_uav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sim_uav_geneus)
add_dependencies(sim_uav_geneus sim_uav_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sim_uav_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sim_uav
)
_generate_srv_lisp(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/GlobalPositionTarget.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sim_uav
)
_generate_srv_lisp(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/PositionTarget.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sim_uav
)
_generate_srv_lisp(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sim_uav
)

### Generating Module File
_generate_module_lisp(sim_uav
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sim_uav
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sim_uav_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sim_uav_generate_messages sim_uav_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_lisp _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_lisp _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_lisp _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_lisp _sim_uav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sim_uav_genlisp)
add_dependencies(sim_uav_genlisp sim_uav_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sim_uav_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sim_uav
)
_generate_srv_nodejs(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/GlobalPositionTarget.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sim_uav
)
_generate_srv_nodejs(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/PositionTarget.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sim_uav
)
_generate_srv_nodejs(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sim_uav
)

### Generating Module File
_generate_module_nodejs(sim_uav
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sim_uav
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sim_uav_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sim_uav_generate_messages sim_uav_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_nodejs _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_nodejs _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_nodejs _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_nodejs _sim_uav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sim_uav_gennodejs)
add_dependencies(sim_uav_gennodejs sim_uav_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sim_uav_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sim_uav
)
_generate_srv_py(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/GlobalPositionTarget.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sim_uav
)
_generate_srv_py(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/mavros_msgs/cmake/../msg/PositionTarget.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sim_uav
)
_generate_srv_py(sim_uav
  "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sim_uav
)

### Generating Module File
_generate_module_py(sim_uav
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sim_uav
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sim_uav_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sim_uav_generate_messages sim_uav_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/land_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_py _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_global_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_py _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/target_local_pos.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_py _sim_uav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nguyenanhquang/landing_uav/src/sim_uav/srv/goto_aruco.srv" NAME_WE)
add_dependencies(sim_uav_generate_messages_py _sim_uav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sim_uav_genpy)
add_dependencies(sim_uav_genpy sim_uav_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sim_uav_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sim_uav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sim_uav
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sim_uav_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET mavros_msgs_generate_messages_cpp)
  add_dependencies(sim_uav_generate_messages_cpp mavros_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sim_uav_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sim_uav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sim_uav
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sim_uav_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET mavros_msgs_generate_messages_eus)
  add_dependencies(sim_uav_generate_messages_eus mavros_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sim_uav_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sim_uav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sim_uav
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sim_uav_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET mavros_msgs_generate_messages_lisp)
  add_dependencies(sim_uav_generate_messages_lisp mavros_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sim_uav_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sim_uav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sim_uav
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sim_uav_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET mavros_msgs_generate_messages_nodejs)
  add_dependencies(sim_uav_generate_messages_nodejs mavros_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sim_uav_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sim_uav)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sim_uav\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sim_uav
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sim_uav_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET mavros_msgs_generate_messages_py)
  add_dependencies(sim_uav_generate_messages_py mavros_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sim_uav_generate_messages_py std_msgs_generate_messages_py)
endif()
