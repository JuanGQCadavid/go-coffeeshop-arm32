
build-proxy:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-proxy --push -t juangonzalout/go-coffeeshop-proxy .

build-product:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-product --push -t juangonzalout/go-coffeeshop-product .

build-counter:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-counter --push -t juangonzalout/go-coffeeshop-counter .

build-barista:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-barista --push -t juangonzalout/go-coffeeshop-barista .

build-kitchen:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-kitchen --push -t juangonzalout/go-coffeeshop-kitchen .

build-web:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-web --push -t juangonzalout/go-coffeeshop-web .

lestgo: build-web build-kitchen build-barista build-counter build-product build-

update:
	docker stack deploy --compose-file docker-compose.yaml gocoffe

ps:
	docker stack ps gocoffe
