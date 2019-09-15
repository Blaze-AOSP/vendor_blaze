# Markup libs
ifeq ($(TARGET_BLAZE_ARCH),arm64)
    PRODUCT_COPY_FILES += \
           vendor/blaze/prebuilt/common/lib/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libsketchology_native.so \
           vendor/blaze/prebuilt/common/lib64/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libsketchology_native.so
else
    PRODUCT_COPY_FILES += \
           vendor/blaze/prebuilt/common/lib/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libsketchology_native.so
endif

# Weather
PRODUCT_COPY_FILES += \
    vendor/blaze/prebuilt/common/etc/permissions/com.android.providers.weather.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.providers.weather.xml \
    vendor/blaze/prebuilt/common/etc/default-permissions/com.android.providers.weather.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/com.android.providers.weather.xml

# Call our special makefiles before anything
include vendor/blaze/config/branding.mk
include vendor/blaze/config/packages.mk

# GoogleSans font
include vendor/blaze/config/fonts.mk

# Call special ringtones makefile
include vendor/blaze/config/common_audio.mk
