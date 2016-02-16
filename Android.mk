# Copyright (C) 2016 The Android Open Source Project
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

LOCAL_SRC_FILES:= \
	xkbcommon/src/compose/parser.c \
	xkbcommon/src/compose/paths.c \
	xkbcommon/src/compose/state.c \
	xkbcommon/src/compose/table.c \
	xkbcommon/src/xkbcomp/action.c \
	xkbcommon/src/xkbcomp/ast-build.c \
	xkbcommon/src/xkbcomp/compat.c \
	xkbcommon/src/xkbcomp/expr.c \
	xkbcommon/src/xkbcomp/include.c \
	xkbcommon/src/xkbcomp/keycodes.c \
	xkbcommon/src/xkbcomp/keymap.c \
	xkbcommon/src/xkbcomp/keymap-dump.c \
	xkbcommon/src/xkbcomp/keywords.c \
	xkbcommon/src/xkbcomp/parser.c \
	xkbcommon/src/xkbcomp/rules.c \
	xkbcommon/src/xkbcomp/scanner.c \
	xkbcommon/src/xkbcomp/symbols.c \
	xkbcommon/src/xkbcomp/types.c \
	xkbcommon/src/xkbcomp/vmod.c \
	xkbcommon/src/xkbcomp/xkbcomp.c \
	xkbcommon/src/atom.c \
	xkbcommon/src/context.c \
	xkbcommon/src/context-priv.c \
	xkbcommon/src/keysym.c \
	xkbcommon/src/keysym-utf.c \
	xkbcommon/src/keymap.c \
	xkbcommon/src/keymap-priv.c \
	xkbcommon/src/state.c \
	xkbcommon/src/text.c \
	xkbcommon/src/utf8.c \
	xkbcommon/src/utils.c \

LOCAL_CFLAGS += \
	-std=c99 \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-DXLOCALEDIR='"/usr/share/X11/locale"' \
	-DDEFAULT_XKB_LAYOUT='"us"' \
	-DDEFAULT_XKB_MODEL='"pc105"' \
	-DDEFAULT_XKB_RULES='"evdev"' \
	-DDFLT_XKB_CONFIG_ROOT='"/usr/share/X11/xkb"' \

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/xkbcommon \
	$(LOCAL_PATH)/xkbcommon/src \

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/xkbcommon

LOCAL_MODULE := libxkbcommon

include $(BUILD_STATIC_LIBRARY)
