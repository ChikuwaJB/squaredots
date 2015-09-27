THEOS_PACKAGE_DIR_NAME = debs
TARGET = iphone:clang:latest:latest
ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = SquareDots
SquareDots_FILES = squaredots.x

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
