# Copyright 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	src/dec/bits.c \
	src/dec/dsp.c \
	src/dec/frame.c \
	src/dec/quant.c \
	src/dec/tree.c \
	src/dec/vp8.c \
	src/dec/webp.c \
	src/dec/yuv.c \
	src/dec/idec.c

LOCAL_CFLAGS := -DANDROID

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/src/dec

LOCAL_MODULE:= libwebp-decode

include $(BUILD_STATIC_LIBRARY)
