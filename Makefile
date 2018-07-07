NAME      := debug-container
REGISTRY  := docker.io/akaimo/$(NAME)
VERSION   := latest

.PHONY: build tag push

build:
	docker build -t $(NAME):$(VERSION) $(PWD)

tag: build
	docker tag $(NAME):$(VERSION) $(REGISTRY):$(VERSION)

push: tag
	docker push $(REGISTRY):$(VERSION)

run:
	docker run -it --name $(NAME) $(NAME) bash

stop:
	docker stop $(NAME)

rm: stop
	docker rm $(NAME)
