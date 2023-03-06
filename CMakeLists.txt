#
cmake_minimum_required (VERSION 3.8)


#
project ("keyhunt-ocl")


#
##
set(LIBS
	libcrypto.a
	OpenCL
	dl
	pthread
)

##
include_directories(./lib/openssl-1.0.2l/include)

link_directories(
	./lib/openssl-1.0.2l
)

##
if(NOT WIN32)
endif()

##
if(WIN32)
endif()


#
add_executable(${PROJECT_NAME}
	keyhunt-ocl/bloom.cpp
	keyhunt-ocl/main.cpp
	keyhunt-ocl/oclengine.cpp
	keyhunt-ocl/utils.cpp
	keyhunt-ocl/winglue.cpp
)


#
target_link_libraries(${PROJECT_NAME} ${LIBS})


#
install(TARGETS ${PROJECT_NAME} DESTINATION ./bin)
