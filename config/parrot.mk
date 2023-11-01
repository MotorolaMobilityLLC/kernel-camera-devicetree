dtbo-$(CONFIG_ARCH_PARROT) := parrot-camera.dtbo
#remove useless qcom device tree in moto build
ifneq ($(CONFIG_MMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-idp.dtbo
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-qrd.dtbo

dtbo-$(CONFIG_ARCH_RAVELIN) += raveline-camera.dtbo
dtbo-$(CONFIG_ARCH_RAVELIN) += raveline-camera-sensor-idp.dtbo
dtbo-$(CONFIG_ARCH_RAVELIN) += raveline-camera-sensor-qrd.dtbo
dtbo-$(CONFIG_ARCH_RAVELIN) += raveline-camera-sensor-iot.dtbo
else
ifeq ($(CONFIG_GENEVA_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-geneva-evb.dtbo
endif  #($(CONFIG_GENEVA_DTB),y)
ifeq ($(CONFIG_GENEVN_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-genevn-evb.dtbo
endif  #($(CONFIG_GENEVN_DTB),y)
ifeq ($(CONFIG_AVATRN_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-avatrn-evb.dtbo
endif  #($(CONFIG_AVATRN_DTB),y)
ifeq ($(CONFIG_BOSTON_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-boston-evb.dtbo
endif  #($(CONFIG_BOSTON_DTB),y)
ifeq ($(CONFIG_CUSCO_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-cusco-evb.dtbo
endif  #($(CONFIG_CUSCO_DTB),y)
endif  #($(CONFIG_MMI_DEVICE_DTBS),y)
