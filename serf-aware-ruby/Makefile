export NAME=serf-aware-ruby

build: Dockerfile
	docker build -t ${NAME} .

clean:
	docker rmi -f ${NAME}

tag:
	docker tag -f ${NAME} elcuervo/${NAME}

shell:
	docker run -ti ${NAME} sh

run:
	docker run -ti ${NAME}

release:
	docker push elcuervo/${NAME}
