THEOS_DEVICE_IP = 172.17.8.247

ARCHS = armv7 arm64

TARGET = iphone:latest:8.0

export THEOS=/opt/theos

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ios_tweak_test

ios_tweak_test_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

troject FRAMEWORKS = UIKit

after-install::
	install.exec "killall -9 SpringBoard"

// iOSREProject_PRIVATE_FRAMEWORKS = [private framework name]
// iOSREProject_LDFLAGS = -lz –lsqlite3.0 –dylib1.o
