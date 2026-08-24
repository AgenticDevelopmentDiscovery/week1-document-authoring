# Build the presentation into output/ (two passes for section navigation)
slides:
    mkdir -p output
    pdflatex -interaction=nonstopmode -halt-on-error -output-directory output slides.tex
    pdflatex -interaction=nonstopmode -halt-on-error -output-directory output slides.tex
    rm -f output/*.aux output/*.log output/*.out output/*.nav output/*.snm output/*.toc output/*.vrb
