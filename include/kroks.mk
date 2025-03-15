define Device/Kroks-usbdrv
ifeq ($(CONFIG_TARGET_ramips_mt7620),y)
	DEVICE_PACKAGES += $$(filter-out $$(DEVICE_PACKAGES),kmod-usb2)
else ifeq ($(CONFIG_TARGET_ramips_mt76x8),y)
	DEVICE_PACKAGES += $$(filter-out $$(DEVICE_PACKAGES),kmod-usb2)
else
	DEVICE_PACKAGES += $$(filter-out $$(DEVICE_PACKAGES),kmod-usb3)
endif
endef

define Device/Kroks-mm
  DEVICE_PACKAGES := \
	kmod-usb-acm \
	kmod-usb-net \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-sierrawireless \
	kmod-usb-serial-option \
	kmod-usb-serial-qualcomm \
	kmod-usb-serial-sierrawireless \
	kmod-usb-serial-wwan \
	kmod-usb-wdm \
	usb-modeswitch
  $(Device/Kroks-usbdrv)
endef

define Device/Kroks-hilink
  DEVICE_PACKAGES := \
	kmod-usb-net \
	kmod-usb-net-rndis \
	kmod-usb-net-cdc-ether \
	usb-modeswitch
  $(Device/Kroks-usbdrv)
endef

define Device/Kroks-usbstor
  $(Device/Kroks-usbdrv)
  DEVICE_PACKAGES += kmod-usb-storage kmod-fs-vfat kmod-fs-ext4
endef

define Device/Kroks-poe
  DEVICE_PACKAGES += kmod-hwmon-tps23861
endef

define Device/Kroks-accel
  DEVICE_PACKAGES += kmod-inv-mpu6050-i2c iiod iio-utils
endef
