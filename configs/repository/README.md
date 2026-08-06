# DaiLoiOS APT Repository Configuration

Thư mục này chứa các file cấu hình APT Repository chính thức của
DaiLoiOS.

Repository được sử dụng để phân phối các gói phần mềm, driver,
font chữ, công cụ hệ thống và các bản cập nhật dành cho DaiLoiOS.

## Thông tin repository

- Địa chỉ: `http://14.225.210.88:8081`
- Distribution: `zena`
- Kiến trúc chính: `amd64`
- Định dạng gói: Debian `.deb`

## Components

Repository hiện có các thành phần:

- `main`: ứng dụng và gói chính của DaiLoiOS.
- `drivers`: driver và công cụ hỗ trợ thiết bị.
- `fonts`: font chữ.
- `printer`: driver và công cụ máy in.
- `tools`: các công cụ hỗ trợ hệ thống.
- `pro`: các thành phần dành cho phiên bản chuyên nghiệp.
- `beta`: các gói đang thử nghiệm.

## File cấu hình

- `dailoios.list`: cấu hình APT theo định dạng truyền thống.
- `dailoios.sources`: cấu hình APT theo định dạng Deb822 mới.

Chỉ nên cài một trong hai file để tránh khai báo repository trùng lặp.

## Vị trí cài đặt đề nghị

Định dạng mới:

```text
/etc/apt/sources.list.d/dailoios.sources
