LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    lib/nl.c \
    lib/cache.c \
    lib/msg.c \
    lib/object.c \
    lib/cache_mngr.c \
    lib/addr.c \
    lib/cache_mngt.c \
    lib/handlers.c \
    lib/error.c \
    lib/data.c \
    lib/genl/genl.c \
    lib/genl/family.c \
    lib/genl/mngt.c \
    lib/genl/ctrl.c \
    lib/doc.c \
    lib/attr.c \
    lib/socket.c \
    lib/utils.c

LOCAL_C_INCLUDES += \
	${LOCAL_PATH}/include

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-DSYSCONFDIR=\"/system/etc\" \
	-D_GNU_SOURCE

# Static Library
LOCAL_MODULE := libnl2
LOCAL_MODULE_TAGS := eng optional
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=
LOCAL_WHOLE_STATIC_LIBRARIES:= libnl2
LOCAL_SHARED_LIBRARIES:= liblog
LOCAL_MODULE := libnl2
LOCAL_MODULE_TAGS := eng optional
include $(BUILD_SHARED_LIBRARY)	
