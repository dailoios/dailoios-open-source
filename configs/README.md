
# DaiLoiOS XFCE Configuration

Thư mục này chứa các cấu hình XFCE được sử dụng cho giao diện mặc định của DaiLoiOS.

DaiLoiOS được phát triển trên nền Linux Mint XFCE. Các file trong thư mục này là những cấu hình đã được dự án DaiLoiOS điều chỉnh để tạo bố cục màn hình, panel, menu, phím tắt và trải nghiệm sử dụng riêng.

## Nội dung

Thư mục `xfconf/xfce-perchannel-xml/` có thể bao gồm:

- `xfce4-desktop.xml`: cấu hình Desktop và hình nền.
- `xfce4-panel.xml`: bố cục panel, menu và các plugin trên thanh tác vụ.
- `xfce4-keyboard-shortcuts.xml`: cấu hình phím tắt.
- `xfce4-session.xml`: cấu hình phiên đăng nhập XFCE.
- `xfce4-notifyd.xml`: cấu hình thông báo.
- `xfwm4.xml`: cấu hình trình quản lý cửa sổ.
- `thunar.xml`: cấu hình trình quản lý file Thunar, nếu được sử dụng.
- `xfce4-terminal.xml`: cấu hình Terminal, nếu được sử dụng.

## Mục đích

Các cấu hình này được dùng để:

- Thiết lập giao diện mặc định của DaiLoiOS.
- Tạo bố cục panel thân thiện với người dùng.
- Thiết lập menu, biểu tượng và phím tắt mặc định.
- Cấu hình giao diện cửa sổ và thông báo.
- Áp dụng cấu hình đồng nhất cho tài khoản người dùng mới.

## Vị trí cài đặt

Khi đóng gói DaiLoiOS, các file cấu hình có thể được cài vào:

```text
/etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/
