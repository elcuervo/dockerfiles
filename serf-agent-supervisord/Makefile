export NAME=serf-agent-supervisord

build: Dockerfile
	docker build -t ${NAME} .

clean:
	docker rmi -f ${NAME}

tag:
	docker tag -f ${NAME} elcuervo/${NAME}

release:
	docker push elcuervo/${NAME}
