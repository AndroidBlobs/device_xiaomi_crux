# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from crux device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := crux
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_crux
PRODUCT_MODEL := Mi9 Pro 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := crux
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="crux-user 9 PKQ1.190714.001 9.12.19 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/crux/crux:9/PKQ1.190714.001/9.12.19:user/release-keys
