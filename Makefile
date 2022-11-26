build:
	docker build -t rails-api-app .

tag:
	docker tag rails-api-app 82xcherodinger/rails-api-app

start:
	docker-compose up -d

push:
	docker push 82xcherodinger/rails-api-app