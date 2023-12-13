dtbo-$(CONFIG_ARCH_BLAIR)	:= blair-camera.dtbo
dtbo-$(CONFIG_ARCH_BLAIR)	+= blair-camera-sensor-mtp.dtbo
dtbo-$(CONFIG_ARCH_BLAIR)	+= blair-camera-sensor-qrd.dtbo
dtbo-$(CONFIG_ARCH_BLAIR)	+= blair-camera-sensor-cdp.dtbo

dtbo-$(CONFIG_ARCH_HOLI)        += holi-camera.dtbo
dtbo-$(CONFIG_ARCH_HOLI)        += holi-camera-sensor-mtp.dtbo
dtbo-$(CONFIG_ARCH_HOLI)        += holi-camera-sensor-qrd.dtbo
dtbo-$(CONFIG_ARCH_HOLI)        += holi-camera-sensor-cdp.dtbo
dtbo-$(CONFIG_ARCH_HOLI)        += holi-camera-sensor-pm6125-cdp.dtbo
dtbo-$(CONFIG_ARCH_HOLI)        += holi-camera-sensor-pm6125-mtp.dtbo

ifeq ($(CONFIG_MALMO_DTB),y)
dtbo-$(CONFIG_ARCH_BLAIR) += \
	blair-camera-sensor-malmo-evb.dtbo
endif  #($(CONFIG_MALMO_DTB),y)
