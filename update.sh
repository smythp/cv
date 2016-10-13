#!/bin/bash
emacsclient --eval "(let ((file \"$(pwd)/cv.org\"))
    (with-current-buffer (find-file-noselect file)
      (org-md-export-to-markdown)))"
cp cv.md README.md
git add cv.md cv.org README.md
git commit -m "Automatic push"
git push
