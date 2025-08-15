ifeq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_SUN)  := sun-camera.dtbo

dtbo-$(CONFIG_LEAP_DTB) += sun-camera-sensor-leap-evb.dtbo \
                           sun-camera-sensor-leap-evt1.dtbo
dtbo-$(CONFIG_LHOTSE_DTB) += sun-camera-sensor-lhotse-evt.dtbo

else

dtbo-$(CONFIG_ARCH_SUN)   := sun-camera.dtbo
dtbo-$(CONFIG_ARCH_SUN)   += sun-camera-sensor-mtp.dtbo \
				sun-camera-sensor-rumi.dtbo \
				sun-camera-sensor-cdp.dtbo  \
				sun-camera-sensor-qrd.dtbo

dtbo-$(CONFIG_ARCH_TUNA)  += tuna-camera.dtbo

dtbo-$(CONFIG_ARCH_TUNA)  += tuna-camera-sensor-mtp.dtbo \
				tuna-camera-sensor-cdp.dtbo \
				tuna-camera-sensor-qrd.dtbo
endif # end of CONFIG_MMI_DEVICE_DTBS
