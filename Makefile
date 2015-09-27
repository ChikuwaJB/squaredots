THEOS_PACKAGE_DIR_NAME = debs #this tells our compiler to place our deb files in the "debs" folder after they are done building
ARCHS = armv7 arm64 #this tells clang (our compiler) to make sure the tweak will build correctly for 64-bit devices

include theos/makefiles/common.mk

TWEAK_NAME = SquareDots
SquareDots_FILES = squaredots.x

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
