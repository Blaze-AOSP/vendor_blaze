# Our Bootleg apps
PRODUCT_PACKAGES += \
    CameraRoll \
    MiXplorerPrebuilt \
    WallpaperPicker2 \
    MarkupGoogle \
    GugelClock \
    Jelly \
    LatinIME \
    Phonograph \
    Recorder \
    ThemePicker

ifeq ($(BLAZE_BUILD_TYPE),Ignited)
    PRODUCT_PACKAGES += \
        IgniteOTA
endif

# Launcher Selection just in case
# Please, prepare for reports
ifeq ($(BLAZE_SITDOWN),true)
    PRODUCT_PACKAGES += \
        Lawnchair

PRODUCT_COPY_FILES += \
    vendor/blaze/prebuilt/lawnchair/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/blaze/prebuilt/lawnchair/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

    DEVICE_PACKAGE_OVERLAYS += \
        vendor/blaze/overlay/lawnchair
else
    PRODUCT_PACKAGES += \
        Launcher3QuickStep
endif

# DU-Fonts
#PRODUCT_PACKAGES += \
#    CustomFonts

# Cutout control overlays
#PRODUCT_PACKAGES += \
#    HideCutout \
#    StatusBarStock

# Call the overlays folder to build all the rest 
#include packages/overlays/Ignited/ignite.mk

### COMMENTED WASTELAND - MOVED TEMPORALLY HERE DUE TO WIP ###
#
#
# Some Extra packages required to be built from here
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils \
#    OmniStyle \
#    OmniJaws
#
# DU Utils library
#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils
#
