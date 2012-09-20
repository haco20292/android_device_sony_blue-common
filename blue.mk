$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/blue-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Configuration scripts
PRODUCT_COPY_FILES += \
   device/sony/blue-common/prebuilt/logo_X.rle:root/logo.rle \

#Offline charging animation
PRODUCT_COPY_FILES += \
    device/sony/blue-common/prebuilt/animations/charging_animation_01_X.png:system/semc/chargemon/data/charging_animation_01.png \
    device/sony/blue-common/prebuilt/animations/charging_animation_02_X.png:system/semc/chargemon/data/charging_animation_02.png \
    device/sony/blue-common/prebuilt/animations/charging_animation_03_X.png:system/semc/chargemon/data/charging_animation_03.png \
    device/sony/blue-common/prebuilt/animations/charging_animation_04_X.png:system/semc/chargemon/data/charging_animation_04.png \
    device/sony/blue-common/prebuilt/animations/charging_animation_05_X.png:system/semc/chargemon/data/charging_animation_05.png \
    device/sony/blue-common/prebuilt/animations/charging_animation_06_X.png:system/semc/chargemon/data/charging_animation_06.png \
    device/sony/blue-common/prebuilt/animations/charging_animation_07_X.png:system/semc/chargemon/data/charging_animation_07.png

# EGL config
PRODUCT_COPY_FILES += \
    device/sony/blue-common/config/egl.cfg:system/lib/egl/egl.cfg

# Common Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/sony/blue-common/config/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh

# QCOM Display
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libhwcexternal.so \
    libhwcservice.so \
    libmemalloc \
    liboverlay \
    libqdMetaData.so \
    libqdutils \
    libtilerenderer

# NFC Support
#PRODUCT_PACKAGES += \
#    libnfc \
#    libnfc_jni \
#    Nfc \
#    Tag \
#    com.android.nfc_extras

#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# NFCEE access control
#ifeq ($(TARGET_BUILD_VARIANT),user)
#    NFCEE_ACCESS_PATH := device/sony/blue-common/config/nfcee_access.xml
#else
#    NFCEE_ACCESS_PATH := device/sony/blue-common/config/nfcee_access_debug.xml
#endif
#PRODUCT_COPY_FILES += \
#    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio_policy.conf \
    libaudioutils

PRODUCT_COPY_FILES += \
    device/sony/blue-common/config/media_codecs.xml:system/etc/media_codecs.xml

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libstagefright_client

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

# Light
PRODUCT_PACKAGES += \
    lights.msm8960

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# QRNGD
PRODUCT_PACKAGES += \
    qrngd

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Custom init / uevent
PRODUCT_COPY_FILES += \
    device/sony/blue-common/config/init.sony.rc:root/init.sony.rc \
    device/sony/blue-common/config/init.qcom-etc.rc:root/init.qcom-etc.rc \
    device/sony/blue-common/config/init.qcom-root.rc:root/init.qcom-root.rc \
    device/sony/blue-common/config/ueventd.sony.rc:root/ueventd.sony.rc

# Recovery bootstrap script
PRODUCT_COPY_FILES += \
    device/sony/blue-common/recovery/bootrec:root/sbin/bootrec \
    device/sony/blue-common/recovery/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh

# condigs
PRODUCT_COPY_FILES += \
    device/sony/blue-common/config/init.netconfig.sh:system/etc/init.netconfig.sh \
    device/sony/blue-common/config/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/sony/blue-common/config/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/sony/blue-common/config/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/sony/blue-common/config/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/sony/blue-common/config/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/sony/blue-common/config/iddd.conf:system/etc/iddd.conf \
    device/sony/blue-common/config/sysmon.cfg:system/etc/sysmon.cfg

# Recovery resources
PRODUCT_COPY_FILES += \
    bootable/recovery/res/images/icon_firmware_error.png:root/res/images/icon_firmware_error.png \
    bootable/recovery/res/images/icon_firmware_install.png:root/res/images/icon_firmware_install.png \
    bootable/recovery/res/images/icon_clockwork.png:root/res/images/icon_clockwork.png \
    bootable/recovery/res/images/icon_error.png:root/res/images/icon_error.png \
    bootable/recovery/res/images/icon_installing.png:root/res/images/icon_installing.png \
    bootable/recovery/res/images/icon_installing_overlay01.png:root/res/images/icon_installing_overlay01.png \
    bootable/recovery/res/images/icon_installing_overlay02.png:root/res/images/icon_installing_overlay02.png \
    bootable/recovery/res/images/icon_installing_overlay03.png:root/res/images/icon_installing_overlay03.png \
    bootable/recovery/res/images/icon_installing_overlay04.png:root/res/images/icon_installing_overlay04.png \
    bootable/recovery/res/images/icon_installing_overlay05.png:root/res/images/icon_installing_overlay05.png \
    bootable/recovery/res/images/icon_installing_overlay06.png:root/res/images/icon_installing_overlay06.png \
    bootable/recovery/res/images/icon_installing_overlay07.png:root/res/images/icon_installing_overlay07.png \
    bootable/recovery/res/images/indeterminate01.png:root/res/images/indeterminate01.png \
    bootable/recovery/res/images/indeterminate02.png:root/res/images/indeterminate02.png \
    bootable/recovery/res/images/indeterminate03.png:root/res/images/indeterminate03.png \
    bootable/recovery/res/images/indeterminate04.png:root/res/images/indeterminate04.png \
    bootable/recovery/res/images/indeterminate05.png:root/res/images/indeterminate05.png \
    bootable/recovery/res/images/indeterminate06.png:root/res/images/indeterminate06.png \
    bootable/recovery/res/images/progress_empty.png:root/res/images/progress_empty.png \
    bootable/recovery/res/images/progress_fill.png:root/res/images/progress_fill.png \
    bootable/recovery/res/images/stitch.png:root/res/images/stitch.png

# Thermal monitor configuration
PRODUCT_COPY_FILES += \
    device/sony/blue-common/config/thermald.conf:system/etc/thermald.conf

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

