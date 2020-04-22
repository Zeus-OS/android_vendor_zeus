# Versioning System For Zenx
# Zenx RELEASE VERSION
ZENX_VERSION_MAJOR = 14
ZENX_VERSION_MINOR = 0
# ZENX_VERSION_MAINTENANCE = Stable

# Zenx Android version
ZENX_VERSION_STATIC = 2.0

#ifdef ZENX_VERSION_MAINTENANCE
#    VERSION := $(ZENX_VERSION_MAJOR).$(ZENX_VERSION_MINOR)-$(ZENX_VERSION_MAINTENANCE)
#else
    VERSION := $(ZENX_VERSION_MAJOR).$(ZENX_VERSION_MINOR)
#endif

TARGET_PRODUCT_SHORT := $(subst zenx_,,$(ZENX_BUILDTYPE))

# Set ZENX_BUILDTYPE
ifdef ZENX_NIGHTLY
    ZENX_BUILDTYPE := NIGHTLY
endif
ifdef ZENX_EXPERIMENTAL
    ZENX_BUILDTYPE := EXPERIMENTAL
endif
#ifdef ZENX_MAINTENANCE
#    ZENX_BUILDTYPE := MAINTENANCE
#endif
# Set Unofficial if no buildtype set (Buildtype should ONLY be set by ZENX Devs!)
ifdef ZENX_BUILDTYPE
else
    ZENX_BUILDTYPE := UNOFFICIAL
endif

# Set ZENX version
ifdef ZENX_RELEASE
    ZENX_VERSION := Zenx-v$(VERSION)
else
    ZENX_VERSION := Zenx-v$(VERSION)-$(ZENX_BUILD)-$(ZENX_BUILDTYPE)-$(shell date +%Y%m%d)
endif

ZENX_DISPLAY_VERSION := $(VERSION)
ZENX_DISPLAY_BUILDTYPE := $(ZENX_BUILDTYPE)
ZENX_FINGERPRINT := Zenx/$(VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date +%Y%m%d)

