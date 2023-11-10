LOCAL_PATH := $(call my-dir)/..

include $(CLEAR_VARS)

LOCAL_MODULE    := gtest
LOCAL_SRC_FILES := src/gtest-all.cc

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src \
		    $(LOCAL_PATH)/include

include $(BUILD_STATIC_LIBRARY)
