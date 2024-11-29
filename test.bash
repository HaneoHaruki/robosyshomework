#!/bin/bash
# SPDX-FileCopyrightTest 2024 Haruki Haneo


ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

input=$(echo 30 | ./kadai1.py)
[ "${input}" = "長さ(cm)を入力9.90寸" ] || ng "$LINENO"

input=$(echo 15 | ./kadai1.py)
[ "${input}" = "長さ(cm)を入力4.95寸" ] || ng "$LINENO"

input=$(echo 90 | ./kadai1.py)
[ "${input}" = "長さ(cm)を入力2.97尺" ] || ng "$LINENO"

input=$(echo 100 | ./kadai1.py)
[ "${input}" = "長さ(cm)を入力3.30尺" ] || ng "$LINENO"

input=$(echo 0 | ./kadai1.py)
[ "${input}" = "長さ(cm)を入力0.00寸" ] || ng "$LINENO"

input=$(echo -10 | ./kadai1.py)
[ "${input}" = "長さ(cm)を入力正の数を入力" ] || ng "$LINENO"

input=$(echo あ | ./kadai1.py)
[ "${input}" = "長さ(cm)を入力エラー" ] || ng "$LINENO"

input=$(echo | ./kadai1.py)
[ "${input}" = "長さ(cm)を入力エラー" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res


