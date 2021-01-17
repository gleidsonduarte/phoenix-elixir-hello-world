.PHONY: up down ps

up:
	@docker-compose up --build -d

down:
	@docker-compose down

ps:
	@docker-compose ps