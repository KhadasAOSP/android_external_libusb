LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

INCLUDES = $(LOCAL_PATH)
INCLUDES += $(LOCAL_PATH)/os
INCLUDES += $(LOCAL_PATH)/../
LOCAL_MODULE:= libusb
LOCAL_SRC_FILES := core.c \
        descriptor.c \
        io.c \
        sync.c \
        os/linux_usbfs.c

LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := $(INCLUDES)

LOCAL_SHARED_LIBRARIES += libc

LOCAL_CFLAGS += -DOS_LINUX

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)
