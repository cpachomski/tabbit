.PHONY: dev
dev:
				elm-live src/Main.elm  --open --start-page=index.html -- --output=public/app.js
 
.PHONY: build
build:
				elm make src/Main.elm --optimize --output=public/app.js