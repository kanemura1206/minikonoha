cmake_minimum_required(VERSION 2.6)
find_library(HAVE_LIBMECAB NAMES mecab)
if(HAVE_LIBMECAB)
	set(ExtraLibs ${ExtraLibs} ${HAVE_LIBMECAB})
	set(PACKAGE_EXTRA_LIBRARY ${ExtraLibs})
	set(PACKAGE_SOURCE_CODE mecab_glue.c)
	set(PACKAGE_SCRIPT_CODE mecab_glue.k)
	add_konoha_package(mecab)
endif(HAVE_LIBMECAB)
