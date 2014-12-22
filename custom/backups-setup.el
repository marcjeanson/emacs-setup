;; Backup files to the tmp folder
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
