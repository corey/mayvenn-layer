
(configuration-layer/declare-layers '(osx
                                      ibuffer
                                      smex
                                      auto-completion

                                      html
                                      (shell :variables
                                             shell-default-shell 'eshell
                                             shell-enable-smart-eshell t)
                                      (clojure :variables
                                               clojure-enable-fancify-symbols t)

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

;; TODO: add cider-reset fn and keybindings
