cmake_minimum_required(VERSION 3.22.1)

project(dragshare_jieba)

add_library(dragshare_jieba SHARED text_segmenter_jni.cpp)

target_compile_features(dragshare_jieba PRIVATE cxx_std_17)
target_include_directories(dragshare_jieba PRIVATE include)

# Android 15+ can run on 16 KB memory pages. The linker default is still 4 KB
# for NDK r26, so arm64 libraries need an explicit maximum page size.
if(ANDROID_ABI STREQUAL "arm64-v8a")
    target_link_options(dragshare_jieba PRIVATE "-Wl,-z,max-page-size=16384")
endif()

find_library(log-lib log)
target_link_libraries(dragshare_jieba ${log-lib})
