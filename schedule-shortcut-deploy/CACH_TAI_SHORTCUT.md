# 📱 CÁCH TẢI SHORTCUT VỀ IPHONE

## 🎯 Có 4 cách chính để tải shortcut về iPhone:

### 1. 🔗 **Sử dụng iCloud Link (Khuyến nghị)**

#### Bước 1: Tạo shortcut trên iPhone
1. Mở app **Shortcuts** trên iPhone
2. Nhấn **"+"** để tạo shortcut mới
3. Copy toàn bộ code từ file `ThoiKhoaBieu.shortcut`
4. Dán vào shortcut editor

#### Bước 2: Chia sẻ shortcut
1. Nhấn biểu tượng **chia sẻ** (Share) 
2. Chọn **"Copy iCloud Link"**
3. Link sẽ có dạng: `https://www.icloud.com/shortcuts/xxxxx`

#### Bước 3: Chia sẻ với thiết bị khác
- Gửi link qua **iMessage, Email, AirDrop**
- Nhấn vào link trên iPhone khác → **"Get Shortcut"**

---

### 2. 📧 **Gửi qua Email/iMessage**

#### Tạo email với file đính kèm:
```
Tiêu đề: Shortcut Thời Khóa Biểu VL64A-QTKD
Nội dung: 
Chào bạn,

Đây là shortcut thời khóa biểu cho lớp VL64A-QTKD & LT64A-QTKD.

Cách cài đặt:
1. Mở file HUONG_DAN_SHORTCUT.md
2. Làm theo hướng dẫn từng bước
3. Copy code từ file ThoiKhoaBieu.shortcut

Files đính kèm:
- HUONG_DAN_SHORTCUT.md (Hướng dẫn chi tiết)
- ThoiKhoaBieu.shortcut (Code shortcut)
- schedule_data.json (Dữ liệu thời khóa biểu)

Chúc bạn học tốt! 📚
```

---

### 3. ☁️ **Đẩy lên GitHub/Google Drive**

#### GitHub (Public):
```bash
# Tạo repository mới trên GitHub
git init
git add .
git commit -m "Add iPhone schedule shortcut"
git remote add origin https://github.com/[username]/schedule-shortcut.git
git push -u origin main
```

**Link tải:** `https://github.com/[username]/schedule-shortcut`

#### Google Drive:
1. Upload tất cả files vào Google Drive
2. Chia sẻ folder với quyền **"Anyone with link can view"**
3. Copy link chia sẻ

---

### 4. 📱 **Tạo QR Code**

Tôi sẽ tạo QR code để bạn quét trực tiếp:

```
QR Code Content: 
https://raw.githubusercontent.com/[repo]/main/ThoiKhoaBieu.shortcut

Hoặc link Google Drive với files
```

---

## 🚀 **HƯỚNG DẪN CHI TIẾT TỪNG BƯỚC**

### **Phương án 1: Upload lên GitHub Pages (Miễn phí)**

1. **Tạo GitHub repository:**
   - Vào [github.com](https://github.com)
   - Click **"New repository"**
   - Tên: `schedule-shortcut`
   - Chọn **Public**
   - Tích **"Add README file"**

2. **Upload files:**
   - Drag & drop tất cả files từ folder `bss-service/public/`
   - Commit changes

3. **Kích hoạt GitHub Pages:**
   - Settings → Pages
   - Source: **Deploy from a branch**
   - Branch: **main**
   - Folder: **/ (root)**

4. **Link tải:**
   ```
   https://[username].github.io/schedule-shortcut/
   ```

### **Phương án 2: Sử dụng Netlify (Miễn phí)**

1. **Đăng ký [netlify.com](https://netlify.com)**
2. **Drag & drop folder chứa files**
3. **Netlify sẽ tự tạo link:**
   ```
   https://[random-name].netlify.app/
   ```

### **Phương án 3: Google Drive**

1. **Upload files lên Google Drive**
2. **Chia sẻ với link công khai**
3. **Link tải:**
   ```
   https://drive.google.com/drive/folders/[folder-id]
   ```

---

## 📲 **CÁCH CÀI ĐẶT TRÊN IPHONE**

### **Từ link web:**
1. Mở **Safari** trên iPhone
2. Vào link bạn đã tạo
3. Tải file `HUONG_DAN_SHORTCUT.md`
4. Làm theo hướng dẫn

### **Từ QR Code:**
1. Mở **Camera** app
2. Quét QR code
3. Nhấn notification → mở link
4. Tải files và làm theo hướng dẫn

### **Từ AirDrop:**
1. Gửi files từ Mac/iPhone khác
2. Nhận trên iPhone đích
3. Mở file hướng dẫn

---

## 🔧 **TỰ ĐỘNG HÓA VIỆC CHIA SẺ**

### Tạo script tự động upload:

```bash
#!/bin/bash
# auto-deploy.sh

echo "🚀 Deploying shortcut files..."

# Commit to git
git add .
git commit -m "Update schedule shortcut $(date)"
git push origin main

# Upload to Google Drive (nếu có gdrive CLI)
gdrive upload HUONG_DAN_SHORTCUT.md
gdrive upload ThoiKhoaBieu.shortcut

echo "✅ Deployment complete!"
echo "📱 Share this link: https://[your-username].github.io/schedule-shortcut/"
```

---

## 📋 **CHECKLIST TRƯỚC KHI CHIA SẺ**

- [ ] ✅ Test shortcut trên iPhone thật
- [ ] ✅ Kiểm tra tất cả links hoạt động
- [ ] ✅ Đảm bảo files không bị lỗi encoding
- [ ] ✅ Thêm screenshots minh họa
- [ ] ✅ Tạo video demo (tùy chọn)

---

## 🎬 **DEMO & SCREENSHOTS**

### Tạo screenshots:
1. Chạy shortcut trên iPhone
2. Chụp màn hình từng bước
3. Upload vào folder `screenshots/`

### Tạo video demo:
1. Screen record quá trình sử dụng
2. Upload lên YouTube (unlisted)
3. Thêm link vào README

---

## 🔒 **BẢO MẬT**

### Files công khai:
- ✅ Hướng dẫn sử dụng
- ✅ Code shortcut
- ✅ Dữ liệu thời khóa biểu

### Không chia sẻ:
- ❌ Thông tin cá nhân
- ❌ API keys
- ❌ Passwords

---

## 💡 **GỢI Ý NÂNG CAO**

1. **Tạo landing page đẹp:**
   ```html
   <!DOCTYPE html>
   <html>
   <head>
       <title>📚 Shortcut Thời Khóa Biểu</title>
   </head>
   <body>
       <h1>Tải Shortcut Thời Khóa Biểu</h1>
       <a href="ThoiKhoaBieu.shortcut">📱 Tải cho iPhone</a>
       <a href="HUONG_DAN_SHORTCUT.md">📖 Hướng dẫn</a>
   </body>
   </html>
   ```

2. **Tạo API endpoint:**
   - Trả về dữ liệu JSON động
   - Cập nhật thời khóa biểu realtime

3. **Tích hợp với school portal:**
   - Sync tự động với hệ thống trường
   - Push notifications qua server

---

Bạn muốn tôi giúp setup phương án nào? Tôi có thể hướng dẫn chi tiết từng bước! 🚀
