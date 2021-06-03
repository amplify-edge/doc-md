

print:
	converts markdown to pdf.

dep:
	# https://github.com/tcd/md2pdf
	brew tap tcd/taps
	brew install tcd/taps/md2pdf

clean:
	rm *.pdf

test-run:
	md2pdf version

	# local test
	md2pdf markdown-cheatsheet.md --output markdown-cheatsheet_local.pdf

	# remote test
	# TOCS in mac standard PDF reader not working. See Issue with screen shot at: https://github.com/tcd/md2pdf/issues/2
	md2pdf remote https://raw.githubusercontent.com/tcd/md2pdf/master/example/markdown-cheatsheet.md markdown-cheatsheet_remote.pdf

test-open:
	#open markdown-cheatsheet.pdf

	open file:///Users/apple/workspace/go/src/github.com/gedw99/notes/_spec/markdown-cheatsheet.pdf

intro-run:

	# local test
	md2pdf introduction.md --output introduction_local.pdf

	md2pdf remote https://raw.githubusercontent.com/amplify-edge/doc-md/master/introduction.md introduction_remote.pdf
