#!/usr/bin/env bash
# Strip all metadata (GPS, camera, dates, XMP, ...) from images, keeping only Orientation
# (so phone photos display the right way up) and the colour profile.
# Usage: scripts/clean-images.sh [paths...]   (default: images/)
set -euo pipefail

if ! command -v exiftool >/dev/null; then
  echo "exiftool not found. Install it with: sudo apt install libimage-exiftool-perl" >&2
  exit 1
fi

[ $# -eq 0 ] && set -- images

exiftool -r -all= -tagsfromfile @ -Orientation -ICC_Profile -overwrite_original \
  -ext jpg -ext jpeg -ext png -ext webp -ext gif -ext tif -ext tiff -ext heic "$@"
