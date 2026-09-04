# Trevelyan's Type Tester

<p align="center">
  <img src="src/OEBPS/cover.png" alt="Cover of Trevelyan's Type Tester" width="320" />
</p>

**Trevelyan's Type Tester** is a short typographic novella set at Trevelyan & Co., where Tanya designs typefaces, sets books, and reads the occasional manuscript that matters. What began as an EPUB test book gradually became a quiet narrative about readability, judgment, spacing, and the mechanics of reading well.

## What's in this repo?

### The pipeline

This repository holds the editable source for the book, plus the small build pipeline that produces two downloadable versions of the book:

- *Trevelyan's Type Tester.epub* (Regular epub)
- *Trevelyan's Type Tester.kepub.epub* (Kobo epub)

### Source package

The source EPUB package lives under `src/`, with XHTML chapters, metadata, navigation documents, styles, cover assets, and embedded fonts all stored in the structure expected by the final book.

## Build

Run:

```bash
./build.sh
```

The build script will:

1. Build the EPUB package.
2. Run `epubcheck` if it is installed.
3. Generate a KEPUB variant if `kepubify` is installed.

## Typography Notes

The book currently relies on the reading system’s serif font rather than an embedded typeface. Each chapter carries its own specimen grids, poem sample or dialogue sample, so there is no separate appendix.

Every chapter opens the same way: a centred title, a fleuron, a large first letter, and the first words in small capitals. Small capitals also appear in the prologue (the firm's name and the machines), in the kerning pairs of chapter one, beside the figures in chapter four, in the accents and ligatures of chapter five, against shrunken capitals in chapter seven, and on the sign in the epilogue. They are requested with `font-variant: small-caps`, and with `font-variant-caps: all-small-caps` for words typed in capitals, so a reading system shows whether it uses the font's own small caps, fakes them, or ignores the request.

The point of this `epub` (or `kepub`) is that you can use it to validate fonts included or sideloaded on your device.

## Credits

This edition is assembled by Nico Verbruggen (an alias is used in the actual epub for my own amusement).

## License

This edition is released into the public domain.
