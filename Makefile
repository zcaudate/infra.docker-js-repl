run:
	node main.js 4555

start-container:
	docker run -d --rm -p 4555:4555 --name infra--js-repl-server zcaudate/infra.js-repl-server

stop-container:
	docker stop infra--js-repl-server

build-container:
	rm -f build.out
	docker build . -t zcaudate/infra.js-repl-server | tee build.out

push-container: build-container
	docker push zcaudate/infra.js-repl-server
