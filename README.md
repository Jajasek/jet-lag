# Jet Lag — Custom Rulebook (Prague)

This repository contains a LaTeX rulebook for select games from **Jet Lag: The
Game**, adapted for play in **Prague**. Currently, there is only a house-ruled
version of **Hide & Seek**.
*Unofficial fan project; not affiliated with Jet Lag / Wendover Productions.*

---

## Prerequisites

You need a LaTeX distribution and `latexmk`.

### Linux (TeX Live)

* Install TeX Live (from your distro or from TUG).

* If you installed **TeX Live from TUG**, install `latexmk` via `tlmgr`:

  ```bash
  tlmgr install latexmk
  ```

* If you installed TeX Live **from your Linux distro’s packages**, install `latexmk` using the distro package manager (package name is typically `latexmk`).

### Windows (MiKTeX)

* Install MiKTeX.
* If `latexmk` isn’t already present, open **MiKTeX Console → Packages**, search for **latexmk**, and install it.

---

## Clone & build

```bash
git clone https://github.com/Jajasek/jet-lag.git
cd jet-lag

# Build the PDF (default target builds jet-lag.pdf)
make
# -> outputs jet-lag.pdf
```

> The Makefile’s pattern rule runs:
>
> ```
> latexmk $*.tex -interaction=nonstopmode -halt-on-error -synctex=1
> ```
>
> so cross-refs are handled automatically and you get a synced PDF for viewers that support SyncTeX.

---

## Make targets

| Target               | What it does                                                                                         |
| -------------------- | ---------------------------------------------------------------------------------------------------- |
| `make all` (default) | Builds `jet-lag.pdf` via `latexmk`.                                                                  |
| `make sanitize`      | Strips trailing whitespace in all `*.tex` files to keep diffs tidy.                                  |
| `make clean`         | Removes the `tmp/` directory, any `*.synctex.gz`, **and all `*.pdf`** in the project. Use with care. |

---

## Building without `make`

You can call `latexmk` directly:

```bash
# build once
latexmk -pdf jet-lag.tex

# watch & rebuild on changes
latexmk -pdf -pvc jet-lag.tex

# remove auxiliary files
latexmk -c
```

---

## License

This repository is licensed under **GPL-3.0** (see `LICENSE`).

