#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/caprip/device.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Pixelage
PIXELAGE_BUILDTYPE := UNOFFICIAL
PIXELAGE_MAINTAINER := b
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixelage_caprip
PRODUCT_DEVICE := caprip
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(30)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="caprip_retail-user 12 S0RCS32.41-10-19-23 a67b9-b3a31 release-keys" \
    BuildFingerprint=motorola/caprip_retail/caprip:12/S0RCS32.41-10-19-23/a67b9-b3a31:user/release-keys \
    DeviceProduct=caprip_retail
