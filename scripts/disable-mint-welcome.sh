#!/bin/bash

# DaiLoiOS - Disable Linux Mint Welcome
# Copyright © 2026 DaiLoiOS Project
# License: GPL-3.0-or-later

set -e

echo "Đang tắt Linux Mint Welcome..."

# Tắt tự khởi động Mint Welcome cho người dùng mới
mkdir -p /etc/skel/.config/autostart

cat > /etc/skel/.config/autostart/mintwelcome.desktop <<'EOF'
[Desktop Entry]
Type=Application
Name=Linux Mint Welcome
Hidden=true
NoDisplay=true
X-GNOME-Autostart-enabled=false
EOF

# Tắt Mint Welcome cho các tài khoản hiện có
for home_dir in /home/*; do
    [ -d "$home_dir" ] || continue

    user_name="$(basename "$home_dir")"
    autostart_dir="$home_dir/.config/autostart"

    mkdir -p "$autostart_dir"

    cat > "$autostart_dir/mintwelcome.desktop" <<'EOF'
[Desktop Entry]
Type=Application
Name=Linux Mint Welcome
Hidden=true
NoDisplay=true
X-GNOME-Autostart-enabled=false
EOF

    chown -R "$user_name:$user_name" "$autostart_dir"
done

echo "Đã tắt Linux Mint Welcome."
