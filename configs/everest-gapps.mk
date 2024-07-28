$(call inherit-product, vendor/everest/config/common_full_phone.mk)
$(call inherit-product, vendor/everest/config/BoardConfigEverest.mk)
$(call inherit-product, device/everest/sepolicy/common/sepolicy.mk)
-include vendor/everest/build/core/config.mk

EVEREST_MAINTAINER := mrgebesturtle
WITH_GAPPS := true

# Bootanimation (force 720p - 720x1280)
TARGET_BOOT_ANIMATION_RES := 720

# Kernel
TARGET_NO_KERNEL_IMAGE := true
TARGET_NO_KERNEL_OVERRIDE := true

# Overlay
PRODUCT_PACKAGE_OVERLAYS += \
   $(LOCAL_PATH)/overlay-everest

# SELinux
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
