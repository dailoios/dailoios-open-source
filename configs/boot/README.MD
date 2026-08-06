# DaiLoiOS Boot and Plymouth Configuration

Thư mục này chứa các tài nguyên khởi động được DaiLoiOS tùy chỉnh
từ theme Plymouth sử dụng trong Linux Mint.

## Nội dung đã thay đổi

- Thay hình ảnh và logo Linux Mint bằng nhận diện DaiLoiOS.
- Giữ cấu trúc animation để Plymouth hiển thị trong quá trình khởi động.
- Tích hợp các tài nguyên vào bản ISO DaiLoiOS.

## Thành phần

- `plymouth/mint-logo/`: theme Plymouth đã được DaiLoiOS tùy chỉnh.

- Các file `throbber-XXXX.png`: khung hình sử dụng cho hiệu ứng khởi động.
- File `.plymouth` và `.script`: cấu hình và kịch bản hiển thị theme.

## Nguồn gốc

Theme này có nguồn gốc từ Plymouth và Linux Mint. Các thành phần gốc
tiếp tục tuân theo giấy phép của dự án tương ứng.

DaiLoiOS công bố các hình ảnh và phần cấu hình đã được thay đổi trong
phiên bản phân phối của mình.

## Vị trí cài đặt

```text
/usr/share/plymouth/themes/mint-logo/
