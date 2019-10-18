PRODUCT_BRAND ?= Blaze

# Versioning System
# Blaze version over here.
BLAZE_REVISION = 1.0
BLAZE_SUBREVISION := IsTen
BLAZE_BUILD_DATE := $(shell date -u +"%Y%m%d-%H%M%S")

ifndef BLAZE_BUILD_TYPE
    BLAZE_BUILD_TYPE := UNOFFICIAL
endif

ifdef BLAZE_BUILD_EXTRA
    BLAZE_BUILD_DATE := -$(BLAZE_BUILD_EXTRA)
    BLAZE_MOD_SHORT := Blaze-AOSP-$(BLAZE_SUBREVISION)-$(BLAZE_BUILD_TYPE)-$(BLAZE_BUILD)-$(BLAZE_BUILD_DATE)
else
    BLAZE_MOD_SHORT := Blaze-AOSP-$(BLAZE_SUBREVISION)-$(BLAZE_BUILD_TYPE)-$(BLAZE_BUILD)
endif

BLAZE_VERSION := Blaze-AOSP-$(BLAZE_REVISION)-$(BLAZE_SUBREVISION)-$(BLAZE_BUILD_TYPE)-$(BLAZE_BUILD)-$(BLAZE_BUILD_DATE)
