# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# Blaze OTA update package

ifneq ($(BUILD_WITH_COLORS),0)
    include $(TOP_DIR)vendor/blaze/build/core/colors.mk
endif

BLAZE_TARGET_PACKAGE := $(PRODUCT_OUT)/$(BLAZE_VERSION).zip

.PHONY: bacon blaze blaze
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(BLAZE_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(BLAZE_TARGET_PACKAGE) > $(BLAZE_TARGET_PACKAGE).md5sum
	@echo -e ${CL_BLU}""${CL_BLU}
	@echo -e ${CL_BLU}" ######     #          #######  "${CL_BLU}
	@echo -e ${CL_BLU}" #     #    #               #   "${CL_BLU}
	@echo -e ${CL_BLU}" #     #    #              #    "${CL_BLU}
	@echo -e ${CL_BLU}" ######     #             #     "${CL_BLU}
	@echo -e ${CL_BLU}" #     #    #            #      "${CL_BLU}
	@echo -e ${CL_BLU}" #     #    #           #       "${CL_BLU}
	@echo -e ${CL_BLU}" ######     ########   #######  "${CL_BLU}
	@echo -e ${CL_BLU}"                                 "${CL_BLU}
	@echo -e ${CL_CYN}"          Blaze-AOSP         "${CL_CYN}
	@echo -e ${CL_CYN}"                 "${CL_CYN}
	@echo -e ${CL_CYN}"         #Be Ignited!       "${CL_CYN}
	@echo -e ${CL_CYN}"                "${CL_CYN}
	@echo -e ${CL_CYN}"                "${CL_CYN}
	@echo -e ${CL_CYN}"The build is done, be sure to get it on:"${CL_CYN}
	@echo -e ${CL_CYN}"$(BLAZE_TARGET_PACKAGE)"${CL_CYN}
ifeq ($(BLAZE_BUILD_TYPE),Shishufied)
	@echo -e ${CL_CYN}"And your build size is:" $(shell ls -l --block-size=M $(BLAZE_TARGET_PACKAGE)|cut -d" " -f5)"B ("$(shell stat -L -t -c %s $(BLAZE_TARGET_PACKAGE))")"${CL_CYN}
else
	@echo -e ${CL_CYN}"Your build size is" $(shell ls -l --block-size=M $(BLAZE_TARGET_PACKAGE)|cut -d" " -f5)"B"${CL_CYN}
endif
	@echo -e ${CL_CYN}"                "${CL_CYN}
	@echo -e ${CL_CYN}"Also, enjoy your $(BLAZE_BUILD_TYPE) build"${CL_CYN}  

blaze: bacon
