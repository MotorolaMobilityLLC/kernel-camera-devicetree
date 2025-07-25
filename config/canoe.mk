CONFIG_YES=y

ifeq ($(CONFIG_MMI_DEVICE_DTBS),$(CONFIG_YES))
dtbo-$(CONFIG_ARCH_CANOE)  := canoe-camera.dtbo \
                              canoe-camera-v2.dtbo

dtbo-$(CONFIG_VANTG_DTB) += canoe-camera-sensor-vantg-evb.dtbo \
                            canoe-camera-sensor-vantg-evt1.dtbo

dtbo-$(CONFIG_BLANC_DTB) += canoe-camera-sensor-blanc-evb.dtbo

else

dtbo-$(CONFIG_ARCH_CANOE)   += canoe-camera.dtbo \
	alor-interposer-camera.dtbo \
	alor-interposer-camera-sensor-cdp.dtbo \
	alor-interposer-camera-sensor-mtp.dtbo \
	alor-interposer-camera-sensor-qrd.dtbo \
	alor-camera.dtbo \
	whale-camera.dtbo
dtbo-$(CONFIG_ARCH_CANOE)   += canoe-camera-v2.dtbo \
	alor-interposer-camera-v2.dtbo \
	canoe-camera-sensor-mtp.dtbo \
	canoe-camera-sensor-cdp.dtbo \
	canoe-camera-sensor-qrd.dtbo \
	canoe-camera-sensor-hdk.dtbo \
	canoe-camera-sensor-rumi.dtbo \
	alor-camera-sensor-mtp.dtbo \
	alor-camera-sensor-cdp.dtbo \
	alor-camera-sensor-qrd.dtbo \
	alor-camera-sensor-mtp-peach.dtbo \
	alor-camera-sensor-rcm-peach.dtbo

endif # end of CONFIG_MMI_DEVICE_DTBS
