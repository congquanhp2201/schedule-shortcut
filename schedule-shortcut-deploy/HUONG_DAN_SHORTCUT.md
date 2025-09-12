# 📚 HƯỚNG DẪN TẠO SHORTCUT THỜI KHÓA BIỂU IPHONE

## 🎯 Tính năng chính
- ✅ Xem thời khóa biểu hôm nay
- ✅ Xem lịch học cả tuần  
- ✅ Thông báo trước giờ học 30 phút
- ✅ Widget hiển thị trên màn hình chính
- ✅ Tích hợp với Calendar và Siri
- ✅ Tự động chạy vào 6:30 sáng mỗi ngày

## 📋 Thời khóa biểu lớp VL64A-QTKD & LT64A-QTKD

| STT | Mã HP | Tên môn học | Thời gian | Phòng | Ngày |
|-----|-------|-------------|-----------|-------|------|
| 1 | PPH108 | Phát triển kỹ năng và định hướng NN cho nhà QT | 07:00-09:30 | A401 | Thứ 2 |
| 2 | KET201 | Nguyên lý kế toán | 13:00-15:30 | A405 | Thứ 3 |
| 3 | EBA111 | Tiếng anh học thuật và TM 1 | 09:30-12:00 | B402 | Thứ 5 |
| 4 | DTI100 | Tư duy thiết kế và đổi mới sáng tạo | 15:30-18:00 | A405 | Thứ 6 |
| 5 | MKT301 | Marketing căn bản | 07:00-09:30 | A305 | Thứ 7 |

## 📱 Cách tạo Shortcut

### Bước 1: Mở app Shortcuts
1. Tìm và mở app **"Shortcuts"** trên iPhone
2. Nhấn dấu **"+"** ở góc phải trên để tạo shortcut mới

### Bước 2: Thiết lập cơ bản
1. Nhấn vào biểu tượng shortcut ở trên cùng
2. Đặt tên: **"Thời Khóa Biểu"**
3. Chọn biểu tượng: **📚** (book.fill)
4. Chọn màu: **Xanh dương**

### Bước 3: Thêm Actions

#### Action 1: Text (Dữ liệu thời khóa biểu)
```json
{
  "courses": [
    {
      "code": "PPH108",
      "name": "Phát triển kỹ năng và định hướng NN cho nhà QT",
      "day": 2,
      "startTime": "07:00",
      "endTime": "09:30",
      "room": "A401",
      "department": "K.QTKD"
    },
    {
      "code": "KET201", 
      "name": "Nguyên lý kế toán",
      "day": 3,
      "startTime": "13:00",
      "endTime": "15:30", 
      "room": "A405",
      "department": ""
    },
    {
      "code": "EBA111",
      "name": "Tiếng anh học thuật và TM 1", 
      "day": 5,
      "startTime": "09:30",
      "endTime": "12:00",
      "room": "B402",
      "department": ""
    },
    {
      "code": "DTI100",
      "name": "Tư duy thiết kế và đổi mới sáng tạo",
      "day": 6, 
      "startTime": "15:30",
      "endTime": "18:00",
      "room": "A405",
      "department": ""
    },
    {
      "code": "MKT301",
      "name": "Marketing căn bản",
      "day": 7,
      "startTime": "07:00", 
      "endTime": "09:30",
      "room": "A305",
      "department": ""
    }
  ]
}
```

#### Action 2: Get Value for Key
- Key: **courses**
- Input: Text từ Action 1

#### Action 3: Date  
- Chọn **Current Date**

#### Action 4: Format Date
- Format: **Custom**
- Custom Format: **u** (để lấy số thứ trong tuần)

#### Action 5: Choose from Menu
Tạo menu với các tùy chọn:
- **📅 Hôm nay**
- **📆 Tuần này**  
- **📋 Tất cả môn**
- **🔔 Cài thông báo**

#### Action 6-10: Logic xử lý từng menu item
(Xem chi tiết trong file ThoiKhoaBieu.shortcut)

## 🔧 Cách sử dụng

### 1. Chạy shortcut thủ công
- Mở app Shortcuts
- Nhấn vào shortcut "Thời Khóa Biểu"
- Chọn chức năng muốn sử dụng

### 2. Sử dụng Siri
- **"Hey Siri, Thời Khóa Biểu"**
- **"Hey Siri, môn học hôm nay"**

### 3. Thêm vào Widget
1. Long press màn hình chính
2. Nhấn **"+"** ở góc trên
3. Tìm **"Shortcuts"**
4. Chọn widget size **Medium**
5. Chọn shortcut **"Thời Khóa Biểu"**

### 4. Thêm vào Control Center
1. **Settings** → **Control Center**
2. Nhấn **"+"** bên cạnh **Shortcuts**
3. Swipe xuống từ góc phải trên để mở Control Center
4. Nhấn biểu tượng Shortcuts

## 🔔 Thiết lập thông báo tự động

### Automation hàng ngày
1. Mở **Shortcuts** → **Automation**
2. Nhấn **"+"** → **Time of Day**
3. Thiết lập:
   - Time: **6:30 AM**
   - Repeat: **Daily**
   - Run: **Thời Khóa Biểu**
4. Tắt **Ask Before Running**

### Thông báo trước giờ học
1. Chạy shortcut
2. Chọn **"🔔 Cài thông báo"**
3. Cho phép truy cập **Calendar**
4. Shortcut sẽ tự động tạo events với thông báo 30 phút trước

## 🎨 Tùy chỉnh nâng cao

### 1. Thay đổi thời gian thông báo
Trong code JSON, thêm field:
```json
"notificationTime": 45
```
(Thông báo trước 45 phút)

### 2. Thêm thông tin giảng viên
```json
"instructor": "TS. Nguyễn Văn A"
```

### 3. Tích hợp thời tiết
Thêm action **Get Current Weather** trước khi hiển thị thông báo

### 4. Sync với Google Calendar
Sử dụng **IFTTT** hoặc **Zapier** để đồng bộ

## 📊 Widget Templates

### Small Widget
```
📚 HÔM NAY
PPH108 07:00
KET201 13:00
```

### Medium Widget  
```
📚 THỜI KHÓA BIỂU HÔM NAY
⏰ PPH108 - 07:00-09:30
🏫 Phòng A401

⏰ TIẾP THEO
KET201 - Thứ 3, 13:00
```

### Large Widget
```
📅 TUẦN NÀY
Thứ 2: PPH108 (07:00-09:30) A401
Thứ 3: KET201 (13:00-15:30) A405  
Thứ 5: EBA111 (09:30-12:00) B402
Thứ 6: DTI100 (15:30-18:00) A405
Thứ 7: MKT301 (07:00-09:30) A305

🔔 Thông báo: 30 phút trước
```

## 🔄 Cập nhật lịch học

Khi có thay đổi lịch học:
1. Mở shortcut **"Thời Khóa Biểu"**
2. Nhấn **"..."** → **Edit**
3. Sửa đổi dữ liệu JSON trong Action đầu tiên
4. Nhấn **Done**

## ❓ Troubleshooting

### Lỗi thường gặp:

**1. Shortcut không chạy tự động**
- Kiểm tra Automation settings
- Đảm bảo đã tắt "Ask Before Running"

**2. Widget không hiển thị dữ liệu**  
- Force close app Shortcuts
- Remove và add lại widget

**3. Thông báo không hoạt động**
- Kiểm tra Notification permissions
- Đảm bảo Calendar access được cấp phép

**4. Siri không nhận diện**
- Thử nói chậm hơn
- Kiểm tra ngôn ngữ Siri settings

## 📞 Hỗ trợ

- **Email**: support@example.com
- **Backup shortcut**: [Link iCloud]
- **Video hướng dẫn**: [Link YouTube]

## 📝 Changelog

**v1.0** (12/09/2025)
- Phiên bản đầu tiên
- Hỗ trợ 5 môn học cơ bản
- Widget và thông báo

---

💡 **Tip**: Tạo Focus mode "Học tập" và thiết lập tự động kích hoạt khi có lịch học!
