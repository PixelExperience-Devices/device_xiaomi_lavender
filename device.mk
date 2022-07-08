#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/xiaomi/sdm660-common/sdm660.mk)

DEVICE_PATH := device/xiaomi/lavender

# Inherit properties.mk
$(call inherit-product, $(DEVICE_PATH)/properties.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Consumerir
BOARD_HAVE_IR := true

# FM
BOARD_HAVE_QCOM_FM := true

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.keymaster@4.0.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

PRODUCT_PACKAGES += \
    NoCutoutOverlay \
    NotchBarKiller

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.device.rc

# Shims
PRODUCT_PACKAGES += \
    libcamera_sdm660_shim

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += device/xiaomi/lavender

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Wifi
PRODUCT_PACKAGES += \
    LavenderWifiOverlay

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/lavender/lavender-vendor.mk)
