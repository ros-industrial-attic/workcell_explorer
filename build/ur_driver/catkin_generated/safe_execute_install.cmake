execute_process(COMMAND "/home/aadityacr7/gsoc_2018/build/ur_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/aadityacr7/gsoc_2018/build/ur_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
