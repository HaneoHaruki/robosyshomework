#!/usr/bin/python3
# SPDX-FileCopyrightTest: 2024 Haruki Haneo
# SPDX-License-Indentifier: BSD-3-Clause

def cm_to_sun(cm):
    return cm / 3.03

def cm_to_syaku(cm):
    return cm / 30.3

def main():
    try:
        cm = float(input("長さ(cm)を入力"))

        if cm < 0:
            print("正の数を入力")
            return

        sun = cm_to_sun(cm)
        syaku = cm_to_syaku(cm)

        if sun >= 10:
           print(f"{syaku:.2f}尺")
        else:
           print(f"{sun:.2f}寸")

    except ValueError:
        print("エラー")

if __name__ == "__main__":
    main()
