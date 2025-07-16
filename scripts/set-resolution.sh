#!/bin/bash

# Wait for the graphical session to initialize
sleep 5

# Define screen mode (edit if needed)
xrandr --newmode "1920x1080_60.00" \
  172.80 1920 2040 2248 2576 \
  1080 1083 1088 1120 -hsync +vsync

# Add and apply
xrandr --addmode Virtual1 "1920x1080_60.00"
xrandr --output Virtual1 --mode "1920x1080_60.00"
