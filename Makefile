start:
	@KAMK_CUTTER=$(cookie) docker compose up --watch --build

down:
	@docker compose down

.PHONY: start down