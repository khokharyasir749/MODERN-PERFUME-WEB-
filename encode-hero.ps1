<#
.SYNOPSIS
    Re-encodes raw-hero.mp4 for lag-free scroll scrubbing and extracts poster.jpg.

.DESCRIPTION
    - Forces every frame to be an IDR keyframe (-g 1 -keyint_min 1) for zero seek latency.
    - Uses yuv420p pixel format for universal browser compatibility.
    - Adds -movflags +faststart to place the moov atom at the front of the file.
    - Strips audio (-an).
    - Extracts frame 1 as assets/poster.jpg.
#>

param(
    [string]$InputFile = "raw-hero.mp4",
    [string]$OutputVideo = "assets/hero-scrub.mp4",
    [string]$OutputPoster = "assets/poster.jpg"
)

# Ensure assets directory exists
if (-not (Test-Path "assets")) {
    New-Item -ItemType Directory -Path "assets" | Out-Null
}

if (-not (Test-Path $InputFile)) {
    Write-Error "Input file '$InputFile' not found. Please place your raw video in the root folder as '$InputFile'."
    exit 1
}

Write-Host ">>> [1/2] Re-encoding $InputFile for instant scrubbing (GOP=1)..." -ForegroundColor Cyan
ffmpeg -y -i $InputFile `
    -c:v libx264 `
    -pix_fmt yuv420p `
    -g 1 `
    -keyint_min 1 `
    -movflags +faststart `
    -an `
    -crf 20 `
    $OutputVideo

if ($LASTEXITCODE -ne 0) {
    Write-Error "ffmpeg failed during video encoding."
    exit $LASTEXITCODE
}

Write-Host ">>> [2/2] Extracting first frame poster to $OutputPoster..." -ForegroundColor Cyan
ffmpeg -y -i $InputFile `
    -vframes 1 `
    -q:v 2 `
    $OutputPoster

if ($LASTEXITCODE -eq 0) {
    Write-Host ">>> Optimization complete! Assets created successfully." -ForegroundColor Green
}
