install:
		uv sync
run:
		uv run main.py
lint:
		uv run ruff check main.py
test:
		uv run pytest
