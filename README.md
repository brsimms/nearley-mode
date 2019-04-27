# nearely-mode
A simple emacs major mode for editing [nearley.js](https://nearley.js.org) grammars.

This mode currently only supports basic syntax highlighting.

## Installation

Move the `nearley-mode.el` file to a folder on the emacs load-path.

Then add the following to your `init.el` to enable nearley-mode for .ne files:

```
;; Loads nearley-mode. Requires "nearley-mode.el" to be on the load-path.
(require 'nearley-mode)

;; Sets nearley-mode to be the default for .ne files
(add-to-list 'auto-mode-alist '("\\.ne\\'" . nearley-mode))
```

## References
