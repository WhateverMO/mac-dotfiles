
# 设置状态文件路径
STATUS_FILE="$HOME/status_file"

# 检查状态文件是否存在，如果不存在则创建并初始化
if [ ! -f "$STATUS_FILE" ]; then
    touch "$STATUS_FILE"
    echo "current_layout=bsp" >> "$STATUS_FILE"
fi

# 获取当前布局
current_layout=$(grep -E '^current_layout=' "$STATUS_FILE" | cut -d '=' -f2)

cat $STATUS_FILE
echo ""

# 根据当前布局轮换
if [[ $current_layout == "bsp" ]]; then
    yabai -m space --layout stack
    sed -i '' 's/^current_layout=bsp/current_layout=stack/' "$STATUS_FILE"
elif [[ $current_layout == "stack" ]]; then
    yabai -m space --layout float
    sed -i '' 's/^current_layout=stack/current_layout=float/' "$STATUS_FILE"
elif [[ $current_layout == "float" ]]; then
    yabai -m space --layout bsp
    sed -i '' 's/^current_layout=float/current_layout=bsp/' "$STATUS_FILE"
fi

cat $STATUS_FILE
