$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/pantech/ef47s/ef47s-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef47s/overlay

LOCAL_PATH := device/pantech/ef47s
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/pantech/ef47s/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Audio config
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/configs/audio_policy.conf:system/etc/audio_policy.conf

# Thermal config
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/configs/thermald.conf:system/etc/thermald.conf

# GPS config
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/gps/gps.conf:system/etc/gps.conf

# Modules
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/modules/prima/prima_wlan.ko:system/lib/modules/prima_wlan.ko \
    device/pantech/ef47s/modules/test-iosched.ko:system/lib/modules/test-iosched.ko \
    device/pantech/ef47s/modules/tcp_westwood.ko:system/lib/modules/tcp_westwood.ko \
    device/pantech/ef47s/modules/tcp_htcp.ko:system/lib/modules/tcp_htcp.ko \
    device/pantech/ef47s/modules/spidev.ko:system/lib/modules/spidev.ko \
    device/pantech/ef47s/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/pantech/ef47s/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    device/pantech/ef47s/modules/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
    device/pantech/ef47s/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    device/pantech/ef47s/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    device/pantech/ef47s/modules/qce40.ko:system/lib/modules/qce40.ko \
    device/pantech/ef47s/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    device/pantech/ef47s/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    device/pantech/ef47s/modules/mckernelapi.ko:system/lib/modules/mckernelapi.ko \
    device/pantech/ef47s/modules/mcdrvmodule.ko:system/lib/modules/mcdrvmodule.ko \
    device/pantech/ef47s/modules/ks8851.ko:system/lib/modules/ks8851.ko \
    device/pantech/ef47s/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/pantech/ef47s/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/pantech/ef47s/modules/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
    device/pantech/ef47s/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/pantech/ef47s/modules/prima/cfg80211.ko:system/lib/modules/cfg80211.ko

# Discard inherited values and use our own instead.
PRODUCT_NAME := ef47s
PRODUCT_DEVICE := ef47s
PRODUCT_BRAND := SKY
PRODUCT_MODEL := IM-A830S
PRODUCT_MANUFACTURER := PANTECH

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


# WPA supplicant config
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Media config
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/pantech/ef47s/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/pantech/ef47s/configs/media_codecs.xml:system/etc/media_codecs.xml

# QC thermald config
PRODUCT_COPY_FILES +=device/pantech/ef47s/configs/thermald.conf:system/etc/thermald.conf

# vold config
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/configs/vold.fstab:system/etc/vold.fstab

# Sound configs
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/AVRCP.kl \
    device/pantech/ef47s/keylayout/keypad_8960.kl:system/usr/keylayout/h2w_headset.kl \
    device/pantech/ef47s/keylayout/Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/pantech/ef47s/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/pantech/ef47s/keylayout/qt602240_ts_input_ef47s.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl
	
# Input device config
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/pantech/ef47s/idc/qwerty.idc:system/usr/idc/qwerty.idc \

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras
	
# Torch
PRODUCT_PACKAGES += \
    Torch

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    liboverlay

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# OMX
PRODUCT_PACKAGES += \
#    libc2dcolorconvert \
#    libdivxdrmdecrypt \
#    libOmxCore \
#    libOmxVdec \
#    libOmxVenc \
#    libOmxAacEnc \
#    libOmxAmrEnc \
#    libOmxEvrcEnc \
#    libOmxQcelp13Enc \
#    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Bluetooth
PRODUCT_PACKAGES += \
    hci_qcomm_init

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

# overlays
DEVICE_PACKAGE_OVERLAYS += device/pantech/ef47s/overlay

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/pantech/ef47s/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/pantech/ef47s/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/pantech/ef47s/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/pantech/ef47s/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/pantech/ef47s/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh
	
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
		
# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y \
    com.qc.hardware=true \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    lpa.decode=true \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    persist.hwc.mdpcomp.enable=true \
    persist.thermal.monitor=true \
    ro.opengles.version=131072 \
    ro.qc.sdk.audio.fluencetype=fluence \
    ro.use_data_netmgrd=true \
    persist.gps.qmienabled=true \
    ro.baseband.arch=msm \
    ro.product.wireless=WCN3660 \
    ro.qualcomm.bt.hci_transport=smd \
    ro.telephony.ril.v3=skipradiooff
    wifi.interface=wlan0

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)