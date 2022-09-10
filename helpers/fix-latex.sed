#!/bin/sed -rf

s/\\documentclass\[11pt\]\{article\}/\\documentclass{scrartcl}/
s/\\OriginalVerbatim\[#1\,codes/\\OriginalVerbatim[#1,fontsize=\\small,codes/
/\\begin\{center\}\\rule\{0\.5\\linewidth\}\{0\.5pt\}\\end\{center}/d

# Remove incompatible option
s/\\usepackage\[utf8x\]\{inputenc\}/\\usepackage[utf8]{inputenc}/

# Delete titling package, messes with KOMA title page
/\\usepackage\{titling\}/d

s/i\.e\.,?~/\\ie /g
s/i\.e\.,?/\\ie/g
s/e\.g\.,?~/\\eg /g
s/e\.g\.,?/\\eg/g
s/\.svg\b/.pdf/g
s/etc\.(,?)/\\etc\1/g
