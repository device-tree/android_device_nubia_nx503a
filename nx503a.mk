#
# Copyright (C) 2014 The CyanogenMod Project
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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/nubia/nx503a/nx503a-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Screen density
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Camera
PRODUCT_PACKAGES += \
    libxml2 \
    camera.msm8974 \
    Camera2

# Camera2 API
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Display
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    liboverlay 

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc \
    curl \
    libnl_2 \
    libbson

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs \
    resize2fs \
    setup_fs

# LOWI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/lowi.conf:system/etc/lowi.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/sec_config:system/etc/sec_config

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/etc/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/etc/media_profiles.xml:system/etc/media_profiles.xml

# Vibrator
PRODUCT_PACKAGES += \
    vibrator.default

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/nvram.txt:system/etc/firmware/bcm4339/nvram.txt
      
# country for infrared
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/66country:system/etc/init.d/66country
    
# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8974

# LibPower
PRODUCT_PACKAGES += \
    power.qcom

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/powerprofile.sh:system/bin/powerprofile.sh

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.mdm.sh \
    init.nubia.sh \
    init.nubia.usb.rc \
    init.zygote32.rc \
    init.usb.rc \
    init.qcom.rc \
    init.recovery.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.trace.rc \
    init.target.rc \
    ueventd.qcom.rc

# Thermal config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf \
    $(LOCAL_PATH)/etc/thermal-engine-8974pro.conf:system/etc/thermal-engine-8974pro.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    crda \
    regulatory.bin \
    linville.key.pub.pem

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf 

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.sys.umsdirtyratio=20
    
# ANT+
PRODUCT_PACKAGES += \
    libantradio \
    AntHalService \
    com.dsi.ant.antradio_library \
    antradio_app

PRODUCT_PACKAGES += \
    giflib

PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    libnetcmdiface \
    libwcnss_qmi

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wcnss_service

PRODUCT_PACKAGES += \
    libion

PRODUCT_PACKAGES += \
    ntfs-3g \
    ntfsfix \
    mkntfs

PRODUCT_PACKAGES += \
    LatinIME \
    libjni_latinime

# GPS configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/etc/gps.conf:system/etc/gps.conf
    
# etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/hcidump.sh:system/etc/hcidump.sh \
    $(LOCAL_PATH)/etc/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
    $(LOCAL_PATH)/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/etc/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/etc/init.qcom.uicc.sh:system/etc/init.qcom.uicc.sh \
    $(LOCAL_PATH)/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/etc/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    $(LOCAL_PATH)/etc/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml \
    $(LOCAL_PATH)/etc/qca6234-service.sh:system/etc/qca6234-service.sh \
    $(LOCAL_PATH)/etc/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/etc/xtwifi.conf:system/etc/xtwifi.conf \
    $(LOCAL_PATH)/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/usr/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
    $(LOCAL_PATH)/usr/idc/input_proxy.idc:system/usr/idc/input_proxy.idc \
    $(LOCAL_PATH)/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    $(LOCAL_PATH)/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/usr/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# External key layouts
PRODUCT_COPY_FILES += \
      $(LOCAL_PATH)/usr/keylayout/Vendor_0a5c_Product_8502.kl:system/usr/keylayout/Vendor_0a5c_Product_8502.kl

# Telephony
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/telephony/default_static_config.xml:system/etc/telephony/default_static_config.xml \
    $(LOCAL_PATH)/etc/telephony/N958St_Z0-.xml:system/etc/telephony/N958St_Z0-.xml \
    $(LOCAL_PATH)/etc/telephony/NX505J_Z0-0.xml:system/etc/telephony/NX505J_Z0-0.xml \
    $(LOCAL_PATH)/etc/telephony/NX503A_Z0-0.xml:system/etc/telephony/NX503A_Z0-0.xml \
    $(LOCAL_PATH)/etc/telephony/NX508H-0.xml:system/etc/telephony/NX508H-0.xml \
    $(LOCAL_PATH)/etc/telephony/NX511J_Z0-1.xml:system/etc/telephony/NX511J_Z0-1.xml \
    $(LOCAL_PATH)/etc/telephony/NX512J-3.xml:system/etc/telephony/NX512J-3.xml \
    $(LOCAL_PATH)/etc/telephony/NX512J_Z0-1.xml:system/etc/telephony/NX512J_Z0-1.xml \
    $(LOCAL_PATH)/etc/telephony/NX512J_Z78-1.xml:system/etc/telephony/NX512J_Z78-1.xml \
    $(LOCAL_PATH)/etc/telephony/NX513J_Z78-1.xml:system/etc/telephony/NX513J_Z78-1.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.radio.apm_sim_not_pwdn=1

# CDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.force_eri_from_xml=true

# Disable QC Oem Hook
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.oem_socket=false

# Force dex2oat not to use swap file
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false

# Support for graceful UICC Vltg supply deact
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qcril_uim_vcc_feature=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.no_wait_for_card=1

# Z5S/H213
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.ftm_enabled=true \
    persist.factory.keypad_type=standard_with_camera_with_focus \
    ro.nubia.haptics.default=30,22,30,22,22,30,38,22,30,22,30,30 \
    ro.com.google.clientidbase=android-zte \
    ro.com.google.clientidbase.ms=android-zte \
    ro.com.google.clientidbase.am=android-zte \
    ro.com.google.clientidbase.gmm=android-zte \
    ro.com.google.clientidbase.yt=android-zte \
    audio.effect.name=dolby \
    persist.sys.singlehand=1
