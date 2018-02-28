build: Dockerfile
	docker build -t kielabokkie/coveralls-phpcov:$(filter-out $@,$(MAKECMDGOALS)) -t kielabokkie/coveralls-phpcov:latest .

push:
	docker push kielabokkie/coveralls-phpcov

%:
	@:
