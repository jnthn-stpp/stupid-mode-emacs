# stupid-mode-emacs
FIRST Tech Challenge - Turn emacs into an alternative to Android Studio for the ftc_app

# Usage

This mode adds three commands to emacs:

C-c b (compile all of the code and build the apks)

C-c l (load apk on to phone)

C-c c (clear all apks and class files)

# Name

This emacs minor-mode is named after my team 2827 - Artificial Stupidity, and the fact that it is a very simple plugin. It does not do much by itself, and it is extremely important that the computer is configured correctly.

# Requirements

Must have a Mac or Linux computer. (it might be possible to make it work on Windows, but I have not tested it).

# Setup

Install the JDK ("sudo apt-get install default-jre default-jdk" on Linux with apt-get)

Install the android SDK. On linux, this means downloading the standalone SDK tools and then editing your PATH variables to point to the tools and build-tools folders.

From the android SDK menu, install Android 4.4.2 (API 19) and the 21.1.2 Android SDK build tools

# ADB setup

Install adb (on linux "sudo apt-get install android-tools-adb")

Plug in the phone you will be using for a robot controller

Type "adb devices" into terminal

If a line of question marks appears with the words "no permissions," follow the instructions found here: http://ptspts.blogspot.co.il/2011/10/how-to-fix-adb-no-permissions-error-on.html

Unplug the phone and plug it back in

# Installation

The actual plugin is installed just like any other emacs minor mode. If you have never done this before, follow these steps.

1. Edit the stupid-mode.el file on line ___ to tell emacs where the directory holding the ftc_app project is.
2. Move or copy stupid-mode.el to the folder ~/.emacs.d/lisp (note, this will be hidden in a finder window, the easiest way to do this is from the command line.)
3. Add these lines to your .emacs file:

(add-to-list 'load-path "~/.emacs.d/lisp")
(load "stupid-mode")

4. Close and reopen emacs
