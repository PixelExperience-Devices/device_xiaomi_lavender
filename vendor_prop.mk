# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    audio.sys.noisy.broadcast.delay=600 \
    audio.sys.offload.pstimeout.secs=3 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    persist.audio.fluence.voicecomm=true \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=14 \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.adm.buffering.ms=2 \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true\
    vendor.audio.volume.headset.gain.depcal=true \
    vendor.audio_hal.period_multiplier=3 \
    vendor.audio_hal.period_size=192 \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio_hal.in_period_size=144 \
    vendor.audio.spkr_prot.tx.sampling_rate=48000 \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=false \
    vendor.audio.parser.ip.buffer.size=262144 \
    persist.vendor.audio.hifi.int_codec=true \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    ro.af.client_heap_size_kbyte=7168


# Audio dynamic feature flags
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=true \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=true \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=true \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.spkr_prot.enable=true \
    vendor.audio.feature.ssrec.enable=true \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.snd_mon.enable=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.bluetooth.bluetooth_audio_hal.disabled=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.qualcomm.qti.qmmi,com.longcheertel.cit \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.qualcomm.qti.qmmi,com.longcheertel.cit \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam \
    persist.camera.privapp.list=org.codeaurora.snapcam \
    persist.vendor.camera.HAL3.enabled=1

# Camera Lavender Specific
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.camera.isp.clock.optmz=0 \
    persist.vendor.camera.isp.turbo=1 \
    persist.vendor.camera.imglib.usefdlite=1 \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.awb.sync=2 \
    persist.radio.VT_CAM_INTERFACE=2  \
    persist.sys.camera.camera2=true

# Google Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.eis.enable=1 \
    persist.vendor.camera.eis.enable=1 \
    persist.camera.max.previewfps=60 \
    persist.vendor.camera.max.previewfps=60 \
    persist.camera.tnr_cds=1 \
    persist.vendor.camera.tnr_cds=1 \
    persist.camera.tnr.video=1 \
    persist.vendor.camera.tnr.video=1 \
    persist.camera.tnr.preview=1 \
    persist.vendor.camera.tnr.preview=1 \
    persist.camera.tnr.snapshot=1 \
    persist.vendor.camera.tnr.snapshot \
    persist.camera.llnoise=1 \
    persist.vendor.camera.llnoise=1 \
    persist.tnr.process.plates=2 \
    persist.vendor.tnr.process.plates=2 \
    persist.denoise.process.plates=2 \
    persist.vendor.denoise.process.plates=2 \
    camera.lowpower.record.enable=1 \
    vidc.enc.dcvs.extra-buff-count=2

# CNE and DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1 \
    persist.vendor.dpm.feature=1

# Codec2 switch
PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2

# Ccodec
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.enable_hwc_vds=1 \
    ro.opengles.version=196610 \
    ro.vendor.display.sensortype=2 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.display.disable_skip_validate=1 \
    vendor.display.enable_default_color_mode=0 \
    sdm.debug.disable_skip_validate=1 \
    persist.hwc.enable_vds=1


# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    ro.dalvik.vm.native.bridge=0

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-player=true
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    persist.mm.enable.prefetch=true \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    vidc.enc.target_support_bframe=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.dec.enable.downscalar=1 \
    vendor.mm.enable.qcom_parser=13631487 \
    mmp.enable.3g2=true \
    mm.enable.smoothstreaming=true \
    vidc.enc.dcvs.extra-buff-count=2

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Netmgr
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.df.dev_name=rmnet_usb0 \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.data.mode=concurrent \
    ro.vendor.use_data_netmgrd=true

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q660-13149-1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.procedure_bytes=SKIP \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.data_con_rprt=1 \
    ril.subscription.types=NV,RUIM\
    ro.telephony.default_network=22,20 \
    telephony.lteOnCdmaDevice=1 \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    DEVICE_PROVISIONED=1

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sensors.dev_ori=false
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.pmd=true \
    ro.vendor.sensors.sta_detect=true

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_phase_offset_ns=1500000 \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000

# System restart
    PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Thermal configs path
PRODUCT_PROPERTY_OVERRIDES += \
    sys.thermal.data.path=/data/vendor/thermal/

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# Misc ( Yet not Sorted )
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.job_delay=true \
persist.sys.mcd_config_file=/system/etc/mcd_default.conf \
vendor.video.disable.ubwc=1 \
persist.vendor.qcomsysd.enabled=1 \
keyguard.no_require_sim=true \
ro.com.android.dataroaming=false \
persist.backup.ntpServer=0.pool.ntp.org \
sys.vendor.shutdown.waittime=2000 \
ro.build.shutdown_timeout=0 \
vendor.fm.a2dp.conc.disabled=true
