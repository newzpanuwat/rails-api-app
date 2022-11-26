build:
	docker compose -f docker-compose.yaml build

tag:
	docker tag rails-api-app 82xcherodinger/rails-api-app

start:
	docker-compose up -d

push:
	docker push 82xcherodinger/rails-api-app