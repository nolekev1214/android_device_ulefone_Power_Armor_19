#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Power_Armor_19 device
$(call inherit-product, device/ulefone/Power_Armor_19/device.mk)

PRODUCT_DEVICE := Power_Armor_19
PRODUCT_NAME := omni_Power_Armor_19
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Power Armor 19
PRODUCT_MANUFACTURER := ulefone

PRODUCT_GMS_CLIENTID_BASE := android-ulefone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_k6789v1_64-user 12 SP1A.210812.016 p1rck61v164bspP9 release-keys"

BUILD_FINGERPRINT := Ulefone/Power_Armor_19/Power_Armor_19:12/SP1A.210812.016/1671615701:user/release-keys
