.PHONY: dist

install: package.json
	npm install

dist: install
	rm -rf ./dist
	mkdir -p ./dist
	cp css/Apple* dist/
	cat ./css/normalize.css ./css/styles.css | ./node_modules/.bin/cleancss | gzip -9 -c > ./dist/wedding.css

