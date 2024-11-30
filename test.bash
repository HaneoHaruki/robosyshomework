#!/bin/bash
# SPDX-FileCopyrightTest: 2024 Haruki Haneo
# SPDX-License-Indentifier: BSD-3-Clause


ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

input=$(echo 30 | python3 cmtosun.py 30)
[ "${input}" = "9.90寸" ] || ng "$LINENO"

input=$(echo 15 | python3 cmtosun.py 15)
[ "${input}" = "4.95寸" ] || ng "$LINENO"

input=$(echo 90 | python3 cmtosun.py 90)
[ "${input}" = "2.97尺" ] || ng "$LINENO"

input=$(echo 100 | python3 cmtosun.py 100)
[ "${input}" = "3.30尺" ] || ng "$LINENO"

input=$(echo 0 | python3 cmtosun.py 0)
[ "${input}" = "0.00寸" ] || ng "$LINENO"

input=$(echo -10 | python3 cmtosun.py -10)
[ "${input}" = "" ] || ng "$LINENO"

input=$(echo あ | python3 cmtosun.py あ)
[ "${input}" = "" ] || ng "$LINENO"

input=$(echo | python3 cmtosun.py )
[ "${input}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res


