dtbo-$(CONFIG_ARCH_KHAJE) := khaje-camera.dtbo
dtbo-$(CONFIG_ARCH_KHAJE) += khajeg-camera-idp.dtbo \
				khajeg-camera-qrd.dtbo \
				khajeg-camera-qrd-hvdcp3p5.dtbo \
				khaje-camera-sensor-idp.dtbo \
				khaje-camera-sensor-qrd.dtbo \
				khaje-camera-sensor-idp-nopmi.dtbo \
				khaje-camera-sensor-qrd-nopmi.dtbo \
				khaje-camera-sensor-qrd-hvdcp3p5.dtbo \
				khaje-camera-sensor-qrd-nowcd9375.dtbo \
				khaje-camera-sensor-idps-display-90hz.dtbo \
				khaje-camera-sensor-idp-usbc.dtbo \

ifeq ($(CONFIG_FOGONA_DTB),y)
dtbo-$(CONFIG_ARCH_KHAJE) += \
	khaje-camera-sensor-fogona-evb.dtbo \
	khaje-camera-sensor-fogona-att.dtbo
endif  #($(CONFIG_FOGONA_DTB),y)
