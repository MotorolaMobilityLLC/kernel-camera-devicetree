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
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-cuscoi-evb.dtbo
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-cuscoi-noi-evb.dtbo
endif  #($(CONFIG_CUSCO_DTB),y)
ifeq ($(CONFIG_PARO_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-paro-evb.dtbo
endif  #($(CONFIG_PARO_DTB),y)
ifeq ($(CONFIG_PAROS_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-paros-evt.dtbo
endif  #($(CONFIG_PAROS_DTB),y)
ifeq ($(CONFIG_KOBE_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-kobe-evt.dtbo
endif  #($(CONFIG_KOBE_DTB),y)
ifeq ($(CONFIG_MONA_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-mona-evb.dtbo
endif  #($(CONFIG_MONA_DTB),y)
ifeq ($(CONFIG_MONAI_DTB),y)
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-monai-evb.dtbo
endif  #($(CONFIG_MONAI_DTB),y)
endif  #($(CONFIG_MMI_DEVICE_DTBS),y)
