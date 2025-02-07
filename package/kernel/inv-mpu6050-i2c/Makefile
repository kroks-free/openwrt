include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=inv-mpu6050-i2c
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define KernelPackage/$(PKG_NAME)
  SECTION:=kernel
  SUBMENU:=Other modules
  TITLE:=Enable MPU6050 accel support (I2C)
  DEPENDS:=+kmod-i2c-mux +kmod-regmap-i2c +kmod-industrialio-triggered-buffer
  FILES:=$(PKG_BUILD_DIR)/$(PKG_NAME).ko
  AUTOLOAD:=$(call AutoProbe,$(PKG_NAME))
endef

define KernelPackage/$(PKG_NAME)/description
 Kernel module for Invensense MPU6050 i2c
endef

define Build/Compile
	$(KERNEL_MAKE) M=$(PKG_BUILD_DIR) modules
endef

$(eval $(call KernelPackage,$(PKG_NAME)))
