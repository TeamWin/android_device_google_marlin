#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/google/marlin/device-sailfish.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/google/marlin-kernel/Image.gz-dtb:kernel

PRODUCT_NAME := omni_sailfish
PRODUCT_DEVICE := sailfish
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := Google

PRODUCT_PACKAGES += \
    update_engine_sideload

# Kernel inline build
#TARGET_KERNEL_CONFIG := marlin_defconfig
#TARGET_VARIANT_CONFIG := marlin_defconfig
#TARGET_SELINUX_CONFIG := marlin_defconfig
