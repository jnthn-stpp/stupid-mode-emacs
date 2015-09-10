(make-variable-buffer-local
 (defvar stupid-root "~/Documents/robo/ftc_app"
   "IMPORTANT - EDIT THIS!!!!"))
(make-variable-buffer-local
 (defvar stupid-apk "/FtcRobotController/build/outputs/apk/FtcRobotController-debug.apk"
   "APK to install"))

(setenv "ANDROID_HOME" "/home/jonathan/android/sdk")

(defun stupid-build ()
  (interactive)
  (shell-command (concat stupid-root
			 (concat "/gradlew -daemon -p "
				 (concat stupid-root " assemble &"))))
  "Build ftc_app project")

(defun stupid-clean ()
  (interactive)
  (shell-command (concat stupid-root
			 (concat "/gradlew -p "
				 (concat stupid-root " clean &"))))
  "Clean ftc_app project")

(defun stupid-load()
  "Install ftc_app to phone via adb"
  (interactive)
  (async-shell-command (concat "adb install -r "
			 (concat stupid-root stupid-apk))))

(define-minor-mode stupid-mode
  "Mode for Robot coding Artificial Stupidity 2827"
  :lighter " 2827"
  :keymap (let ((map (make-sparse-keymap)))
	    (define-key map (kbd "C-c b") 'stupid-build)
	    (define-key map (kbd "C-c l") 'stupid-load)
	    (define-key map (kbd "C-c c") 'stupid-clean)
	    map))
