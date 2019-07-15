LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := power.qcom
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

LOCAL_SRC_FILES := \
    power-steppe.c \
    power.c \
    utils.c

LOCAL_SHARED_LIBRARIES := liblog libdl

LOCAL_HEADER_LIBRARIES += generated_kernel_headers
LOCAL_HEADER_LIBRARIES += libutils_headers
LOCAL_HEADER_LIBRARIES += libhardware_headers

LOCAL_CFLAGS += -Werror -Wall -Wextra

include $(BUILD_SHARED_LIBRARY)
