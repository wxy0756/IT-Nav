#!/bin/bash

echo "🚀 开始部署 IT-Nav..."

mkdir -p /www/it-nav
cd /www/it-nav

echo "📥 从 GitHub 下载最新文件..."
curl -O https://raw.githubusercontent.com/wxy0756/IT-Nav/main/index.html
curl -O https://raw.githubusercontent.com/wxy0756/IT-Nav/main/README.md

echo "🛠 生成 Nginx 配置..."
cat >/etc/nginx/conf.d/it-nav.conf <<EOF
server {
    listen 80;
    server_name _;
    root /www/it-nav;
    index index.html;
}
EOF

echo "🔄 重载 Nginx..."
nginx -s reload

echo "🎉 部署完成！访问 http://你的服务器IP 即可。"
