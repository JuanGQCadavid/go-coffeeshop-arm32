version: "3"

services:

  proxy:
    build:
      context: .
      dockerfile: ./docker/Dockerfile-proxy
    image: go-coffeeshop-proxy


  product:
    build:
      context: .
      dockerfile: ./docker/Dockerfile-product
    image: go-coffeeshop-product


  counter:
    build:
      context: .
      dockerfile: ./docker/Dockerfile-counter
    image: go-coffeeshop-counter


  barista:
    build:
      context: .
      dockerfile: ./docker/Dockerfile-barista
    image: go-coffeeshop-barista


  kitchen:
    build:
      context: .
      dockerfile: ./docker/Dockerfile-kitchen
    image: go-coffeeshop-kitchen


  web:
    build:
      context: .
      dockerfile: ./docker/Dockerfile-web
    image: go-coffeeshop-web

build-web:
	docker buildx build --platform linux/arm/v7 --file ./docker/Dockerfile-web --build-context . --load -t go-coffeeshop-web .
