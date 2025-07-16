# 🖥️ Parrot VM Screen Resolution Fix

Automatically configure a fixed screen resolution (e.g., 1920×1080) for Parrot OS on VirtualBox via `xrandr` and user-level `systemd`.

## 🚀 Setup

1. **Fork** this repo and clone it:
   ```bash
   git clone https://github.com/YOUR_USERNAME/parrot-vm-resolution-fix.git
   cd parrot-vm-resolution-fix

2. **Install files**:

   ```bash
   mkdir -p ~/.scripts ~/.config/systemd/user
   cp scripts/set-resolution.sh ~/.scripts/
   cp systemd/set-resolution.service ~/.config/systemd/user/
   chmod +x ~/.scripts/set-resolution.sh
   ```

3. **Reload & enable service**:

   ```bash
   systemctl --user daemon-reload
   systemctl --user enable set-resolution.service
   systemctl --user start set-resolution.service
   ```

4. **Optional**: Allow service to run when not logged in graphically:

   ```bash
   sudo loginctl enable-linger $USER
   ```

5. **Reboot VM** and check resolution.

## ✅ Customize

* If `xrandr` output shows a display name other than `Virtual1`, update `set-resolution.sh`.
* Change resolution by editing the `xrandr --newmode` definition.

````

