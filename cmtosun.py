#!/usr/bin/python3
# SPDX-FileCopyrightTest: 2024 Haruki Haneo
# SPDX-License-Indentifier: BSD-3-Clause

import sys

def cm_to_sun(cm):
    return cm / 3.03

def cm_to_syaku(cm):
    return cm / 30.3

def main():
    try:
        if len(sys.argv) < 2:
           return

        cm = float(sys.argv[1])

        if cm < 0:
            return

        sun = cm_to_sun(cm)
        syaku = cm_to_syaku(cm)

        if sun >= 10:
           print(f"{syaku:.2f}尺")
        else:
           print(f"{sun:.2f}寸")

    except ValueError:
        return

if __name__ == "__main__":
    main()
