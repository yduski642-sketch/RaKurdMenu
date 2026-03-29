export ARCHS = arm64 arm64e
export TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YusufMenu

YusufMenu_FILES = Tweak.xm $(wildcard IMGUI/*.cpp) ImGuiDrawView.mm
YusufMenu_CFLAGS = -fobjc-arc
YusufMenu_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

include $(THEOS_MAKE_PATH)/tweak.mk
