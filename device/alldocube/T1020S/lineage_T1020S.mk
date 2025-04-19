#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from T1020S device
$(call inherit-product, device/alldocube/T1020S/device.mk)

PRODUCT_DEVICE := T1020S
PRODUCT_NAME := lineage_T1020S
PRODUCT_BRAND := Alldocube
PRODUCT_MODEL := iPlay_40
PRODUCT_MANUFACTURER := alldocube

PRODUCT_GMS_CLIENTID_BASE := android-bestone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums512_1h10_Natv-user 10 QP1A.190711.020 19633 release-keys"

BUILD_FINGERPRINT := Alldocube/iPlay_40/T1020S:10/QP1A.190711.020/46141:user/release-keys
