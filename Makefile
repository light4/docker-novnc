CONTAINER = docker-novnc

all: $(CONTAINER)

$(CONTAINER):
	docker build -t $(CONTAINER) .

run:
	docker run -d -p 80:80 $(CONTAINER)

stop:
	docker stop $$(docker ps -q)

.PHONY: clean
clean:
	docker rm $$(docker ps -a -q)

