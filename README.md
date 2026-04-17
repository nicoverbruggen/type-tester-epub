# Trevelyan's Type Tester

`Trevelyan's Type Tester` is a short typographic novella set at Trevelyan & Co., where Tanya designs typefaces, sets books, and reads the occasional manuscript that matters. What began as an EPUB test book gradually became a quiet narrative about readability, judgment, and the space between.

## Project Layout

- `src/` contains the EPUB source package.
- `src/OEBPS/` contains the XHTML chapters, metadata, navigation documents, stylesheet, and embedded cover image.
- `cover.svg` is the editable cover source.
- `src/OEBPS/cover.png` is the rasterized cover image used by the EPUB.
- `build.sh` builds both the EPUB and, when `kepubify` is installed, a Kobo-friendly KEPUB variant.

## Building

Run:

```bash
./build.sh
```

This produces:

- `Trevelyan's Type Tester.epub`
- `Trevelyan's Type Tester.kepub.epub`

If `epubcheck` is installed, the build script will run it automatically. If `kepubify` is installed, the Kobo variant will be generated automatically.

## Credits

This edition is assembled by Nicholas Farbridge, an alias of Nico Verbruggen, with assistance from generative tools.

## License

This edition is released into the public domain.
