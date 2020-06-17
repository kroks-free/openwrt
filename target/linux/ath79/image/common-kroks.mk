define Device/Kroks-hilink
  DEVICE_PACKAGES := \
	kmod-usb-core \
	kmod-usb-chipidea2 \
	kmod-usb-net-rndis \
	kmod-usb-net-cdc-ether \
	usb-modeswitch \
	zram-swap
endef

define Device/Kroks-usbstor
  DEVICE_PACKAGES += kmod-usb-storage kmod-fs-vfat kmod-fs-ext4
endef
