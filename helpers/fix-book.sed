#!/bin/sed -rf

# Set document class to KOMAScript report
s/\\documentclass\[11pt\]\{article\}/\\documentclass[10pt]{scrreprt}/

# Promote headings one level up
s/\\section\b/\\chapter/
s/\\subsection\b/\\section/
s/\\subsubsection\b/\\subsection/

# Remove preface chapter from TOC
s/\\chapter\{Preface\}/\\chapter*{Preface}/

s/\\OriginalVerbatim\[#1\,codes/\\OriginalVerbatim[#1,fontsize=\\small,codes/
/\\begin\{center\}\\rule\{0\.5\\linewidth\}\{0\.5pt\}\\end\{center}/d
s/i\.e\.~/\\ie /g
s/i\.e\./\\ie/g
s/e\.g\.~/\\eg /g
s/e\.g\./\\eg/g
s/\.svg\b/.pdf/g
s/etc\.,/\\etc,/g
