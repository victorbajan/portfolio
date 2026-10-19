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

- `index.md` — page title, intro text, section blurbs and footer links.
- `cv/cv.md` — the CV. Use `##` for sections, `###` for each role followed by a date line, and a bullet list for skills.
- `professional/*.md` and `personal/*.md` — one file per project. Front matter sets `title`, `context`, `order`, `stack` and an optional `url`; the body is the card text.

To add a project, copy an existing file in the right folder and edit it.

## Deployment

Push to `main` to build and deploy the site. The Pages workflow is in `.github/workflows/pages.yml`.

The custom domain is `victorbajan.com`; configure it under **Repository Settings → Pages**. DNS should point the apex domain to GitHub Pages and `www` to `victorbajan.github.io`.
