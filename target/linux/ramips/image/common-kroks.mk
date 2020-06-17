define Device/Kroks-mpci
  DEVICE_PACKAGES := \
	kmod-usb2 \
	kmod-usb-acm \
	kmod-usb-net \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-hso \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-sierrawireless \
	kmod-usb-serial \
	kmod-usb-serial-option \
	kmod-usb-serial-qualcomm \
	kmod-usb-serial-sierrawireless \
	kmod-usb-serial-wwan \
	kmod-usb-wdm \
	usb-modeswitch \
	zram-swap
endef

define Device/Kroks-hilink
  DEVICE_PACKAGES := \
	kmod-usb2 \
	kmod-usb-net \
	kmod-usb-net-rndis \
	kmod-usb-net-cdc-ether \
	usb-modeswitch \
	zram-swap
endef

define Device/Kroks-usbstor
  DEVICE_PACKAGES += kmod-usb-storage kmod-fs-vfat kmod-fs-ext4
endef
