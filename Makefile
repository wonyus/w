build-local:
	docker build --tag wonyus/bot-discord .

start-local:
	docker run --env-file .env  wonyus/bot-discord


start-all:
	docker-compose -f ./docker-compose.yml up -d