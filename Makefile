THEOS_PACKAGE_DIR_NAME = debs #this tells our compiler to place our deb files in the "debs" folder after they are done building
ARCHS = armv7 arm64 #this tells clang (our compiler) to make sure the tweak will build correctly for 64-bit devices

include theos/makefiles/common.mk

TWEAK_NAME = SquareDots
SquareDots_FILES = squaredots.x #you can change this to anything you would like. this used to be called Tweak.xm but I changed it for sake of organization. you can also add "$(wildcard *.xm)" to tell clang to compile any file ending in .xm within the current directory 
#x,m,mm, & xm file extentions will all work when using theos. they are all objective-c extentions

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd" #you can kill anything you would like ex. Vine, Snapchat. I used backboardd just because its brings down springboard and all of his little buddies
