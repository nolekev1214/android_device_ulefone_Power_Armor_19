#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/ulefone/Power_Armor_19
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.mt6789

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.mt6789 \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Add support for fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_SHIPPING_API_LEVEL := 31

# Assert
TARGET_OTA_ASSERT_DEVICE := Power_Armor_19

TARGET_COPY_OUT_VENDOR := vendor

# TWRP Flags
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_INCLUDE_RESETPROP := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 1200
TARGET_USES_MKE2FS := true
TW_NO_LEGACY_PROPS := true
TW_USE_NEW_MINADBD := true
TW_NO_BIND_SYSTEM := true
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_APEX := true
TW_FRAMERATE := 60
TW_DEVICE_VERSION := test-build
TWRP_INCLUDE_LOGCAT := true[/HEADING]
TARGET_USES_LOGD := true

#Properties
TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental"
