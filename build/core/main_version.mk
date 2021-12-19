# Build fingerprint
ifeq ($(BUILD_FINGERPRINT),)
BUILD_NUMBER_CUSTOM := $(shell date -u +%H%M)
BLAZE_DEVICE ?= $(TARGET_DEVICE)
ifneq ($(filter OFFICIAL,$(BLAZE_BUILD_TYPE)),)
BUILD_SIGNATURE_KEYS := release-keys
else
BUILD_SIGNATURE_KEYS := test-keys
endif
BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(BLAZE_DEVICE)/$(BLAZE_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_NUMBER_CUSTOM):$(TARGET_BUILD_VARIANT)/$(BUILD_SIGNATURE_KEYS)
endif
ADDITIONAL_SYSTEM_PROPERTIES  += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# AOSP recovery flashing
ifeq ($(TARGET_USES_AOSP_RECOVERY),true)
ADDITIONAL_SYSTEM_PROPERTIES  += \
    persist.sys.recovery_update=true
endif

# Versioning props
ADDITIONAL_SYSTEM_PROPERTIES  += \
    com.blaze.version=$(BLAZE_VERSION_PROP) \
    com.blaze.version.display=$(BLAZE_VERSION) \
    com.blaze.build_date=$(BLAZE_BUILD_DATE) \
    com.blaze.build_date_utc=$(BLAZE_BUILD_DATE_UTC) \
    com.blaze.build_type=$(BLAZE_BUILD_TYPE)
