# Copyright (C) 2013 The CyanogenMod Project
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

# Check for target product

ifeq (pa_huashan,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/sony/huashan/huashan.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := huashan
PRODUCT_NAME := pa_huashan
PRODUCT_BRAND := Sony
PRODUCT_MODEL := huashan
PRODUCT_MANUFACTURER := Sony
PRODUCT_CHARACTERISTICS := phone

# Release name
PRODUCT_RELEASE_NAME := Xperiasp

endif
