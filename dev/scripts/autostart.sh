#!/bin/bash

# Configuration
SOURCE="main.c"
OUTPUT="program.prg"
EMU="x64sc"

# 1. Compile using cc65 (cl65 wrapper)
echo "Compiling $SOURCE..."
cl65 -t c64 -O "$SOURCE" -o "$OUTPUT"

# 2. Check if compilation succeeded
if [ $? -eq 0 ]; then
    echo "Success! Launching $OUTPUT in VICE..."
    # Launches VICE, fast-forwards loading, and auto-starts the PRG
    $EMU -warp +autostart-handle-tde "$OUTPUT"
else
    echo "Error: Compilation failed."
    exit 1
fi