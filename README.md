# emacs-abyss-hicontrast #

This is a fork of [emacs-abyss-theme](https://github.com/mgrbyte/emacs-abyss-theme) that increases the contrast.
## Installation ##

### Doom Emacs
Add the following changes to your doom configs (SPC f P)
``` lisp
; packages.el
(package! abyss-hicontrast
  :recipe (:host github :repo"freyvalk/emacs-abyss-hicontrast"))
  
; config.el
(setq doom-theme 'abyss-hicontrast)
```
Then run M-x doom/reload (SPC h r r)
