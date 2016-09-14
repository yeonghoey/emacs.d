(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-milkbox" . "http://melpa.milkbox.net/packages/"))

(defun require-package (package)
  (when (not (package-installed-p package))
    (package-install package)))

(package-initialize)

(when (not (file-exists-p package-user-dir))
  (package-refresh-contents))

(require-package 'projectile)

(projectile-global-mode)
