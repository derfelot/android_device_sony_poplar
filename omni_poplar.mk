# Inherit AOSP configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit device configuration
$(call inherit-product, device/sony/poplar/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### BOOTANIMATION
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_poplar
PRODUCT_DEVICE := poplar
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8341
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=poplar \
    PRIVATE_BUILD_DESC="G8341-user 9 47.2.A.11.228 3311891731 release-keys"

BUILD_FINGERPRINT := Sony/G8341/G8341:9/47.2.A.11.228/3311891731:user/release-keys

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif

ifneq ($(LINEAGE_VERITY_CERTIFICATE),)
    PRODUCT_VERITY_SIGNING_KEY := $(LINEAGE_VERITY_CERTIFICATE)
endif
