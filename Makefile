.PHONY: up down ps

up:
	@mix deps.get && \
	docker-compose up --build -d

down:
	@docker-compose down

ps:
	@docker-compose ps