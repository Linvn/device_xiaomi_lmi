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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="SDM865" \
    RisingMaintainer="Lin"
RISING_CHIPSET := SDM865
RISING_MAINTAINER := Lin
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_HAS_UDFPS := true
# Extra Flags.
RISING_BATTERY := 4400mah
RISING_STORAGE := 256gb
RISING_RAM := 6/8gb

PRODUCT_NAME := lineage_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/lmi/lmi:12/RKQ1.211001.001/V13.0.3.0.SJKMIXM:user/release-keys
