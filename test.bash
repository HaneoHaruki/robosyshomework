#!/bin/bash
# SPDX-FileCopyrightTest: 2024 Haruki Haneo
# SPDX-License-Indentifier: BSD-3-Clause


ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

input=$(echo 30 | ./cmtosun)
[ "${input}" = "9.90寸" ] || ng "$LINENO"

input=$(echo 15 | ./cmtosun)
[ "${input}" = "4.95寸" ] || ng "$LINENO"

input=$(echo 90 | ./cmtosun)
[ "${input}" = "2.97尺" ] || ng "$LINENO"

input=$(echo 100 | ./cmtosun)
[ "${input}" = "3.30尺" ] || ng "$LINENO"

input=$(echo 0 | ./cmtosun)
[ "${input}" = "0.00寸" ] || ng "$LINENO"

input=$(echo -10 | ./cmtosun)
[ "${input}" = "" ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

input=$(echo あ | ./cmtosun)
[ "${input}" = "" ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

input=$(echo | ./cmtosun)
[ "${input}" = "" ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res


