;;; abyss-hicontrast-theme.el --- A dark theme with contrasting colours.

;; Author: Matt Russell <matt@mgrbyte.co.uk>
;; Version: 0.7
;; Filename: abyss-hicontrast-theme.el
;; Package-Requires: ((emacs "24"))
;; Keywords: theme, dark, contrasting colours
;; URL: https://github.com/mgrbyte/emacs-abyss-hicontrast-theme
;; License: GPL-3+

;;; Code:

(deftheme abyss-hicontrast
  "Higher contrast fork of abyss")

(let* ((abyss-hicontrast/orange "#ff8f00")
       (abyss-hicontrast/skyblue "#00a5ff")
       (abyss-hicontrast/bluegreen "#00ffba")
       (abyss-hicontrast/yellow "#ffec00")
       (abyss-hicontrast/vanilla-cream "#fffee6")
       (abyss-hicontrast/blue "#1919ff")
       (abyss-hicontrast/vermillion "#ff7100")
       (abyss-hicontrast/redpurple "#ff008d")
       (abyss-hicontrast/scarlet "#FF1A00")
       (abyss-hicontrast/bluegray "#80a2ff")
       (abyss-hicontrast/background "#030000")
       (abyss-hicontrast/background2 "#050000")
       (abyss-hicontrast/foreground "#c7eeff")
       (abyss-hicontrast/hl-line "#748074")
       (abyss-hicontrast/hilite "#dd5542")
       (abyss-hicontrast/white "#ffffff")
       (abyss-hicontrast/green "#00ff00"))
       (abyss/magenta "#ff00ff")
  (custom-theme-set-faces
   `abyss-hicontrast
   `(bold ((t (:bold t))))
   `(bold-italic ((t (:bold t))))
   `(border-glyph ((t (nil))))
   `(default
      ((t (:foreground ,abyss-hicontrast/foreground :background ,abyss-hicontrast/background))))
   `(fringe ((t (:background ,abyss-hicontrast/background2))))
   `(buffers-tab
     ((t (:foreground ,abyss-hicontrast/foreground :background ,abyss-hicontrast/background))))
   `(font-lock-builtin-face ((t (:foreground ,abyss-hicontrast/vanilla-cream))));
   `(font-lock-comment-delimiter-face ((t (:foreground ,abyss-hicontrast/vermillion :italic t))))
   `(font-lock-comment-face ((t (:foreground ,abyss-hicontrast/vermillion :italic t))))
   `(font-lock-constant-face ((t (:foreground ,abyss-hicontrast/redpurple))))
   `(font-lock-doc-face ((t (:foreground ,abyss-hicontrast/orange))))
   `(font-lock-doc-string-face ((t (:foreground ,abyss-hicontrast/vermillion))))
   `(font-lock-string-face ((t (:foreground ,abyss-hicontrast/magenta))))
   `(font-lock-function-name-face ((t (:foreground ,abyss-hicontrast/skyblue))))
   `(font-lock-keyword-face ((t (:foreground ,abyss-hicontrast/yellow))))
   `(font-lock-preprocessor-face ((t (:foreground ,abyss-hicontrast/blue))))
   `(font-lock-type-face ((t (:foreground ,abyss-hicontrast/skyblue))))
   `(font-lock-variable-name-face ((t (:foreground ,abyss-hicontrast/green ))))
   `(font-lock-negation-char-face ((t (:foreground ,abyss-hicontrast/redpurple))))
   `(font-lock-warning-face ((t (:foreground ,abyss-hicontrast/scarlet :bold t))))
   `(gui-element
        ((t (:foreground ,abyss-hicontrast/background2 :background ,abyss-hicontrast/foreground))))
   `(mode-line
     ((t (:foreground ,abyss-hicontrast/background2 :background ,abyss-hicontrast/skyblue :box nil))))
   `(mode-line-highlight
     ((t (:foreground ,abyss-hicontrast/vanilla-cream :box nil))))
   `(mode-line-inactive
     ((t (:foreground ,abyss-hicontrast/redpurple :background ,abyss-hicontrast/background2 :box nil))))
   `(text-cursor
        ((t (:foreground ,abyss-hicontrast/foreground :background ,abyss-hicontrast/background))))
   `(region
     ((t (:foreground ,abyss-hicontrast/background :background ,abyss-hicontrast/redpurple))))
   `(italic ((t (nil))))
   `(left-margin ((t (nil))))
   `(toolbar ((t (nil))))
   `(whitespace-tab ((t (:background ,abyss-hicontrast/background))))
   `(whitespace-line ((t (:foreground ,abyss-hicontrast/white :background ,abyss-hicontrast/hilite))))
   `(magit-item-highlight ((t (:inherit region)))))
  `(underline ((nil (:underline nil)))))

;;;###autoload
(when load-file-name
  (add-to-list
   'custom-theme-load-path
   (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun abyss-hicontrast-theme()
  "Load abyss-hicontrast-theme."
  (interactive)
  (load-theme 'abyss-hicontrast t))

(provide-theme 'abyss-hicontrast)
;;; abyss-hicontrast-theme.el ends here
