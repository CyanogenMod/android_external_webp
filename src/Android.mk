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

###############################################
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
        enc/alpha.c \
        enc/analysis.c \
        enc/backward_references.c \
        enc/config.c \
        enc/cost.c \
        enc/filter.c \
        enc/frame.c\
        enc/histogram.c \
        enc/iterator.c \
        enc/layer.c \
        enc/picture.c \
        enc/quant.c \
        enc/syntax.c \
        enc/tree.c \
        enc/token.c \
        enc/vp8l.c \
        enc/webpenc.c \
        dsp/cpu.c \
        dsp/cpu-features.c \
        dsp/enc.c \
        dsp/enc_neon.c \
        dsp/enc_sse2.c \
        dsp/lossless.c \
        dsp/yuv.c \
        utils/alpha_processing.c \
        utils/bit_writer.c \
        utils/color_cache.c \
        utils/filters.c \
        utils/huffman.c \
        utils/huffman_encode.c \
        utils/quant_levels.c \
        utils/random.c \
        utils/rescaler.c \
        utils/thread.c \
        utils/utils.c

LOCAL_CFLAGS := -DANDROID -DWEBP_SWAP_16BIT_CSP

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/enc \
        $(LOCAL_PATH)/../include

LOCAL_MODULE := libwebp-encode

LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk

include $(BUILD_STATIC_LIBRARY)

###############################################

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
        dec/alpha.c \
        dec/buffer.c \
        dec/frame.c \
        dec/idec.c \
        dec/io.c \
        dec/layer.c \
        dec/quant.c \
        dec/tree.c \
        dec/vp8.c \
        dec/vp8l.c \
        dec/webp.c \
        dsp/cpu.c \
        dsp/cpu-features.c \
        dsp/dec.c \
        dsp/dec_neon.c \
        dsp/dec_sse2.c \
        dsp/lossless.c \
        dsp/upsampling.c \
        dsp/upsampling_neon.c \
        dsp/upsampling_sse2.c \
        dsp/yuv.c \
        demux/demux.c \
        utils/alpha_processing.c \
        utils/bit_reader.c \
        utils/color_cache.c \
        utils/filters.c \
        utils/huffman.c \
        utils/quant_levels_dec.c \
        utils/random.c \
        utils/rescaler.c \
        utils/thread.c \
        utils/utils.c

LOCAL_CFLAGS := -DANDROID -DWEBP_SWAP_16BIT_CSP

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/dec \
        $(LOCAL_PATH)/../include

LOCAL_SDK_VERSION := 9

LOCAL_MODULE := libwebp-decode

LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk

include $(BUILD_STATIC_LIBRARY)
