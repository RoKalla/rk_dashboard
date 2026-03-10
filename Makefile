.PHONY: lint run migrate

lint:
	uv run ruff check --fix
	uv run ruff format
	uv run mypy .

run:
	@cd apps && uv run manage.py runserver

migrate:
	@cd apps && uv run manage.py migrate