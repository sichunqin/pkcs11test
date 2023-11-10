
LOCAL_PATH := $(call my-dir)/../gtest-1.10.0/googletest

APP_STL := c++_static


include $(CLEAR_VARS)

LOCAL_MODULE    := gtest
LOCAL_SRC_FILES := src/gtest-all.cc

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src \
                    $(LOCAL_PATH)/include

include $(BUILD_STATIC_LIBRARY)

LOCAL_PATH := $(LOCAL_PATH)/../..
LOCAL_LDLIBS += -static-libstdc++

include $(CLEAR_VARS)

LOCAL_MODULE    := pkcs11test
LOCAL_SRC_FILES := pkcs11test.cc \
                    pkcs11-describe.cc \
                    describe.cc \
                    globals.cc \
                    init.cc \
                    slot.cc \
                    session.cc \
                    object.cc \
                    login.cc \
                    rng.cc \
                    tookan.cc \
                    keypair.cc \
                    cipher.cc \
                    digest.cc \
                    sign.cc \
                    hmac.cc \
                    key.cc \
                    dual.cc 

LOCAL_STATIC_LIBRARIES += gtest
		

LOCAL_C_INCLUDES := $(LOCAL_PATH)/third_party/pkcs11 \
                    $(LOCAL_PATH)/gtest-1.10.0/googletest/include


include $(BUILD_EXECUTABLE)







