# Copyright (C) 2026 ilxp <https://github.com/ilxp>

include $(TOPDIR)/rules.mk

PKG_NAME:=soup
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=SOUP - System Online Upgrade For OpenWRT
	DEPENDS:=+bash +jq +curl +wget-ssl +aria2 +ca-bundle +ca-certificates \
	         +coreutils-timeout
endef

define Package/$(PKG_NAME)/description
	soup - system online upgrade
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(CURDIR)/files/bin/soup $(1)/usr/bin/soup
	$(INSTALL_DIR) $(1)/usr/lib/soup
	$(INSTALL_BIN) $(CURDIR)/files/usr/lib/soup/*.sh $(1)/usr/lib/soup/
	$(INSTALL_DIR) $(1)/etc/soup
	$(INSTALL_CONF) $(CURDIR)/files/etc/soup/default $(1)/etc/soup/default
endef

$(eval $(call BuildPackage,$(PKG_NAME)))