# Copyright (C) 2026 ilxp <https://github.com/ilxp>

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-soup
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

LUCI_TITLE:=LuCI Support for Soup
LUCI_DEPENDS:=+soup
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk

# 配置文件:卸载时保留
define Package/luci-app-soup/conffiles
/etc/config/soup
endef

# 安装后:清 LuCI 缓存 + 启用服务
define Package/luci-app-soup/postinst
[ -n "$${IPKG_INSTROOT}" ] || {
	rm -rf /tmp/luci-indexcache
	rm -rf /tmp/luci-modulecache
	/etc/init.d/soup enable
	/etc/init.d/soup start >/dev/null 2>&1
}
exit 0
endef

# 卸载前:停服务 + 禁自启
define Package/luci-app-soup/prerm
[ -n "$${IPKG_INSTROOT}" ] || {
	/etc/init.d/soup stop >/dev/null 2>&1
	/etc/init.d/soup disable
}
exit 0
endef

# $(eval $(call BuildPackage,...))