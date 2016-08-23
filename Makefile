all:
	rm -rf jside
	mkdir -p jside/
	cp -r ../BlocklyIDE/js jside/
	cp -r ../BlocklyIDE/css jside/
	rsync -aR ace jside/
	rsync -aR index.html jside
install: all
	cp -r jside ../Arduinojs/page/	
clean:
	rm -rf jside
	@echo "clean ready"
format: clean
	find . -name "*.js" -exec js-beautify -r {} \;	 
	find . -name "*.html" -exec html-beautify -r {} \;	 
	find . -name "*.css" -exec css-beautify -r {} \;	 
