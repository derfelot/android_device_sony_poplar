### PLATFORM
$(call inherit-product, device/sony/yoshino-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/poplar/poplar-vendor.mk)

DEVICE_PATH := device/sony/poplar

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

include $(DEVICE_PATH)/device/*.mk
