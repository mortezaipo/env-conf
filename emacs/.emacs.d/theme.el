;; ---------------------------------------------- dakron theme
(custom-theme-set-faces
 'dakrone
 ;;'(default ((t (:background nil))))
 '(mode-line ((t (:foreground nil :background nil))))
 '(mode-line-inactive ((t (:foreground nil :background nil)))))

;; ---------------------------------------------- monokai
;; (custom-set-faces
;;  '(default ((t (:background nil)))))

;; (setq monokai-highlight-line "#262626"
;;       monokai-line-number    "#262626")

;; ---------------------------------------------- tabbar
;; tab theme: https://gist.github.com/3demax/1264635
;; (set-face-attribute
;;  'tabbar-default nil
;;  :background "nil"
;;  :foreground "gray20"
;;  :box '(:line-width 1 :color "gray20" :style nil))
;; (set-face-attribute
;;  'tabbar-unselected nil
;;  :background "nil"
;;  :foreground "white"
;;  :box '(:line-width 5 :color "gray30" :style nil))
;; (set-face-attribute
;;  'tabbar-selected nil
;;  :background "gray75"
;;  :foreground "black"
;;  :box '(:line-width 5 :color "gray75" :style nil))
;; (set-face-attribute
;;  'tabbar-highlight nil
;;  :background "white"
;;  :foreground "black"
;;  :underline nil
;;  :box '(:line-width 5 :color "white" :style nil))
;; ;; (set-face-attribute
;; ;;  'tabbar-button nil
;; ;;  :box '(:line-width 1 :color "gray20" :style nil))
;; (set-face-attribute
;;  'tabbar-separator nil
;;  :background "gray20"
;;  :height 0.6)

;; ---------------------------------------------- line
(set-face-attribute 'hl-line nil :background "#262626")
(set-face-foreground 'highlight nil)
;; https://stackoverflow.com/a/18685171/2338672
(set-face-attribute 'region nil :background "#333" :foreground "#FFF")

;; ---------------------------------------------- mode-line
;; https://emacs.stackexchange.com/a/33091/19615
;; https://www.saltycrane.com/blog/2007/10/emacs-mode-line-color-custimization/
(set-face-background 'mode-line nil)
