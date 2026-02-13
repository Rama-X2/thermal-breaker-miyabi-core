# Copyright (C) 2026 Rama-X2
# Licensed under the GNU General Public License, Version 3.0
# Source: https://github.com/Rama-X2/thermal-breaker-miyabi-core

SKIPMOUNT=false

PROPFILE=true

POSTFSDATA=true

LATESTARTSERVICE=true

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"


REPLACE="
"

print_modname() {
  ui_print "______________________________________________________"
busybox sleep 1
  ui_print "                   "
busybox sleep 1
  ui_print " Created by : Rama-X2"
busybox sleep 1
  ui_print " Install BusyBox"
  ui_print "               "
  ui_print " github : https://github.com/Rama-X2 "
busybox sleep 1
  ui_print "⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀"
  ui_print "           ╔══════════════════════╗               "
  ui_print "           ║          (≧◡≦)           ║              "
  ui_print "           ║        Miyabi Core       ║              "
  ui_print "           ╚══════════════════════╝               "
  ui_print "                      ／l、                          "
  ui_print "                    （ﾟ､ ｡ ７                        "
  ui_print "                     l、  ~ヽ                        "
  ui_print "                     じしf_, )ノ                     "
  busybox sleep 1
  ui_print "     『 Thermal Breaker Miyabi Core v1.0.3 』          "
  busybox sleep 1
  ui_print "⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀"
  busybox sleep 1
  ui_print " - Loading..."
  busybox sleep 1
  ui_print " - Installing..."
  ui_print " - Wait.."
  busybox sleep 1
  ui_print " - Done!!!! "
  busybox sleep 1
  ui_print "__________________● REBOOT DEVICE ●__________________"
  ui_print "                   "
}


# Copy/extract your module files into $MODPATH in on_install.

on_install() {
  # The following is the default implementation: extract $ZIPFILE/system to $MODPATH
  # Extend/change the logic to whatever you want
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

# Only some special files require specific permissions
# This function will be called after on_install is done
# The default permissions should be good enough for most cases

set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/system/bin/P0 0 0 0755 0755
  set_perm $MODPATH/system/bin/P1 0 0 0755 0755

  # Here are some examples:
  # set_perm_recursive  $MODPATH/system/lib       0     0       0755      0644
  # set_perm  $MODPATH/system/bin/app_process32   0     2000    0755      u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0     2000    0755      u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0     0       0644
}

# You can add more functions to assist your custom script code
