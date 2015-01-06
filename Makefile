.PHONY: dist

install: package.json
	npm install

dist: install
	rm -rf ./dist
	mkdir -p ./dist/css
	cp css/Apple* dist/css
	cat ./css/normalize.css ./css/styles.css | ./node_modules/.bin/cleancss | gzip -9 -c > ./dist/css/wedding.css
	gzip -9 index.html -c > ./dist/index.html
