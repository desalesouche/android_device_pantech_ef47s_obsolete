USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/pantech/ef47s/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Flags
#COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DEF47S -DNEED_UMS_ENABLE

# Init
#TARGET_PROVIDES_INIT_RC := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME :=ef47s

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200


BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=SKT-KOR user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 9437184
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000

TARGET_PREBUILT_KERNEL := device/pantech/ef47s/kernel



# Lights
#TARGET_PROVIDES_LIBLIGHTS := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION := 720x1280
TARGET_RECOVERY_INITRC := device/pantech/ef47s/init.rc
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_SUPPRESS_EMMC_WIPE := true
#BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true


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