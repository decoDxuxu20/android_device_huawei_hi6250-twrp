#
# Copyright 2019 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# ADB
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.zygote=zygote64_32 \

# APN
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device
PRODUCT_NAME := omni_hi6250
PRODUCT_DEVICE := hi6250
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := hi6250
TARGET_VENDOR := Huawei

# Kernel
PRODUCT_COPY_FILES += \
    device/huawei/hi6250/dummykernel:kernel

# OmniROM
$(call inherit-product, vendor/omni/config/common.mk)
