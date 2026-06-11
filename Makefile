install:
		uv sync
run:
#		uv run main.py заменили при сменe прописанного порта 8080 в main.py
		uv run uvicorn main:app --reload --port 8080
lint:
		uv run ruff check main.py
test:
		uv run pytest
