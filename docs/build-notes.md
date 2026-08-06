# Ghi chú xây dựng DaiLoiOS

Tài liệu này mô tả quy trình tổng quát dùng để tùy chỉnh, kiểm tra và đóng gói DaiLoiOS từ nền tảng Linux Mint XFCE bằng Cubic.

> Tài liệu không chứa mật khẩu, API key, khóa ký riêng, token hoặc thông tin quản trị máy chủ.

---

## 1. Thông tin dự án

| Thuộc tính | Giá trị |
|---|---|
| Tên hệ điều hành | DaiLoiOS |
| Phiên bản tài liệu | 1.0 |
| Nền tảng | Linux Mint 22.3 XFCE |
| Mã nền tảng | Zena |
| Nền gói | Ubuntu 24.04 LTS Noble |
| Kiến trúc chính | amd64 |
| Công cụ tạo ISO | Cubic |
| Website | https://dailoios.com |
| Repository | http://14.225.210.88:8081 |
| Thư mục dự án Cubic | `/home/admin1/Desktop/DailoiOS1ok` |

---

## 2. Mục tiêu tùy chỉnh

DaiLoiOS được xây dựng nhằm tạo một môi trường Linux thân thiện với người dùng Việt Nam, cửa hàng máy tính, trung tâm đào tạo và kỹ thuật viên.

Các thay đổi chính gồm:

- Thay tên và nhận diện Linux Mint bằng DaiLoiOS tại các vị trí đã tùy chỉnh.
- Thay logo, hình nền Desktop và biểu tượng Menu Start.
- Điều chỉnh bố cục XFCE Panel.
- Đưa khung đăng nhập và ô mật khẩu vào giữa màn hình.
- Thay hình ảnh khởi động Plymouth.
- Vô hiệu hóa Linux Mint Welcome.
- Thêm repository và các ứng dụng của DaiLoiOS.
- Tích hợp các công cụ hỗ trợ người dùng và kỹ thuật viên.

---

## 3. Chuẩn bị môi trường

Cài Cubic trên máy xây dựng ISO và tạo dự án từ ISO nền Linux Mint XFCE.

Thư mục dự án hiện dùng:

```text
/home/admin1/Desktop/DailoiOS1ok
```

Trước khi chỉnh sửa lớn, nên sao lưu toàn bộ thư mục dự án Cubic:

```bash
cp -a /home/admin1/Desktop/DailoiOS1ok \
/home/admin1/Desktop/DailoiOS1ok-backup
```

---

## 4. Nhận diện hệ điều hành

Các file nhận diện được tùy chỉnh:

```text
/etc/os-release
/etc/lsb-release
```

Sao lưu file gốc trước khi thay đổi:

```bash
cp -a /etc/os-release /etc/os-release.linuxmint
cp -a /etc/lsb-release /etc/lsb-release.linuxmint
```

File mẫu được công bố tại:

```text
configs/identity/os-release
configs/identity/lsb-release
```

Kiểm tra sau khi chỉnh sửa:

```bash
cat /etc/os-release
cat /etc/lsb-release
lsb_release -a
```

---

## 5. Cấu hình XFCE

DaiLoiOS hiện công bố hai file XFCE đã chỉnh sửa:

```text
xfce4-desktop.xml
xfce4-panel.xml
```

### 5.1. Desktop

`xfce4-desktop.xml` quản lý hình nền, biểu tượng Desktop và cách hiển thị Desktop XFCE.

Đường dẫn hình nền nên là đường dẫn hệ thống:

```text
/usr/share/backgrounds/dailoi-wallpaper.jpg
```

### 5.2. Panel và Menu Start

`xfce4-panel.xml` quản lý vị trí panel, kích thước panel, Whisker Menu, biểu tượng Menu Start và launcher trên taskbar.

Icon Start DaiLoiOS có thể đặt tại:

```text
/usr/share/pixmaps/OS/os-logo.svg
```

Các file công bố nằm tại:

```text
configs/xfce/
```

---

## 6. Logo và hình nền

Các tài nguyên nhận diện:

```text
branding/logos/
branding/wallpapers/
```

Chỉ đưa lên kho những hình ảnh do DaiLoiOS tự thiết kế, sở hữu hoặc có quyền phân phối hợp lệ.

Hình nền mặc định:

```text
/usr/share/backgrounds/dailoi-wallpaper.jpg
```

---

## 7. Giao diện đăng nhập

Gói tùy chỉnh:

```text
dailoios-login-center
```

Trong dự án này, “Login Center” là gói đưa khung đăng nhập và ô mật khẩu vào giữa màn hình, không phải ứng dụng DaiLoi Center.

Mã nguồn và cấu trúc đóng gói:

```text
packages/dailoios-login-center/
```

---

## 8. Vô hiệu hóa Linux Mint Welcome

Gói:

```text
dailoios-disable-welcome
```

Chức năng:

- Không tự mở Linux Mint Welcome.
- Áp dụng thiết lập cho tài khoản người dùng mới.
- Giữ giao diện sau cài đặt gọn hơn.

Mã nguồn và cấu trúc đóng gói:

```text
packages/dailoios-disable-welcome/
```

---

## 9. Plymouth và hình ảnh khởi động

DaiLoiOS thay hình ảnh trong theme Plymouth:

```text
/usr/share/plymouth/themes/mint-logo/
```

Kho mã nguồn lưu tại:

```text
configs/boot/plymouth/themes/mint-logo/
```

Có thể bao gồm:

```text
animation-0001.png
animation-0002.png
...
mint-logo.plymouth
mint-logo.script
```

Sau khi thay theme Plymouth trên hệ thống thật:

```bash
sudo update-initramfs -u
```

Không đưa lên GitHub:

```text
/boot/grub/grub.cfg
initrd.img
vmlinuz
grubx64.efi
shimx64.efi
```

---

## 10. Repository DaiLoiOS

Thông tin repository:

```text
URL: http://14.225.210.88:8081
Distribution: zena
Components: main drivers fonts printer tools pro beta
```

File cấu hình công khai:

```text
configs/repository/dailoios.list
configs/repository/dailoios.sources
```

Chỉ nên cài một trong hai định dạng để tránh khai báo trùng.

Kiểm tra repository trong Cubic:

```bash
grep -Rni "14.225.210.88" \
/etc/apt/sources.list /etc/apt/sources.list.d 2>/dev/null
apt update
apt-cache policy
```

Không công bố khóa ký private, mật khẩu VPS, token, API key hoặc thông tin quản trị.

---

## 11. Ứng dụng riêng của DaiLoiOS

Các ứng dụng sau có thể được tích hợp vào ISO nhưng không nằm trong phạm vi kho mã nguồn mở này, trừ khi có thông báo riêng:

- DaiLoi Account.
- DaiLoi App Store.
- DaiLoi Center.
- DaiLoi Driver Center.
- DaiLoi System Update.
- DaiLoi Device Info.
- DaiLoi Bug Report.

---

## 12. Kiểm tra gói đã cài

Xuất danh sách toàn bộ gói:

```bash
dpkg-query -W -f='${binary:Package}\t${Version}\n' \
> dailoios-installed-packages.txt
```

Xuất danh sách gói DaiLoiOS:

```bash
dpkg-query -W -f='${binary:Package}\t${Version}\n' |
grep -Ei 'dailoi|dailoios' \
> dailoios-own-packages.txt
```

Kiểm tra gói cụ thể:

```bash
dpkg -s TEN-GOI
dpkg -L TEN-GOI
```

---

## 13. Làm sạch trước khi tạo ISO

Trước khi đóng ISO:

```bash
apt clean
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*
```

Kiểm tra không còn mật khẩu, token, API key, log lớn, cache trình duyệt, dữ liệu người dùng thử nghiệm, file tạm, `__pycache__` hoặc file `.pyc`.

Tìm nhanh nội dung nhạy cảm:

```bash
grep -RniE \
"api[_-]?key|token|password|secret|authorization|bearer|private[_-]?key" \
/duong-dan-can-kiem-tra
```

---

## 14. Kiểm tra trước khi phát hành

- Khởi động được ở UEFI.
- Khởi động được ở Legacy nếu có hỗ trợ.
- Cài đặt ISO hoàn tất.
- Đăng nhập thành công.
- Ô mật khẩu nằm đúng vị trí.
- Logo khởi động hiển thị đúng.
- Hình nền Desktop hiển thị đúng.
- Menu Start và Panel hoạt động.
- Repository cập nhật được.
- App Store cài và gỡ được ứng dụng.
- Âm thanh, Wi-Fi, Bluetooth và đồ họa hoạt động.
- Máy in và driver chính được kiểm tra.
- Không còn tên Cubic trong tên hệ điều hành.
- Không còn tài khoản thử nghiệm.
- Không chứa khóa hoặc thông tin bí mật.

---

## 15. Kiểm tra trên phần cứng

DaiLoiOS nên được kiểm tra trên nhiều nhóm thiết bị: laptop Intel đời cũ, laptop Intel đời mới, máy AMD, máy bàn, máy có đồ họa rời, thiết bị UEFI và Legacy, máy có Wi-Fi, Bluetooth và máy in.

Mỗi lỗi nên ghi tên thiết bị, CPU, RAM, GPU, kernel, phiên bản DaiLoiOS, mô tả lỗi, cách khắc phục và trạng thái sau khi sửa.

---

## 16. Tạo ISO trong Cubic

1. Kiểm tra lại các thay đổi trong môi trường Cubic.
2. Chạy:

```bash
dpkg --audit
apt-get check
```

3. Chuyển sang các bước tiếp theo của Cubic.
4. Kiểm tra tên ISO, nhãn đĩa và thông tin phiên bản.
5. Tạo ISO.
6. Ghi ISO ra USB hoặc chạy trong máy ảo.
7. Cài thử trên máy thật trước khi phát hành.

Không phát hành bản ISO chỉ mới kiểm tra trong máy ảo.

---

## 17. Quy tắc phiên bản

Ví dụ:

```text
DaiLoiOS 1.0.0
DaiLoiOS 1.0.1
DaiLoiOS 1.1.0
```

- Tăng số cuối khi sửa lỗi nhỏ.
- Tăng số giữa khi thêm tính năng.
- Tăng số đầu khi thay đổi lớn hoặc đổi nền tảng.

---

## 18. Phạm vi kho mã nguồn mở

Kho công khai ưu tiên chứa:

- File cấu hình Mint/XFCE đã được DaiLoiOS sửa.
- Script được DaiLoiOS công bố.
- Cấu trúc đóng gói Debian của các gói mở.
- Logo và hình nền có quyền phân phối.
- Cấu hình Plymouth đã sửa.
- File nhận diện hệ điều hành.
- Cấu hình repository công khai.
- Tài liệu xây dựng và danh mục thành phần.

Kho không chứa:

- ISO hoàn chỉnh.
- Mật khẩu hoặc khóa bí mật.
- Ứng dụng độc quyền chưa công bố.
- File nhị phân hệ thống không cần thiết.
- Phần mềm thương mại.
- Thành phần không có quyền phân phối lại.

---

## 19. Cấu trúc kho đề nghị

```text
dailoios-open-source/
├── README.md
├── LICENSE
├── NOTICE
├── THIRD_PARTY_LICENSES.md
├── branding/
│   ├── logos/
│   └── wallpapers/
├── configs/
│   ├── boot/
│   ├── identity/
│   ├── repository/
│   └── xfce/
├── packages/
│   ├── dailoios-disable-welcome/
│   └── dailoios-login-center/
└── docs/
    ├── build-notes.md
    ├── package-manifest.md
    ├── manifests/
    └── releases/
```

---

## 20. Bản quyền và ghi nhận

Copyright © 2026 DaiLoiOS Project  
Công Ty TNHH Công Nghệ Tin Học Đại Lợi

DaiLoiOS được xây dựng dựa trên nhiều dự án phần mềm mã nguồn mở.

DaiLoiOS không phải là sản phẩm chính thức của Linux Mint, Ubuntu, Debian, Canonical, XFCE, Plymouth hoặc các dự án bên thứ ba khác.

Tên, nhãn hiệu và bản quyền của các thành phần bên thứ ba thuộc về các chủ sở hữu tương ứng.
