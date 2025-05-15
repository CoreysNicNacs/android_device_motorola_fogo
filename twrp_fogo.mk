#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit full 64-bit base and telephony config
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Include base TWRP config
$(call inherit-product, bootable/recovery/twrp.mk)

# Inherit the device-specific configuration
$(call inherit-product, device/motorola/fogo/device.mk)


# Device identity
PRODUCT_DEVICE := fogo
PRODUCT_NAME := twrp_fogo
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G - 2024
PRODUCT_MANUFACTURER := motorola

# GMS/OTA ID
PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Build fingerprint (used for AVB decrypt compatibility)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fogo_g-user 11 U1UFNS34.41-98-3-11 17710 release-keys"

BUILD_FINGERPRINT := motorola/fogo_g/fogo:11/U1UFNS34.41-98-3-11/17710:user/release-keys

# Dynamic partition support
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd support
PRODUCT_PACKAGES += \
    fastbootd

# USB/ADB recovery config
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=adb \
    persist.vendor.usb.config=adb

# Default locale (optional)
PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := US

# Soong namespace (optional for vendor blobs/modules)
PRODUCT_SOONG_NAMESPACES += \
    device/motorola/fogo

    # Required for Android 14+ to avoid version_util.mk crash
RELEASE_PLATFORM_VERSION := 14
RELEASE_PLATFORM_VERSION_LAST_STABLE := 13
RELEASE_PLATFORM_SECURITY_PATCH := 2099-12-31
RELEASE_PLATFORM_SDK_VERSION := 34

