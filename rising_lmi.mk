#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common Ricedroid stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

RISING_CHIPSET := SDM865
RISING_MAINTAINER := Lin
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_BOOT_ANIMATION_RES := 1080
# Extra Flags.
RISING_BATTERY := 4400mah
RISING_STORAGE := 256gb
RISING_RAM := 6/8gb

PRODUCT_NAME := rising_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/lmi/lmi:12/SKQ1.211006.001/V14.0.1.0.SJKMIXM:user/release-keys
