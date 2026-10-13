# Portfolio

A static portfolio site built with [Eleventy](https://www.11ty.dev/) and deployed to GitHub Pages with GitHub Actions.

## Local development

```sh
npm ci
npm run build
npx @11ty/eleventy --serve
```

The generated site is written to `_site/`.

## Deployment

Push to `main` to build and deploy the site. The Pages workflow is in `.github/workflows/pages.yml`.

The custom domain is `victorbajan.com`; configure it under **Repository Settings → Pages**. DNS should point the apex domain to GitHub Pages and `www` to `victorbajan.github.io`.
