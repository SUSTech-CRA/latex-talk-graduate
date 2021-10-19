$pdf_mode = 5;

$xelatex = "xelatex -shell-escape -file-line-error -halt-on-error -synctex=1 %O %S";

$bibtex_use = 1.5;

# 设置 latexmk 编译的文件，和不需要编译的文件，可以时多个
@default_files = ("main.tex");
@default_excluded_files = ();

$clean_ext = "hd loe ptc run.xml synctex.gz thm xdv nav snm vrb";
