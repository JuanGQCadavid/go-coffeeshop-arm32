
build-proxy:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-proxy --load -t go-coffeeshop-proxy .

build-product:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-product --load -t go-coffeeshop-product .

build-counter:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-counter --load -t go-coffeeshop-counter .

build-barista:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-barista --load -t go-coffeeshop-barista .

build-kitchen:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-kitchen --load -t go-coffeeshop-kitchen .

build-web:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-web --push -t juangonzalout/go-coffeeshop-web:arm32 .
