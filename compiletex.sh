# This is a template for helping you in the compilation
# Just run: sh compiletex.sh 
# in the folder of your main TeX file
# after the commands pdflatex and bibtex, put here the name of your main TeX file

pdflatex thesis_text
bibtex thesis_text
pdflatex thesis_text
pdflatex thesis_text

# this section is needed to delete all useless files created during the compilation

arg=${1:-.}
exts="aux bbl blg brf idx ilg ind lof log lol lot out toc synctex.gz glo"

if [ -d $arg ]; then
    for ext in $exts; do
         rm -f $arg/*.$ext
    done
else
    for ext in $exts; do
         rm -f $arg.$ext
    done
fi