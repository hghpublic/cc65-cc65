#!/bin/bash
dst=/usr/share/vice
dirs=(C128 C64 C64DTV CBM-II DRIVES PET PLUS4 PRINTER SCPU64 VIC20)
sudo cp -r "${dirs[@]}" "$dst"