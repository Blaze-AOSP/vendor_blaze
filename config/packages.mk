# Our Blaze apps
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

# Google Fonts
PRODUCT_COPY_FILES += \
    vendor/blaze/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/blaze/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/blaze/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/blaze/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/blaze/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/blaze/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf
ADDITIONAL_FONTS_FILE := vendor/blaze/fonts/google-sans.xml
