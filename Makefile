CONTAINER = docker-novnc
PORT = 6080

all: $(CONTAINER)

$(CONTAINER):
	docker build -t $(CONTAINER) .

run:
	docker run -d -p $(PORT):$(PORT) $(CONTAINER)

stop:
	docker stop $$(docker ps -q)

.PHONY: clean
clean:
	docker rm $$(docker ps -a -q)

