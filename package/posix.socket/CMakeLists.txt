cmake_minimum_required(VERSION 2.6)
set(PACKAGE_SOURCE_CODE socket_glue.c)
set(PACKAGE_SCRIPT_CODE socket_glue.k)
add_konoha_package(posix.socket)
