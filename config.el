
(configuration-layer/declare-layers '(better-defaults
                                      ibuffer

                                      (git :variables git-gutter-use-fringe t)
                                      github

                                      (clojure :variables
                                               clojure-enable-fancify-symbols t)
                                      emacs-lisp
                                      markdown
                                      org

                                      html

                                      auto-completion
                                      syntax-checking

                                      (osx :variables
                                           osx-use-option-as-meta t)))


(spacemacs|use-package-add-hook smartparens
  :post-config (sp-use-paredit-bindings))

;; (spacemacs|use-package-add-hook cider
;;   :post-init (setq cider-refresh-before-fn "user/stop"
;;                    cider-refresh-after-fn "user/go"))

(spacemacs|use-package-add-hook magit
  :post-init (setq magit-repo-directories "~/workspace"
                   magit-repository-directories-depth 2))

;; TODO: projectile-known-projects
;;       add all dirs in ~/workspace

(mac-auto-operator-composition-mode)

(setq dotspacemacs-whitespace-cleanup 'changed)

;; (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
;; (add-hook 'clojure-mode-hook #'aggressive-indent-mode)

(setq tab-always-indent 'complete)

(setq js-indent-level 2)

(blink-cursor-mode)
