.PHONY: lint

lint:
	uv run ruff check --no-fix
	uv run ruff format
	uv run mypy .
