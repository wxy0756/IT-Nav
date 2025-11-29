# IT-Nav 导航页（最终版）

一个简洁、美观、功能强大的 IT 导航页，可直接部署在 VPS 上。  
无需后端，单文件即可运行。

---

# ✨ 功能特点
- 🌞/🌙 亮色 / 暗色主题切换
- ⏱ 实时时钟
- 🔎 搜索功能（即时过滤）
- 🌤 天气展示（自动定位）
- 🔍 聚合搜索（Google / Bing / DuckDuckGo）
- 📰 RSS 新闻订阅展示（Hacker News）
- 🧩 自定义导航（localStorage自动保存）
- 📱 完全响应式布局

---

# 🚀 一键部署（推荐）

在你的 Linux VPS 上运行：

bash <(curl -s https://raw.githubusercontent.com/wxy0756/IT-Nav/main/install-it-nav.sh)

部署完成后访问：

http://你的服务器IP

---

# 📦 手动部署
将 `index.html` 上传到服务器：

/www/it-nav/index.html

配置 Nginx（示例）：

server { listen 80; server_name _; root /www/it-nav; index index.html; }

然后重载：

nginx -s reload

---

# 📝 自定义导航数据存储

所有自定义内容都保存在浏览器：

localStorage.it_nav

---

# 📸 截图示例  
（你可以把 ChatGPT 生成的 UI 图放在这里）

---

# 🤝 欢迎使用与分享

本项目可自由 Fork、修改，欢迎 PR！
