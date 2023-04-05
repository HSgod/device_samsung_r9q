#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

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
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    init.qcom.early_boot.sh \
    init.qcom.usb.sh \
    init.kernel.post_boot-lahaina.sh \
    init.qti.kernel.sh \
    init.qti.qcv.sh \
    init.qti.keymaster.sh \
    init.qti.kernel.debug-shima.sh \
    init.qcom.sdio.sh \
    vendor_modprobe.sh \
    qca6234-service.sh \
    init.kernel.post_boot-yupik.sh \
    init.qti.chg_policy.sh \
    init.qcom.coex.sh \
    init.qti.kernel.debug-yupik.sh \
    init.qcom.class_core.sh \
    init.qti.display_boot.sh \
    init.vendor.sensordebug.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sensors.sh \
    install-recovery.sh \
    init.mdm.sh \
    init.qti.kernel.debug.sh \
    init.qti.kernel.debug-lahaina.sh \
    init.qti.media.sh \
    init.class_main.sh \
    init.kernel.post_boot-shima.sh \
    init.qcom.post_boot.sh \
    init.crda.sh \
    init.kernel.post_boot.sh \
    init.qcom.sh \

PRODUCT_PACKAGES += \
    fstab.default \
    init.qti.ufs.rc \
    init.r9q.rc \
    init.qcom.usb.rc \
    init.qcom.rc \
    init.qti.kernel.rc \
    init.samsung.rc \
    init.samsung.connector.rc \
    init.qcom.factory.rc \
    init.samsung.bsp.rc \
    init.target.rc \
    init.samsung.display.rc \
    init.recovery.samsung.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.default:$(TARGET_COPY_OUT_RAMDISK)/fstab.default

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/r9q/r9q-vendor.mk)
