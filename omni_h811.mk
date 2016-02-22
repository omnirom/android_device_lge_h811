# Exclude Live Wallpapers
TARGET_EXCLUDE_LIVEWALLPAPERS := true

# Inherit base AOSP device configuration
$(call inherit-product, device/lge/h811/aosp_h811.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1440x814

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=0

# Override product naming for Omni
PRODUCT_NAME := omni_h811
