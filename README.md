# 🌸 Thermal Breaker Miyabi Core

Miyabi Core thermal optimizer focused on reducing aggressive throttling and improving performance stability across all Android devices, chipsets, and ROMs, without disabling hardware safety protections.

---

## ✦ Key Features

1. **Universal Chipset Support**: Fully compatible with Qualcomm Snapdragon, MediaTek, Exynos, Google Tensor, Unisoc, and other platforms.
2. **GPU Throttling Bypass**: Supports Adreno (KGSL), Mali, and PowerVR graphics architectures.
3. **Pure Dynamic Kernel Engine**: Dynamically scans `/sys/class/thermal/cooling_device*` and locks throttle levels of CPU/GPU to performance state (`0`), making them read-only to prevent user-space thermal services from capping clock speeds.
4. **MediaTek GED Boost**: Injects performance parameters into the Graphics Execution Daemon (GED) to completely unleash Mali GPUs on Dimensity and Helio chipsets.
5. **Advanced PMIC Bypass**: Prevents software-level screen dimming (random brightness drops) when the device gets warm while gaming, keeping hardware failsafes intact.
6. **Supercharged system.prop**: Aggressively disables OEM throttling frameworks (bypassing Xiaomi Joyose, Samsung GOS, and Dynamic FPS drops).
7. **Guardian Background Daemon**: Runs a battery-friendly monitor loop that ensures cooling states remain unlocked every 10 seconds **only when the screen is active** (saving battery when the phone is idle).
8. **Safe Architecture**: Leaves battery charging thermal limits to the factory default to prevent battery swelling, and safely shuts down 13+ OEM thermal daemons without causing bootloops.
9. **Detailed Diagnostics**: Logs device detection and tuning processes inside `/data/adb/modules/thermal-breaker-miyabi-core/thermal_breaker.log`.

---

## Compatibility

- **Chipsets**: Snapdragon, MediaTek, Exynos, Google Tensor, Unisoc, etc.
- **GPUs**: Adreno, Mali, Immortalis, PowerVR.
- **Android Versions**: Android 10, 11, 12, 13, 14, 15 (and above).
- **Architectures**: 64-bit (arm64-v8a) and 32-bit (armeabi-v7a).
- **ROMs**: Support for all Custom ROMs (Superior OS, LineageOS, Evolution X, PixelOS, etc.) and OEM stock ROMs (HyperOS, OneUI, Pixel, ColorOS, OriginOS, etc.).
- **Root Managers**: Magisk, KernelSU, APatch.

---

## How to Install

1. Compress all files and directories in this folder (including `common`, `META-INF`, `install.sh`, `module.prop`, `LICENSE`, `README.md`, `changelog.txt`) into a standard `.zip` file.
   > **Note**: Make sure `install.sh` and `module.prop` are at the root level of the archive, not nested inside another folder.
2. Open your Root Manager (Magisk Manager, KernelSU, or APatch) and select **Install from storage**.
3. Flash the `.zip` file and wait for the installer to finish detecting your device properties.
4. **Reboot your device** to apply changes.
5. (Optional) Verify operation by inspecting the log:
   ```bash
   cat /data/adb/modules/thermal-breaker-miyabi-core/thermal_breaker.log
   ```

---

## Warning & Disclaimer

* **Use at your own risk**: By removing software throttling limits, your device will run hotter than usual under sustained heavy loads (like 3D gaming or benchmarking).
* **Cooling Recommendation**: It is **strongly recommended** to use an external fan cooler (phone cooler) when playing games for extended periods. This keeps your battery and SoC cool, preserving their long-term health.
* **Failsafe**: Hardware-level emergency thermal shutdown remains intact. The device will automatically turn off safely if it reaches critical threshold temperatures (usually 100°C+).

---

## Credits & Source

- **Developer**: Rama-X2 (Rama Armytha)
- **Source Code**: [GitHub Repository](https://github.com/Rama-X2/thermal-breaker-miyabi-core)
