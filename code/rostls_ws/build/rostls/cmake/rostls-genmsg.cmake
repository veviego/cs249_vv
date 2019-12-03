# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rostls: 1 messages, 1 services")

set(MSG_I_FLAGS "-Irostls:/home/vagrant/rostls_ws/src/rostls/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rostls_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg" NAME_WE)
add_custom_target(_rostls_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostls" "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg" ""
)

get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv" NAME_WE)
add_custom_target(_rostls_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostls" "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rostls
  "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostls
)

### Generating Services
_generate_srv_cpp(rostls
  "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostls
)

### Generating Module File
_generate_module_cpp(rostls
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostls
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rostls_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rostls_generate_messages rostls_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg" NAME_WE)
add_dependencies(rostls_generate_messages_cpp _rostls_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv" NAME_WE)
add_dependencies(rostls_generate_messages_cpp _rostls_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostls_gencpp)
add_dependencies(rostls_gencpp rostls_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostls_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rostls
  "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostls
)

### Generating Services
_generate_srv_eus(rostls
  "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostls
)

### Generating Module File
_generate_module_eus(rostls
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostls
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rostls_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rostls_generate_messages rostls_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg" NAME_WE)
add_dependencies(rostls_generate_messages_eus _rostls_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv" NAME_WE)
add_dependencies(rostls_generate_messages_eus _rostls_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostls_geneus)
add_dependencies(rostls_geneus rostls_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostls_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rostls
  "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostls
)

### Generating Services
_generate_srv_lisp(rostls
  "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostls
)

### Generating Module File
_generate_module_lisp(rostls
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostls
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rostls_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rostls_generate_messages rostls_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg" NAME_WE)
add_dependencies(rostls_generate_messages_lisp _rostls_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv" NAME_WE)
add_dependencies(rostls_generate_messages_lisp _rostls_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostls_genlisp)
add_dependencies(rostls_genlisp rostls_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostls_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rostls
  "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostls
)

### Generating Services
_generate_srv_nodejs(rostls
  "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostls
)

### Generating Module File
_generate_module_nodejs(rostls
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostls
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rostls_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rostls_generate_messages rostls_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg" NAME_WE)
add_dependencies(rostls_generate_messages_nodejs _rostls_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv" NAME_WE)
add_dependencies(rostls_generate_messages_nodejs _rostls_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostls_gennodejs)
add_dependencies(rostls_gennodejs rostls_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostls_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rostls
  "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostls
)

### Generating Services
_generate_srv_py(rostls
  "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostls
)

### Generating Module File
_generate_module_py(rostls
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostls
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rostls_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rostls_generate_messages rostls_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/msg/Greeting.msg" NAME_WE)
add_dependencies(rostls_generate_messages_py _rostls_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vagrant/rostls_ws/src/rostls/srv/Echo.srv" NAME_WE)
add_dependencies(rostls_generate_messages_py _rostls_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostls_genpy)
add_dependencies(rostls_genpy rostls_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostls_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostls)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostls
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rostls_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostls)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostls
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rostls_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostls)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostls
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rostls_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostls)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostls
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rostls_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostls)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostls\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostls
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rostls_generate_messages_py std_msgs_generate_messages_py)
endif()
