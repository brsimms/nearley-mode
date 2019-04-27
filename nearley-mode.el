;;; A simple major mode for nearley.js grammar files
;;;     See https://nearley.js.org for details.

;;; Simple syntax highlighting
(setq nearleyjs-highlights
      '(("#.*$" . font-lock-comment-face)            ;; Comment lines
        ("->" . font-lock-type-face)                 ;; Production rule
        ("^[ ]*|" . font-lock-type-face)             ;; Alt production rule
        ("=>" . font-lock-function-name-face)        ;; JS function declaration
        ("function" . font-lock-function-name-face)  ;; JS function declaration
        ("return" . font-lock-constant-face)         ;; JS return keyword
        ("{%\\|%}" . font-lock-variable-name-face)   ;; JS snippet start / end
        ("\\b[A-Z]+\\b" . font-lock-keyword-face)    ;; Non-terminal (assumes all caps)
        ("(\\|)\\|\\[\\|\\]\\|{\\|}" . font-lock-negation-char-face))) ;; Parens

;;; nearleyjs-mode
(define-derived-mode nearleyjs-mode fundamental-mode "nearleyjs"
  "Major mode for editing nearleyjs (.ne) grammars."
  (setq font-lock-defaults '(nearleyjs-highlights)))

(provide 'nearleyjs-mode)
