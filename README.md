# MazeReader

An interactive, choose-your-own-adventure graphic novel reader. Readers navigate branching narratives panel by panel, making choices that lead to multiple possible endings — from triumphant victories to tragic defeats. Features optional voice narration and a 3D panel tilt effect.

**Live site:** [mazereader.com](https://www.mazereader.com)

## Features

- **Branching narrative engine** — Each panel presents choices that route to a different panel. Tracks good and bad endings per session.
- **Comic panel viewer** — Displays GIF/JPG artwork with styled captions and a 3D tilt effect via VanillaTilt
- **Optional audio narration** — Per-book toggle; plays matching MP3 clips for each panel when enabled (Issue 1 has audio, Issue 2 does not)
- **Ending tracker** — Shows live counts of good and bad endings reached
- **Responsive layout** — Tailwind-powered design works on mobile and desktop
- **Google Analytics** — Tracks `book_finished` events with outcome (winner/bad) and final page ID

## Installation

```bash
pnpm install
```

**Requirements:** Node.js ≥ 18, pnpm

## Usage

| Command | Action |
|---|---|
| `pnpm dev` | Start dev server at `http://localhost:4321` |
| `pnpm build` | Type-check and build to `./dist/` |
| `pnpm preview` | Preview the production build locally |
| `pnpm astro` | Run Astro CLI commands |

## Adding a Book

1. **Add artwork** — Create `public/<root>/` with panel images (GIF/JPG). If audio is needed, add `public/<root>/audio/<page-id>.mp3` files.

2. **Create data file** — Add `src/data/<root>/info.js`:

    ```js
    const meta = {
      title: "Book Title",
      root: "bookname",
      cover: "a0.jpg",
      description: ["Tagline.", "Synopsis."],
      authors: [{ name: "Author", url: null }],
      artists: [{ name: "Artist", url: null }],
      copyright: [{ name: "Owner", url: null }],
      goodEndings: 1,
      badEndings: 3,
      hasAudio: false,
    };

    const data = [
      {
        id: "a0",
        file: "a0.jpg",
        captions: ["Panel caption."],
        choices: [{ text: "Choice", url: "a1" }]
      },
      // Terminal pages use url: "winner" (good) or url: "bad"
    ];

    export { meta, data };
    ```

3. **Register book** — Add entry to `src/data/books/books.js`.

## Project Structure

```
/
├── public/
│   ├── skat1/          # Issue 1 panels (GIFs) + audio/
│   └── skat2/          # Issue 2 panels (JPGs) + audio/
├── src/
│   ├── _app.ts         # Vue app entry (registers vue-gtag)
│   ├── components/
│   │   └── vue/
│   │       ├── Library.vue   # Home page book grid
│   │       └── Player.vue    # Interactive panel reader
│   ├── data/
│   │   ├── books/
│   │   │   └── books.js      # Book registry
│   │   ├── skat1/
│   │   │   └── info.js       # Issue 1 meta + page tree
│   │   └── skat2/
│   │       └── info.js       # Issue 2 meta + page tree
│   ├── helpers/
│   │   └── slugify.js        # URL slug generator
│   ├── pages/
│   │   ├── index.astro       # Library home
│   │   └── books/[book].astro # Book reader route
│   └── templates/
│       └── main.astro        # Shared layout
├── astro.config.mjs
└── tailwind.config.mjs
```

## Deployment

Automatic deployment to GitHub Pages on push to `main` via `.github/workflows/deploy.yml`. Uses the official `withastro/action` and `actions/deploy-pages` actions with `pnpm@latest`.
