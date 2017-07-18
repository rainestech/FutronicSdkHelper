LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := Prebuild_usb1.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libusb-1.0.so
include $(PREBUILT_SHARED_LIBRARY) 

include $(CLEAR_VARS)
LOCAL_MODULE    := Prebuild_ftrScanAPI
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libftrScanAPI.so
include $(PREBUILT_SHARED_LIBRARY) 

include $(CLEAR_VARS)
LOCAL_MODULE    := Prebuild_ftrapi
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libftrapi.so
include $(PREBUILT_SHARED_LIBRARY) 

include $(CLEAR_VARS)
LOCAL_MODULE    := ftrSDKAndroidJni
LOCAL_LDLIBS += -llog
LOCAL_SRC_FILES := ftrSDKAndroidJni.cpp FTR_PROGRESS.cpp FtrIdentifyRecord.cpp FtrIdentifyResult.cpp FutronicEnrollment.cpp FutronicIdentification.cpp FutronicSdkBase.cpp FutronicVerification.cpp
LOCAL_SHARED_LIBRARIES := Prebuild_usb1.0 Prebuild_ftrScanAPI Prebuild_ftrapi
include $(BUILD_SHARED_LIBRARY)
