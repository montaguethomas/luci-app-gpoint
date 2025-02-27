include $(TOPDIR)/rules.mk

LUCI_TITLE:=GNSS Information dashboard for 3G/LTE dongle
LUCI_DEPENDS:=+lua +curl +lua-rs232 +luasocket +iwinfo +libiwinfo-lua +lua-bit32 +usbutils
PKG_LICENSE:=GPLv3
PKG_VERSION:=2.0.0

define Package/luci-app-gpoint/conffiles
	/etc/config/gpoint
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
