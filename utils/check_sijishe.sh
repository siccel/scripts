#!/bin/bash

websites=("https://sjs47.cc" "https://sjs47.me" "https://sjsyy.vip" "https://sjskk.vip")
min_delay=99999999
fastest_site=""

for site in "${websites[@]}"; do
    # 记录开始时间
    start_time=$(date +%s.%N)
    curl_output=$(curl -IsL "$site")
    exit_code=$?
    # 计算
    end_time=$(date +%s.%N)
    delay=$(echo "($end_time - $start_time) * 1000" | bc)

    # 根据HTTP状态码判断访问是否成功
    if [ $exit_code -eq 0 ]; then
        status_code=$(echo "$curl_output" | head -n 1 | awk '{print $2}')
        if [[ $status_code =~ ^2 ]]; then
            echo "访问 $site 成功，状态码: $status_code, 延迟: $delay毫秒"
            if (( $(echo "$delay < $min_delay" | bc -l) )); then
                min_delay=$delay
                fastest_site=$site
            fi
        else
            echo "访问 $site 失败，状态码: $status_code"
        fi
    else
        echo "访问 $site 失败: $exit_code"
    fi
done

# 输出延迟最低的网站
if [ ! -z "$fastest_site" ]; then
    echo "延迟最低的网站是: $fastest_site, 延迟: $min_delay毫秒"
else
    echo "没有能成功访问的网站。"
fi