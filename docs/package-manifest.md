# Danh mục thành phần DaiLoiOS

Tài liệu này mô tả những thành phần được DaiLoiOS bổ sung, tùy chỉnh,
vô hiệu hóa hoặc phân phối kèm theo hệ điều hành.

DaiLoiOS được xây dựng trên nền Linux Mint 22.3 XFCE và hệ thống gói
Ubuntu 24.04 LTS. Bản quyền của các thành phần nền tảng thuộc về các
tác giả và dự án tương ứng.

> Danh sách này cần được cập nhật trước mỗi lần phát hành ISO chính thức.

---

## 1. Thông tin bản phát hành

| Thuộc tính | Giá trị |
|---|---|
| Tên hệ điều hành | DaiLoiOS |
| Phiên bản DaiLoiOS | 1.0 |
| Nền tảng | Linux Mint 22.3 XFCE |
| Mã nền tảng | Zena |
| Nền gói Ubuntu | Ubuntu 24.04 LTS Noble |
| Kiến trúc chính | amd64 |
| Website | https://dailoios.com |
| Repository | http://14.225.210.88:8081 |

---

## 2. Thành phần được DaiLoiOS tùy chỉnh và công bố

### 2.1. Nhận diện hệ điều hành

Các file nhận diện đã được tùy chỉnh:

```text
/etc/os-release
/etc/lsb-release
Nội dung thay đổi chính:

Đổi tên hiển thị hệ điều hành thành DaiLoiOS.
Thêm website và địa chỉ hỗ trợ DaiLoiOS.
Giữ thông tin tương thích với Linux Mint, Ubuntu và Debian.
Giữ mã nền tảng zena và noble để hỗ trợ quản lý gói.

Mã nguồn và cấu hình:
configs/identity/
2.2. Giao diện XFCE

DaiLoiOS đã điều chỉnh các file:

xfce4-desktop.xml
xfce4-panel.xml

Nội dung thay đổi:

Hình nền Desktop mặc định.
Bố cục XFCE Panel.
Vị trí và kích thước thanh tác vụ.
Menu Start sử dụng Whisker Menu.
Biểu tượng nút Start DaiLoiOS.
Các launcher và biểu tượng trên panel.

Mã nguồn và cấu hình:

configs/xfce/
2.3. Giao diện đăng nhập

Gói:

dailoios-login-center

Chức năng:

Đưa khung đăng nhập và ô nhập mật khẩu vào giữa màn hình.
Điều chỉnh bố cục Slick Greeter.
Đồng bộ màn hình đăng nhập với nhận diện DaiLoiOS.

Mã nguồn và cấu trúc đóng gói:

packages/dailoios-login-center/

Tên “Login Center” trong trường hợp này chỉ phần bố cục màn hình
đăng nhập, không phải ứng dụng DaiLoi Center.

2.4. Tắt màn hình chào Linux Mint

Gói:

dailoios-disable-welcome

Chức năng:

Vô hiệu hóa Linux Mint Welcome.
Không tự mở màn hình chào khi người dùng đăng nhập.
Áp dụng thiết lập cho tài khoản người dùng mới.

Mã nguồn và cấu trúc đóng gói:

packages/dailoios-disable-welcome/
2.5. Logo và hình nền

Các tài nguyên nhận diện được DaiLoiOS sử dụng gồm:

Logo DaiLoiOS.
Biểu tượng nút Start.
Hình nền Desktop.
Ảnh nền đăng nhập.
Các kích thước biểu tượng hệ thống.

Vị trí mã nguồn:

branding/logos/
branding/wallpapers/

Các tài nguyên chỉ được đưa vào kho khi DaiLoiOS có quyền sở hữu
hoặc quyền phân phối hợp lệ.

2.6. Logo khởi động Plymouth

DaiLoiOS thay hình ảnh Linux Mint trong theme Plymouth bằng hình ảnh
nhận diện DaiLoiOS.

Vị trí hệ thống:

/usr/share/plymouth/themes/mint-logo/

Vị trí trong kho:

configs/boot/plymouth/themes/mint-logo/

Tên thư mục mint-logo hiện được giữ lại để tương thích với cấu hình
Plymouth đang sử dụng trong ISO.

2.7. Repository DaiLoiOS

Repository:

http://14.225.210.88:8081

Distribution:

zena

Components:

main
drivers
fonts
printer
tools
pro
beta

Cấu hình công khai:

configs/repository/dailoios.list
configs/repository/dailoios.sources

Khóa ký riêng, mật khẩu máy chủ, token và thông tin quản trị không
được công bố trong kho mã nguồn.

3. Ứng dụng riêng của DaiLoiOS

Các thành phần dưới đây được DaiLoiOS phát triển để tạo hệ sinh thái
riêng. Mã nguồn của chúng không nằm trong phạm vi kho mã nguồn mở này,
trừ khi có thông báo riêng.

Thành phần	Chức năng	Trạng thái mã nguồn
DaiLoi Account	Đăng nhập, đăng ký và liên kết thiết bị	Không công bố
DaiLoi App Store	Cài đặt và quản lý phần mềm	Không công bố
DaiLoi Center	Trung tâm quản lý hệ thống	Không công bố
DaiLoi Driver Center	Cài đặt và quản lý driver	Không công bố
DaiLoi System Update	Cập nhật thành phần DaiLoiOS	Không công bố
DaiLoi Device Info	Thu thập và hiển thị thông tin thiết bị	Không công bố
DaiLoi Bug Report	Gửi báo lỗi hệ thống	Không công bố

Các ứng dụng này có thể được phân phối theo điều khoản hoặc giấy phép
riêng của DaiLoiOS.

Việc giữ kín mã nguồn chỉ áp dụng đối với phần mềm do DaiLoiOS tự phát
triển độc lập và không làm thay đổi nghĩa vụ của các giấy phép mã nguồn
mở được sử dụng bên trong.

4. Thành phần phần mềm bổ sung

DaiLoiOS có thể tích hợp hoặc cung cấp qua App Store và repository các
phần mềm bên thứ ba phục vụ người dùng.

Ví dụ:

Trình duyệt web.
Bộ gõ tiếng Việt.
OpenBoardView.
Công cụ ghi màn hình.
Công cụ chỉnh sửa video.
Wine và Bottles.
Công cụ tạo USB cài đặt.
Phần mềm máy ảo.
Driver và công cụ máy in.
Font chữ và công cụ hỗ trợ kỹ thuật.

Mỗi phần mềm tiếp tục tuân theo giấy phép của tác giả hoặc dự án gốc.
Việc phần mềm xuất hiện trong DaiLoiOS không có nghĩa DaiLoiOS sở hữu
bản quyền của phần mềm đó.

Danh sách chính xác cần được lấy từ bản ISO tương ứng trước khi phát hành.

5. Thành phần bị tắt, ẩn hoặc thay thế

DaiLoiOS có thể thực hiện các thay đổi sau:

Thành phần gốc	Thay đổi trong DaiLoiOS
Linux Mint Welcome	Vô hiệu hóa tự khởi động
Nhận diện Linux Mint	Thay bằng nhận diện DaiLoiOS ở các vị trí đã tùy chỉnh
Logo khởi động Mint	Thay bằng logo DaiLoiOS
Hình nền mặc định	Thay bằng hình nền DaiLoiOS
Nút menu mặc định	Thay bằng biểu tượng DaiLoiOS
Bố cục màn hình đăng nhập	Đưa khung đăng nhập vào giữa
Cấu hình Desktop và Panel	Thay bằng bố cục DaiLoiOS
Software Manager của Mint	Không sử dụng làm App Store chính của DaiLoiOS

Nếu một gói bị gỡ hoàn toàn khỏi ISO, cần ghi rõ tên và phiên bản của
gói đó trong mục lịch sử phát hành.

6. Thành phần không đưa vào kho mã nguồn

Kho mã nguồn này không chứa:

File ISO hoàn chỉnh.
Kernel và initramfs đã biên dịch.
File grub.cfg được tạo tự động.
File EFI nhị phân.
Toàn bộ thư viện hệ thống.
Cache, log và dữ liệu phiên người dùng.
File .pyc hoặc thư mục __pycache__.
Khóa ký repository riêng.
Mật khẩu VPS hoặc cơ sở dữ liệu.
Token, API key và thông tin đăng nhập.
Phần mềm thương mại không có quyền phân phối.
Driver hoặc phần mềm bên thứ ba không được phép phân phối lại.
7. Nguồn giấy phép của gói đã cài

Thông tin giấy phép của từng gói Debian thường có tại:

/usr/share/doc/TEN-GOI/copyright

Ví dụ:

cat /usr/share/doc/xfce4-panel/copyright
cat /usr/share/doc/slick-greeter/copyright
cat /usr/share/doc/plymouth/copyright

Danh sách giấy phép tổng hợp của các thành phần bên thứ ba được ghi tại:

THIRD_PARTY_LICENSES.md
8. Tạo danh sách gói từ ISO

Trước mỗi lần phát hành, có thể tạo danh sách toàn bộ gói bằng lệnh:

dpkg-query -W -f='${binary:Package}\t${Version}\n' \
> dailoios-installed-packages.txt

Danh sách gói do DaiLoiOS phát triển:

dpkg-query -W -f='${binary:Package}\t${Version}\n' |
grep -Ei 'dailoi|dailoios' \
> dailoios-own-packages.txt

Danh sách repository đang được cấu hình:

grep -RhvE '^[[:space:]]*(#|$)' \
/etc/apt/sources.list /etc/apt/sources.list.d/ 2>/dev/null \
> dailoios-apt-sources.txt

Các file kết quả có thể đưa vào thư mục:

docs/manifests/

theo từng phiên bản phát hành.

9. Nguyên tắc cập nhật tài liệu

Khi phát hành phiên bản mới cần cập nhật:

Phiên bản DaiLoiOS.
Nền tảng Linux Mint và Ubuntu.
Danh sách gói DaiLoiOS.
Danh sách gói bổ sung.
Danh sách gói bị gỡ hoặc vô hiệu hóa.
Các file cấu hình đã sửa.
Giấy phép của thành phần mới.
Đường dẫn tải mã nguồn tương ứng.
Ngày tạo bản ISO.
10. Bản quyền và ghi nhận

Copyright © 2026 DaiLoiOS Project
Công Ty TNHH Công Nghệ Tin Học Đại Lợi

DaiLoiOS không phải là sản phẩm chính thức của Linux Mint, Ubuntu,
Debian, Canonical hoặc XFCE.2.2. Giao diện XFCE

DaiLoiOS đã điều chỉnh các file:

xfce4-desktop.xml
xfce4-panel.xml

Nội dung thay đổi:

Hình nền Desktop mặc định.
Bố cục XFCE Panel.
Vị trí và kích thước thanh tác vụ.
Menu Start sử dụng Whisker Menu.
Biểu tượng nút Start DaiLoiOS.
Các launcher và biểu tượng trên panel.

Mã nguồn và cấu hình:

configs/xfce/
2.3. Giao diện đăng nhập

Gói:

dailoios-login-center

Chức năng:

Đưa khung đăng nhập và ô nhập mật khẩu vào giữa màn hình.
Điều chỉnh bố cục Slick Greeter.
Đồng bộ màn hình đăng nhập với nhận diện DaiLoiOS.

Mã nguồn và cấu trúc đóng gói:

packages/dailoios-login-center/

Tên “Login Center” trong trường hợp này chỉ phần bố cục màn hình
đăng nhập, không phải ứng dụng DaiLoi Center.

2.4. Tắt màn hình chào Linux Mint

Gói:

dailoios-disable-welcome

Chức năng:

Vô hiệu hóa Linux Mint Welcome.
Không tự mở màn hình chào khi người dùng đăng nhập.
Áp dụng thiết lập cho tài khoản người dùng mới.

Mã nguồn và cấu trúc đóng gói:

packages/dailoios-disable-welcome/
2.5. Logo và hình nền

Các tài nguyên nhận diện được DaiLoiOS sử dụng gồm:

Logo DaiLoiOS.
Biểu tượng nút Start.
Hình nền Desktop.
Ảnh nền đăng nhập.
Các kích thước biểu tượng hệ thống.

Vị trí mã nguồn:

branding/logos/
branding/wallpapers/

Các tài nguyên chỉ được đưa vào kho khi DaiLoiOS có quyền sở hữu
hoặc quyền phân phối hợp lệ.

2.6. Logo khởi động Plymouth

DaiLoiOS thay hình ảnh Linux Mint trong theme Plymouth bằng hình ảnh
nhận diện DaiLoiOS.

Vị trí hệ thống:

/usr/share/plymouth/themes/mint-logo/

Vị trí trong kho:

configs/boot/plymouth/themes/mint-logo/

Tên thư mục mint-logo hiện được giữ lại để tương thích với cấu hình
Plymouth đang sử dụng trong ISO.

2.7. Repository DaiLoiOS

Repository:

http://14.225.210.88:8081

Distribution:

zena

Components:

main
drivers
fonts
printer
tools
pro
beta

Cấu hình công khai:

configs/repository/dailoios.list
configs/repository/dailoios.sources

Khóa ký riêng, mật khẩu máy chủ, token và thông tin quản trị không
được công bố trong kho mã nguồn.

3. Ứng dụng riêng của DaiLoiOS

Các thành phần dưới đây được DaiLoiOS phát triển để tạo hệ sinh thái
riêng. Mã nguồn của chúng không nằm trong phạm vi kho mã nguồn mở này,
trừ khi có thông báo riêng.

Thành phần	Chức năng	Trạng thái mã nguồn
DaiLoi Account	Đăng nhập, đăng ký và liên kết thiết bị	Không công bố
DaiLoi App Store	Cài đặt và quản lý phần mềm	Không công bố
DaiLoi Center	Trung tâm quản lý hệ thống	Không công bố
DaiLoi Driver Center	Cài đặt và quản lý driver	Không công bố
DaiLoi System Update	Cập nhật thành phần DaiLoiOS	Không công bố
DaiLoi Device Info	Thu thập và hiển thị thông tin thiết bị	Không công bố
DaiLoi Bug Report	Gửi báo lỗi hệ thống	Không công bố

Các ứng dụng này có thể được phân phối theo điều khoản hoặc giấy phép
riêng của DaiLoiOS.

Việc giữ kín mã nguồn chỉ áp dụng đối với phần mềm do DaiLoiOS tự phát
triển độc lập và không làm thay đổi nghĩa vụ của các giấy phép mã nguồn
mở được sử dụng bên trong.

4. Thành phần phần mềm bổ sung

DaiLoiOS có thể tích hợp hoặc cung cấp qua App Store và repository các
phần mềm bên thứ ba phục vụ người dùng.

Ví dụ:

Trình duyệt web.
Bộ gõ tiếng Việt.
OpenBoardView.
Công cụ ghi màn hình.
Công cụ chỉnh sửa video.
Wine và Bottles.
Công cụ tạo USB cài đặt.
Phần mềm máy ảo.
Driver và công cụ máy in.
Font chữ và công cụ hỗ trợ kỹ thuật.

Mỗi phần mềm tiếp tục tuân theo giấy phép của tác giả hoặc dự án gốc.
Việc phần mềm xuất hiện trong DaiLoiOS không có nghĩa DaiLoiOS sở hữu
bản quyền của phần mềm đó.

Danh sách chính xác cần được lấy từ bản ISO tương ứng trước khi phát hành.

5. Thành phần bị tắt, ẩn hoặc thay thế

DaiLoiOS có thể thực hiện các thay đổi sau:

Thành phần gốc	Thay đổi trong DaiLoiOS
Linux Mint Welcome	Vô hiệu hóa tự khởi động
Nhận diện Linux Mint	Thay bằng nhận diện DaiLoiOS ở các vị trí đã tùy chỉnh
Logo khởi động Mint	Thay bằng logo DaiLoiOS
Hình nền mặc định	Thay bằng hình nền DaiLoiOS
Nút menu mặc định	Thay bằng biểu tượng DaiLoiOS
Bố cục màn hình đăng nhập	Đưa khung đăng nhập vào giữa
Cấu hình Desktop và Panel	Thay bằng bố cục DaiLoiOS
Software Manager của Mint	Không sử dụng làm App Store chính của DaiLoiOS

Nếu một gói bị gỡ hoàn toàn khỏi ISO, cần ghi rõ tên và phiên bản của
gói đó trong mục lịch sử phát hành.

6. Thành phần không đưa vào kho mã nguồn

Kho mã nguồn này không chứa:

File ISO hoàn chỉnh.
Kernel và initramfs đã biên dịch.
File grub.cfg được tạo tự động.
File EFI nhị phân.
Toàn bộ thư viện hệ thống.
Cache, log và dữ liệu phiên người dùng.
File .pyc hoặc thư mục __pycache__.
Khóa ký repository riêng.
Mật khẩu VPS hoặc cơ sở dữ liệu.
Token, API key và thông tin đăng nhập.
Phần mềm thương mại không có quyền phân phối.
Driver hoặc phần mềm bên thứ ba không được phép phân phối lại.
7. Nguồn giấy phép của gói đã cài

Thông tin giấy phép của từng gói Debian thường có tại:

/usr/share/doc/TEN-GOI/copyright

Ví dụ:

cat /usr/share/doc/xfce4-panel/copyright
cat /usr/share/doc/slick-greeter/copyright
cat /usr/share/doc/plymouth/copyright

Danh sách giấy phép tổng hợp của các thành phần bên thứ ba được ghi tại:

THIRD_PARTY_LICENSES.md
8. Tạo danh sách gói từ ISO

Trước mỗi lần phát hành, có thể tạo danh sách toàn bộ gói bằng lệnh:

dpkg-query -W -f='${binary:Package}\t${Version}\n' \
> dailoios-installed-packages.txt

Danh sách gói do DaiLoiOS phát triển:

dpkg-query -W -f='${binary:Package}\t${Version}\n' |
grep -Ei 'dailoi|dailoios' \
> dailoios-own-packages.txt2.2. Giao diện XFCE

DaiLoiOS đã điều chỉnh các file:

xfce4-desktop.xml
xfce4-panel.xml

Nội dung thay đổi:

Hình nền Desktop mặc định.
Bố cục XFCE Panel.
Vị trí và kích thước thanh tác vụ.
Menu Start sử dụng Whisker Menu.
Biểu tượng nút Start DaiLoiOS.
Các launcher và biểu tượng trên panel.

Mã nguồn và cấu hình:

configs/xfce/
2.3. Giao diện đăng nhập

Gói:

dailoios-login-center

Chức năng:

Đưa khung đăng nhập và ô nhập mật khẩu vào giữa màn hình.
Điều chỉnh bố cục Slick Greeter.
Đồng bộ màn hình đăng nhập với nhận diện DaiLoiOS.

Mã nguồn và cấu trúc đóng gói:

packages/dailoios-login-center/

Tên “Login Center” trong trường hợp này chỉ phần bố cục màn hình
đăng nhập, không phải ứng dụng DaiLoi Center.

2.4. Tắt màn hình chào Linux Mint

Gói:

dailoios-disable-welcome

Chức năng:

Vô hiệu hóa Linux Mint Welcome.
Không tự mở màn hình chào khi người dùng đăng nhập.
Áp dụng thiết lập cho tài khoản người dùng mới.

Mã nguồn và cấu trúc đóng gói:

packages/dailoios-disable-welcome/
2.5. Logo và hình nền

Các tài nguyên nhận diện được DaiLoiOS sử dụng gồm:

Logo DaiLoiOS.
Biểu tượng nút Start.
Hình nền Desktop.
Ảnh nền đăng nhập.
Các kích thước biểu tượng hệ thống.

Vị trí mã nguồn:

branding/logos/
branding/wallpapers/

Các tài nguyên chỉ được đưa vào kho khi DaiLoiOS có quyền sở hữu
hoặc quyền phân phối hợp lệ.

2.6. Logo khởi động Plymouth

DaiLoiOS thay hình ảnh Linux Mint trong theme Plymouth bằng hình ảnh
nhận diện DaiLoiOS.

Vị trí hệ thống:

/usr/share/plymouth/themes/mint-logo/

Vị trí trong kho:

configs/boot/plymouth/themes/mint-logo/

Tên thư mục mint-logo hiện được giữ lại để tương thích với cấu hình
Plymouth đang sử dụng trong ISO.

2.7. Repository DaiLoiOS

Repository:

http://14.225.210.88:8081

Distribution:

zena

Components:

main
drivers
fonts
printer
tools
pro
beta

Cấu hình công khai:

configs/repository/dailoios.list
configs/repository/dailoios.sources

Khóa ký riêng, mật khẩu máy chủ, token và thông tin quản trị không
được công bố trong kho mã nguồn.

3. Ứng dụng riêng của DaiLoiOS

Các thành phần dưới đây được DaiLoiOS phát triển để tạo hệ sinh thái
riêng. Mã nguồn của chúng không nằm trong phạm vi kho mã nguồn mở này,
trừ khi có thông báo riêng.

Thành phần	Chức năng	Trạng thái mã nguồn
DaiLoi Account	Đăng nhập, đăng ký và liên kết thiết bị	Không công bố
DaiLoi App Store	Cài đặt và quản lý phần mềm	Không công bố
DaiLoi Center	Trung tâm quản lý hệ thống	Không công bố
DaiLoi Driver Center	Cài đặt và quản lý driver	Không công bố
DaiLoi System Update	Cập nhật thành phần DaiLoiOS	Không công bố
DaiLoi Device Info	Thu thập và hiển thị thông tin thiết bị	Không công bố
DaiLoi Bug Report	Gửi báo lỗi hệ thống	Không công bố

Các ứng dụng này có thể được phân phối theo điều khoản hoặc giấy phép
riêng của DaiLoiOS.

Việc giữ kín mã nguồn chỉ áp dụng đối với phần mềm do DaiLoiOS tự phát
triển độc lập và không làm thay đổi nghĩa vụ của các giấy phép mã nguồn
mở được sử dụng bên trong.

4. Thành phần phần mềm bổ sung

DaiLoiOS có thể tích hợp hoặc cung cấp qua App Store và repository các
phần mềm bên thứ ba phục vụ người dùng.

Ví dụ:

Trình duyệt web.
Bộ gõ tiếng Việt.
OpenBoardView.
Công cụ ghi màn hình.
Công cụ chỉnh sửa video.
Wine và Bottles.
Công cụ tạo USB cài đặt.
Phần mềm máy ảo.
Driver và công cụ máy in.
Font chữ và công cụ hỗ trợ kỹ thuật.

Mỗi phần mềm tiếp tục tuân theo giấy phép của tác giả hoặc dự án gốc.
Việc phần mềm xuất hiện trong DaiLoiOS không có nghĩa DaiLoiOS sở hữu
bản quyền của phần mềm đó.

Danh sách chính xác cần được lấy từ bản ISO tương ứng trước khi phát hành.

5. Thành phần bị tắt, ẩn hoặc thay thế

DaiLoiOS có thể thực hiện các thay đổi sau:

Thành phần gốc	Thay đổi trong DaiLoiOS
Linux Mint Welcome	Vô hiệu hóa tự khởi động
Nhận diện Linux Mint	Thay bằng nhận diện DaiLoiOS ở các vị trí đã tùy chỉnh
Logo khởi động Mint	Thay bằng logo DaiLoiOS
Hình nền mặc định	Thay bằng hình nền DaiLoiOS
Nút menu mặc định	Thay bằng biểu tượng DaiLoiOS
Bố cục màn hình đăng nhập	Đưa khung đăng nhập vào giữa
Cấu hình Desktop và Panel	Thay bằng bố cục DaiLoiOS
Software Manager của Mint	Không sử dụng làm App Store chính của DaiLoiOS

Nếu một gói bị gỡ hoàn toàn khỏi ISO, cần ghi rõ tên và phiên bản của
gói đó trong mục lịch sử phát hành.

6. Thành phần không đưa vào kho mã nguồn

Kho mã nguồn này không chứa:

File ISO hoàn chỉnh.
Kernel và initramfs đã biên dịch.
File grub.cfg được tạo tự động.
File EFI nhị phân.
Toàn bộ thư viện hệ thống.
Cache, log và dữ liệu phiên người dùng.
File .pyc hoặc thư mục __pycache__.
Khóa ký repository riêng.
Mật khẩu VPS hoặc cơ sở dữ liệu.
Token, API key và thông tin đăng nhập.
Phần mềm thương mại không có quyền phân phối.
Driver hoặc phần mềm bên thứ ba không được phép phân phối lại.
7. Nguồn giấy phép của gói đã cài

Thông tin giấy phép của từng gói Debian thường có tại:

/usr/share/doc/TEN-GOI/copyright

Ví dụ:

cat /usr/share/doc/xfce4-panel/copyright
cat /usr/share/doc/slick-greeter/copyright
cat /usr/share/doc/plymouth/copyright

Danh sách giấy phép tổng hợp của các thành phần bên thứ ba được ghi tại:

THIRD_PARTY_LICENSES.md
8. Tạo danh sách gói từ ISO

Trước mỗi lần phát hành, có thể tạo danh sách toàn bộ gói bằng lệnh:

dpkg-query -W -f='${binary:Package}\t${Version}\n' \
> dailoios-installed-packages.txt

Danh sách gói do DaiLoiOS phát triển:

dpkg-query -W -f='${binary:Package}\t${Version}\n' |
grep -Ei 'dailoi|dailoios' \
> dailoios-own-packages.txt

Danh sách repository đang được cấu hình:

grep -RhvE '^[[:space:]]*(#|$)' \
/etc/apt/sources.list /etc/apt/sources.list.d/ 2>/dev/null \
> dailoios-apt-sources.txt

Các file kết quả có thể đưa vào thư mục:

docs/manifests/

theo từng phiên bản phát hành.

9. Nguyên tắc cập nhật tài liệu

Khi phát hành phiên bản mới cần cập nhật:

Phiên bản DaiLoiOS.
Nền tảng Linux Mint và Ubuntu.
Danh sách gói DaiLoiOS.
Danh sách gói bổ sung.
Danh sách gói bị gỡ hoặc vô hiệu hóa.
Các file cấu hình đã sửa.
Giấy phép của thành phần mới.
Đường dẫn tải mã nguồn tương ứng.
Ngày tạo bản ISO.
10. Bản quyền và ghi nhận

Copyright © 2026 DaiLoiOS Project
Công Ty TNHH Công Nghệ Tin Học Đại Lợi

DaiLoiOS không phải là sản phẩm chính thức của Linux Mint, Ubuntu,
Debian, Canonical hoặc XFCE.

Tên và nhãn hiệu của các dự án, phần mềm và nhà phát triển bên thứ ba
thuộc về các chủ sở hữu tương ứng.


Phần **Commit message**, anh ghi:

```text
Add DaiLoiOS package and component manifest

Sau khi commit xong, cấu trúc sẽ có:

docs/
└── package-manifest.md

Tài liệu này là bản tổng quan. Trước khi phát hành ISO chính thức, mình sẽ bổ sung thêm file danh sách chính xác được xuất trực tiếp từ Cubic bằng dpkg-query

Danh sách repository đang được cấu hình:

grep -RhvE '^[[:space:]]*(#|$)' \
/etc/apt/sources.list /etc/apt/sources.list.d/ 2>/dev/null \
> dailoios-apt-sources.txt

Các file kết quả có thể đưa vào thư mục:

docs/manifests/

theo từng phiên bản phát hành.

9. Nguyên tắc cập nhật tài liệu

Khi phát hành phiên bản mới cần cập nhật:

Phiên bản DaiLoiOS.
Nền tảng Linux Mint và Ubuntu.
Danh sách gói DaiLoiOS.
Danh sách gói bổ sung.
Danh sách gói bị gỡ hoặc vô hiệu hóa.
Các file cấu hình đã sửa.
Giấy phép của thành phần mới.
Đường dẫn tải mã nguồn tương ứng.
Ngày tạo bản ISO.
10. Bản quyền và ghi nhận

Copyright © 2026 DaiLoiOS Project
Công Ty TNHH Công Nghệ Tin Học Đại Lợi

DaiLoiOS không phải là sản phẩm chính thức của Linux Mint, Ubuntu,
Debian, Canonical hoặc XFCE.

Tên và nhãn hiệu của các dự án, phần mềm và nhà phát triển bên thứ ba
thuộc về các chủ sở hữu tương ứng.


Phần **Commit message**, anh ghi:

```text
Add DaiLoiOS package and component manifest

Sau khi commit xong, cấu trúc sẽ có:

docs/
└── package-manifest.md

Tài liệu này là bản tổng quan. Trước khi phát hành ISO chính thức, mình sẽ bổ sung thêm file danh sách chính xác được xuất trực tiếp từ Cubic bằng dpkg-query

Tên và nhãn hiệu của các dự án, phần mềm và nhà phát triển bên thứ ba
thuộc về các chủ sở hữu tương ứng.


Phần **Commit message**, anh ghi:

```text
Add DaiLoiOS package and component manifest

Sau khi commit xong, cấu trúc sẽ có:

docs/
└── package-manifest.md

Tài liệu này là bản tổng quan. Trước khi phát hành ISO chính thức, mình sẽ bổ sung thêm file danh sách chính xác được xuất trực tiếp từ Cubic bằng dpkg-query
