dtbo-$(CONFIG_ARCH_KALAMA) := kalama-camera.dtbo
#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_KALAMA) += kalama-camera-sensor-cdp.dtbo \
								kalama-camera-sensor-mtp.dtbo \
								kalama-camera-sensor-qrd.dtbo \
								kalama-camera-sensor-hdk.dtbo \
								kalama-sg-hhg-camera.dtbo \
								kalama-sg-hhg-camera-sensor.dtbo

dtbo-$(CONFIG_ARCH_CROW) += crow-camera.dtbo \
				crow-camera-sensor-idp.dtbo \
				crow-camera-sensor-qrd.dtbo
endif

#Moto camera sensor dtbo
dtbo-$(CONFIG_RTWO_DTB) += kalama-camera-sensor-rtwo-evb1.dtbo \
							kalama-camera-sensor-rtwo-evt1.dtbo

#Moto camera sensor dtbo
dtbo-$(CONFIG_CTWO_DTB) += kalama-camera-sensor-ctwo-evb.dtbo
