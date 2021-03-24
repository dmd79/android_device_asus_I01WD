LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.power-service-asus_msmnile
LOCAL_MODULE_STEM := android.hardware.power@1.2-service
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libdl \
    libbase \
    libutils \
    android.hardware.power-ndk_platform \
    libbinder_ndk

LOCAL_HEADER_LIBRARIES := \
    libhardware_headers

LOCAL_SRC_FILES := \
    power-common.c \
    metadata-parser.c \
    utils.c \
    list.c \
    hint-data.c \
    Power.cpp \
    main.cpp

LOCAL_CFLAGS += -Wall -Wextra -Werror
LOCAL_CFLAGS += -Wno-unused-parameter -Wno-unused-variable

LOCAL_SRC_FILES += power-msmnile.c

ifneq ($(TARGET_POWERHAL_MODE_EXT),)
    LOCAL_CFLAGS += -DMODE_EXT
    LOCAL_SRC_FILES += ../../../../$(TARGET_POWERHAL_MODE_EXT)
endif

ifneq ($(TARGET_POWERHAL_SET_INTERACTIVE_EXT),)
    LOCAL_CFLAGS += -DSET_INTERACTIVE_EXT
    LOCAL_SRC_FILES += ../../../../$(TARGET_POWERHAL_SET_INTERACTIVE_EXT)
endif

ifneq ($(TARGET_TAP_TO_WAKE_NODE),)
    LOCAL_CFLAGS += -DTAP_TO_WAKE_NODE=\"$(TARGET_TAP_TO_WAKE_NODE)\"
endif

ifeq ($(TARGET_USES_INTERACTION_BOOST),true)
    LOCAL_CFLAGS += -DINTERACTION_BOOST
endif

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.power-service-asus_msmnile.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := android.hardware.power@1.2-service.rc
LOCAL_SRC_FILES := android.hardware.power-service-asus_msmnile.rc

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := power.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/vintf/manifest
LOCAL_SRC_FILES := power.xml

include $(BUILD_PREBUILT)
