#!/bin/sh

# --- PATHS ---
filepath_userPreferences='/Users/eidas/Library/Preferences/Cubase 14/UserPreferences.xml'
userPreferencesErrorName='Failed to copy UserPreferences.xml'

filepath_keyCommands='/Users/eidas/Library/Preferences/Cubase 14/Key Commands.xml'
keyCommandsErrorName='Failed to copy Key Commands.xml'

filepath_pluginManager='/Users/eidas/Library/Preferences/Cubase 14/PluginManager.xml'
pluginManagerErrorName='Failed to copy PluginManager.xml'

dirpath_projectLogicalEditor='/Users/eidas/Documents/Steinberg/Cubase/User Presets/Project Logical Editor'
projectLogicalEditorError='Failed to copy project logical editor directory'

dirpath_regularLogicalEditor='/Users/eidas/Documents/Steinberg/Cubase/User Presets/Logical Edit'
regLogicEditorError='Failed to copy Regular Logical Editor directory'

dirpath_trackPresets='/Users/eidas/Library/Application Support/Steinberg/Track Presets'
trackPresetsError='Failed to copy track presets directory'

rm -f "$userPreferencesErrorName"
cp "$filepath_userPreferences" . || touch "$userPreferencesErrorName"

rm -f "$keyCommandsErrorName"
cp "$filepath_keyCommands" . || touch "$keyCommandsErrorName"

rm -f "$pluginManagerErrorName"
cp "$filepath_pluginManager" . || touch "$pluginManagerErrorName"

rm -f "$projectLogicalEditorError"
cp -r "$dirpath_projectLogicalEditor" . || touch "$projectLogicalEditorError"

rm -f "$regLogicEditorError"
cp -r "$dirpath_regularLogicalEditor" . || touch "$regLogicEditorError"

rm -f "$trackPresetsError"
cp -r "$dirpath_trackPresets" . || touch "$trackPresetsError"
