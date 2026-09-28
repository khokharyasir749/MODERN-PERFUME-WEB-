# SILLAGE &mdash; Haute Parfumerie &bull; Paris

An ultra-luxury, scrollytelling web experience crafted for **SILLAGE**, an exclusive Parisian haute parfumerie atelier based in the 8ème Arrondissement of Paris with distillation quarters in Grasse.

---

## Overview

SILLAGE features a bespoke, high-performance scrollytelling architectural experience:
- **Interactive Scrollytelling Hero**: Video scrubbing pinned viewport with dynamic typography.
- **FlightOne 3D Card Dock Showcase**: Multi-flacon morphing showcase (*Sillage Noir*, *Impérial Blanc*, *Rouge Obsidienne*) driven by responsive LERP scrolling.
- **The Maison Philosophy / Manifesto**: Interactive typewriter letter-by-letter reveal.
- **Sequential Pinned Patron Reviews**: Multi-stage pinned testimonial appraisal salon.
- **Concierge FAQ & Answer Portal**: Interactive dual-column inquiry tabs with real-time radial concentration dials and transparent sourcing protocols.
- **Private Archive Collection Modal & Concierge Reservation Drawer**: Dark obsidian glass drawers with custom reservation request flows.

## Tech Stack & Architecture

- **Core**: Semantic HTML5 & Vanilla JavaScript
- **Styling**: Vanilla CSS (zero heavy CSS frameworks), custom design tokens, dark obsidian glass surfaces (`#090807`), razor-thin muted bronze hairline borders (`1px solid rgba(212, 175, 55, 0.15)`), and bespoke typography (Cormorant Garamond & Montserrat).
- **Performance**: Hardware-accelerated transforms (`translate3d`), pre-calculated section offsets on resize, optimized scroll damping without layout thrashing.

## Getting Started

To view the site locally:

1. Clone the repository:
   ```bash
   git clone https://github.com/khokharyasir749/MODERN-PERFUME-WEB-.git
   cd MODERN-PERFUME-WEB-
   ```
2. Serve the static files using any local web server:
   ```bash
   # Using Python
   python -m http.server 8080

   # Or using Node.js / npx
   npx serve .
   ```
3. Open your browser and navigate to `http://127.0.0.1:8080`.

## Assets & Media

- `assets/hero-scrub.mp4` &mdash; 60fps high-efficiency keyframe scrub video
- `assets/*.jpg` &mdash; Hand-poured flacons (*Sillage Noir*, *Impérial Blanc*, *Rouge Obsidienne*) and botanical macro photography

---

&copy; SILLAGE Paris Atelier. All rights reserved.
