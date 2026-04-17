#!/usr/bin/env bash
# Build Trevelyan's Type Tester.epub (and .kepub.epub) from the contents of ./src
set -euo pipefail

cd "$(dirname "$0")"

OUT="Trevelyan's Type Tester.epub"
KEPUB="Trevelyan's Type Tester.kepub.epub"
SRC="src"

if [ ! -d "$SRC" ]; then
  echo "error: $SRC/ not found" >&2
  exit 1
fi

rm -f "$OUT" "$KEPUB"

# mimetype must be the first entry and stored uncompressed per the EPUB spec.
( cd "$SRC" && zip -X0 "../$OUT" mimetype )
( cd "$SRC" && zip -Xr9 "../$OUT" META-INF OEBPS )
echo "built $OUT"

# Run epubcheck if available — non-fatal so the build still produces a file.
if command -v epubcheck >/dev/null 2>&1; then
  epubcheck "$OUT" || echo "warning: epubcheck reported issues"
fi

# Build the Kobo variant. kepubify wraps each word in a koboSpan so Kobo
# devices treat the file as a native kepub (better page turns, stats, etc.).
if command -v kepubify >/dev/null 2>&1; then
  kepubify -o "$KEPUB" "$OUT"
  echo "built $KEPUB"
else
  echo "kepubify not found — skipping $KEPUB. Install from https://pgaskin.net/kepubify/" >&2
fi
