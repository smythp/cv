#!/bin/bash
emacsclient --eval "(let ((file \"$(pwd)/cv.org\"))
    (with-current-buffer (find-file-noselect file)
    (progn
      (org-latex-export-to-pdf)
      (org-md-export-to-markdown))))"
cp cv.md README.md
git add cv.md cv.org cv.pdf README.md 
git commit -m "Automatic push"
git push
