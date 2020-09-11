# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
# Copyright (C) 2018,2020 The PixelExperience Project
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

MD5 := prebuilts/build-tools/path/$(HOST_OS)-x86/md5sum
BLAZE_TARGET_PACKAGE := $(PRODUCT_OUT)/$(BLAZE_VERSION).zip

.PHONY: bacon blaze
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(BLAZE_TARGET_PACKAGE)
	$(hide) $(MD5) $(BLAZE_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(BLAZE_TARGET_PACKAGE).md5sum
	@echo "done"
	@echo "===============================-Package complete-============================================================="
	@echo "Zip: $(BLAZE_TARGET_PACKAGE)"
	@echo "MD5: `cat $(BLAZE_TARGET_PACKAGE).md5sum | awk '{print $$1}' `"
	@echo "Size: `du -sh $(BLAZE_TARGET_PACKAGE) | awk '{print $$1}' `"
@echo "=============================================================================================================="

blaze: bacon
