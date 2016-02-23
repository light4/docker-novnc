all: docker-novnc

docker-novnc:
	docker build -t docker-novnc .
