build:
	docker build -t beecastle/lein-python .

deploy: build
	docker push beecastle/lein-python
