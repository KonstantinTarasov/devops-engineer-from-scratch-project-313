FROM python:3.11-slim

WORKDIR /app

COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

# Копируем файлы, необходимые для определения зависимостей
# в варианте без uv здесь можно использовать COPY requirements.txt . 
COPY pyproject.toml uv.lock ./

# Устанавливаем зависимости из lock-файла (гарантирует воспроизводимость)
RUN uv sync --frozen --no-dev

COPY . .

# порт который будет слушать приложение, просто документация
EXPOSE 8080

CMD ["uv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]