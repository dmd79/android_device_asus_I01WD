/*
 * Copyright (C) 2015 The CyanogenMod Project
 * Copyright (C) 2017-2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.aospextended.settings.asusparts.touch;

import java.util.HashMap;
import java.util.Map;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.UserHandle;
import android.provider.Settings;
import androidx.preference.SwitchPreference;
import androidx.preference.PreferenceManager;

import android.media.AudioManager;

public class Constants {

    // Broadcast action for settings update
    static final String UPDATE_PREFS_ACTION = "org.aospextended.settings.asusparts.touch.UPDATE_SETTINGS";

    // Screen off Gesture actions
    static final int ACTION_BACK = 1;
    static final int ACTION_HOME = 2;
    static final int ACTION_RECENTS = 3;
    static final int ACTION_UP = 4;
    static final int ACTION_DOWN = 5;
    static final int ACTION_LEFT = 6;
    static final int ACTION_RIGHT = 7;
    static final int ACTION_ASSISTANT = 8;
    static final int ACTION_SCREEN_OFF = 9;
    static final int ACTION_FLASHLIGHT = 10;
    static final int ACTION_CAMERA = 11;
    static final int ACTION_BROWSER = 12;
    static final int ACTION_DIALER = 13;
    static final int ACTION_EMAIL = 14;
    static final int ACTION_MESSAGES = 15;
    static final int ACTION_PLAY_PAUSE_MUSIC = 16;
    static final int ACTION_PREVIOUS_TRACK = 17;
    static final int ACTION_NEXT_TRACK = 18;
    static final int ACTION_VOLUME_DOWN = 19;
    static final int ACTION_VOLUME_UP = 20;
    static final int ACTION_CAMERA_MOTOR = 21;
    static final int ACTION_FM_RADIO = 22;

    // Broadcast extra: keycode mapping (int[]: key = gesture ID, value = keycode)
    static final String UPDATE_EXTRA_KEYCODE_MAPPING = "keycode_mappings";
    // Broadcast extra: assigned actions (int[]: key = gesture ID, value = action)
    static final String UPDATE_EXTRA_ACTION_MAPPING = "action_mappings";

}
