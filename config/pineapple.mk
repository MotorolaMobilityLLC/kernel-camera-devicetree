ifeq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_PINEAPPLE)  := pineapple-camera.dtbo
dtbo-$(CONFIG_ARCH_PINEAPPLE)  += pineapple-camera-v2.dtbo

dtbo-$(CONFIG_ARCH_CLIFFS)	+= cliffs-camera.dtbo

dtbo-$(CONFIG_ARCF_DTB) += pineapple-camera-sensor-arcf-evt1a.dtbo
dtbo-$(CONFIG_CTWOV_DTB) += pineapple-camera-sensor-ctwov-evb.dtbo

dtbo-$(CONFIG_ARCFOX_DTB) += cliffs-camera-sensor-arcfox-evt3.dtbo
dtbo-$(CONFIG_CTWO_DTB) += cliffs-camera-sensor-ctwo-evb3.dtbo

else
dtbo-$(CONFIG_ARCH_PINEAPPLE)	:= pineapple-camera.dtbo
dtbo-$(CONFIG_ARCH_PINEAPPLE)	+= pineapple-camera-v2.dtbo \
									pineapple-camera-sensor-cdp.dtbo \
									pineapple-camera-sensor-mtp.dtbo \
									pineapple-camera-sensor-hdk.dtbo \
									pineapple-camera-sensor-qrd.dtbo \
									pineapple-camera-sensor-aim500.dtbo
dtbo-$(CONFIG_ARCH_CLIFFS)	+= cliffs-camera.dtbo
dtbo-$(CONFIG_ARCH_CLIFFS)	+= cliffs-camera-sensor-cdp.dtbo \
								cliffs-camera-sensor-mtp.dtbo \
								cliffs-camera-sensor-qrd.dtbo
dtbo-$(CONFIG_ARCH_VOLCANO)     += volcano-camera.dtbo
dtbo-$(CONFIG_ARCH_VOLCANO)     += volcano-camera-fp1-fp2.dtbo
dtbo-$(CONFIG_ARCH_VOLCANO)     += volcano-camera-qrd.dtbo
dtbo-$(CONFIG_ARCH_VOLCANO)     += volcano-camera-sensor-mtp.dtbo
dtbo-$(CONFIG_ARCH_VOLCANO)     += volcano-camera-sensor-idp.dtbo
dtbo-$(CONFIG_ARCH_VOLCANO)     += volcano-camera-sensor-qrd.dtbo
endif # end of CONFIG_MMI_DEVICE_DTBS
