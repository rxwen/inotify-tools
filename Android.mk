LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	libinotifytools/src/redblack.c \
	libinotifytools/src/inotifytools.c

LOCAL_CFLAGS := -O2 -g -w

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/libinotifytools/src/

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := libinotifytools

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	src/common.c \
	src/inotifywait.c

LOCAL_CFLAGS := -O2 -g
LOCAL_SHARED_LIBRARIES := libinotifytools

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/libinotifytools/src/ \
	$(LOCAL_PATH)/src/

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := inotifywait

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	src/common.c \
	src/inotifywatch.c

LOCAL_CFLAGS := -O2 -g
LOCAL_SHARED_LIBRARIES := libinotifytools

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/libinotifytools/src/ \
	$(LOCAL_PATH)/src/

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := inotifywatch

include $(BUILD_EXECUTABLE)
