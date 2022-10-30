######################
#      Makefile      #
######################

srcdir=src
buildir=.

init: 
	git config core.hooksPath .githooks
pdf: 
	mkdir -p ${srcdir}/${buildir} ;\
	cd ${srcdir} ;\
	find \( -name '*fr.tex' -o -name '*eng.tex' \) -exec xelatex -halt-on-error -shell-escape -output-dir=${buildir} {} \;

install: 
	find ${srcdir}/${buildir} -name '*.pdf' -exec cp {} . \;

view:
	while inotifywait --event modify,move_self,close_write $(shell find -name '*.tex'); \
	do \
		mkdir -p ${srcdir}/${buildir} ;\
		cd ${srcdir} ;\
		find \( -name '*fr.tex' -o -name '*eng.tex' \) -exec xelatex -halt-on-error -shell-escape -output-dir=${buildir} {} \; ; \
		cd - ;\
	done

clean:
	rm -rf ${srcdir}/${buildir}/
