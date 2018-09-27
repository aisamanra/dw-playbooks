CORE_PLAYBOOKS := bard.pdf cleric.pdf druid.pdf fighter.pdf paladin.pdf ranger.pdf thief.pdf wizard.pdf

core-playbooks.pdf: $(CORE_PLAYBOOKS)
	@echo "\033[0;95m[PDFUNITE]\033[0m $@"
	@pdfunite $^ $@

# The goal here is to mostly elide the nasty LaTeX output unless
# there's actually an error, because otherwise it's kind of huge and
# tedious. This also wites all the temp files to a temp directory and
# removes it at the end.
%.pdf: %.tex assets/prelude.tex
	$(eval TMPDIR := $(shell mktemp -d))
	@echo "\033[0;94m[XELATEX]\033[0m $@"
	@xelatex -interaction=nonstopmode -output-directory=$(TMPDIR) $< >$(TMPDIR)/log.txt 2>&1 || ( cat $(TMPDIR)/log.txt >&2; exit 1 )
	@mv $(TMPDIR)/$@ $@
	@rm -rf $(TMPDIR)

clean:
	rm -f *.pdf
