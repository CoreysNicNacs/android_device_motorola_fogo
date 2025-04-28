#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Include base product configurations (most specific first)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)



# Include Fogo-specific configurations
$(call inherit-product, device/motorola/fogo/device.mk)


# Device-specific properties
PRODUCT_DEVICE := fogo
PRODUCT_NAME := twrp_fogo
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G - 2024
PRODUCT_MANUFACTURER := motorola

# Google Mobile Services client ID
PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Build property overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fogo_g-user 11 U1UFNS34.41-98-3-11 17710 release-keys"

# Build fingerprint for the device
BUILD_FINGERPRINT := motorola/fogo_g/fogo:11/U1UFNS34.41-98-3-11/17710:user/release-keys
