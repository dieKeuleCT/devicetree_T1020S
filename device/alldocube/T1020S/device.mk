#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# API levels
PRODUCT_SHIPPING_API_LEVEL := 29

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \

PRODUCT_PACKAGES += \
    fstab.cali \
    init.cali.rc \
    init.common.rc \
    init.factorytest.rc \
    init.ram.rc \
    init.storage.rc \
    init.ums512_1h10.rc \
    init.ums512_1h10.usb.rc \
    init.T1020S.rc \
    init.recovery.common.rc \
    init.recovery.ums512_1h10.rc \
    ueventd.rc \
    ueventd.ums512_1h10.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.cali:$(TARGET_COPY_OUT_RAMDISK)/fstab.cali

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/alldocube/T1020S/T1020S-vendor.mk)
