# TARGET #

TARGET := 3DS
LIBRARY := 0

ifeq ($(TARGET),$(filter $(TARGET),3DS WIIU))
    ifeq ($(strip $(DEVKITPRO)),)
        $(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
    endif
endif

# COMMON CONFIGURATION #

NAME := FTPDB

BUILD_DIR := build
OUTPUT_DIR := output
INCLUDE_DIRS := include
SOURCE_DIRS := source

#EXTRA_OUTPUT_FILES :=

LIBRARY_DIRS := $(DEVKITPRO)/citrus $(DEVKITPRO)/libctru
LIBRARIES := ctru m

BUILD_FLAGS := -DSTATUS_STRING='"FTP3DS"' -DLIBKHAX_AS_LIB
BUILD_FLAGS_CC := 
BUILD_FLAGS_CXX :=
RUN_FLAGS :=

VERSION_MAJOR := 1
VERSION_MINOR := 4
VERSION_MICRO := 0

# 3DS CONFIGURATION #

ifeq ($(TARGET),$(filter $(TARGET),3DS WIIU))
    TITLE := $(NAME)
    DESCRIPTION := 3DS FTP Server
    AUTHOR := Favna
endif

ifeq ($(TARGET),3DS)
    #LIBRARY_DIRS +=
    #LIBRARIES +=

    PRODUCT_CODE := HBL-FTPDB
    UNIQUE_ID := 0xF73D

    CATEGORY := Application
    USE_ON_SD := true

    MEMORY_TYPE := Application
    SYSTEM_MODE := 64MB
    SYSTEM_MODE_EXT := 124MB
    CPU_SPEED := 804MHz
    ENABLE_L2_CACHE := true

    ICON_FLAGS := --flags visible,ratingrequired,recordusage --cero 153 --esrb 153 --usk 153 --pegigen 153 --pegiptr 153 --pegibbfc 153 --cob 153 --grb 153 --cgsrr 153

    #ROMFS_DIR :=
    BANNER_AUDIO := meta/banner.wav
    BANNER_IMAGE := meta/banner.png
    ICON := meta/icon.png
	LOGO := meta/logo.bcma.lz
endif

# INTERNAL #

include buildtools/make_base