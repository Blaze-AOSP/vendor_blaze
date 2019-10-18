# blaze System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.blaze.version_number=$(BLAZE_REVISION) \
    ro.blaze.releasetype=$(BLAZE_BUILD_TYPE) \
    ro.blaze.version=$(BLAZE_VERSION) \
    ro.blaze.buildshort=$(BLAZE_MOD_SHORT) \
    ro.blaze.display.version=$(BLAZE_VERSION) \
    ro.blaze.build.date=$(BLAZE_BUILD_DATE)
