# Portfolio

A static portfolio site built with [Eleventy](https://www.11ty.dev/) and deployed to GitHub Pages with GitHub Actions.

## Local development

```sh
npm ci
npm run build
npx @11ty/eleventy --serve
```

The generated site is written to `_site/`.

## Editing content

All content is Markdown; the layouts in `_includes/` turn it into the page.

- `index.md` — page title, intro text and section blurbs.
- `_data/links.json` — the footer links, shown on every page.
- `cv/cv.md` — the CV. Use `##` for sections, `###` for each role followed by a date line, and a bullet list for skills.
- `events/*.md` and `projects/*.md` — one file per event or project. Each becomes a card on the home page and its own page (`events/event-1.md` → `/events/event-1/`). Front matter sets `title`, `context`, `order`, `summary` (the short card text), `stack` and an optional external `url`; the body is the full write-up on its own page and can use any Markdown (headings, lists, links, images).

To add an event or project, copy an existing file in the right folder and edit it. The file name becomes the page's URL.

## Images

Strip metadata (GPS location, camera, dates, …) from photos **before** committing them — once pushed, the originals stay in git history.

Requires exiftool (`sudo apt install libimage-exiftool-perl`).

```sh
npm run clean-images              # everything under images/
npm run clean-images -- a.jpg b.png
```

A pre-commit hook in `.githooks/` (enabled by `npm install`/`npm ci`) refuses commits that add images still carrying metadata.

## Deployment

Push to `main` to build and deploy the site. The Pages workflow is in `.github/workflows/pages.yml`.

The custom domain is `victorbajan.com`; configure it under **Repository Settings → Pages**. DNS should point the apex domain to GitHub Pages and `www` to `victorbajan.github.io`.
