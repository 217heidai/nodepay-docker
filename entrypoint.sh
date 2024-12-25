#!/bin/sh

# 设置 TZ 及 NP_TOKEN
if [ $(cat /nodepay/user.txt) == "eyJhbGcixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" ]; then
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
	echo $TZ > /etc/timezone
    echo "$NP_TOKEN" > /nodepay/user.txt
fi

python3 main.py