rm -rf device/xiaomi/tanzanite
rm -rf device/xiaomi/tanzanite-kernel
rm -rf vendor/xiaomi/tanzanite
rm -rf packages/apps/ViPER4AndroidFX
rm -rf hardware/xiaomi
rm -rf hardware/mediatek
rm -rf device/mediatek/sepolicy_vndr
rm -rf vendor/mediatek/ims

git clone https://github.com/DeltaOSS/android_device_xiaomi_tanzanite -b yaap device/xiaomi/tanzanite
git clone https://github.com/DeltaOSS/android_device_xiaomi_tanzanite-kernel -b ksu device/xiaomi/tanzanite-kernel
git clone https://github.com/nathanzerogarage/proprietary_vendor_xiaomi_tanzanite -b lineage-23.1 vendor/xiaomi/tanzanite
git clone https://github.com/AxionAOSP/android_packages_apps_ViPER4AndroidFX.git -b lineage-23.2 packages/apps/ViPER4AndroidFX
git clone https://github.com/nathanzerogarage/android_hardware_xiaomi -b lineage-23.2 hardware/xiaomi
git clone https://github.com/nathanzerogarage/android_hardware_mediatek -b lineage-23.2 hardware/mediatek
git clone https://github.com/nathanzerogarage/android_device_mediatek_sepolicy_vndr -b lineage-23.2 device/mediatek/sepolicy_vndr
git clone https://github.com/MillenniumOSS/android_vendor_mediatek_ims.git -b sixteen-qpr2 vendor/mediatek/ims

pushd external/wpa_supplicant_8
wget https://raw.githubusercontent.com/nathanzerogarage/patches/refs/heads/main/do_not_set_NL80211_WPA_VERSION_3.patch
patch -p1 < do_not_set_NL80211_WPA_VERSION_3.patch
popd

pushd packages/apps/Aperture
wget https://raw.githubusercontent.com/nathanzerogarage/patches/refs/heads/main/01-aperture-mtk-hfps-mode.patch
patch -p1 < 01-aperture-mtk-hfps-mode.patch
popd
