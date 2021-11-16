dtbo-$(CONFIG_ARCH_WAIPIO) := waipio-camera.dtbo
dtbo-$(CONFIG_ARCH_WAIPIO) += waipio-camera-overlay-v2.dtbo \
#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_WAIPIO) += waipio-camera-sensor-mtp.dtbo \
								waipio-camera-sensor-cdp.dtbo \
								waipio-camera-sensor-qrd.dtbo
else
# Li camera bringup
ifeq ($(CONFIG_LI_DTB),y)
dtbo-$(CONFIG_MMI_DEVICE_DTBS) += \
	waipio-camera-sensor-li-evb1.dtbo
else
dtbo-$(CONFIG_MMI_DEVICE_DTBS) += \
	waipio-camera-sensor-hiphi-evb1.dtbo \
	waipio-camera-sensor-hiphi-evt1.dtbo \
	waipio-camera-sensor-hiphic-evb1.dtbo \
	waipio-camera-sensor-hiphic-evt1.dtbo \
	waipio-camera-sensor-hiphic-dvt1.dtbo \
	waipio-camera-sensor-hiphid-pvt.dtbo
endif  #($(CONFIG_LI_DTB),y)
endif  #($(CONFIG_MMI_DEVICE_DTBS),y)