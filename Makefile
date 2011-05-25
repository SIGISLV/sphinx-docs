# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build# -W
PAPER         =
BUILDDIR      = build
TRANSLATIONS  = fr
LANGUAGES     = en $(TRANSLATIONS)

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees/$$lang $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) -c . -A language=$$lang -D language=$$lang -A target=$(TARGET) -A languages='$(LANGUAGES)'

.PHONY: help clean html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub latex latexpdf text man changes linkcheck doctest

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  dirhtml    to make HTML files named index.html in directories"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  pickle     to make pickle files"
	@echo "  json       to make JSON files"
	@echo "  htmlhelp   to make HTML files and a HTML help project"
	@echo "  qthelp     to make HTML files and a qthelp project"
	@echo "  devhelp    to make HTML files and a Devhelp project"
	@echo "  epub       to make an epub"
	@echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"

clean:
	-rm -rf build/*

init:
	@for lang in $(TRANSLATIONS) ;\
	do \
# 		We change the Internal Field Separator (IFS) because to handle filename with special char like space. \
		OLDIFS="$$IFS"; \
		IFS=$$'\n'; \
		for file in `cd en; find . -type f -a -regex '.*\.txt$$' -a -not -regex '.*\.svn.*' -printf "%p\n" ; cd ..;`; \
		do \
			if [ ! -f $$lang/$$file ]; then  \
				mkdir -p `dirname "$$lang/$$file"`; \
				(echo ".. meta::"; echo "  :ROBOTS: NOINDEX") | cat - "en/$$file" > "$$lang/$$file"; \
			fi \
		done; \
		IFS=$$OLDIFS; \
#		Copy all no .txt files \
		yes n | cp -ipR en/* $$lang &> /dev/null; \
	done
	@echo "Init finished. Other target can now be build.";\

html:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/html/$$lang $(BUILDDIR)/doctrees/$$lang; \
		echo "$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/html/$$lang";\
		$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/html/$$lang;\
	done
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html/<language>.";\

singlehtml:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/singlehtml/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/singlehtml/$$lang;\
	done
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/singlehtml/<language>.";\

pickle:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/pickle/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b pickle $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/pickle/$$lang;\
	done
	@echo
	@echo "Build finished; now you can process the pickle files."

web: pickle

json:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/json/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/json/$$lang;\
	done
	@echo
	@echo "Build finished; now you can process the JSON files."

htmlhelp:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/htmlhelp/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b htmlhelp $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/htmlhelp/$$lang;\
	done
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
	      ".hhp project file in $(BUILDDIR)/htmlhelp/<language>."

latex:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/latex/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/latex/$$lang;\
	done
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex/<language>."\
	@echo "Run \`make all-pdf' or \`make all-ps'"

pdf:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/pdf/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b pdf $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/pdf/$$lang;\
	done
	@echo
	@echo "Build finished; the PDF files are in $(BUILDDIR)/pdf/<language>."\
	@echo "Run \`make pdf' "

epub:
	@for lang in en;\
	do \
		mkdir -p $(BUILDDIR)/epub/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/epub/$$lang;\
	done
	@echo
	@echo "Build finished; the epub files are in $(BUILDDIR)/epub/<language>."\
	@echo "Run \`make epub' "

all-pdf:
	@for lang in $(LANGUAGES);\
	do \
		/usr/bin/make -C $(BUILDDIR)/latex/$$lang all-pdf ; \
		if [ -d $(BUILDDIR)/html/$$lang ]; then \
		mv -f $(BUILDDIR)/latex/$$lang/Mapnik.pdf $(BUILDDIR)/html/$$lang ; \
		fi \
	done

all-ps:
	@for lang in $(LANGUAGES);\
	do \
		/usr/bin/make -C $(BUILDDIR)/latex/$$lang all-ps ; \
		if [ -d $(BUILDDIR)/html/$$lang ]; then \
		mv -f $(BUILDDIR)/latex/$$lang/Mapnik.pdf $(BUILDDIR)/html/$$lang ; \
		fi \
	done

changes:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/changes/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/changes/$$lang;\
	done
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes/<language>."

linkcheck:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/linkcheck/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/linkcheck/$$lang;\
	done
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/<language>/output.txt."

labels:
	@for lang in $(LANGUAGES);\
	do \
		mkdir -p $(BUILDDIR)/labels/$$lang $(BUILDDIR)/doctrees/$$lang; \
		$(SPHINXBUILD) -b labels $(ALLSPHINXOPTS) $$lang $(BUILDDIR)/labels/$$lang;\
		cp $(BUILDDIR)/labels/$$lang/labels.txt $$lang/include/labels.inc;\
	done
	@echo
	@echo "Label generation complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/labels/<language>/labels.txt."

