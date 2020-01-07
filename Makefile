.PHONY: dev
dev:
				elm-live src/Main.elm  --open --start-page=index.html
 
.PHONY: build
build:
				elm make src/ --optimize --output /public/app.js