#
# Copyright (C) 2018 The Havoc-OS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Havoc-OS stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := atom_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M2
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X01BD
TARGET_VENDOR_DEVICE_NAME := X01BD

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

#atom build properties
CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080


PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=X01BD PRODUCT_NAME=X01BD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 9 PKQ1 1244 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Android/sdm660_64/sdm660_64:9/PKQ1/16.2017.1906.067-20190703:user/release-keys"