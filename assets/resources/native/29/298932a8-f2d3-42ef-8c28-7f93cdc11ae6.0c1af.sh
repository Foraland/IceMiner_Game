find . -name "*.png.meta" -type f | while read -r file; do
    # 将文件中的"trimType:auto"替换为"trimType:none"
    sed -i '' 's/\"trimType\": \"auto\",/\"trimType\": \"none",/g' "$file"
done