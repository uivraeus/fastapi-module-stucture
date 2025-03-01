#!/usr/bin/env python3

# 👉 https://realpython.com/python-shebang/

import sys
from app.processing.computer import analyze

if __name__ == "__main__":
  if len(sys.argv) != 2:
    print("Usage: cli <input-string>")
    exit(0)

  print("Processing...")
  print(analyze(sys.argv[1]))
  print("Done")
