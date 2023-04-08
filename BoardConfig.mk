#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/jeter

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Bootloader / Platform
TARGET_BOOTLOADER_BOARD_NAME := MSM8937
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8937

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=400M androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.android_dt_dir=/non-existent androidboot.boot_devices=soc/7824900.sdhci
BOARD_KERNEL_CMDLINE += loop.max_part=7

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x1000000 --tags_offset 0x00000100

# Prebuilt
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 18976768
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# Dynamic
BOARD_SUPER_PARTITION_BLOCK_DEVICES := system vendor oem
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2516582400 # 2400 MB
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 419430400 # 400 MB
BOARD_SUPER_PARTITION_OEM_DEVICE_SIZE := 318767104 # 304 MB
BOARD_SUPER_PARTITION_SIZE := 3254779904 # 3104 MB
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_GROUPS := moto_dynamic_partitions
BOARD_MOTO_DYNAMIC_PARTITIONS_SIZE := 3250585600 # 3100 MB
BOARD_MOTO_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor

# TWRP Configuration
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_BASH := true
TW_EXCLUDE_TZDATA := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_APEX := true
TW_EXCLUDE_PYTHON := true
