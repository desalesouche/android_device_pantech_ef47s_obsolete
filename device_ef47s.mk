$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/pantech/ef47s/ef47s-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef47s/overlay

LOCAL_PATH := device/pantech/ef47s
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ef47s
PRODUCT_DEVICE := ef47s

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
  device/pantech/ef47s/ramdisk/fstab.qcom:root/fstab.qcom \
  device/pantech/ef47s/ramdisk/init.goldfish.rc:root/init.goldfish.rc \
  device/pantech/ef47s/ramdisk/initlogo.rle:root/initlogo.rle \
  device/pantech/ef47s/ramdisk/init.pantech.usb.rc:root/init.pantech.usb.rc \
  device/pantech/ef47s/ramdisk/init.pantech.usb.sh:root/init.pantech.usb.sh \
  device/pantech/ef47s/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
  device/pantech/ef47s/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
  device/pantech/ef47s/ramdisk/init.qcom.rc:root/init.qcom.rc \
  device/pantech/ef47s/ramdisk/init.qcom.sh:root/init.qcom.sh \
  device/pantech/ef47s/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
  device/pantech/ef47s/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
  device/pantech/ef47s/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
  device/pantech/ef47s/ramdisk/init.target.rc:root/init.target.rc \
  device/pantech/ef47s/ramdisk/init.trace.rc:root/init.trace.rc \
  device/pantech/ef47s/ramdisk/init.usb.rc:root/init.usb.rc \
  device/pantech/ef47s/ramdisk/poweroff_in.rle:root/poweroff_in.rle \
  device/pantech/ef47s/ramdisk/resetlogo.rle:root/resetlogo.rle \
  device/pantech/ef47s/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
  device/pantech/ef47s/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
  device/pantech/ef47s/ramdisk/ueventd.rc:root/ueventd.rc
#  device/pantech/ef47s/ramdisk/charger:root/charger
#  device/pantech/ef47s/ramdisk/init.rc:root/init.rc \
#  device/pantech/ef47s/ramdisk/default.prop:root/default.prop \

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi