BOARD_VENDOR := pantech

# inherit from the proprietary version
-include vendor/pantech/ef47s/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME :=ef47s
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DEF47S -DNEED_UMS_ENABLE
COMMON_GLOBAL_CFLAGS += -DNEW_ION_API=1

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf

# Audio
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Use libril in the device tree
#BOARD_PROVIDES_LIBRIL := true

# Camera
USE_CAMERA_STUB := false
TARGET_PROVIDES_CAMERA_HAL := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_CAMERA_ABI_HACK
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# GPS
BOARD_HAVE_NEW_QC_GPS := true

# Recovery
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef47s/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_INITRC := device/pantech/ef47s/init.rc

# TWRP
DEVICE_RESOLUTION := 720x1280
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INCLUDE_DUMLOCK := true
TW_INCLUDE_JB_CRYPTO := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/pantech/ef47s/configs/egl.cfg

# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=SKT-KOR user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0
#07/02/2013 Alex Bokhankovich: I suppose this could be decreased
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000
#TARGET_KERNEL_SOURCE := kernel/pantech/ef47s
#TARGET_KERNEL_CONFIG := ef47_config
TARGET_PREBUILT_KERNEL := device/pantech/ef47s/kernel

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 9437184
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 36

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_PROVIDES_POWERHAL := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

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