
(configuration-layer/declare-layers '(osx
                                      better-defaults
                                      ibuffer
                                      spacemacs-ivy

                                      org
                                      osx

                                      html
                                      (shell :variables
                                             shell-default-position 'bottom
                                             shell-default-shell 'eshell
                                             shell-enable-smart-eshell t)
                                      (clojure :variables
                                               clojure-enable-fancify-symbols t)
                                      clojure
                                      emacs-lisp
                                      markdown
                                      org

                                      auto-completion
                                      syntax-checking
                                      version-control
                                      (git :variables
                                           git-gutter-use-fringe t)
                                      github))


(spacemacs|use-package-add-hook smartparens
  :post-config (sp-use-paredit-bindings))

(spacemacs|use-package-add-hook cider
  :post-init (setq cider-refresh-before-fn "user/stop"
                   cider-refresh-after-fn "user/go"))

(spacemacs|use-package-add-hook magit
  :post-init (setq magit-repo-directories "~/workspace"
                   magit-repository-directories-depth 2))

;; TODO: projectile-known-projects
;;       add all dirs in ~/workspace

;; TODO: possibly add cider-reset fn and keybindings

(mac-auto-operator-composition-mode)

(setq dotspacemacs-whitespace-cleanup 'changed)

