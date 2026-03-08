git clone https://github.com/DeltaOSS/tanzanite_local_manifests.git -b lineage-23.2 .repo/local_manifests
repo sync

rm -rf external/wpa_supplicant_8
git clone https://github.com/nathanzerogarage/android_external_wpa_supplicant_8.git -b lineage-23.2 external/wpa_supplicant_8 --depth=1

git clone https://github.com/KyokoDT/signing-keys.git vendor/private/keys

cd packages/apps/Aperture
wget https://raw.githubusercontent.com/MillenniumOSS/patches/refs/heads/sixteen/packages/apps/Aperture/0001-Aperture-Enable-MediaTek-HFPS-Mode-for-60-FPS-video-.patch
wget https://github.com/MillenniumOSS/patches/raw/refs/heads/sixteen/packages/apps/Aperture/0002-Aperture-Enable-MediaTek-EIS-and-EIS-preview-mode-fo.patch
git am 0001-Aperture-Enable-MediaTek-HFPS-Mode-for-60-FPS-video-.patch
git am 0002-Aperture-Enable-MediaTek-EIS-and-EIS-preview-mode-fo.patch
cd ../../..

cd frameworks/base
wget https://github.com/Lunaris-AOSP/frameworks_base/commit/5dba3b423221da88f18b7a23b7cd548d80f34deb.patch
git am 5dba3b423221da88f18b7a23b7cd548d80f34deb.patch
cd ../..
