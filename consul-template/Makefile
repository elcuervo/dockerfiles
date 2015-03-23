export NAME=consul-template

build: Dockerfile
	docker build -t ${NAME} .

clean:
	docker rmi -f ${NAME}

tag:
	docker tag -f ${NAME} elcuervo/${NAME}

shell:
	docker run -ti ${NAME} bash

run:
	docker run -ti ${NAME}

release:
	docker push elcuervo/${NAME}
