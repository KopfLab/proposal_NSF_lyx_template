LYX = /Applications/LyX.app/Contents/MacOS/lyx
FILE = 0_proposal

pdf:
	$(LYX) $(FILE).lyx --export-to pdf2 output/$(FILE).pdf

clean:
	$(RM) *.lyx~
	$(RM) *.lyx#

# consider implementing a splitter for the proposal pdf (for easy fastlane submission)
# - maybe use pdfminer https://github.com/euske/pdfminer/ to identify table of contents
# - use e.g. the following code example to identify table of Contents
# - then use ghostscript to split pdf into the relevant pages
