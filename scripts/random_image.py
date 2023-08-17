#!/usr/bin/env python3

import glob
import random


def main():
    print(random.choice(glob.glob("/home/dylan/pictures/*")))


if __name__ == "__main__":
    main()
