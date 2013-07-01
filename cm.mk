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
PRODUCT_BRAND := SKY
PRODUCT_MODEL := IM-A830S
PRODUCT_MANUFACTURER := PANTECH

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SKY_IM-A830S BUILD_ID=JZO54K BUILD_FINGERPRINT=SKY/SKY_IM-A830S/ef47s:4.1.2/JZO54K/S0214212.EF47S_012:user/release-keys PRIVATE_BUILD_DESC="msm8960-user 4.1.2 JZO54K S0214212.EF47S_012 release-keys" BUILD_NUMBER=S0214212.EF47S_012