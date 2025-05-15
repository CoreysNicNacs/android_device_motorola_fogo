#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/motorola/fogo

# A/B OTA configuration
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Boot control HAL (for fastbootd / slot management)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.holi

# A/B OTA dependencies
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    otapreopt_script \
    cppreopts.sh

# TWRP-specific additions
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.recovery.qcom.rc \
    init.recovery.usb.rc \
    ueventd.rc \
    ueventd.qcom.rc

# Force TW_THEME detection (Soong workaround)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/res/ui.xml:recovery/root/res/ui.xml

PRODUCT_PROPERTY_OVERRIDES += \
    tw_theme=portrait_hdpi \
    tw_screen_width=1080 \
    tw_screen_height=2400

# Additional Soong namespaces if using prebuilt blobs
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

