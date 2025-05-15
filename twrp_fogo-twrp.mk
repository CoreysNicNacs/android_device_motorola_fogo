# Disable Starlark release config system
DISABLE_RELEASE_CONFIG := true

# Copyright (C) 2025 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0

# Inherit common base
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device-specific config
$(call inherit-product, device/motorola/fogo/device.mk)

PRODUCT_DEVICE := fogo
PRODUCT_NAME := twrp_fogo-twrp
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G - 2024
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fogo_g-user 11 U1UFNS34.41-98-3-11 17710 release-keys"

BUILD_FINGERPRINT := motorola/fogo_g/fogo:11/U1UFNS34.41-98-3-11/17710:user/release-keys

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := US

PRODUCT_SOONG_NAMESPACES += \
    device/motorola/fogo
