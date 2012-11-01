#
# Makefile for d1
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_d1.zip

#
local-previous-target-dir := ~/workspace/ota_base/d1

#
local-miui-modified-apps := MiuiHome Mms Phone Settings ThemeManager

# All apps from original ZIP, but has smali files chanded
local-modified-apps := HwCamera SettingsProvider MediaProvider

# All apks from MIUI
local-miui-removed-apps     := SettingsProvider MediaProvider Bluetooth 

# All apps need to be removed from original ZIP file
include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp other/build_b128.prop $(ZIP_DIR)/system/build.prop
	#cp other/Generic.kl $(ZIP_DIR)/system/usr/keylayout/
	cp other/boot-b128-rooted.img $(ZIP_DIR)/boot.img
	cp other/StockSettings.apk $(ZIP_DIR)/system/app/
	cp other/Settings_ex.apk $(ZIP_DIR)/system/app/

	@echo "using b118's libcutils.so, because the lastest causes phone can't start"
	cp other/libcutils.so_b118 $(ZIP_DIR)/system/lib/libcutils.so

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

