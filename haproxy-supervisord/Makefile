build: Dockerfile
	docker build -t haproxy-supervisord .

clean:
	docker rmi -f haproxy-supervisord

tag:
	docker tag haproxy-supervisord elcuervo/haproxy-supervisord
