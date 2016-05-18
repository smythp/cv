#!/bin/bash
emacs cv.org --eval "(progn (org-md-export-to-markdown) (kill-emacs))"
cp cv.md README.md
git add cv.md cv.org README.md
git commit -m "Automatic push"
git push
