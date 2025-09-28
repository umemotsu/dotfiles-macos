;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cocoa Emacs用の見た目の設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ツールバーを表示しない
(tool-bar-mode -1)
;; スクロールバーを表示しない
;; (set-scroll-bar-mode nil)
;; Macのキーバインドを使う
(setq mac-option-modifier 'meta)
;; フォント設定
(if (eq window-system 'mac)
    (require 'carbon-font)
)

;; カラーテーマをSolarizedに
(require 'solarized-theme)
(load-theme 'solarized-dark t)
