#!/usr/bin/env bash
set -e

INPUT="raw-hero.mp4"
OUTPUT_VIDEO="assets/hero-scrub.mp4"
OUTPUT_POSTER="assets/poster.jpg"

mkdir -p assets

echo ">>> [1/2] Re-encoding for zero-latency scroll scrubbing (All-Intra GOP=1)..."
ffmpeg -y -i "$INPUT" \
  -c:v libx264 \
  -pix_fmt yuv420p \
  -g 1 \
  -keyint_min 1 \
  -movflags +faststart \
  -an \
  -crf 20 \
  "$OUTPUT_VIDEO"

echo ">>> [2/2] Extracting first frame poster..."
ffmpeg -y -i "$INPUT" \
  -vframes 1 \
  -q:v 2 \
  "$OUTPUT_POSTER"

echo ">>> Complete: $OUTPUT_VIDEO and $OUTPUT_POSTER ready."
