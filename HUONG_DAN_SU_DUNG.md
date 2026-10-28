# NGCFVN v2 — Hướng dẫn sử dụng (bản không cần key)

## Có gì mới

1. **Bỏ toàn bộ yêu cầu key/bản quyền**
   - `AProty.au3` và `GPVV.au3`: đã vô hiệu hoá cổng kiểm tra môi trường quản lý tool và hàm `VerifyToolAccess` trong `NG.dll` (trước đây không có key/server là tool tự thoát ngay khi bật).
   - Các module còn lại vốn đã có bản "chạy độc lập" dở dang — nay đã hoàn thiện nốt.

2. **Sửa lỗi khiến script không bật lên được**
   - Rất nhiều script (`devenv4`, `map`, `map1`–`map9`, `AProty3`…) **gọi các hàm không hề được định nghĩa** trong file (ví dụ `_9Z`, `_7P`, `_9X`…) → AutoIt báo lỗi `undefined function` và không chạy. Các hàm thiếu đã được phục hồi (khối `[NGCFVN v2 - PHUC HOI HAM THIEU]` ở cuối mỗi file): hàm giải mã XOR dùng đúng thuật toán gốc trong bộ code, hàm kiểm tra key trả về hợp lệ, click/di chuột dùng `MouseClick`/`MouseMove` chuẩn, tìm ảnh BMP cho `map7`/`map8` dùng GDIPlus (trả về `[0/1, x, y]` như bản gốc).
   - **Sửa `FileInstall`**: trước đây trỏ vào đường dẫn tuyệt đối trên máy tác giả (`C:\Users\Admin\Desktop\NG\...`) nên máy khác biên dịch/chạy là thiếu ảnh. Nay dùng tên file cục bộ (`screenshot1.bmp`…) — các file BMP đã có sẵn trong thư mục.

3. **Menu tổng hợp mới `NGCFVN_Menu.au3`**
   - Gộp toàn bộ 20 chức năng/module vào 1 menu: tick chọn nhiều module rồi bấm **BẬT đã chọn**, hoặc bấm **Bật/Tắt** ở từng dòng. Trạng thái "ĐANG CHẠY (PID …)" cập nhật mỗi giây, có nút **TẮT TẤT CẢ**.
   - **Bấm phím `INS` để ẩn/hiện menu ngay cả khi đang trong game.**

## Cách chạy

**Điều kiện:** Windows + cài AutoIt3 (để chạy `.au3` hoặc biên dịch sang `.exe` bằng Aut2Exe). Mọi thứ chạy bằng quyền Admin (script đã có `#RequireAdmin`).

**Cách 1 — dùng menu (khuyên dùng):**
1. Mở file `A_backup_original\NGCFVN_Menu.au3` bằng AutoIt (hoặc biên dịch thành `NGCFVN_Menu.exe` bằng Aut2Exe rồi chạy file exe).
2. Tick các chức năng cần dùng → **BẬT đã chọn**. Menu tự ưu tiên chạy bản `.exe` cùng tên nếu bạn đã biên dịch module đó, không thì chạy `.au3` qua AutoIt3.
3. Bấm `INS` để ẩn menu vào game, `INS` lần nữa để hiện lại.

**Cách 2 — chạy từng module:** mở thẳng file `.au3` của module (ví dụ `AProty.au3`) bằng AutoIt, hoặc biên dịch từng file sang `.exe` bằng Aut2Exe. Lưu ý khi biên dịch: đặt file BMP (`screenshot*.bmp`) cùng thư mục với file `.au3` để `FileInstall` nhúng được ảnh.

## Lưu ý quan trọng

- Các file `.exe` cũ trong thư mục (`GPVV.exe`, `SetupNG.exe`…) là **bản biên dịch cũ, vẫn còn kiểm tra key** — muốn dùng bản không key phải chạy/biên dịch lại từ `.au3` đã sửa (menu tự ưu tiên `.exe` cùng tên do bạn biên dịch đè lên).
- Một số hàm phụ trong các module map được phục hồi ở mức "placeholder" (trả về hợp lệ để script khởi động và chạy vòng lặp chính) vì bản backup gốc đã mất hẳn thư viện dùng chung — đã ghi chú rõ trong từng file. Sau khi biên dịch, nên test từng module trong game và báo lại module nào chạy chưa đúng để chỉnh tiếp.
- Môi trường phát triển bản sửa này không có Windows/AutoIt nên chưa biên dịch thử được; đã kiểm chứng tĩnh toàn bộ: không còn hàm nào được gọi mà không định nghĩa, cấu trúc `Func/EndFunc`, `While/WEnd`, `For/Next` cân bằng ở mọi file.
