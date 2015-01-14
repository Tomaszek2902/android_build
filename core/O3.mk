# Disable some modules that break with -O3
LOCAL_DISABLE_O3 := \
	libaudioflinger

O3_FLAGS := \
	-O3 \
	-Wno-error=array-bounds

ifneq (1,$(words $(filter $(LOCAL_DISABLE_O3),$(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += $(O3_FLAGS)
else
LOCAL_CONLYFLAGS := $(O3_FLAGS)
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += $(O3_FLAGS)
else
LOCAL_CPPFLAGS := $(O3_FLAGS)
endif
endif
