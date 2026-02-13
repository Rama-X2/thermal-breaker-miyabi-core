# Copyright (C) 2026 Rama-X2
# Licensed under the GNU General Public License, Version 3.0
# Source: https://github.com/Rama-X2/thermal-breaker-miyabi-core

sleep 14
# Universal Thermal Disabler
echo 0 > /sys/class/thermal/thermal_zone*/mode
sleep 1
# Thermal Stop Setprop Methode
setprop init.svc.thermal stopped
setprop init.svc.thermal-managers stopped
setprop init.svc.thermal_manager stopped
setprop init.svc.thermal_mnt_hal_service stopped
setprop init.svc.thermal-engine stopped
setprop init.svc.mi-thermald stopped
setprop init.svc.thermalloadalgod stopped
setprop init.svc.thermalservice stopped
setprop init.svc.thermal-hal stopped
setprop init.svc.vendor.thermal-symlinks
setprop init.svc.android.thermal-hal stopped
setprop init.svc.vendor.thermal-hal stopped
setprop init.svc.thermal-manager stopped
setprop init.svc.vendor-thermal-hal-1-0 stopped
setprop init.svc.vendor.thermal-hal-1-0 stopped
setprop init.svc.vendor.thermal-hal-2-0.mtk stopped
setprop init.svc.vendor.thermal-hal-2-0 stopped
setprop init.svc.android.thermal-hal stopped
sleep 1
# Thermal Stop Semi-auto Methode
sleep 12
stop logd
sleep 1
stop vendor.thermal-engine
sleep 1
stop vendor.thermal_manager
sleep 1
stop vendor.thermal-manager
sleep 1
stop vendor.thermal-hal-2-0
sleep 1
stop vendor.thermal-symlinks
sleep 1
stop thermal_mnt_hal_service
sleep 1
stop thermal
sleep 1
stop mi_thermald
sleep 1
stop thermald
sleep 1
stop thermalloadalgod
sleep 1
stop thermalservice
sleep 1
stop sec-thermal-1-0
sleep 1
stop debug_pid.sec-thermal-1-0
sleep 1
stop thermal-engine
sleep 1
stop vendor.thermal-hal-1-0
sleep 1
stop android.thermal-hal
sleep 1
stop vendor-thermal-1-0
sleep 1
stop thermal-hal
sleep 1
stop android.thermal-hal
