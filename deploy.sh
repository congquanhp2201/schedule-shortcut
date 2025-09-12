#!/bin/bash

# 🚀 Script tự động deploy shortcut lên GitHub Pages
# Chạy: bash deploy.sh

echo "📚 Deploying iPhone Schedule Shortcut..."
echo "=================================="

# Kiểm tra git
if ! command -v git &> /dev/null; then
    echo "❌ Git chưa được cài đặt!"
    exit 1
fi

# Tạo thư mục tạm
TEMP_DIR="schedule-shortcut-deploy"
mkdir -p $TEMP_DIR
cd $TEMP_DIR

# Clone hoặc tạo repo mới
if [ -z "$1" ]; then
    echo "📝 Nhập URL GitHub repo (hoặc Enter để tạo mới):"
    read REPO_URL
else
    REPO_URL=$1
fi

if [ -n "$REPO_URL" ]; then
    echo "📥 Cloning existing repo..."
    git clone $REPO_URL .
else
    echo "🆕 Initializing new repo..."
    git init
    echo "# 📚 iPhone Schedule Shortcut

Shortcut thời khóa biểu cho lớp VL64A-QTKD & LT64A-QTKD

## 🚀 Cách sử dụng

1. Truy cập: [Website](https://[username].github.io/schedule-shortcut/)
2. Tải shortcut về iPhone
3. Làm theo hướng dẫn

## 📱 Tính năng

- ⏰ Thông báo tự động
- 📅 Widget màn hình chính  
- 🗣️ Tích hợp Siri
- 🔄 Chạy tự động hàng ngày

---
*Được tạo bởi AI Assistant*" > README.md
fi

# Copy files
echo "📂 Copying files..."
cp ../index.html .
cp ../ThoiKhoaBieu.shortcut .
cp ../HUONG_DAN_SHORTCUT.md .
cp ../schedule_data.json .
cp ../CACH_TAI_SHORTCUT.md .

# Tạo .gitignore
echo "# Dependencies
node_modules/
.DS_Store
*.log

# IDE
.vscode/
.idea/

# Temp files
*.tmp
*.temp" > .gitignore

# Commit và push
git add .
git commit -m "🚀 Deploy iPhone schedule shortcut $(date '+%Y-%m-%d %H:%M:%S')"

if [ -n "$REPO_URL" ]; then
    git push origin main
    echo "✅ Deployed to existing repo!"
else
    echo "📤 Tạo GitHub repo mới và push:"
    echo "1. Vào https://github.com/new"
    echo "2. Tạo repo tên 'schedule-shortcut'"
    echo "3. Chạy lệnh sau:"
    echo ""
    echo "git remote add origin https://github.com/[username]/schedule-shortcut.git"
    echo "git branch -M main"
    echo "git push -u origin main"
    echo ""
fi

# Hướng dẫn kích hoạt GitHub Pages
echo ""
echo "🌐 Kích hoạt GitHub Pages:"
echo "1. Vào Settings → Pages"
echo "2. Source: Deploy from a branch"
echo "3. Branch: main / (root)"
echo "4. Save"
echo ""
echo "📱 Website sẽ có tại:"
echo "https://[username].github.io/schedule-shortcut/"

# Cleanup
cd ..
rm -rf $TEMP_DIR

echo ""
echo "🎉 Hoàn thành! Shortcut đã sẵn sàng để chia sẻ!"
