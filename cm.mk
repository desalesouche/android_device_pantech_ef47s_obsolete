## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ef47s

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef47s/device_ef47s.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef47s
PRODUCT_NAME := cm_ef47s
PRODUCT_BRAND := pantech
PRODUCT_MODEL := ef47s
PRODUCT_MANUFACTURER := pantech
