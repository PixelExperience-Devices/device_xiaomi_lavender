PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.job_delay=true \
    persist.sys.mcd_config_file=/system/etc/mcd_default.conf \
    qemu.hw.mainkeys=0 \
    vendor.video.disable.ubwc=1 \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    ro.hardware.nfc_nci=nqx.default \
    vendor.hw.fm.init=0 \
    persist.radio.multisim.config=dsds \
    persist.vendor.qcomsysd.enabled=1 \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=false \
    ro.config.ringtone=Ring_Synth_04.ogg \
    ro.config.notification_sound=pixiedust.ogg \
    ro.carrier=unknown \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.dalvik.vm.native.bridge=0 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.backup.ntpServer=0.pool.ntp.org \
    sys.vendor.shutdown.waittime=500 \
    ro.build.shutdown_timeout=0 \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp \
    ro.opengles.version=196610 \
    vendor.qcom.bluetooth.soc=cherokee \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=192 \
    ro.vendor.audio.sdk.fluencetype=none \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    vendor.audio.tunnel.encode=false \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.offload.buffer.size.kb=64 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.offload.track.enable=false \
    audio.deep_buffer.media=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.flac.sw.decoder.24bit=true \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.fm.a2dp.conc.disabled=true \
    vendor.audio.noisy.broadcast.delay=600 \
    persist.vendor.audio.hifi.int_codec=true \
    vendor.audio.offload.pstimeout.secs=3 \
    ro.af.client_heap_size_kbyte=7168 \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    ro.vendor.audio.sos=true \
    ro.vendor.audio.soundtrigger=none \
    ro.vendor.audio.soundtrigger.lowpower=false \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sdk.sensors.gestures=false \
    rild.libpath=/system/vendor/lib64/libril-qc-hal-qmi.so \
    ro.vendor.audio.voice.volume.boost=manual \
    sys.autosuspend.timeout=500000

#rild.libpath=/system/lib/libreference-ril.so
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/vendor/lib64/libril-qc-hal-qmi.so

#rild.libargs=-d /dev/smd0
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1

#
# Set network mode to (T/L/G/W/1X/EVDO, T/G/W/L) for 7+5 mode device on DSDS mode
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=9,9

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    dev.pm.dyn_samplingrate=1

#
# system props for the cne module
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

#
# system props for the dpm module
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.dpm.feature=1

#system props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    vendor.mm.enable.qcom_parser=13631471 \
    persist.mm.enable.prefetch=true \
    vidc.enc.dcvs.extra-buff-count=2

#
# system props for the data modules
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.use_data_netmgrd=true \
    persist.vendor.data.mode=concurrent

# system property for maximum number of HFP client connections
PRODUCT_PROPERTY_OVERRIDES += \
    bt.max.hfpclient.connections=1

#
# System props for telephony
# System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=1

#Simulate sdcard on /data/media
PRODUCT_PROPERTY_OVERRIDES += \
    persist.fuse_sdcard=true

#system prop for RmNet Data
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rmnet.data.enable=true \
    persist.data.wda.enable=true \
    persist.data.df.dl_mode=5 \
    persist.data.df.ul_mode=5 \
    persist.data.df.agg.dl_pkt=10 \
    persist.data.df.agg.dl_size=4096 \
    persist.data.df.mux_count=8 \
    persist.data.df.iwlan_mux=9 \
    persist.data.df.dev_name=rmnet_usb0

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

#property for vendor specific library
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.at_library=libqti-at.so

#min/max cpu in core control
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.core_ctl_min_cpu=2 \
    ro.vendor.qti.core_ctl_max_cpu=4

#property to enable VDS WFD solution
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.enable_vds=1

#Increase cached app limit
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bg_apps_limit=60

#Settings to enable sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.dev_ori=false \
    ro.vendor.sensors.pmd=true \
    ro.vendor.sensors.sta_detect=true \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.pug=true

#Expose aux camera for below packages
PRODUCT_PROPERTY_OVERRIDES += \
    camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.qualcomm.qti.qmmi \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.qualcomm.qti.qmmi

#disable UBWC for camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.camera.isp.clock.optmz=0 \
    persist.vendor.camera.isp.turbo=1 \
    persist.vendor.camera.imglib.usefdlite=1 \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.HAL3.enabled=1

#exif info for camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.manufacturer=Xiaomi \
    persist.vendor.camera.model=Redmi Note 7

#use camera2 api
persist.sys.camera.camera2=true

#disable awb sync in bokeh mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.awb.sync=2

# HAL1 apps list
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.hal1.packagelist=com.whatsapp,com.intsig.camscanner,com.instagram.android

#
# PROPERTIES FOR IMS
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.ims_volte_enable=1 \
    persist.radio.videopause.mode=1 \
    persist.data.iwlan.enable=true \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.radio.VT_HYBRID_ENABLE=1

#For RIJL netwrok video call
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.NO_STAPA=1

# Enable manual network selection function and distinguish 2G/3G/4G
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.rat_on=combine

# the level of data wiping under PRESET mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.regional.wipedata.level=all

# enable mbn file update for SIMTrigger
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.sw_mbn_update=0 \
    persist.radio.hw_mbn_update=0

# enable SIMTrigger silence mode feature
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.trigger.silence=true

# flag to distinguish the open market to Operator
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device.type=omt

# flag for activating mbn or not,default is true.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.activate_mbn.enabled=false \
    ro.regionalization.support=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.demo.hdmirotationlock=false

#property to enable narrow search range for video encoding
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.enc.target_support_bframe=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.dec.enable.downscalar=0

# enable PQ feature by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.vidc.enc.disable.pq=false

#system props for time-services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

#force disable Bluetooth AAC by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.a2dp.aac_disable=true

#system prop for wipower support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.emb_wp_mode=true \
    ro.bluetooth.wipower=true

#
# system property determining camera HAL to be used for a Video call
#
# 1 is camera1
# 2 or anything else is camera2
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.VT_CAM_INTERFACE=2

# cherrypick form d2s  for video call
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qti.telephony.vt_cam_interface=1

#Enable stm-events
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.coresight.config=stm-events

#Bringup properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.atfwd.start=true

#set maximum supported adapter voltage
PRODUCT_PROPERTY_OVERRIDES += \
    persist.chg.max_volt_mv=9000

#add for dirac algo tsx 9/12
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dirac.acs.controller=qem \
    persist.dirac.acs.storeSettings=1 \
    persist.dirac.acs.ignore_error=1

#Property to enable display default color mode
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=0

#Disable Skip Validate
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.disable_skip_validate=1

#iwaln vowifi corresponding
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.iwlan.enable=true

#enable snapshot
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.snapshot_enabled=1 \
    persist.vendor.radio.snapshot_timer=5

#HTH-30190 connect wifi, set 3G pre,observe Mobile network type should display UMTS but IWLAN.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.data_con_rprt=1

#lct liuxuan add the dom ignore time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.ignore_dom_time=15

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=subdragonzj
