export NAME=serf-agent-haproxy

build: Dockerfile
	docker build -t ${NAME} .

clean:
	docker rmi -f ${NAME}

tag:
	docker tag ${NAME} elcuervo/${NAME}

release:
	docker push elcuervo/${NAME}
